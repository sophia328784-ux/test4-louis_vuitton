package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class VideoFrameProcessingException extends Exception {
    public VideoFrameProcessingException(String str) {
        this(str, -9223372036854775807L);
    }

    public VideoFrameProcessingException(String str, long j2) {
        super(str);
    }

    public VideoFrameProcessingException(String str, Throwable th) {
        this(str, th, -9223372036854775807L);
    }

    public VideoFrameProcessingException(String str, Throwable th, long j2) {
        super(str, th);
    }

    public VideoFrameProcessingException(Throwable th) {
        this(th, -9223372036854775807L);
    }

    public VideoFrameProcessingException(Throwable th, long j2) {
        super(th);
    }
}
