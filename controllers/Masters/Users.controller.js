const master_sql = require('../../services/Masters/master_sql.service');

exports.SelectData = async (req, res, next) => {
    try {
        var bpdetails = await master_sql.select_users_AlL();
        res.status(200).json(
            {
                Status:"Success",
                Response:bpdetails
            }
            
        );
    } catch (error) {
        console.log(error);
        res.status(500).json(
            {
                Status:"Unsuccess",
                Response:error
            }
        );
    }
};

exports.SelectDataBydate = async (req, res, next) => {
    try {
        const { FromDate, ToDate } = req.query;
      
        var fdate= formatDate(FromDate);
        var tdate= formatDate(ToDate);

        var bpdetails = await master_sql.select_users_ByDate(fdate,tdate);

        res.status(200).json(
            {
                Status:"Success",
                Response:bpdetails
            }
            
        );
    } catch (error) {
        console.log(error);
        res.status(500).json(
            {
                Status:"Unsuccess",
                Response:error
            }
        );
    }
};



function formatDate(date) {
    const d = new Date(date);

    if (isNaN(d.getTime())) {
        throw new Error('Invalid date');
    }

    const year = d.getFullYear();
    const month = String(d.getMonth() + 1).padStart(2, '0');
    const day = String(d.getDate()).padStart(2, '0');
    const hours = String(d.getHours()).padStart(2, '0');
    const minutes = String(d.getMinutes()).padStart(2, '0');

    return `${year}-${month}-${day} ${hours}:${minutes}`;
}
