package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class Track {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16593c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16594e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f16595f;
    public final Format g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f16597i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long[] f16598j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f16599k;
    public final TrackEncryptionBox[] l;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Transformation {
    }

    public Track(int i2, int i3, long j2, long j3, long j4, long j5, Format format, int i4, TrackEncryptionBox[] trackEncryptionBoxArr, int i5, long[] jArr, long[] jArr2) {
        this.f16591a = i2;
        this.f16592b = i3;
        this.f16593c = j2;
        this.d = j3;
        this.f16594e = j4;
        this.f16595f = j5;
        this.g = format;
        this.f16596h = i4;
        this.l = trackEncryptionBoxArr;
        this.f16599k = i5;
        this.f16597i = jArr;
        this.f16598j = jArr2;
    }

    public final Track a(Format format) {
        return new Track(this.f16591a, this.f16592b, this.f16593c, this.d, this.f16594e, this.f16595f, format, this.f16596h, this.l, this.f16599k, this.f16597i, this.f16598j);
    }
}
