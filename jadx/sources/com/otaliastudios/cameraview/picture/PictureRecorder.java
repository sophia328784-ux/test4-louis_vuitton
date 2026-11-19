package com.otaliastudios.cameraview.picture;

import com.otaliastudios.cameraview.PictureResult;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PictureRecorder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PictureResult.Stub f39051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PictureResultListener f39052c;
    public Exception d;

    public interface PictureResultListener {
        void h(PictureResult.Stub stub, Exception exc);

        void j(boolean z);
    }

    public PictureRecorder(PictureResult.Stub stub, PictureResultListener pictureResultListener) {
        this.f39051b = stub;
        this.f39052c = pictureResultListener;
    }

    public void a() {
        PictureResultListener pictureResultListener = this.f39052c;
        if (pictureResultListener != null) {
            pictureResultListener.h(this.f39051b, this.d);
            this.f39052c = null;
            this.f39051b = null;
        }
    }

    public abstract void b();
}
