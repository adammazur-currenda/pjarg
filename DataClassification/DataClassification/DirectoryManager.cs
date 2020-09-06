using System.IO;

namespace DataClassification
{
    public static class DirectoryManager
    {
        public static readonly string PublicFolder = "public";
        public static readonly string ConfidentialFolder = "confidential";

        public static void CreateDirectories()
        {
            if (!Directory.Exists(PublicFolder))
                Directory.CreateDirectory(PublicFolder);

            if (!Directory.Exists(ConfidentialFolder))
                Directory.CreateDirectory(ConfidentialFolder);
        }
    }
}
