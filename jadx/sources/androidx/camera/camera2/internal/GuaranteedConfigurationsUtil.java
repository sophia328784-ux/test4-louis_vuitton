package androidx.camera.camera2.internal;

import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class GuaranteedConfigurationsUtil {
    public static ArrayList a(SurfaceConfig.ConfigSize configSize, SurfaceConfig.ConfigSize configSize2) {
        ArrayList arrayList = new ArrayList();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        arrayList.add(new SurfaceCombination(SurfaceConfig.a(configType, configSize), SurfaceConfig.a(SurfaceConfig.ConfigType.JPEG, configSize2)));
        arrayList.add(new SurfaceCombination(SurfaceConfig.a(configType, configSize), SurfaceConfig.a(SurfaceConfig.ConfigType.JPEG_R, configSize2)));
        return arrayList;
    }
}
