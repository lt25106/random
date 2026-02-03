;; WORK IN PROGRESS

(module
  (import "wasi_snapshot_preview1" "fd_write"
    (func $fd_write (param i32 i32 i32 i32) (result i32))
  )

  (import "wasi_snapshot_preview1" "random_get"
    (func $random_get (param i32 i32) (result i32))
  )

  ;; (func $print (param ) )

  (memory 1)
  (export "memory" (memory 0))

  (data (i32.const 0) "Guess the number from 0 to 100:")

  (func $_start (export "_start")
    ;; iovec at 100
    (i32.store (i32.const 100) (i32.const 0))    ;; ptr
    (i32.store (i32.const 104) (i32.const 31))   ;; len

    (call $fd_write
      (i32.const 1)    ;; stdout
      (i32.const 100)  ;; iov ptr
      (i32.const 1)    ;; iov count
      (i32.const 200)) ;; nwritten
    drop
  )
)
