package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.internal.ThreadConfig;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StreamSharingConfig implements UseCaseConfig<StreamSharing>, ImageOutputConfig, ThreadConfig {
    public static final Config.Option N = Config.Option.a(List.class, "camerax.core.streamSharing.captureTypes");
    public final OptionsBundle M;

    public StreamSharingConfig(OptionsBundle optionsBundle) {
        this.M = optionsBundle;
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public final Config l() {
        return this.M;
    }
}
