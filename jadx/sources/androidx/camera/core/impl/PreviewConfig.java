package androidx.camera.core.impl;

import androidx.camera.core.Preview;
import androidx.camera.core.internal.ThreadConfig;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewConfig implements UseCaseConfig<Preview>, ImageOutputConfig, ThreadConfig {
    public final OptionsBundle M;

    public PreviewConfig(OptionsBundle optionsBundle) {
        this.M = optionsBundle;
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public final Config l() {
        return this.M;
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public final int m() {
        return ((Integer) a(ImageInputConfig.f2303h)).intValue();
    }
}
