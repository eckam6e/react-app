import axios from 'axios';
import { usersIndex } from '../urls/index'

export const fetchUsers = async() => {
  return await axios.get(usersIndex)
  .then(u => {
    return u.data
  })
  .catch((e) => console.error(e))
}
