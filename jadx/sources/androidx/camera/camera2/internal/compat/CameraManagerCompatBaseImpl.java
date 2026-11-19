package androidx.camera.camera2.internal.compat;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class CameraManagerCompatBaseImpl implements CameraManagerCompat.CameraManagerCompatImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraManager f1706a;

    public CameraManagerCompatBaseImpl(Context context) {
        this.f1706a = (CameraManager) context.getSystemService("camera");
    }

    @Override // androidx.camera.camera2.internal.compat.CameraManagerCompat.CameraManagerCompatImpl
    public Set a() {
        return Collections.EMPTY_SET;
    }

    @Override // androidx.camera.camera2.internal.compat.CameraManagerCompat.CameraManagerCompatImpl
    public final String[] b() throws CameraAccessExceptionCompat {
        try {
            return this.f1706a.getCameraIdList();
        } catch (CameraAccessException e2) {
            throw new CameraAccessExceptionCompat(e2);
        }
    }

    @Override // androidx.camera.camera2.internal.compat.CameraManagerCompat.CameraManagerCompatImpl
    public final CameraManager c() {
        return this.f1706a;
    }
}
