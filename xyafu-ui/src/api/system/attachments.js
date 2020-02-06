import request from '@/utils/request'

// 查询附件列表
export function listAttachments(query) {
  return request({
    url: '/system/attachments/list',
    method: 'get',
    params: query
  })
}

// 查询附件详细
export function getAttachments(id) {
  return request({
    url: '/system/attachments/' + id,
    method: 'get'
  })
}

// 新增附件
export function addAttachments(data) {
  return request({
    url: '/system/attachments',
    method: 'post',
    data: data
  })
}

// 修改附件
export function updateAttachments(data) {
  return request({
    url: '/system/attachments',
    method: 'put',
    data: data
  })
}

// 删除附件
export function delAttachments(id) {
  return request({
    url: '/system/attachments/' + id,
    method: 'delete'
  })
}

// 导出附件
export function exportAttachments(query) {
  return request({
    url: '/system/attachments/export',
    method: 'get',
    params: query
  })
}