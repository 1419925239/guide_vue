import request from '@/utils/request'

// 查询content列表
export function listContent(query) {
  return request({
    url: '/wxapp/content/list',
    method: 'get',
    params: query
  })
}

// 查询content详细
export function getContent(id) {
  return request({
    url: '/wxapp/content/' + id,
    method: 'get'
  })
}

// 新增content
export function addContent(data) {
  return request({
    url: '/wxapp/content',
    method: 'post',
    data: data
  })
}

// 修改content
export function updateContent(data) {
  return request({
    url: '/wxapp/content',
    method: 'put',
    data: data
  })
}

// 删除content
export function delContent(id) {
  return request({
    url: '/wxapp/content/' + id,
    method: 'delete'
  })
}

// 导出content
export function exportContent(query) {
  return request({
    url: '/wxapp/content/export',
    method: 'get',
    params: query
  })
}