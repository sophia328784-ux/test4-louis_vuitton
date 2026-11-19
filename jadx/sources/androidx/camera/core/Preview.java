package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.ThreadConfig;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.core.util.Preconditions;
import defpackage.aa0;
import defpackage.b21;
import defpackage.e21;
import defpackage.f20;
import defpackage.hn0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class Preview extends UseCase {
    public static final Defaults x = new Defaults();
    public static final Executor y = CameraXExecutors.c();
    public SurfaceProvider q;
    public Executor r;
    public androidx.camera.core.impl.SessionConfig.Builder s;
    public DeferrableSurface t;
    public SurfaceEdge u;
    public SurfaceRequest v;
    public androidx.camera.core.impl.SessionConfig.CloseableErrorListener w;

    public static final class Defaults implements ConfigProvider<PreviewConfig> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PreviewConfig f1948a;

        static {
            ResolutionSelector.Builder builder = new ResolutionSelector.Builder();
            AspectRatioStrategy aspectRatioStrategy = AspectRatioStrategy.f2630c;
            builder.f2635a = aspectRatioStrategy;
            ResolutionStrategy resolutionStrategy = ResolutionStrategy.f2637c;
            builder.f2636b = resolutionStrategy;
            ResolutionSelector resolutionSelector = new ResolutionSelector(aspectRatioStrategy, resolutionStrategy);
            DynamicRange dynamicRange = DynamicRange.f1913c;
            Builder builder2 = new Builder();
            Config.Option option = UseCaseConfig.y;
            MutableOptionsBundle mutableOptionsBundle = builder2.f1947a;
            mutableOptionsBundle.o(option, 2);
            mutableOptionsBundle.o(ImageOutputConfig.f2306k, 0);
            mutableOptionsBundle.o(ImageOutputConfig.s, resolutionSelector);
            mutableOptionsBundle.o(UseCaseConfig.D, Boolean.TRUE);
            mutableOptionsBundle.o(ImageInputConfig.f2305j, dynamicRange);
            f1948a = new PreviewConfig(OptionsBundle.c0(mutableOptionsBundle));
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface SurfaceProvider {
        void a(SurfaceRequest surfaceRequest);
    }

    @Override // androidx.camera.core.UseCase
    public final void B(Rect rect) {
        this.f1998k = rect;
        CameraInternal cameraInternalC = c();
        SurfaceEdge surfaceEdge = this.u;
        if (cameraInternalC == null || surfaceEdge == null) {
            return;
        }
        Threads.c(new e21(surfaceEdge, h(cameraInternalC, n(cameraInternalC)), ((ImageOutputConfig) this.f1995h).b0()));
    }

    public final void E() {
        androidx.camera.core.impl.SessionConfig.CloseableErrorListener closeableErrorListener = this.w;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
            this.w = null;
        }
        DeferrableSurface deferrableSurface = this.t;
        if (deferrableSurface != null) {
            deferrableSurface.a();
            this.t = null;
        }
        SurfaceEdge surfaceEdge = this.u;
        if (surfaceEdge != null) {
            surfaceEdge.c();
            this.u = null;
        }
        SurfaceRequest surfaceRequest = this.v;
        if (surfaceRequest != null) {
            synchronized (surfaceRequest.f1973a) {
                surfaceRequest.o = null;
                surfaceRequest.p = null;
            }
        }
        this.v = null;
    }

    public final void F(SurfaceProvider surfaceProvider) {
        Threads.a();
        if (surfaceProvider == null) {
            this.q = null;
            this.d = UseCase.State.INACTIVE;
            r();
            return;
        }
        this.q = surfaceProvider;
        this.r = y;
        StreamSpec streamSpec = this.f1996i;
        if ((streamSpec != null ? streamSpec.f() : null) != null) {
            G((PreviewConfig) this.f1995h, this.f1996i);
            q();
        }
        p();
    }

    public final void G(PreviewConfig previewConfig, StreamSpec streamSpec) {
        Rect rect;
        Threads.a();
        CameraInternal cameraInternalC = c();
        Objects.requireNonNull(cameraInternalC);
        E();
        int i2 = 1;
        Preconditions.f(null, this.u == null);
        Matrix matrix = this.l;
        boolean zP = cameraInternalC.p();
        Size sizeF = streamSpec.f();
        Rect rect2 = this.f1998k;
        if (rect2 != null) {
            rect = rect2;
        } else {
            rect = sizeF != null ? new Rect(0, 0, sizeF.getWidth(), sizeF.getHeight()) : null;
        }
        Objects.requireNonNull(rect);
        SurfaceEdge surfaceEdge = new SurfaceEdge(1, 34, streamSpec, matrix, zP, rect, h(cameraInternalC, n(cameraInternalC)), ((ImageOutputConfig) this.f1995h).b0(), cameraInternalC.p() && n(cameraInternalC));
        this.u = surfaceEdge;
        surfaceEdge.a(new hn0(this, 7));
        SurfaceRequest surfaceRequestD = this.u.d(cameraInternalC, true);
        this.v = surfaceRequestD;
        this.t = surfaceRequestD.m;
        if (this.q != null) {
            CameraInternal cameraInternalC2 = c();
            SurfaceEdge surfaceEdge2 = this.u;
            if (cameraInternalC2 != null && surfaceEdge2 != null) {
                Threads.c(new e21(surfaceEdge2, h(cameraInternalC2, n(cameraInternalC2)), ((ImageOutputConfig) this.f1995h).b0()));
            }
            SurfaceProvider surfaceProvider = this.q;
            surfaceProvider.getClass();
            SurfaceRequest surfaceRequest = this.v;
            surfaceRequest.getClass();
            this.r.execute(new aa0(surfaceProvider, surfaceRequest, 16));
        }
        androidx.camera.core.impl.SessionConfig.Builder builderM = androidx.camera.core.impl.SessionConfig.Builder.m(previewConfig, streamSpec.f());
        builderM.v(streamSpec.g());
        a(builderM, streamSpec);
        builderM.u(previewConfig.B());
        if (streamSpec.d() != null) {
            builderM.e(streamSpec.d());
        }
        if (this.q != null) {
            builderM.i(this.t, streamSpec.b(), ((ImageOutputConfig) this.f1995h).J());
        }
        androidx.camera.core.impl.SessionConfig.CloseableErrorListener closeableErrorListener = this.w;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
        }
        androidx.camera.core.impl.SessionConfig.CloseableErrorListener closeableErrorListener2 = new androidx.camera.core.impl.SessionConfig.CloseableErrorListener(new f20(this, i2));
        this.w = closeableErrorListener2;
        builderM.p(closeableErrorListener2);
        this.s = builderM;
        Object[] objArr = {builderM.k()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        D(Collections.unmodifiableList(arrayList));
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig f(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        x.getClass();
        PreviewConfig previewConfig = Defaults.f1948a;
        Config configA = useCaseConfigFactory.a(previewConfig.S(), 1);
        if (z) {
            configA = Config.U(configA, previewConfig);
        }
        if (configA == null) {
            return null;
        }
        return new PreviewConfig(OptionsBundle.c0(((Builder) m(configA)).f1947a));
    }

    @Override // androidx.camera.core.UseCase
    public final HashSet k() {
        HashSet hashSet = new HashSet();
        hashSet.add(1);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder m(Config config) {
        return new Builder(MutableOptionsBundle.e0(config));
    }

    public final String toString() {
        return "Preview:".concat(g());
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig u(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        builder.a().o(ImageInputConfig.f2303h, 34);
        return builder.d();
    }

    @Override // androidx.camera.core.UseCase
    public final StreamSpec x(Config config) {
        this.s.e(config);
        Object[] objArr = {this.s.k()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        D(Collections.unmodifiableList(arrayList));
        StreamSpec.Builder builderI = this.f1996i.i();
        builderI.d(config);
        return builderI.a();
    }

    @Override // androidx.camera.core.UseCase
    public final StreamSpec y(StreamSpec streamSpec, StreamSpec streamSpec2) {
        Objects.toString(streamSpec);
        Objects.toString(streamSpec2);
        Logger.c(3, "Preview");
        G((PreviewConfig) this.f1995h, streamSpec);
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public final void z() {
        E();
    }

    public static final class Builder implements UseCaseConfig.Builder<Preview, PreviewConfig, Builder>, ImageOutputConfig.Builder<Builder>, ImageInputConfig.Builder<Builder>, ThreadConfig.Builder<Builder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutableOptionsBundle f1947a;

        public Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.f1947a = mutableOptionsBundle;
            Config.Option option = TargetConfig.L;
            Class cls = (Class) mutableOptionsBundle.f(option, null);
            if (cls != null && !cls.equals(Preview.class)) {
                b21.s("Invalid target class configuration for ", this, ": ", cls);
                throw null;
            }
            mutableOptionsBundle.o(UseCaseConfig.E, UseCaseConfigFactory.CaptureType.PREVIEW);
            mutableOptionsBundle.o(option, Preview.class);
            Config.Option option2 = TargetConfig.K;
            if (mutableOptionsBundle.f(option2, null) == null) {
                mutableOptionsBundle.o(option2, Preview.class.getCanonicalName() + "-" + UUID.randomUUID());
            }
            Config.Option option3 = ImageOutputConfig.n;
            if (((Integer) mutableOptionsBundle.f(option3, -1)).intValue() == -1) {
                mutableOptionsBundle.o(option3, 2);
            }
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public final MutableConfig a() {
            return this.f1947a;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public final Object b(int i2) {
            Config.Option option = ImageOutputConfig.l;
            Integer numValueOf = Integer.valueOf(i2);
            MutableOptionsBundle mutableOptionsBundle = this.f1947a;
            mutableOptionsBundle.o(option, numValueOf);
            mutableOptionsBundle.o(ImageOutputConfig.m, Integer.valueOf(i2));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public final Object c(Size size) {
            this.f1947a.o(ImageOutputConfig.o, size);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public final UseCaseConfig d() {
            return new PreviewConfig(OptionsBundle.c0(this.f1947a));
        }

        public Builder() {
            this(MutableOptionsBundle.d0());
        }
    }
}
