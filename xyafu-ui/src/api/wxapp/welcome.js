import request from '@/utils/request'

// 查询welcome列表
export function listWelcome(query) {
  return request({
    url: '/wxapp/welcome/list',
    method: 'get',
    params: query
  })
}

// 查询welcome详细
export function getWelcome(id) {
  return request({
    url: '/wxapp/welcome/' + id,
    method: 'get'
  })
}

// 新增welcome
export function addWelcome(data) {
  return request({
    url: '/wxapp/welcome',
    method: 'post',
    data: data
  })
}

// 修改welcome
export function updateWelcome(data) {
  return request({
    url: '/wxapp/welcome',
    method: 'put',
    data: data
  })
}

// 删除welcome
export function delWelcome(id) {
  return request({
    url: '/wxapp/welcome/' + id,
    method: 'delete'
  })
}

// 导出welcome
export function exportWelcome(query) {
  return request({
    url: '/wxapp/welcome/export',
    method: 'get',
    params: query
  })
}