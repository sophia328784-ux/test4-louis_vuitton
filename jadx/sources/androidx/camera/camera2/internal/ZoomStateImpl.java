package androidx.camera.camera2.internal;

import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.AdapterCameraInfo;
import defpackage.d21;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
class ZoomStateImpl implements ZoomState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f1663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f1664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f1665c;
    public float d;

    public ZoomStateImpl(float f2, float f3) {
        this.f1664b = f2;
        this.f1665c = f3;
    }

    @Override // androidx.camera.core.ZoomState
    public final float a() {
        return this.f1664b;
    }

    @Override // androidx.camera.core.ZoomState
    public final float b() {
        return this.d;
    }

    @Override // androidx.camera.core.ZoomState
    public final float c() {
        return this.f1665c;
    }

    @Override // androidx.camera.core.ZoomState
    public final float d() {
        return this.f1663a;
    }

    public final void e(float f2) {
        float f3 = this.f1664b;
        float f4 = this.f1665c;
        if (f2 <= f3 && f2 >= f4) {
            this.f1663a = f2;
            this.d = AdapterCameraInfo.z(f2, f4, f3);
            return;
        }
        StringBuilder sb = new StringBuilder("Requested zoomRatio ");
        sb.append(f2);
        sb.append(" is not within valid range [");
        sb.append(f4);
        sb.append(" , ");
        md.n(d21.e(f3, "]", sb));
    }
}
