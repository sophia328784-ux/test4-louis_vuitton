package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import androidx.media3.decoder.DecoderException;

/* JADX INFO: loaded from: classes.dex */
public class MediaCodecDecoderException extends DecoderException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15373b;

    public MediaCodecDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        StringBuilder sb = new StringBuilder("Decoder failed: ");
        sb.append(mediaCodecInfo == null ? null : mediaCodecInfo.f15374a);
        super(sb.toString(), th);
        boolean z = th instanceof MediaCodec.CodecException;
        if (z) {
            ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        this.f15373b = z ? ((MediaCodec.CodecException) th).getErrorCode() : 0;
    }
}
