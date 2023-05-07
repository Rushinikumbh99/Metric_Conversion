using Microsoft.AspNetCore.Mvc;
using Conversion.Model;

namespace Conversion.Controllers
{


    [Route("api/[controller]")]
    [ApiController]
    public class ConversionController : Controller
    {
        private RateMasterContext _context;

        public ConversionController(RateMasterContext context)
        {
            _context = context;
        }
       
        [HttpGet]
        public IActionResult Convert(double Value, string conversion_From, string Conversion_To)
        {
            try
            {
                double FinalValue = 0.0;
                RateMaster RM = _context.RateMaster.Where(x => x.Convert_From == conversion_From && x.Convert_To == Conversion_To && x.Status == 1).FirstOrDefault();

                if (RM != null)
                {
                    if (RM.Action == "Multiply")
                    {
                        FinalValue = Value * RM.Rate;
                    }
                    else if (RM.Action == "Divide")
                    {
                        FinalValue = Value / RM.Rate;
                    }
                    else if (RM.Action == "Addition")
                    {
                        FinalValue = Value + RM.Rate;
                    }
                    else if (RM.Action == "Substraction")
                    {
                        FinalValue = Value - RM.Rate;
                    }

                    FinalValue = Math.Round(FinalValue, 4);
                }

                return Ok(FinalValue);
            }
            catch (Exception ex)
            {

                return Ok("Error Occured");
            }
           
        }
    }
}
