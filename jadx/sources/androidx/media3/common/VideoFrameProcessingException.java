package androidx.media3.common;

import defpackage.d21;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoFrameProcessingException extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    public VideoFrameProcessingException(String str, long j2) {
        StringBuilder sbT = n00.t(str);
        sbT.append(a(j2));
        super(sbT.toString());
    }

    public static String a(long j2) {
        return j2 == -9223372036854775807L ? " @UNSET" : d21.g(j2, " @");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public VideoFrameProcessingException(String str, Throwable th, long j2) {
        StringBuilder sbT = n00.t(str);
        sbT.append(a(j2));
        super(sbT.toString(), th);
    }

    public VideoFrameProcessingException(String str) {
        this(str, -9223372036854775807L);
    }

    public VideoFrameProcessingException(String str, Throwable th) {
        this(str, th, -9223372036854775807L);
    }

    public VideoFrameProcessingException(Throwable th) {
        this(th, -9223372036854775807L);
    }

    public VideoFrameProcessingException(Throwable th, long j2) {
        super(a(j2), th);
    }
}
