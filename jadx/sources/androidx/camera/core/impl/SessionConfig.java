package androidx.camera.core.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.params.InputConfiguration;
import android.media.MediaCodec;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.internal.HighSpeedFpsModifier;
import androidx.camera.core.internal.compat.workaround.SurfaceSorter;
import defpackage.ct0;
import defpackage.f20;
import defpackage.md;
import defpackage.r81;
import defpackage.xm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SessionConfig {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final List f2324j = Arrays.asList(1, 5, 3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OutputConfig f2326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f2327c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f2328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ErrorListener f2329f;
    public final CaptureConfig g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2330h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InputConfiguration f2331i;

    public static class BaseBuilder {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CloseableErrorListener f2336f;
        public InputConfiguration g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public OutputConfig f2338i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashSet f2332a = new LinkedHashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CaptureConfig.Builder f2333b = new CaptureConfig.Builder();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f2334c = new ArrayList();
        public final ArrayList d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f2335e = new ArrayList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2337h = 0;
    }

    public static class Builder extends BaseBuilder {
        public static Builder m(UseCaseConfig useCaseConfig, Size size) {
            OptionUnpacker optionUnpackerN = useCaseConfig.N();
            if (optionUnpackerN == null) {
                ct0.o(useCaseConfig.r(useCaseConfig.toString()), "Implementation is missing option unpacker for ");
                return null;
            }
            Builder builder = new Builder();
            optionUnpackerN.a(size, useCaseConfig, builder);
            return builder;
        }

        public final void a(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) it.next();
                this.f2333b.b(cameraCaptureCallback);
                ArrayList arrayList = this.f2335e;
                if (!arrayList.contains(cameraCaptureCallback)) {
                    arrayList.add(cameraCaptureCallback);
                }
            }
        }

        public final void b(Collection collection) {
            this.f2333b.a(collection);
        }

        public final void c(CameraCaptureCallback cameraCaptureCallback) {
            this.f2333b.b(cameraCaptureCallback);
            ArrayList arrayList = this.f2335e;
            if (arrayList.contains(cameraCaptureCallback)) {
                return;
            }
            arrayList.add(cameraCaptureCallback);
        }

        public final void d(CameraDevice.StateCallback stateCallback) {
            ArrayList arrayList = this.f2334c;
            if (arrayList.contains(stateCallback)) {
                return;
            }
            arrayList.add(stateCallback);
        }

        public final void e(Config config) {
            this.f2333b.c(config);
        }

        public final void f(DeferrableSurface deferrableSurface, DynamicRange dynamicRange) {
            OutputConfig.Builder builderA = OutputConfig.a(deferrableSurface);
            AutoValue_SessionConfig_OutputConfig.Builder builder = (AutoValue_SessionConfig_OutputConfig.Builder) builderA;
            if (dynamicRange == null) {
                r81.d("Null dynamicRange");
                return;
            }
            builder.f2203e = dynamicRange;
            this.f2332a.add(builderA.a());
        }

        public final void g(CameraCaptureCallback cameraCaptureCallback) {
            this.f2333b.b(cameraCaptureCallback);
        }

        public final void h(CameraCaptureSession.StateCallback stateCallback) {
            ArrayList arrayList = this.d;
            if (arrayList.contains(stateCallback)) {
                return;
            }
            arrayList.add(stateCallback);
        }

        public final void i(DeferrableSurface deferrableSurface, DynamicRange dynamicRange, int i2) {
            AutoValue_SessionConfig_OutputConfig.Builder builder = (AutoValue_SessionConfig_OutputConfig.Builder) OutputConfig.a(deferrableSurface);
            if (dynamicRange == null) {
                r81.d("Null dynamicRange");
                return;
            }
            builder.f2203e = dynamicRange;
            builder.f2202c = Integer.valueOf(i2);
            this.f2332a.add(builder.a());
            this.f2333b.d(deferrableSurface);
        }

        public final void j(String str, Number number) {
            this.f2333b.g.f2362a.put(str, number);
        }

        public final SessionConfig k() {
            return new SessionConfig(new ArrayList(this.f2332a), new ArrayList(this.f2334c), new ArrayList(this.d), new ArrayList(this.f2335e), this.f2333b.e(), this.f2336f, this.g, this.f2337h, this.f2338i);
        }

        public final void l() {
            this.f2332a.clear();
            this.f2333b.f2274a.clear();
        }

        public final List n() {
            return Collections.unmodifiableList(this.f2335e);
        }

        public final void o(CameraCaptureCallback cameraCaptureCallback) {
            this.f2333b.f2277e.remove(cameraCaptureCallback);
            this.f2335e.remove(cameraCaptureCallback);
        }

        public final void p(CloseableErrorListener closeableErrorListener) {
            this.f2336f = closeableErrorListener;
        }

        public final void q(Range range) {
            CaptureConfig.Builder builder = this.f2333b;
            builder.getClass();
            builder.f2275b.o(CaptureConfig.f2267k, range);
        }

        public final void r(Config config) {
            CaptureConfig.Builder builder = this.f2333b;
            builder.getClass();
            builder.f2275b = MutableOptionsBundle.e0(config);
        }

        public final void s(InputConfiguration inputConfiguration) {
            this.g = inputConfiguration;
        }

        public final void t(ImmediateSurface immediateSurface) {
            this.f2338i = OutputConfig.a(immediateSurface).a();
        }

        public final void u(int i2) {
            if (i2 != 0) {
                CaptureConfig.Builder builder = this.f2333b;
                builder.getClass();
                if (i2 != 0) {
                    builder.f2275b.o(UseCaseConfig.F, Integer.valueOf(i2));
                }
            }
        }

        public final void v(int i2) {
            this.f2337h = i2;
        }

        public final void w(int i2) {
            this.f2333b.f2276c = i2;
        }

        public final void x(int i2) {
            if (i2 != 0) {
                CaptureConfig.Builder builder = this.f2333b;
                builder.getClass();
                if (i2 != 0) {
                    builder.f2275b.o(UseCaseConfig.G, Integer.valueOf(i2));
                }
            }
        }
    }

    public static final class CloseableErrorListener implements ErrorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AtomicBoolean f2339a = new AtomicBoolean(false);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ErrorListener f2340b;

        public CloseableErrorListener(ErrorListener errorListener) {
            this.f2340b = errorListener;
        }

        @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
        public final void a(SessionConfig sessionConfig, SessionError sessionError) {
            if (this.f2339a.get()) {
                return;
            }
            this.f2340b.a(sessionConfig, sessionError);
        }

        public final void b() {
            this.f2339a.set(true);
        }
    }

    public interface ErrorListener {
        void a(SessionConfig sessionConfig, SessionError sessionError);
    }

    public interface OptionUnpacker {
        void a(Size size, UseCaseConfig useCaseConfig, Builder builder);
    }

    public static abstract class OutputConfig {

        public static abstract class Builder {
            public abstract OutputConfig a();
        }

        public static Builder a(DeferrableSurface deferrableSurface) {
            AutoValue_SessionConfig_OutputConfig.Builder builder = new AutoValue_SessionConfig_OutputConfig.Builder();
            if (deferrableSurface == null) {
                r81.d("Null surface");
                return null;
            }
            builder.f2200a = deferrableSurface;
            List list = Collections.EMPTY_LIST;
            if (list == null) {
                r81.d("Null sharedSurfaces");
                return null;
            }
            builder.f2201b = list;
            builder.f2202c = -1;
            builder.d = -1;
            DynamicRange dynamicRange = DynamicRange.d;
            if (dynamicRange != null) {
                builder.f2203e = dynamicRange;
                return builder;
            }
            r81.d("Null dynamicRange");
            return null;
        }

        public abstract DynamicRange b();

        public abstract int c();

        public abstract String d();

        public abstract List e();

        public abstract DeferrableSurface f();

        public abstract int g();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SessionError {
        private static final /* synthetic */ SessionError[] $VALUES;
        public static final SessionError SESSION_ERROR_SURFACE_NEEDS_RESET;
        public static final SessionError SESSION_ERROR_UNKNOWN;

        static {
            SessionError sessionError = new SessionError("SESSION_ERROR_SURFACE_NEEDS_RESET", 0);
            SESSION_ERROR_SURFACE_NEEDS_RESET = sessionError;
            SessionError sessionError2 = new SessionError("SESSION_ERROR_UNKNOWN", 1);
            SESSION_ERROR_UNKNOWN = sessionError2;
            $VALUES = new SessionError[]{sessionError, sessionError2};
        }

        public static SessionError valueOf(String str) {
            return (SessionError) Enum.valueOf(SessionError.class, str);
        }

        public static SessionError[] values() {
            return (SessionError[]) $VALUES.clone();
        }
    }

    public static final class ValidatingBuilder extends BaseBuilder {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final SurfaceSorter f2341j = new SurfaceSorter();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f2342k = true;
        public final StringBuilder l = new StringBuilder();
        public boolean m = false;
        public final ArrayList n = new ArrayList();

        public final void a(SessionConfig sessionConfig) {
            CaptureConfig captureConfig = sessionConfig.g;
            int i2 = captureConfig.f2270c;
            CaptureConfig.Builder builder = this.f2333b;
            if (i2 != -1) {
                this.m = true;
                int i3 = builder.f2276c;
                List list = SessionConfig.f2324j;
                if (list.indexOf(Integer.valueOf(i2)) < list.indexOf(Integer.valueOf(i3))) {
                    i2 = i3;
                }
                builder.f2276c = i2;
            }
            Range rangeA = captureConfig.a();
            Range range = StreamSpec.f2348a;
            boolean zEquals = rangeA.equals(range);
            StringBuilder sb = this.l;
            if (!zEquals) {
                MutableOptionsBundle mutableOptionsBundle = builder.f2275b;
                Config.Option option = CaptureConfig.f2267k;
                boolean zEquals2 = ((Range) mutableOptionsBundle.f(option, range)).equals(range);
                MutableOptionsBundle mutableOptionsBundle2 = builder.f2275b;
                if (zEquals2) {
                    mutableOptionsBundle2.o(option, rangeA);
                } else if (!((Range) mutableOptionsBundle2.f(option, range)).equals(rangeA)) {
                    this.f2342k = false;
                    String str = "Different ExpectedFrameRateRange values; current = " + ((Range) builder.f2275b.f(option, range)) + ", new = " + rangeA;
                    Logger.a("ValidatingBuilder");
                    sb.append(str);
                }
            }
            int iC = captureConfig.c();
            if (iC != 0) {
                builder.getClass();
                if (iC != 0) {
                    builder.f2275b.o(UseCaseConfig.F, Integer.valueOf(iC));
                }
            }
            int iD = captureConfig.d();
            if (iD != 0) {
                builder.getClass();
                if (iD != 0) {
                    builder.f2275b.o(UseCaseConfig.G, Integer.valueOf(iD));
                }
            }
            TagBundle tagBundle = captureConfig.g;
            MutableTagBundle mutableTagBundle = builder.g;
            HashSet hashSet = builder.f2274a;
            mutableTagBundle.f2362a.putAll((Map) tagBundle.f2362a);
            this.f2334c.addAll(sessionConfig.f2327c);
            this.d.addAll(sessionConfig.d);
            builder.a(captureConfig.f2271e);
            this.f2335e.addAll(sessionConfig.f2328e);
            ErrorListener errorListener = sessionConfig.f2329f;
            if (errorListener != null) {
                this.n.add(errorListener);
            }
            InputConfiguration inputConfiguration = sessionConfig.f2331i;
            if (inputConfiguration != null) {
                this.g = inputConfiguration;
            }
            ArrayList arrayList = sessionConfig.f2325a;
            LinkedHashSet<OutputConfig> linkedHashSet = this.f2332a;
            linkedHashSet.addAll(arrayList);
            hashSet.addAll(Collections.unmodifiableList(captureConfig.f2268a));
            ArrayList arrayList2 = new ArrayList();
            for (OutputConfig outputConfig : linkedHashSet) {
                arrayList2.add(outputConfig.f());
                Iterator it = outputConfig.e().iterator();
                while (it.hasNext()) {
                    arrayList2.add((DeferrableSurface) it.next());
                }
            }
            if (!arrayList2.containsAll(hashSet)) {
                Logger.c(3, "ValidatingBuilder");
                this.f2342k = false;
                sb.append("Invalid configuration due to capture request surfaces are not a subset of surfaces");
            }
            int i4 = sessionConfig.f2330h;
            int i5 = this.f2337h;
            if (i4 != i5 && i4 != 0 && i5 != 0) {
                Logger.c(3, "ValidatingBuilder");
                this.f2342k = false;
                sb.append("Invalid configuration due to that two non-default session types are set");
            } else if (i4 != 0) {
                this.f2337h = i4;
            }
            OutputConfig outputConfig2 = sessionConfig.f2326b;
            if (outputConfig2 != null) {
                OutputConfig outputConfig3 = this.f2338i;
                if (outputConfig3 == outputConfig2 || outputConfig3 == null) {
                    this.f2338i = outputConfig2;
                } else {
                    Logger.c(3, "ValidatingBuilder");
                    this.f2342k = false;
                    sb.append("Invalid configuration due to that two different postview output configs are set");
                }
            }
            builder.c(captureConfig.f2269b);
        }

        /* JADX WARN: Code duplicated, block: B:31:0x0091  */
        /* JADX WARN: Code duplicated, block: B:36:0x00ae  */
        /* JADX WARN: Code duplicated, block: B:38:0x00b1 A[EDGE_INSN: B:38:0x00b1->B:39:0x00d1 BREAK  A[LOOP:0: B:16:0x003e->B:48:?]] */
        public final SessionConfig b() {
            Config.Option option;
            Range range;
            if (!this.f2342k) {
                md.n("Unsupported session configuration combination");
                return null;
            }
            ArrayList arrayList = new ArrayList(this.f2332a);
            SurfaceSorter surfaceSorter = this.f2341j;
            if (surfaceSorter.f2511a) {
                Collections.sort(arrayList, new xm(surfaceSorter, 4));
            }
            int i2 = this.f2337h;
            int i3 = 2;
            CaptureConfig.Builder builder = this.f2333b;
            if (i2 == 1) {
                new HighSpeedFpsModifier();
                builder.getClass();
                if (arrayList.size() == 2 && !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        DeferrableSurface deferrableSurfaceF = ((OutputConfig) it.next()).f();
                        deferrableSurfaceF.getClass();
                        if (Intrinsics.c(deferrableSurfaceF.f2294j, MediaCodec.class)) {
                            HashSet hashSet = builder.f2274a;
                            hashSet.getClass();
                            if (!hashSet.isEmpty()) {
                                Iterator it2 = hashSet.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        MutableOptionsBundle mutableOptionsBundle = builder.f2275b;
                                        option = CaptureConfig.f2267k;
                                        range = (Range) mutableOptionsBundle.f(option, StreamSpec.f2348a);
                                        if (range != null) {
                                            break;
                                        }
                                        if (((Number) range.getUpper()).intValue() >= 120) {
                                            range = null;
                                        } else {
                                            range = null;
                                        }
                                        if (range != null) {
                                            break;
                                        }
                                        Range range2 = new Range(30, range.getUpper());
                                        range.toString();
                                        range2.toString();
                                        Logger.c(3, "HighSpeedFpsModifier");
                                        builder.f2275b.o(option, range2);
                                        break;
                                    }
                                    DeferrableSurface deferrableSurface = (DeferrableSurface) it2.next();
                                    deferrableSurface.getClass();
                                    if (Intrinsics.c(deferrableSurface.f2294j, MediaCodec.class)) {
                                        break;
                                    }
                                }
                            } else {
                                MutableOptionsBundle mutableOptionsBundle2 = builder.f2275b;
                                option = CaptureConfig.f2267k;
                                range = (Range) mutableOptionsBundle2.f(option, StreamSpec.f2348a);
                                if (range != null) {
                                    break;
                                }
                                if (((Number) range.getUpper()).intValue() >= 120 || !Intrinsics.c(range.getLower(), range.getUpper())) {
                                    range = null;
                                }
                                if (range != null) {
                                    break;
                                }
                                Range range3 = new Range(30, range.getUpper());
                                range.toString();
                                range3.toString();
                                Logger.c(3, "HighSpeedFpsModifier");
                                builder.f2275b.o(option, range3);
                                break;
                            }
                        }
                    }
                }
            }
            return new SessionConfig(arrayList, new ArrayList(this.f2334c), new ArrayList(this.d), new ArrayList(this.f2335e), builder.e(), this.n.isEmpty() ? null : new f20(this, i3), this.g, this.f2337h, this.f2338i);
        }

        public final void c() {
            this.f2332a.clear();
            this.f2333b.f2274a.clear();
        }

        public final boolean d() {
            return this.m && this.f2342k;
        }
    }

    public SessionConfig(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, CaptureConfig captureConfig, ErrorListener errorListener, InputConfiguration inputConfiguration, int i2, OutputConfig outputConfig) {
        this.f2325a = arrayList;
        this.f2327c = Collections.unmodifiableList(arrayList2);
        this.d = Collections.unmodifiableList(arrayList3);
        this.f2328e = Collections.unmodifiableList(arrayList4);
        this.f2329f = errorListener;
        this.g = captureConfig;
        this.f2331i = inputConfiguration;
        this.f2330h = i2;
        this.f2326b = outputConfig;
    }

    public static SessionConfig a() {
        return new SessionConfig(new ArrayList(), new ArrayList(0), new ArrayList(0), new ArrayList(0), new CaptureConfig.Builder().e(), null, null, 0, null);
    }

    public final List b() {
        ArrayList arrayList = new ArrayList();
        for (OutputConfig outputConfig : this.f2325a) {
            arrayList.add(outputConfig.f());
            Iterator it = outputConfig.e().iterator();
            while (it.hasNext()) {
                arrayList.add((DeferrableSurface) it.next());
            }
        }
        return Collections.unmodifiableList(arrayList);
    }
}
