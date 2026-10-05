
const masterservice = require('../services/Masters/master.service')


exports.SelectData = async (req, res, next) => {
    try {
        var updatedDocumentlist = await masterservice.select_All_inventory('')

        res.status(200).json({
            Status: "Success",
            Response: updatedDocumentlist
        });
    } catch (error) {
        console.log(error);
        res.status(500).json(
            {
                Status: "Unsuccess",
                Response: error
            }
        );
    }
};

