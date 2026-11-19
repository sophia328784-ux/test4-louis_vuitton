package com.google.ar.core;

import android.media.ImageReader;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class ap implements ImageReader.OnImageAvailableListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ ap f33407b = new ap();

    @Override // android.media.ImageReader.OnImageAvailableListener
    public final /* synthetic */ void onImageAvailable(ImageReader imageReader) {
        SharedCamera.lambda$setDummyOnImageAvailableListener$0(imageReader);
    }
}
