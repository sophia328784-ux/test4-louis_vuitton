package com.otaliastudios.cameraview.picture;

import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.PictureResult;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FullPictureRecorder extends PictureRecorder {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CameraLogger f39050e = CameraLogger.a("FullPictureRecorder");

    public FullPictureRecorder(PictureResult.Stub stub, PictureRecorder.PictureResultListener pictureResultListener) {
        super(stub, pictureResultListener);
    }
}
