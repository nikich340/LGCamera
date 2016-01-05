package com.lge.filterpacks;

public class MediaRecorderStopException extends RuntimeException {
    private static final String TAG = "MediaRecorderStopException";

    public MediaRecorderStopException(String msg) {
        super(msg);
    }

    public MediaRecorderStopException(String msg, Throwable t) {
        super(msg, t);
    }

    public MediaRecorderStopException(Throwable t) {
        super(t);
    }
}
