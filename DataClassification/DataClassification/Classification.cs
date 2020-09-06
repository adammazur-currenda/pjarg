namespace DataClassification
{
    public class Classification
    {
        public bool IsConfidential(string content)
        {
            return content.Contains("@") || content.Contains("credit card");
        }
    }
}
