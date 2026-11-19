package com.otaliastudios.cameraview.gesture;

import android.content.Context;
import android.graphics.PointF;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GestureFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f38978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Gesture f38979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PointF[] f38980c;
    public final Controller d;

    public interface Controller {
        Context getContext();

        int getHeight();

        int getWidth();
    }

    public GestureFinder(Controller controller, int i2) {
        this.d = controller;
        this.f38980c = new PointF[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.f38980c[i3] = new PointF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    public final float a(float f2, float f3, float f4) {
        float fB = b(f2, f3, f4);
        if (fB < f3) {
            fB = f3;
        }
        if (fB > f4) {
            fB = f4;
        }
        float f5 = ((f4 - f3) / 50.0f) / 2.0f;
        return (fB < f2 - f5 || fB > f5 + f2) ? fB : f2;
    }

    public abstract float b(float f2, float f3, float f4);
}
