package androidx.camera.camera2;

import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import defpackage.qi;
import defpackage.ri;
import defpackage.si;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2Config$DefaultProvider implements CameraXConfig.Provider {
    @Override // androidx.camera.core.CameraXConfig.Provider
    public CameraXConfig getCameraXConfig() {
        qi qiVar = new qi();
        ri riVar = new ri();
        si siVar = new si();
        CameraXConfig.Builder builder = new CameraXConfig.Builder();
        Config.Option option = CameraXConfig.N;
        MutableOptionsBundle mutableOptionsBundle = builder.f1907a;
        mutableOptionsBundle.o(option, qiVar);
        mutableOptionsBundle.o(CameraXConfig.O, riVar);
        mutableOptionsBundle.o(CameraXConfig.P, siVar);
        mutableOptionsBundle.o(CameraXConfig.X, 0);
        mutableOptionsBundle.o(CameraXConfig.Y, Boolean.TRUE);
        return new CameraXConfig(OptionsBundle.c0(mutableOptionsBundle));
    }
}
