
" fast add apidoc.json
func! apidoc#ApiJson()
	call append(line('.')-1, '{' )
	call append(line('.')-1, '	"name": "example",' )
	call append(line('.')-1, '	"version": "0.1.0",' )
	call append(line('.')-1, '	"description": "apiDoc basic example",' )
	call append(line('.')-1, '	"title": "Custom apiDoc browser title",' )
	call append(line('.')-1, '	"url" : "https://api.github.com/v1"' )
	call append(line('.')-1, '}' )
endfunc

func! apidoc#ApiComment()
	call append(line('.')+0, '/**' )
	call append(line('.')+1, '* @api {method} {path} {title}' )
	call append(line('.')+2, '* @apiName {name}' )
	call append(line('.')+3, '* @apiGroup {group}' )
	call append(line('.')+4, '* @apiDescription {text}' )
	call append(line('.')+5, '* @apiParam {String,Boolean,Number,Object,String[]} {name} {description}' )
	call append(line('.')+6, '* @apiParamExample {json} Request-Example' )
	call append(line('.')+7, '* {' )
	call append(line('.')+8, '* }' )
	call append(line('.')+9, '*' )
	call append(line('.')+10, '* @apiSuccessExample {json} Response-Example' )
	call append(line('.')+11, '* {' )
	call append(line('.')+12, '* }' )
	call append(line('.')+13, '*' )
	call append(line('.')+14, '* @apiUse {name}' )
	call append(line('.')+15, '*/' )
endfunc

func! apidoc#ApiDefineError()
	call append(line('.')+0, '/**' )
	call append(line('.')+1, '* @apiDefine {name}' )
	call append(line('.')+2, '* @apiErrorExample {json} Error-Response' )
	call append(line('.')+3, '* HTTP/1.1 404 Not Found' )
	call append(line('.')+4, '* {' )
	call append(line('.')+5, '* }' )
	call append(line('.')+6, '*/' )
endfunc

func! apidoc#ApiDefineSuccess()
	call append(line('.')+0, '/**' )
	call append(line('.')+1, '* @apiDefine {name}' )
	call append(line('.')+2, '* @apiSuccessExample {json} Response-Example' )
	call append(line('.')+3, '* HTTP/1.1 200 OK' )
	call append(line('.')+4, '* {' )
	call append(line('.')+5, '* }' )
	call append(line('.')+6, '*/' )
endfunc