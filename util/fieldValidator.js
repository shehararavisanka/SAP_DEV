const { MARITAL_STATUS, GENDER } = require('../enum/patient');

const FieldValidator = {
    checkIfEmptyString: async (field, param, fieldName) => {
      if (!field || field.trim().length === 0) {
        return {
          fields: param,
          message: `Invalid ${fieldName}!`,
        }
      }

      return 1;
    },

    checkIfEmptyNumber: async (field, param, fieldName) => {
      if (!field) {
        return {
          fields: param,
          message: `Invalid ${fieldName}!`,
        }
      }

      return 1;
    },

    checkIfEmail: async (email, param) => {
      const emailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

      const isValidEmail = await FieldValidator.checkIfEmptyString(email, param, 'email address');

      if (isValidEmail != 1 || !String(email).match(emailformat)) {
        return {
          fields: param,
          message: `Invalid email address!`,
        }
      }

      return 1;
    },

    checkIfMobile: async(mobile, param) => {
      const mobileFormat = "^\\+94\\d{9}$";

      const isValidPhone = await FieldValidator.checkIfEmptyString(mobile, param, 'phone number');

      if (isValidPhone != 1 || !String(mobile).match(mobileFormat)) {
        return {
          fields: param,
          message: `Invalid phone number!`,
        }
      }

      return 1;
    },

    checkMaritalStatus: async (status, param) => {
      const isValidStatus = await FieldValidator.checkIfEmptyString(status, param, 'marital status')

      if (isValidStatus != 1 || status.length != 1 || !Object.values(MARITAL_STATUS).includes(status)) {
        return {
          fields: param,
          message: `Invalid martial status!`,
        }
      }

      return 1;
    },

    checkGender: async (gender, param) => {
      const isValidGender = await FieldValidator.checkIfEmptyString(gender, param, 'gender');

      if (isValidGender != 1 || !Object.values(GENDER).includes(gender)) {
        return {
          fields: param,
          message: `Invalid gender!`,
        }
      }

      return 1;
    },

    checkDOB: async (date, param) => {
      const dateFormat = /^\d{4}-\d{2}-\d{2}$/;
    
      const isValidDob = await FieldValidator.checkIfEmptyString(date, param, 'date of birth');

      if (isValidDob != 1 || !String(date).match(dateFormat)) {
        return {
          fields: param,
          message: `Invalid date of birth!`,
        }
      }

      return 1;
    }
  };
  
  module.exports = FieldValidator;