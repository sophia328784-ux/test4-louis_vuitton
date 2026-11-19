package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.feature.DynamicRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.core.util.Preconditions;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public abstract class UseCase {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public UseCaseConfig f1993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public UseCaseConfig f1994f;
    public HashSet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public UseCaseConfig f1995h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public StreamSpec f1996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public UseCaseConfig f1997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f1998k;
    public CameraInternal m;
    public CameraInternal n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1990a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f1991b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1992c = new Object();
    public State d = State.INACTIVE;
    public Matrix l = new Matrix();
    public androidx.camera.core.impl.SessionConfig o = androidx.camera.core.impl.SessionConfig.a();
    public androidx.camera.core.impl.SessionConfig p = androidx.camera.core.impl.SessionConfig.a();

    /* JADX INFO: renamed from: androidx.camera.core.UseCase$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1999a;

        static {
            int[] iArr = new int[VideoStabilizationFeature.StabilizationMode.values().length];
            f1999a = iArr;
            try {
                iArr[VideoStabilizationFeature.StabilizationMode.OFF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1999a[VideoStabilizationFeature.StabilizationMode.ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1999a[VideoStabilizationFeature.StabilizationMode.PREVIEW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ State[] $VALUES;
        public static final State ACTIVE;
        public static final State INACTIVE;

        static {
            State state = new State("ACTIVE", 0);
            ACTIVE = state;
            State state2 = new State("INACTIVE", 1);
            INACTIVE = state2;
            $VALUES = new State[]{state, state2};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public interface StateChangeCallback {
        void d(UseCase useCase);

        void e(UseCase useCase);

        void m(UseCase useCase);

        void r(UseCase useCase);
    }

    public UseCase(UseCaseConfig useCaseConfig) {
        this.f1994f = useCaseConfig;
        this.f1995h = useCaseConfig;
    }

    public final boolean A(int i2) {
        Size sizeV;
        int iG = ((ImageOutputConfig) this.f1995h).G(-1);
        if (iG != -1 && iG == i2) {
            return false;
        }
        UseCaseConfig.Builder builderM = m(this.f1994f);
        ImageOutputConfig imageOutputConfig = (ImageOutputConfig) builderM.d();
        int iG2 = imageOutputConfig.G(-1);
        if (iG2 == -1 || iG2 != i2) {
            ((ImageOutputConfig.Builder) builderM).b(i2);
        }
        if (iG2 != -1 && i2 != -1 && iG2 != i2) {
            if (Math.abs(CameraOrientationUtil.b(i2) - CameraOrientationUtil.b(iG2)) % Sink.ORIENTATION_180 == 90 && (sizeV = imageOutputConfig.v()) != null) {
                ((ImageOutputConfig.Builder) builderM).c(new Size(sizeV.getHeight(), sizeV.getWidth()));
            }
        }
        this.f1994f = builderM.d();
        CameraInternal cameraInternalC = c();
        if (cameraInternalC == null) {
            this.f1995h = this.f1994f;
            return true;
        }
        this.f1995h = o(cameraInternalC.k(), this.f1993e, this.f1997j);
        return true;
    }

    public void B(Rect rect) {
        this.f1998k = rect;
    }

    public final void C(CameraInternal cameraInternal) {
        z();
        synchronized (this.f1992c) {
            try {
                CameraInternal cameraInternal2 = this.m;
                if (cameraInternal == cameraInternal2) {
                    this.f1991b.remove(cameraInternal2);
                    this.m = null;
                }
                CameraInternal cameraInternal3 = this.n;
                if (cameraInternal == cameraInternal3) {
                    this.f1991b.remove(cameraInternal3);
                    this.n = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f1996i = null;
        this.f1998k = null;
        this.f1995h = this.f1994f;
        this.f1993e = null;
        this.f1997j = null;
    }

    public final void D(List list) {
        if (list.isEmpty()) {
            return;
        }
        this.o = (androidx.camera.core.impl.SessionConfig) list.get(0);
        if (list.size() > 1) {
            this.p = (androidx.camera.core.impl.SessionConfig) list.get(1);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            for (DeferrableSurface deferrableSurface : ((androidx.camera.core.impl.SessionConfig) it.next()).b()) {
                if (deferrableSurface.f2294j == null) {
                    deferrableSurface.f2294j = getClass();
                }
            }
        }
    }

    public final void a(androidx.camera.core.impl.SessionConfig.Builder builder, StreamSpec streamSpec) {
        if (!StreamSpec.f2348a.equals(streamSpec.c())) {
            builder.q(streamSpec.c());
            return;
        }
        synchronized (this.f1992c) {
            try {
                CameraInternal cameraInternal = this.m;
                cameraInternal.getClass();
                ArrayList arrayListC = cameraInternal.k().j().c(AeFpsRangeQuirk.class);
                boolean z = true;
                if (arrayListC.size() > 1) {
                    z = false;
                }
                Preconditions.b(z, "There should not have more than one AeFpsRangeQuirk.");
                if (!arrayListC.isEmpty()) {
                    builder.q(((AeFpsRangeQuirk) arrayListC.get(0)).a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(CameraInternal cameraInternal, CameraInternal cameraInternal2, UseCaseConfig useCaseConfig, UseCaseConfig useCaseConfig2) {
        synchronized (this.f1992c) {
            this.m = cameraInternal;
            this.n = cameraInternal2;
            this.f1991b.add(cameraInternal);
            if (cameraInternal2 != null) {
                this.f1991b.add(cameraInternal2);
            }
        }
        this.f1993e = useCaseConfig;
        this.f1997j = useCaseConfig2;
        this.f1995h = o(cameraInternal.k(), this.f1993e, this.f1997j);
        s();
    }

    public final CameraInternal c() {
        CameraInternal cameraInternal;
        synchronized (this.f1992c) {
            cameraInternal = this.m;
        }
        return cameraInternal;
    }

    public final CameraControlInternal d() {
        synchronized (this.f1992c) {
            try {
                CameraInternal cameraInternal = this.m;
                if (cameraInternal == null) {
                    return CameraControlInternal.f2230a;
                }
                return cameraInternal.f();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String e() {
        CameraInternal cameraInternalC = c();
        Preconditions.e(cameraInternalC, "No camera attached to use case: " + this);
        return cameraInternalC.k().b();
    }

    public abstract UseCaseConfig f(boolean z, UseCaseConfigFactory useCaseConfigFactory);

    public final String g() {
        String strR = this.f1995h.r("<UnknownUseCase-" + hashCode() + ">");
        Objects.requireNonNull(strR);
        return strR;
    }

    public final int h(CameraInternal cameraInternal, boolean z) {
        int iT = cameraInternal.k().t(l());
        return (cameraInternal.p() || !z) ? iT : TransformUtils.k(-iT);
    }

    public final CameraInternal i() {
        CameraInternal cameraInternal;
        synchronized (this.f1992c) {
            cameraInternal = this.n;
        }
        return cameraInternal;
    }

    public Set j(CameraInfoInternal cameraInfoInternal) {
        return null;
    }

    public abstract HashSet k();

    public final int l() {
        return ((ImageOutputConfig) this.f1995h).G(0);
    }

    public abstract UseCaseConfig.Builder m(Config config);

    public final boolean n(CameraInternal cameraInternal) {
        int iJ = ((ImageOutputConfig) this.f1995h).J();
        if (iJ == -1 || iJ == 0) {
            return false;
        }
        if (iJ == 1) {
            return true;
        }
        if (iJ == 2) {
            return cameraInternal.l();
        }
        md.h(pq0.k(iJ, "Unknown mirrorMode: "));
        return false;
    }

    public final UseCaseConfig o(CameraInfoInternal cameraInfoInternal, UseCaseConfig useCaseConfig, UseCaseConfig useCaseConfig2) {
        MutableOptionsBundle mutableOptionsBundleD0;
        if (useCaseConfig2 != null) {
            mutableOptionsBundleD0 = MutableOptionsBundle.e0(useCaseConfig2);
            mutableOptionsBundleD0.M.remove(TargetConfig.K);
        } else {
            mutableOptionsBundleD0 = MutableOptionsBundle.d0();
        }
        TreeMap treeMap = mutableOptionsBundleD0.M;
        if (this.f1994f.b(ImageOutputConfig.f2306k) || this.f1994f.b(ImageOutputConfig.o)) {
            Config.Option option = ImageOutputConfig.s;
            if (treeMap.containsKey(option)) {
                treeMap.remove(option);
            }
        }
        UseCaseConfig useCaseConfig3 = this.f1994f;
        Config.Option option2 = ImageOutputConfig.s;
        if (useCaseConfig3.b(option2)) {
            Config.Option option3 = ImageOutputConfig.q;
            if (treeMap.containsKey(option3) && ((ResolutionSelector) this.f1994f.a(option2)).f2634b != null) {
                treeMap.remove(option3);
            }
        }
        Iterator it = this.f1994f.d().iterator();
        while (it.hasNext()) {
            Config.H(mutableOptionsBundleD0, mutableOptionsBundleD0, this.f1994f, (Config.Option) it.next());
        }
        if (useCaseConfig != null) {
            for (Config.Option option4 : useCaseConfig.d()) {
                if (!option4.c().equals(TargetConfig.K.c())) {
                    Config.H(mutableOptionsBundleD0, mutableOptionsBundleD0, useCaseConfig, option4);
                }
            }
        }
        if (treeMap.containsKey(ImageOutputConfig.o)) {
            Config.Option option5 = ImageOutputConfig.f2306k;
            if (treeMap.containsKey(option5)) {
                treeMap.remove(option5);
            }
        }
        Config.Option option6 = ImageOutputConfig.s;
        if (treeMap.containsKey(option6)) {
            ((ResolutionSelector) mutableOptionsBundleD0.a(option6)).getClass();
        }
        Objects.toString(this.g);
        toString();
        Logger.c(3, "UseCase");
        HashSet<GroupableFeature> hashSet = this.g;
        if (hashSet != null) {
            DynamicRange dynamicRange = DynamicRangeFeature.f2028e;
            Range range = StreamSpec.f2348a;
            VideoStabilizationFeature.StabilizationMode stabilizationMode = VideoStabilizationFeature.f2034e;
            for (GroupableFeature groupableFeature : hashSet) {
                if (groupableFeature instanceof DynamicRangeFeature) {
                    dynamicRange = ((DynamicRangeFeature) groupableFeature).f2029c;
                } else if (groupableFeature instanceof FpsRangeFeature) {
                    FpsRangeFeature fpsRangeFeature = (FpsRangeFeature) groupableFeature;
                    range = new Range(Integer.valueOf(fpsRangeFeature.f2031c), Integer.valueOf(fpsRangeFeature.d));
                } else if (groupableFeature instanceof VideoStabilizationFeature) {
                    stabilizationMode = ((VideoStabilizationFeature) groupableFeature).f2035c;
                }
            }
            if ((this instanceof Preview) || CameraUseCaseAdapter.C(this)) {
                mutableOptionsBundleD0.o(ImageInputConfig.f2305j, dynamicRange);
            }
            mutableOptionsBundleD0.o(UseCaseConfig.A, range);
            int i2 = AnonymousClass1.f1999a[stabilizationMode.ordinal()];
            if (i2 == 1) {
                mutableOptionsBundleD0.o(UseCaseConfig.F, 1);
                mutableOptionsBundleD0.o(UseCaseConfig.G, 1);
            } else if (i2 == 2) {
                mutableOptionsBundleD0.o(UseCaseConfig.F, 0);
                mutableOptionsBundleD0.o(UseCaseConfig.G, 2);
            } else if (i2 == 3) {
                mutableOptionsBundleD0.o(UseCaseConfig.F, 2);
                mutableOptionsBundleD0.o(UseCaseConfig.G, 0);
            }
        }
        return u(cameraInfoInternal, m(mutableOptionsBundleD0));
    }

    public final void p() {
        this.d = State.ACTIVE;
        r();
    }

    public final void q() {
        Iterator it = this.f1991b.iterator();
        while (it.hasNext()) {
            ((StateChangeCallback) it.next()).m(this);
        }
    }

    public final void r() {
        int iOrdinal = this.d.ordinal();
        HashSet hashSet = this.f1991b;
        if (iOrdinal == 0) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((StateChangeCallback) it.next()).d(this);
            }
        } else {
            if (iOrdinal != 1) {
                return;
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                ((StateChangeCallback) it2.next()).r(this);
            }
        }
    }

    public void s() {
    }

    public void t() {
    }

    public abstract UseCaseConfig u(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder);

    public void v() {
        this.f1990a = true;
    }

    public void w() {
        this.f1990a = false;
    }

    public abstract StreamSpec x(Config config);

    public abstract StreamSpec y(StreamSpec streamSpec, StreamSpec streamSpec2);

    public void z() {
    }
}
