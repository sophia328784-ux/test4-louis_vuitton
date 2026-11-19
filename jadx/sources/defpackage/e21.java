package defpackage;

import androidx.camera.core.processing.SurfaceEdge;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e21 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SurfaceEdge f68731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f68732c;
    public final /* synthetic */ int d;

    public /* synthetic */ e21(SurfaceEdge surfaceEdge, int i2, int i3) {
        this.f68731b = surfaceEdge;
        this.f68732c = i2;
        this.d = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        SurfaceEdge surfaceEdge = this.f68731b;
        int i2 = surfaceEdge.f2556i;
        int i3 = this.f68732c;
        boolean z2 = true;
        if (i2 != i3) {
            surfaceEdge.f2556i = i3;
            z = true;
        } else {
            z = false;
        }
        int i4 = surfaceEdge.f2555h;
        int i5 = this.d;
        if (i4 != i5) {
            surfaceEdge.f2555h = i5;
        } else {
            z2 = z;
        }
        if (z2) {
            surfaceEdge.g();
        }
    }
}
