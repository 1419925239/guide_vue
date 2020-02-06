import request from '@/utils/request'

//
export function sendpost(data) {
  return request({
    url: '/index/sendpost',
    method: 'post',
    data: data
  })
}

