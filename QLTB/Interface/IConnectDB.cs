using Domain;
using Microsoft.Data.SqlClient;

namespace QLTB.Interface
{
    public interface IConnectDB
    {
        SqlConnection IConnectData();
    }
}
// lay danh sach bai viet
// lay chi tiet
// models -> respository -> service