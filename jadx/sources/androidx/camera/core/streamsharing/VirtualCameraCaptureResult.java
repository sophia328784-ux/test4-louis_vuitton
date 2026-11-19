package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.CameraCaptureMetaData$AeState;
import androidx.camera.core.impl.CameraCaptureMetaData$AfState;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbState;
import androidx.camera.core.impl.CameraCaptureMetaData$FlashState;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public class VirtualCameraCaptureResult implements CameraCaptureResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCaptureResult f2664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TagBundle f2665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2666c;

    public VirtualCameraCaptureResult(CameraCaptureResult cameraCaptureResult, TagBundle tagBundle, long j2) {
        this.f2664a = cameraCaptureResult;
        this.f2665b = tagBundle;
        this.f2666c = j2;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CameraCaptureMetaData$FlashState a() {
        CameraCaptureResult cameraCaptureResult = this.f2664a;
        return cameraCaptureResult != null ? cameraCaptureResult.a() : CameraCaptureMetaData$FlashState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final TagBundle c() {
        return this.f2665b;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final long d() {
        CameraCaptureResult cameraCaptureResult = this.f2664a;
        if (cameraCaptureResult != null) {
            return cameraCaptureResult.d();
        }
        long j2 = this.f2666c;
        if (j2 != -1) {
            return j2;
        }
        md.k("No timestamp is available.");
        return 0L;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CameraCaptureMetaData$AfState f() {
        CameraCaptureResult cameraCaptureResult = this.f2664a;
        return cameraCaptureResult != null ? cameraCaptureResult.f() : CameraCaptureMetaData$AfState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CameraCaptureMetaData$AwbState g() {
        CameraCaptureResult cameraCaptureResult = this.f2664a;
        return cameraCaptureResult != null ? cameraCaptureResult.g() : CameraCaptureMetaData$AwbState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CameraCaptureMetaData$AeState h() {
        CameraCaptureResult cameraCaptureResult = this.f2664a;
        return cameraCaptureResult != null ? cameraCaptureResult.h() : CameraCaptureMetaData$AeState.UNKNOWN;
    }

    public VirtualCameraCaptureResult(TagBundle tagBundle, long j2) {
        this(null, tagBundle, j2);
    }

    public VirtualCameraCaptureResult(TagBundle tagBundle, CameraCaptureResult cameraCaptureResult) {
        this(cameraCaptureResult, tagBundle, -1L);
    }
}
