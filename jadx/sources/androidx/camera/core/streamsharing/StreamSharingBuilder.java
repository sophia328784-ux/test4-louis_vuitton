package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.TargetConfig;
import defpackage.b21;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
class StreamSharingBuilder implements UseCaseConfig.Builder<StreamSharing, StreamSharingConfig, StreamSharingBuilder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableOptionsBundle f2651a;

    public StreamSharingBuilder(MutableOptionsBundle mutableOptionsBundle) {
        this.f2651a = mutableOptionsBundle;
        Config.Option option = TargetConfig.L;
        Class cls = (Class) mutableOptionsBundle.f(option, null);
        if (cls != null && !cls.equals(StreamSharing.class)) {
            b21.s("Invalid target class configuration for ", this, ": ", cls);
            throw null;
        }
        mutableOptionsBundle.o(UseCaseConfig.E, UseCaseConfigFactory.CaptureType.STREAM_SHARING);
        mutableOptionsBundle.o(option, StreamSharing.class);
        Config.Option option2 = TargetConfig.K;
        if (mutableOptionsBundle.f(option2, null) == null) {
            mutableOptionsBundle.o(option2, StreamSharing.class.getCanonicalName() + "-" + UUID.randomUUID());
        }
    }

    @Override // androidx.camera.core.ExtendableBuilder
    public final MutableConfig a() {
        return this.f2651a;
    }

    @Override // androidx.camera.core.impl.UseCaseConfig.Builder
    public final UseCaseConfig d() {
        return new StreamSharingConfig(OptionsBundle.c0(this.f2651a));
    }
}
