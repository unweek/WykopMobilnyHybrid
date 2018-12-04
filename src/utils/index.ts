import { Author } from "../models";
import { Dimensions } from "react-native";

export const getAuthorColor = (author: Author) => {
    switch(author.color) {
        case 0:
            return '#339933'
        case 1:
            return '#ff5917'
        case 2:
            return '#BB0000'
        case 5:
            return '#ffffff'
        case 999:
            return '#000000'
        case 1001:
            return '#BF9B30'
        case 1002:
            return '#999999'
        case 2001:
            return '#999999'
        default:
            return '#3F6FA0'
    }
}

export const getScreenWidth = () => {
    return Math.round(Dimensions.get('window').width * 1000) / 1000 - 6
}

export const getAuthorSex = (author: Author) => {
    switch(author.sex) {
        case 'male':
            return '#46abf2'
        case 'female':
            return '#f246d0'
        default:
            return null
    }
}