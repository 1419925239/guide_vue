import request from '@/utils/request'

// 查询map列表
export function listMap(query) {
  return request({
    url: '/wxapp/map/list',
    method: 'get',
    params: query
  })
}

// 查询map详细
export function getMap(id) {
  return request({
    url: '/wxapp/map/' + id,
    method: 'get'
  })
}

// 新增map
export function addMap(data) {
  return request({
    url: '/wxapp/map',
    method: 'post',
    data: data
  })
}

// 修改map
export function updateMap(data) {
  return request({
    url: '/wxapp/map',
    method: 'put',
    data: data
  })
}

// 删除map
export function delMap(id) {
  return request({
    url: '/wxapp/map/' + id,
    method: 'delete'
  })
}

// 导出map
export function exportMap(query) {
  return request({
    url: '/wxapp/map/export',
    method: 'get',
    params: query
  })
}