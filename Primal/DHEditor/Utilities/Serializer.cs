using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace DHEditor.Utilities
{
    public static class Serializer
    {
        public static void ToFile<T>(T instatnce, string path)
        {
            try
            {
                var fs = new FileStream(path, FileMode.Create, FileAccess.Write);
                var serializer = new DataContractSerializer(typeof(T));
                serializer.WriteObject(fs, instatnce);
                fs.Close();
            }
            catch (Exception e)
            {
                Debug.WriteLine(e);
                //TODO log error
                throw;
            }
        }

        public static T FromFile<T>(string path)
        {
            try
            {
                var fs = new FileStream(path, FileMode.Open);
                var serializer = new DataContractSerializer(typeof(T));
                T instance = (T)serializer.ReadObject(fs);
                fs.Close();
                return instance;
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.Message);
                //TODO log error
                throw;
                return default(T);
            }
        }
    }
}
