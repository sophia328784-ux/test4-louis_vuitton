package androidx.camera.core.internal;

import androidx.camera.core.ImageInfo;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;

/* JADX INFO: loaded from: classes.dex */
public final class CameraCaptureResultImageInfo implements ImageInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCaptureResult f2471a;

    public CameraCaptureResultImageInfo(CameraCaptureResult cameraCaptureResult) {
        this.f2471a = cameraCaptureResult;
    }

    @Override // androidx.camera.core.ImageInfo
    public final int a() {
        int iOrdinal = this.f2471a.a().ordinal();
        if (iOrdinal == 1) {
            return 2;
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? 0 : 1;
        }
        return 3;
    }

    @Override // androidx.camera.core.ImageInfo
    public final void b(ExifData.Builder builder) {
        this.f2471a.b(builder);
    }

    @Override // androidx.camera.core.ImageInfo
    public final TagBundle c() {
        return this.f2471a.c();
    }

    @Override // androidx.camera.core.ImageInfo
    public final long d() {
        return this.f2471a.d();
    }
}
