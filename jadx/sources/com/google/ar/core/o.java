package com.google.ar.core;

import defpackage.r81;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class o extends com.google.ar.core.dependencies.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f33430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArImage f33432c;

    public o(ArImage arImage, long j2, int i2) {
        Objects.requireNonNull(arImage);
        this.f33432c = arImage;
        this.f33430a = j2;
        this.f33431b = i2;
    }

    @Override // android.media.Image.Plane
    public final ByteBuffer getBuffer() {
        ArImage arImage = this.f33432c;
        return arImage.e(this.f33431b, arImage.f33343b.nativeWrapperHandle, this.f33430a).asReadOnlyBuffer();
    }

    @Override // android.media.Image.Plane
    public final int getPixelStride() {
        ArImage arImage = this.f33432c;
        int iD = arImage.d(this.f33431b, arImage.f33343b.nativeWrapperHandle, this.f33430a);
        if (iD != -1) {
            return iD;
        }
        r81.i("Unknown error in ArImage.Plane.getPixelStride().");
        return 0;
    }

    @Override // android.media.Image.Plane
    public final int getRowStride() {
        ArImage arImage = this.f33432c;
        int iC = arImage.c(this.f33431b, arImage.f33343b.nativeWrapperHandle, this.f33430a);
        if (iC != -1) {
            return iC;
        }
        r81.i("Unknown error in ArImage.Plane.getRowStride().");
        return 0;
    }
}
