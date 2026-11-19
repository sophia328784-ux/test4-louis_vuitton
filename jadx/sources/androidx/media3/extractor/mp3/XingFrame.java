package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;

/* JADX INFO: loaded from: classes.dex */
final class XingFrame {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MpegAudioUtil.Header f16487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16489c;
    public final Mp3InfoReplayGain d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16491f;
    public final long[] g;

    public XingFrame(MpegAudioUtil.Header header, long j2, long j3, long[] jArr, Mp3InfoReplayGain mp3InfoReplayGain, int i2, int i3) {
        this.f16487a = new MpegAudioUtil.Header(header);
        this.f16488b = j2;
        this.f16489c = j3;
        this.g = jArr;
        this.d = mp3InfoReplayGain;
        this.f16490e = i2;
        this.f16491f = i3;
    }

    public final long a() {
        long j2 = this.f16488b;
        if (j2 == -1 || j2 == 0) {
            return -9223372036854775807L;
        }
        MpegAudioUtil.Header header = this.f16487a;
        return Util.X(header.d, (j2 * ((long) header.g)) - 1);
    }
}
