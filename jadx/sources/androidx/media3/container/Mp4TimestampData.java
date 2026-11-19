package androidx.media3.container;

import androidx.media3.common.Metadata;
import defpackage.fc;

/* JADX INFO: loaded from: classes.dex */
public final class Mp4TimestampData implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f14283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f14285c;

    public Mp4TimestampData(long j2, long j3) {
        this.f14283a = j2;
        this.f14284b = j3;
        this.f14285c = -1L;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Mp4TimestampData)) {
            return false;
        }
        Mp4TimestampData mp4TimestampData = (Mp4TimestampData) obj;
        return this.f14283a == mp4TimestampData.f14283a && this.f14284b == mp4TimestampData.f14284b && this.f14285c == mp4TimestampData.f14285c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f14285c) + fc.a(fc.a(527, 31, this.f14283a), 31, this.f14284b);
    }

    public final String toString() {
        return "Mp4Timestamp: creation time=" + this.f14283a + ", modification time=" + this.f14284b + ", timescale=" + this.f14285c;
    }

    public Mp4TimestampData(long j2, long j3, long j4) {
        this.f14283a = j2;
        this.f14284b = j3;
        this.f14285c = j4;
    }
}
