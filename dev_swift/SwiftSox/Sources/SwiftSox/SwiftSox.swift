import sox

func InitSox() {
  if sox_format_init() != SOX_SUCCESS.rawValue { fatalError("Can not init SOX!") }
}

func ReadSoxAudio(_ name:String)->sox_format_t {
  return sox_open_read(name, nil, nil, nil).pointee
}

