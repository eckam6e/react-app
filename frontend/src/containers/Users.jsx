import React, { Fragment, useEffect } from 'react';

import { fetchUsers } from '../apis/users'; 

export const Users = () => {

  useEffect(() => {
    fetchUsers()
    .then((data) =>
      console.log(data)
    )
  }, [])

  return (
    <Fragment>
      ユーザー一覧
    </Fragment>
  )
}
