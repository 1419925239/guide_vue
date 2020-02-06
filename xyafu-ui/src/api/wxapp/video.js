import request from '@/utils/request'

// 查询video列表
export function listVideo(query) {
  return request({
    url: '/wxapp/video/list',
    method: 'get',
    params: query
  })
}

// 查询video详细
export function getVideo(id) {
  return request({
    url: '/wxapp/video/' + id,
    method: 'get'
  })
}

// 新增video
export function addVideo(data) {
  return request({
    url: '/wxapp/video',
    method: 'post',
    data: data
  })
}

// 修改video
export function updateVideo(data) {
  return request({
    url: '/wxapp/video',
    method: 'put',
    data: data
  })
}

// 删除video
export function delVideo(id) {
  return request({
    url: '/wxapp/video/' + id,
    method: 'delete'
  })
}

// 导出video
export function exportVideo(query) {
  return request({
    url: '/wxapp/video/export',
    method: 'get',
    params: query
  })
}

// 轮播状态修改
export function changeVideoStatus(id, status) {
  const data = {
    id,
    status
  }
  return request({
    url: '/wxapp/video/changeStatus',
    method: 'put',
    data: data
  })
}
