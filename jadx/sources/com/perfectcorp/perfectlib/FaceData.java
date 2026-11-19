package com.perfectcorp.perfectlib;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes3.dex */
public final class FaceData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f39612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FaceAlignmentData f39614c;

    public FaceData(Rect rect, FaceAlignmentData faceAlignmentData, int i2) {
        this.f39612a = rect;
        this.f39614c = faceAlignmentData;
        this.f39613b = i2;
    }

    public final FaceAlignmentData getFaceAlignmentData() {
        return this.f39614c;
    }

    public final Rect getFaceRect() {
        return this.f39612a;
    }
}
