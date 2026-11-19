package androidx.camera.video.internal.audio;

import defpackage.o60;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioStream_PacketInfo extends AudioStream.PacketInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2919b;

    public AutoValue_AudioStream_PacketInfo(int i2, long j2) {
        this.f2918a = i2;
        this.f2919b = j2;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream.PacketInfo
    public final int a() {
        return this.f2918a;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream.PacketInfo
    public final long b() {
        return this.f2919b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AudioStream.PacketInfo)) {
            return false;
        }
        AudioStream.PacketInfo packetInfo = (AudioStream.PacketInfo) obj;
        return this.f2918a == packetInfo.a() && this.f2919b == packetInfo.b();
    }

    public final int hashCode() {
        int i2 = (this.f2918a ^ 1000003) * 1000003;
        long j2 = this.f2919b;
        return ((int) ((j2 >>> 32) ^ j2)) ^ i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PacketInfo{sizeInBytes=");
        sb.append(this.f2918a);
        sb.append(", timestampNs=");
        return o60.j(this.f2919b, "}", sb);
    }
}
