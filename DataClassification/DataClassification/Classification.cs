using System;
using Common;
using System.IO;

namespace DataClassification
{
    public class Classification
    {
        public void StoreData(string content)
        {
            var dataType = ContentDataType(content);
            var pathToSave = PreparePathToSave(dataType);
            File.WriteAllText(Path.Combine(pathToSave, Guid.NewGuid() + ".bin"), content);
        }

        private DataType ContentDataType(string content)
        {
            return content.Contains("@") || content.Contains("credit card") ? DataType.Confidential : DataType.Public;
        }

        private string PreparePathToSave(DataType dataType)
        {
            return dataType == DataType.Confidential ? DirectoryManager.ConfidentialFolder : DirectoryManager.PublicFolder;
        }
    }
}
