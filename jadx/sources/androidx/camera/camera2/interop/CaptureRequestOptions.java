package androidx.camera.camera2.interop;

import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.ReadableConfig;
import defpackage.p3;

/* JADX INFO: loaded from: classes.dex */
public class CaptureRequestOptions implements ReadableConfig {
    public final Config M;

    public static final class Builder implements ExtendableBuilder<CaptureRequestOptions> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutableOptionsBundle f1857a = MutableOptionsBundle.d0();

        public static Builder c(Config config) {
            Builder builder = new Builder();
            config.h(new p3(builder, config, 5));
            return builder;
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public final MutableConfig a() {
            throw null;
        }

        public final CaptureRequestOptions b() {
            return new CaptureRequestOptions(OptionsBundle.c0(this.f1857a));
        }
    }

    public CaptureRequestOptions(Config config) {
        this.M = config;
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public final Config l() {
        return this.M;
    }
}
