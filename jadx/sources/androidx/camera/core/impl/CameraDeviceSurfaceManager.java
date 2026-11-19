package androidx.camera.core.impl;

import android.content.Context;
import android.util.Size;
import androidx.camera.camera2.internal.Camera2DeviceSurfaceManager;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface CameraDeviceSurfaceManager extends InternalCameraPresenceListener {

    public interface Provider {
        Camera2DeviceSurfaceManager a(Context context, Object obj, Set set);
    }

    SurfaceConfig a(int i2, String str, int i3, Size size, StreamUseCase streamUseCase);

    SurfaceStreamSpecQueryResult e(int i2, String str, ArrayList arrayList, LinkedHashMap linkedHashMap, boolean z, boolean z2, boolean z3);
}
