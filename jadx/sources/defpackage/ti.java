package defpackage;

import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ti implements CameraConfig.PostviewFormatSelector {
    @Override // androidx.camera.core.impl.CameraConfig.PostviewFormatSelector
    public final int a(ArrayList arrayList) {
        Config.Option option = CameraConfig.f2224a;
        if (arrayList.contains(35)) {
            return 35;
        }
        if (arrayList.contains(256)) {
            return 256;
        }
        return arrayList.contains(4101) ? 4101 : 0;
    }
}
