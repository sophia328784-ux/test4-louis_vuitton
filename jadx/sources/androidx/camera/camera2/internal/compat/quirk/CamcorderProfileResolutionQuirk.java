package androidx.camera.camera2.internal.compat.quirk;

import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.StreamConfigurationMapCompat;
import androidx.camera.core.impl.Quirk;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CamcorderProfileResolutionQuirk implements Quirk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StreamConfigurationMapCompat f1727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f1728b = null;

    public CamcorderProfileResolutionQuirk(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        this.f1727a = cameraCharacteristicsCompat.c();
    }
}
