package androidx.media3.exoplayer;

import androidx.media3.common.util.Util;
import defpackage.fc;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class DecoderCounters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14575c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14577f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14578h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14579i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14580j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f14581k;
    public int l;

    public final String toString() {
        int i2 = this.f14573a;
        int i3 = this.f14574b;
        int i4 = this.f14575c;
        int i5 = this.d;
        int i6 = this.f14576e;
        int i7 = this.f14577f;
        int i8 = this.g;
        int i9 = this.f14578h;
        int i10 = this.f14579i;
        int i11 = this.f14580j;
        long j2 = this.f14581k;
        int i12 = this.l;
        String str = Util.f14242a;
        Locale locale = Locale.US;
        StringBuilder sbP = fc.p(i2, i3, "DecoderCounters {\n decoderInits=", ",\n decoderReleases=", "\n queuedInputBuffers=");
        fc.x(i4, i5, "\n skippedInputBuffers=", "\n renderedOutputBuffers=", sbP);
        fc.x(i6, i7, "\n skippedOutputBuffers=", "\n droppedBuffers=", sbP);
        fc.x(i8, i9, "\n droppedInputBuffers=", "\n maxConsecutiveDroppedBuffers=", sbP);
        fc.x(i10, i11, "\n droppedToKeyframeEvents=", "\n totalVideoFrameProcessingOffsetUs=", sbP);
        sbP.append(j2);
        sbP.append("\n videoFrameProcessingOffsetCount=");
        sbP.append(i12);
        sbP.append("\n}");
        return sbP.toString();
    }
}
