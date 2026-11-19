package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.Format;

/* JADX INFO: loaded from: classes2.dex */
public class MediaCodecRenderer$DecoderInitializationException extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    public MediaCodecRenderer$DecoderInitializationException(Format format, Throwable th, boolean z, int i2) {
        String str = "Decoder init failed: [" + i2 + "], " + format;
        String str2 = format.f28145e;
        Math.abs(i2);
        super(str, th);
    }

    public MediaCodecRenderer$DecoderInitializationException(Format format, Throwable th, boolean z, MediaCodecInfo mediaCodecInfo) {
        throw null;
    }
}
