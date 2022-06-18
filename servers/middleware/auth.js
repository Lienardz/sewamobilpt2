const jwb = require('jsonwebtoken');

const auth = async (req, res, next) => {
    try{
        const token = req.header('x-auth-token');
        if(!token)
        return res.status(401).json({msg: 'No Auth token, Access Denied'});

        const verified = jwb.verify(token, "passwordKey");
        if(!verified) return res.status(401).json({msg: "Token verification failed, authorized denied"});

        req.user = verified.id;
        req.token = token;
        next();
    }catch(err){
        res.status(500).json({error: err.message});
    }
};

module.exports = auth;