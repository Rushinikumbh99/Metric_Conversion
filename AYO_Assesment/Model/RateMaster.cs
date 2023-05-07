namespace Conversion.Model
{
    public class RateMaster
    {
        public int ID
        {
            get; set;
        }

        public string Convert_From
        {
            get; set;
        }

        public string Convert_To
        {
            get; set;
        }

        public double Rate
        {
            get; set;
        }

        public string Action
        {
            get; set;
        }

        public int Status
        {
            get;set;
        }       
    }
}
