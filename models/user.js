const mongoose = require('mongoose');
const AutoIncrement = require('mongoose-sequence')(mongoose);

const Schema = mongoose.Schema;


const UserSchema = new Schema({
    email: {
        type: String,
        required: true,
        unique: true,
    }
});

UserSchema.plugin(AutoIncrement, { inc_field: 'position' });
module.exports = mongoose.model('User', UserSchema);