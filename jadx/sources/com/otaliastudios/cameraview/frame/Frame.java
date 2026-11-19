package com.otaliastudios.cameraview.frame;

import com.otaliastudios.cameraview.CameraLogger;
import defpackage.v7;

/* JADX INFO: loaded from: classes3.dex */
public class Frame {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CameraLogger f38969e = CameraLogger.a("Frame");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameManager f38970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f38971b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f38972c = -1;
    public long d = -1;

    public Frame(FrameManager frameManager) {
        this.f38970a = frameManager;
    }

    public final long a() {
        boolean z = this.f38971b != null;
        long j2 = this.f38972c;
        if (z) {
            return j2;
        }
        f38969e.b(3, "Frame is dead! time:", Long.valueOf(j2), "lastTime:", Long.valueOf(this.d));
        v7.h("You should not access a released frame. If this frame was passed to a FrameProcessor, you can only use its contents synchronously, for the duration of the process() method.");
        return 0L;
    }

    public final void b() {
        if (this.f38971b != null) {
            f38969e.b(0, "Frame with time", Long.valueOf(this.f38972c), "is being released.");
            Object obj = this.f38971b;
            this.f38971b = null;
            this.f38972c = -1L;
            FrameManager frameManager = this.f38970a;
            if (frameManager.f38976c != null) {
                frameManager.b(obj, frameManager.d.offer(this));
            }
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Frame) && ((Frame) obj).f38972c == this.f38972c;
    }
}
