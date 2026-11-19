package com.otaliastudios.cameraview;

/* JADX INFO: loaded from: classes3.dex */
public class CameraException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f38818b;

    public CameraException(Throwable th) {
        super(th);
        this.f38818b = 0;
    }

    public CameraException(Throwable th, int i2) {
        super(th);
        this.f38818b = i2;
    }

    public CameraException(int i2) {
        this.f38818b = i2;
    }
}
