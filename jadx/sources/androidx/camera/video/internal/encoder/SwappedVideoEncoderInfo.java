package androidx.camera.video.internal.encoder;

import android.util.Range;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class SwappedVideoEncoderInfo implements VideoEncoderInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VideoEncoderInfo f3073a;

    public SwappedVideoEncoderInfo(VideoEncoderInfo videoEncoderInfo) {
        Preconditions.a(videoEncoderInfo.a());
        this.f3073a = videoEncoderInfo;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final boolean a() {
        return this.f3073a.a();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range b(int i2) {
        return this.f3073a.h(i2);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final int c() {
        return this.f3073a.f();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final boolean d(int i2, int i3) {
        return this.f3073a.d(i3, i2);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final int f() {
        return this.f3073a.c();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range g() {
        return this.f3073a.g();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range h(int i2) {
        return this.f3073a.b(i2);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range i() {
        return this.f3073a.j();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range j() {
        return this.f3073a.i();
    }
}
