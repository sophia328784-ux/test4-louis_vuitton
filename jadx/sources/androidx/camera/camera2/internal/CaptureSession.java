package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MultiResolutionStreamInfo;
import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.params.DynamicRangeConversions;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.camera2.internal.compat.params.InputConfigurationCompat;
import androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat;
import androidx.camera.camera2.internal.compat.params.SessionConfigurationCompat;
import androidx.camera.camera2.internal.compat.quirk.CaptureNoResponseQuirk;
import androidx.camera.camera2.internal.compat.workaround.RequestMonitor;
import androidx.camera.camera2.internal.compat.workaround.StillCaptureFlow;
import androidx.camera.camera2.internal.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.internal.compat.workaround.TorchStateReset;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfigurator;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.SurfaceUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
final class CaptureSession implements CaptureSessionInterface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateCallback f1545c;
    public SynchronizedCaptureSession.Opener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SynchronizedCaptureSession f1546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SessionConfig f1547f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public State f1549i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public State f1550j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ListenableFuture f1551k;
    public CallbackToFutureAdapter.Completer l;
    public HashMap m;
    public final StillCaptureFlow n;
    public final TorchStateReset o;
    public final RequestMonitor p;
    public final DynamicRangesCompat q;
    public final TemplateParamsOverride r;
    public final boolean s;
    public final Camera2CaptureRequestConfigurator t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1543a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f1544b = new ArrayList();
    public final HashMap g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f1548h = Collections.EMPTY_LIST;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ State[] $VALUES;
        public static final State CLOSED;
        public static final State GET_SURFACE;
        public static final State INITIALIZED;
        public static final State OPENED;
        public static final State OPENING;
        public static final State RELEASED;
        public static final State RELEASING;
        public static final State UNINITIALIZED;

        static {
            State state = new State("UNINITIALIZED", 0);
            UNINITIALIZED = state;
            State state2 = new State("RELEASED", 1);
            RELEASED = state2;
            State state3 = new State("INITIALIZED", 2);
            INITIALIZED = state3;
            State state4 = new State("GET_SURFACE", 3);
            GET_SURFACE = state4;
            State state5 = new State("RELEASING", 4);
            RELEASING = state5;
            State state6 = new State("CLOSED", 5);
            CLOSED = state6;
            State state7 = new State("OPENING", 6);
            OPENING = state7;
            State state8 = new State("OPENED", 7);
            OPENED = state8;
            $VALUES = new State[]{state, state2, state3, state4, state5, state6, state7, state8};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public final class StateCallback extends SynchronizedCaptureSession.StateCallback {
        public StateCallback() {
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void o(SynchronizedCaptureSession synchronizedCaptureSession) {
            synchronized (CaptureSession.this.f1543a) {
                try {
                    switch (CaptureSession.this.f1550j.ordinal()) {
                        case 0:
                        case 2:
                        case 3:
                        case 7:
                            throw new IllegalStateException("onConfigureFailed() should not be possible in state: " + CaptureSession.this.f1550j);
                        case 1:
                            Logger.c(3, "CaptureSession");
                            break;
                        case 4:
                        case 5:
                        case 6:
                            CaptureSession.this.l();
                            break;
                    }
                    Objects.toString(CaptureSession.this.f1550j);
                    Logger.a("CaptureSession");
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void p(SynchronizedCaptureSession synchronizedCaptureSession) {
            synchronized (CaptureSession.this.f1543a) {
                try {
                    switch (CaptureSession.this.f1550j.ordinal()) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 7:
                            throw new IllegalStateException("onConfigured() should not be possible in state: " + CaptureSession.this.f1550j);
                        case 4:
                            synchronizedCaptureSession.close();
                            break;
                        case 5:
                            CaptureSession.this.f1546e = synchronizedCaptureSession;
                            break;
                        case 6:
                            CaptureSession.this.q(State.OPENED);
                            CaptureSession.this.f1546e = synchronizedCaptureSession;
                            Logger.c(3, "CaptureSession");
                            CaptureSession captureSession = CaptureSession.this;
                            captureSession.p(captureSession.f1547f);
                            CaptureSession captureSession2 = CaptureSession.this;
                            captureSession2.p.b().addListener(new m(captureSession2, 2), CameraXExecutors.a());
                            break;
                    }
                    Objects.toString(CaptureSession.this.f1550j);
                    Logger.c(3, "CaptureSession");
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void q(SynchronizedCaptureSession synchronizedCaptureSession) {
            synchronized (CaptureSession.this.f1543a) {
                try {
                    if (CaptureSession.this.f1550j.ordinal() == 0) {
                        throw new IllegalStateException("onReady() should not be possible in state: " + CaptureSession.this.f1550j);
                    }
                    Objects.toString(CaptureSession.this.f1550j);
                    Logger.c(3, "CaptureSession");
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void r(SynchronizedCaptureSession synchronizedCaptureSession) {
            synchronized (CaptureSession.this.f1543a) {
                try {
                    if (CaptureSession.this.f1550j == State.UNINITIALIZED) {
                        throw new IllegalStateException("onSessionFinished() should not be possible in state: " + CaptureSession.this.f1550j);
                    }
                    Logger.c(3, "CaptureSession");
                    CaptureSession.this.l();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public CaptureSession(DynamicRangesCompat dynamicRangesCompat, Quirks quirks, boolean z, Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator) {
        State state = State.UNINITIALIZED;
        this.f1549i = state;
        this.f1550j = state;
        this.m = new HashMap();
        this.n = new StillCaptureFlow();
        this.o = new TorchStateReset();
        q(State.INITIALIZED);
        this.q = dynamicRangesCompat;
        this.f1545c = new StateCallback();
        this.p = new RequestMonitor(quirks.a(CaptureNoResponseQuirk.class));
        this.r = new TemplateParamsOverride(quirks);
        this.s = z;
        this.t = camera2CaptureRequestConfigurator;
    }

    public static CameraCaptureSession.CaptureCallback j(List list, CameraCaptureSession.CaptureCallback... captureCallbackArr) {
        CameraCaptureSession.CaptureCallback comboSessionCaptureCallback;
        ArrayList arrayList = new ArrayList(list.size() + captureCallbackArr.length);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) it.next();
            if (cameraCaptureCallback == null) {
                comboSessionCaptureCallback = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                CaptureCallbackConverter.a(cameraCaptureCallback, arrayList2);
                comboSessionCaptureCallback = arrayList2.size() == 1 ? (CameraCaptureSession.CaptureCallback) arrayList2.get(0) : new Camera2CaptureCallbacks.ComboSessionCaptureCallback(arrayList2);
            }
            arrayList.add(comboSessionCaptureCallback);
        }
        Collections.addAll(arrayList, captureCallbackArr);
        return new Camera2CaptureCallbacks.ComboSessionCaptureCallback(arrayList);
    }

    public static HashMap k(HashMap map, HashMap map2) {
        HashMap map3 = new HashMap();
        for (Integer num : map.keySet()) {
            num.getClass();
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (SessionConfig.OutputConfig outputConfig : (List) map.get(num)) {
                SurfaceUtil.SurfaceInfo surfaceInfoA = SurfaceUtil.a((Surface) map2.get(outputConfig.f()));
                if (i2 == 0) {
                    i2 = surfaceInfoA.f2428a;
                }
                int i3 = surfaceInfoA.f2429b;
                int i4 = surfaceInfoA.f2430c;
                String strD = outputConfig.d();
                Objects.requireNonNull(strD);
                arrayList.add(new MultiResolutionStreamInfo(i3, i4, strD));
            }
            if (i2 == 0 || arrayList.isEmpty()) {
                arrayList.size();
                Logger.a("CaptureSession");
            } else {
                List listCreateInstancesForMultiResolutionOutput = OutputConfiguration.createInstancesForMultiResolutionOutput(arrayList, i2);
                if (listCreateInstancesForMultiResolutionOutput != null) {
                    for (SessionConfig.OutputConfig outputConfig2 : (List) map.get(num)) {
                        OutputConfiguration outputConfiguration = (OutputConfiguration) listCreateInstancesForMultiResolutionOutput.remove(0);
                        outputConfiguration.addSurface((Surface) map2.get(outputConfig2.f()));
                        map3.put(outputConfig2, new OutputConfigurationCompat(outputConfiguration));
                    }
                }
            }
        }
        return map3;
    }

    public static HashMap n(ArrayList arrayList) {
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            SessionConfig.OutputConfig outputConfig = (SessionConfig.OutputConfig) it.next();
            if (outputConfig.g() > 0 && outputConfig.e().isEmpty()) {
                List arrayList2 = (List) map.get(Integer.valueOf(outputConfig.g()));
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    map.put(Integer.valueOf(outputConfig.g()), arrayList2);
                }
                arrayList2.add(outputConfig);
            }
        }
        HashMap map2 = new HashMap();
        for (Integer num : map.keySet()) {
            num.getClass();
            if (((List) map.get(num)).size() >= 2) {
                map2.put(num, (List) map.get(num));
            }
        }
        return map2;
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final ListenableFuture a(final SessionConfig sessionConfig, final CameraDevice cameraDevice, SynchronizedCaptureSession.Opener opener) {
        synchronized (this.f1543a) {
            try {
                if (this.f1550j.ordinal() != 2) {
                    Objects.toString(this.f1550j);
                    Logger.a("CaptureSession");
                    return Futures.e(new IllegalStateException("open() should not allow the state: " + this.f1550j));
                }
                q(State.GET_SURFACE);
                ArrayList arrayList = new ArrayList(sessionConfig.b());
                this.f1548h = arrayList;
                this.d = opener;
                FutureChain futureChainTransformAsync = FutureChain.from(((SynchronizedCaptureSessionImpl) opener).v(arrayList)).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.u
                    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                    public final ListenableFuture apply(Object obj) {
                        InputConfiguration inputConfiguration;
                        CaptureSession captureSession = this.f1837b;
                        SessionConfig sessionConfig2 = sessionConfig;
                        CameraDevice cameraDevice2 = cameraDevice;
                        List list = (List) obj;
                        synchronized (captureSession.f1543a) {
                            try {
                                int iOrdinal = captureSession.f1550j.ordinal();
                                if (iOrdinal == 0 || iOrdinal == 7 || iOrdinal == 2) {
                                    return Futures.e(new IllegalStateException("openCaptureSession() should not be possible in state: " + captureSession.f1550j));
                                }
                                if (iOrdinal != 3) {
                                    return Futures.e(new CancellationException("openCaptureSession() not execute in state: " + captureSession.f1550j));
                                }
                                captureSession.g.clear();
                                for (int i2 = 0; i2 < list.size(); i2++) {
                                    captureSession.g.put((DeferrableSurface) captureSession.f1548h.get(i2), (Surface) list.get(i2));
                                }
                                captureSession.q(CaptureSession.State.OPENING);
                                Logger.c(3, "CaptureSession");
                                SynchronizedCaptureSessionStateCallbacks synchronizedCaptureSessionStateCallbacks = new SynchronizedCaptureSessionStateCallbacks(Arrays.asList(captureSession.f1545c, new SynchronizedCaptureSessionStateCallbacks.Adapter(sessionConfig2.d)));
                                Camera2ImplConfig camera2ImplConfig = new Camera2ImplConfig(sessionConfig2.g.f2269b);
                                CaptureConfig.Builder builder = new CaptureConfig.Builder(sessionConfig2.g);
                                HashMap map = new HashMap();
                                if (captureSession.s && Build.VERSION.SDK_INT >= 35) {
                                    map = CaptureSession.k(CaptureSession.n(sessionConfig2.f2325a), captureSession.g);
                                }
                                ArrayList<OutputConfigurationCompat> arrayList2 = new ArrayList();
                                String str = (String) camera2ImplConfig.M.f(Camera2ImplConfig.S, null);
                                for (SessionConfig.OutputConfig outputConfig : sessionConfig2.f2325a) {
                                    OutputConfigurationCompat outputConfigurationCompatM = (!captureSession.s || Build.VERSION.SDK_INT < 35) ? null : (OutputConfigurationCompat) map.get(outputConfig);
                                    if (outputConfigurationCompatM == null) {
                                        outputConfigurationCompatM = captureSession.m(outputConfig, captureSession.g, str);
                                        if (captureSession.m.containsKey(outputConfig.f())) {
                                            outputConfigurationCompatM.g(((Long) captureSession.m.get(outputConfig.f())).longValue());
                                        }
                                    }
                                    arrayList2.add(outputConfigurationCompatM);
                                }
                                ArrayList arrayList3 = new ArrayList();
                                ArrayList arrayList4 = new ArrayList();
                                for (OutputConfigurationCompat outputConfigurationCompat : arrayList2) {
                                    if (!arrayList3.contains(outputConfigurationCompat.c())) {
                                        arrayList3.add(outputConfigurationCompat.c());
                                        arrayList4.add(outputConfigurationCompat);
                                    }
                                }
                                SynchronizedCaptureSession.Opener opener2 = captureSession.d;
                                int i3 = sessionConfig2.f2330h;
                                final SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = (SynchronizedCaptureSessionBaseImpl) opener2;
                                synchronizedCaptureSessionBaseImpl.f1637e = synchronizedCaptureSessionStateCallbacks;
                                SessionConfigurationCompat sessionConfigurationCompat = new SessionConfigurationCompat(i3, arrayList4, synchronizedCaptureSessionBaseImpl.f1636c, new CameraCaptureSession.StateCallback() { // from class: androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl.2
                                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                     */
                                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                                    public final void onActive(CameraCaptureSession cameraCaptureSession) {
                                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                                        synchronizedCaptureSessionBaseImpl2.t(cameraCaptureSession);
                                        synchronizedCaptureSessionBaseImpl2.l(synchronizedCaptureSessionBaseImpl2);
                                    }

                                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                     */
                                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                                    public final void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
                                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                                        synchronizedCaptureSessionBaseImpl2.t(cameraCaptureSession);
                                        synchronizedCaptureSessionBaseImpl2.m(synchronizedCaptureSessionBaseImpl2);
                                    }

                                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                     */
                                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                                    public final void onClosed(CameraCaptureSession cameraCaptureSession) {
                                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                                        synchronizedCaptureSessionBaseImpl2.t(cameraCaptureSession);
                                        synchronizedCaptureSessionBaseImpl2.n(synchronizedCaptureSessionBaseImpl2);
                                    }

                                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                     */
                                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                                    public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                                        CallbackToFutureAdapter.Completer completer;
                                        try {
                                            SynchronizedCaptureSessionBaseImpl.this.t(cameraCaptureSession);
                                            SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                                            synchronizedCaptureSessionBaseImpl2.o(synchronizedCaptureSessionBaseImpl2);
                                            synchronized (SynchronizedCaptureSessionBaseImpl.this.f1634a) {
                                                Preconditions.e(SynchronizedCaptureSessionBaseImpl.this.f1639h, "OpenCaptureSession completer should not null");
                                                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl3 = SynchronizedCaptureSessionBaseImpl.this;
                                                completer = synchronizedCaptureSessionBaseImpl3.f1639h;
                                                synchronizedCaptureSessionBaseImpl3.f1639h = null;
                                            }
                                        } finally {
                                            synchronized (SynchronizedCaptureSessionBaseImpl.this.f1634a) {
                                                Preconditions.e(SynchronizedCaptureSessionBaseImpl.this.f1639h, "OpenCaptureSession completer should not null");
                                                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl4 = SynchronizedCaptureSessionBaseImpl.this;
                                                completer = synchronizedCaptureSessionBaseImpl4.f1639h;
                                                synchronizedCaptureSessionBaseImpl4.f1639h = null;
                                                completer.d(new IllegalStateException("onConfigureFailed"));
                                            }
                                        }
                                    }

                                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                     */
                                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                                    public final void onConfigured(CameraCaptureSession cameraCaptureSession) {
                                        CallbackToFutureAdapter.Completer completer;
                                        try {
                                            SynchronizedCaptureSessionBaseImpl.this.t(cameraCaptureSession);
                                            SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                                            synchronizedCaptureSessionBaseImpl2.p(synchronizedCaptureSessionBaseImpl2);
                                            synchronized (SynchronizedCaptureSessionBaseImpl.this.f1634a) {
                                                Preconditions.e(SynchronizedCaptureSessionBaseImpl.this.f1639h, "OpenCaptureSession completer should not null");
                                                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl3 = SynchronizedCaptureSessionBaseImpl.this;
                                                completer = synchronizedCaptureSessionBaseImpl3.f1639h;
                                                synchronizedCaptureSessionBaseImpl3.f1639h = null;
                                            }
                                        } finally {
                                            synchronized (SynchronizedCaptureSessionBaseImpl.this.f1634a) {
                                                Preconditions.e(SynchronizedCaptureSessionBaseImpl.this.f1639h, "OpenCaptureSession completer should not null");
                                                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl4 = SynchronizedCaptureSessionBaseImpl.this;
                                                completer = synchronizedCaptureSessionBaseImpl4.f1639h;
                                                synchronizedCaptureSessionBaseImpl4.f1639h = null;
                                                completer.b(null);
                                            }
                                        }
                                    }

                                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                     */
                                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                                    public final void onReady(CameraCaptureSession cameraCaptureSession) {
                                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                                        synchronizedCaptureSessionBaseImpl2.t(cameraCaptureSession);
                                        synchronizedCaptureSessionBaseImpl2.q(synchronizedCaptureSessionBaseImpl2);
                                    }

                                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                     */
                                    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                                    public final void onSurfacePrepared(CameraCaptureSession cameraCaptureSession, Surface surface) {
                                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                                        synchronizedCaptureSessionBaseImpl2.t(cameraCaptureSession);
                                        synchronizedCaptureSessionBaseImpl2.s(synchronizedCaptureSessionBaseImpl2, surface);
                                    }
                                });
                                if (sessionConfig2.g.f2270c == 5 && (inputConfiguration = sessionConfig2.f2331i) != null) {
                                    sessionConfigurationCompat.a(InputConfigurationCompat.a(inputConfiguration));
                                }
                                try {
                                    CaptureRequest captureRequestD = Camera2CaptureRequestBuilder.d(builder.e(), cameraDevice2, captureSession.r);
                                    if (captureRequestD != null) {
                                        Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator = captureSession.t;
                                        if (camera2CaptureRequestConfigurator != null) {
                                            camera2CaptureRequestConfigurator.a();
                                        }
                                        sessionConfigurationCompat.b(captureRequestD);
                                    }
                                    return ((SynchronizedCaptureSessionImpl) captureSession.d).x(cameraDevice2, sessionConfigurationCompat, captureSession.f1548h);
                                } catch (CameraAccessException e2) {
                                    return Futures.e(e2);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }, ((SynchronizedCaptureSessionBaseImpl) this.d).f1636c);
                Futures.a(futureChainTransformAsync, new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.CaptureSession.1
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onFailure(Throwable th) {
                        synchronized (CaptureSession.this.f1543a) {
                            try {
                                ((SynchronizedCaptureSessionImpl) CaptureSession.this.d).y();
                                int iOrdinal = CaptureSession.this.f1550j.ordinal();
                                if ((iOrdinal == 4 || iOrdinal == 5 || iOrdinal == 6) && !(th instanceof CancellationException)) {
                                    Objects.toString(CaptureSession.this.f1550j);
                                    Logger.c(5, "CaptureSession");
                                    CaptureSession.this.l();
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final /* bridge */ /* synthetic */ void onSuccess(Object obj) {
                    }
                }, ((SynchronizedCaptureSessionBaseImpl) this.d).f1636c);
                return Futures.h(futureChainTransformAsync);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void b(List list) {
        synchronized (this.f1543a) {
            try {
                switch (this.f1550j.ordinal()) {
                    case 0:
                        throw new IllegalStateException("issueCaptureRequests() should not be possible in state: " + this.f1550j);
                    case 1:
                    case 4:
                    case 5:
                        throw new IllegalStateException("Cannot issue capture request on a closed/released session.");
                    case 2:
                    case 3:
                    case 6:
                        this.f1544b.addAll(list);
                        break;
                    case 7:
                        this.f1544b.addAll(list);
                        this.p.b().addListener(new m(this, 2), CameraXExecutors.a());
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final boolean c() {
        boolean z;
        synchronized (this.f1543a) {
            try {
                State state = this.f1550j;
                z = state == State.OPENED || state == State.OPENING;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void close() {
        synchronized (this.f1543a) {
            try {
                int iOrdinal = this.f1550j.ordinal();
                if (iOrdinal == 0) {
                    throw new IllegalStateException("close() should not be possible in state: " + this.f1550j);
                }
                if (iOrdinal == 2) {
                    q(State.RELEASED);
                } else if (iOrdinal == 3) {
                    Preconditions.e(this.d, "The Opener shouldn't null in state:" + this.f1550j);
                    ((SynchronizedCaptureSessionImpl) this.d).y();
                    q(State.RELEASED);
                } else if (iOrdinal == 6 || iOrdinal == 7) {
                    Preconditions.e(this.d, "The Opener shouldn't null in state:" + this.f1550j);
                    ((SynchronizedCaptureSessionImpl) this.d).y();
                    q(State.CLOSED);
                    this.p.c();
                    this.f1547f = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void d() {
        ArrayList<CaptureConfig> arrayList;
        synchronized (this.f1543a) {
            try {
                if (this.f1544b.isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(this.f1544b);
                    this.f1544b.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayList != null) {
            for (CaptureConfig captureConfig : arrayList) {
                Iterator it = captureConfig.f2271e.iterator();
                while (it.hasNext()) {
                    ((CameraCaptureCallback) it.next()).a(captureConfig.b());
                }
            }
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void e(HashMap map) {
        synchronized (this.f1543a) {
            this.m = map;
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final List f() {
        List listUnmodifiableList;
        synchronized (this.f1543a) {
            listUnmodifiableList = Collections.unmodifiableList(this.f1544b);
        }
        return listUnmodifiableList;
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final SessionConfig g() {
        SessionConfig sessionConfig;
        synchronized (this.f1543a) {
            sessionConfig = this.f1547f;
        }
        return sessionConfig;
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void h(SessionConfig sessionConfig) {
        synchronized (this.f1543a) {
            try {
                switch (this.f1550j.ordinal()) {
                    case 0:
                        throw new IllegalStateException("setSessionConfig() should not be possible in state: " + this.f1550j);
                    case 1:
                    case 4:
                    case 5:
                        throw new IllegalStateException("Session configuration cannot be set on a closed/released session.");
                    case 2:
                    case 3:
                    case 6:
                        this.f1547f = sessionConfig;
                        break;
                    case 7:
                        this.f1547f = sessionConfig;
                        if (sessionConfig == null) {
                            return;
                        }
                        if (!this.g.keySet().containsAll(sessionConfig.b())) {
                            Logger.a("CaptureSession");
                            return;
                        } else {
                            Logger.c(3, "CaptureSession");
                            p(this.f1547f);
                        }
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int i(ArrayList arrayList, CameraBurstCaptureCallback cameraBurstCaptureCallback) {
        CameraBurstCaptureCallback cameraBurstCaptureCallback2 = new CameraBurstCaptureCallback();
        Iterator it = arrayList.iterator();
        int iH = -1;
        while (it.hasNext()) {
            CaptureRequest captureRequest = (CaptureRequest) it.next();
            SynchronizedCaptureSession synchronizedCaptureSession = this.f1546e;
            Objects.requireNonNull(synchronizedCaptureSession);
            List listF = synchronizedCaptureSession.f(captureRequest);
            Iterator it2 = listF.iterator();
            while (it2.hasNext()) {
                cameraBurstCaptureCallback2.a((CaptureRequest) it2.next(), Collections.singletonList(new RequestForwardingCaptureCallback(captureRequest, cameraBurstCaptureCallback)));
            }
            iH = this.f1546e.h(listF, cameraBurstCaptureCallback2);
        }
        return iH;
    }

    public final void l() {
        State state = this.f1550j;
        State state2 = State.RELEASED;
        if (state == state2) {
            Logger.c(3, "CaptureSession");
            return;
        }
        q(state2);
        this.f1546e = null;
        CallbackToFutureAdapter.Completer completer = this.l;
        if (completer != null) {
            completer.b(null);
            this.l = null;
        }
    }

    public final OutputConfigurationCompat m(SessionConfig.OutputConfig outputConfig, HashMap map, String str) {
        long jLongValue;
        DynamicRangeProfiles dynamicRangeProfilesD;
        Surface surface = (Surface) map.get(outputConfig.f());
        Preconditions.e(surface, "Surface in OutputConfig not found in configuredSurfaceMap.");
        OutputConfigurationCompat outputConfigurationCompat = new OutputConfigurationCompat(outputConfig.g(), surface);
        if (str != null) {
            outputConfigurationCompat.f(str);
        } else {
            outputConfigurationCompat.f(outputConfig.d());
        }
        if (outputConfig.c() == 0) {
            outputConfigurationCompat.e(1);
        } else if (outputConfig.c() == 1) {
            outputConfigurationCompat.e(2);
        }
        if (!outputConfig.e().isEmpty()) {
            outputConfigurationCompat.b();
            Iterator it = outputConfig.e().iterator();
            while (it.hasNext()) {
                Surface surface2 = (Surface) map.get((DeferrableSurface) it.next());
                Preconditions.e(surface2, "Surface in OutputConfig not found in configuredSurfaceMap.");
                outputConfigurationCompat.a(surface2);
            }
        }
        if (Build.VERSION.SDK_INT < 33 || (dynamicRangeProfilesD = this.q.d()) == null) {
            jLongValue = 1;
        } else {
            DynamicRange dynamicRangeB = outputConfig.b();
            Long lA = DynamicRangeConversions.a(dynamicRangeB, dynamicRangeProfilesD);
            if (lA == null) {
                Objects.toString(dynamicRangeB);
                Logger.a("CaptureSession");
                jLongValue = 1;
            } else {
                jLongValue = lA.longValue();
            }
        }
        outputConfigurationCompat.d(jLongValue);
        return outputConfigurationCompat;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void o(ArrayList arrayList) {
        CameraCaptureResult cameraCaptureResult;
        synchronized (this.f1543a) {
            try {
                if (this.f1550j != State.OPENED) {
                    Logger.c(3, "CaptureSession");
                    return;
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                try {
                    CameraBurstCaptureCallback cameraBurstCaptureCallback = new CameraBurstCaptureCallback();
                    ArrayList<CaptureRequest> arrayList2 = new ArrayList();
                    Logger.c(3, "CaptureSession");
                    Iterator it = arrayList.iterator();
                    boolean z = false;
                    while (it.hasNext()) {
                        CaptureConfig captureConfig = (CaptureConfig) it.next();
                        if (!Collections.unmodifiableList(captureConfig.f2268a).isEmpty()) {
                            Iterator it2 = Collections.unmodifiableList(captureConfig.f2268a).iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    if (captureConfig.f2270c == 2) {
                                        z = true;
                                    }
                                    CaptureConfig.Builder builder = new CaptureConfig.Builder(captureConfig);
                                    if (captureConfig.f2270c == 5 && (cameraCaptureResult = captureConfig.f2273h) != null) {
                                        builder.f2279h = cameraCaptureResult;
                                    }
                                    SessionConfig sessionConfig = this.f1547f;
                                    if (sessionConfig != null) {
                                        builder.c(sessionConfig.g.f2269b);
                                    }
                                    builder.c(captureConfig.f2269b);
                                    CaptureRequest captureRequestC = Camera2CaptureRequestBuilder.c(builder.e(), this.f1546e.d(), this.g, false, this.r);
                                    if (captureRequestC != null) {
                                        ArrayList arrayList3 = new ArrayList();
                                        Iterator it3 = captureConfig.f2271e.iterator();
                                        while (it3.hasNext()) {
                                            CaptureCallbackConverter.a((CameraCaptureCallback) it3.next(), arrayList3);
                                        }
                                        cameraBurstCaptureCallback.a(captureRequestC, arrayList3);
                                        arrayList2.add(captureRequestC);
                                        break;
                                    }
                                    Logger.c(3, "CaptureSession");
                                    return;
                                }
                                DeferrableSurface deferrableSurface = (DeferrableSurface) it2.next();
                                if (!this.g.containsKey(deferrableSurface)) {
                                    Objects.toString(deferrableSurface);
                                    Logger.c(3, "CaptureSession");
                                    break;
                                }
                            }
                        } else {
                            Logger.c(3, "CaptureSession");
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        Logger.c(3, "CaptureSession");
                        return;
                    }
                    if (this.n.a(arrayList2, z)) {
                        this.f1546e.a();
                        cameraBurstCaptureCallback.f1535b = new t(this);
                    }
                    if (this.o.b(arrayList2, z)) {
                        cameraBurstCaptureCallback.a((CaptureRequest) arrayList2.get(arrayList2.size() - 1), Collections.singletonList(new CameraCaptureSession.CaptureCallback() { // from class: androidx.camera.camera2.internal.CaptureSession.2
                            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                            public final void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                                synchronized (CaptureSession.this.f1543a) {
                                    try {
                                        SessionConfig sessionConfig2 = CaptureSession.this.f1547f;
                                        if (sessionConfig2 == null) {
                                            return;
                                        }
                                        CaptureConfig captureConfig2 = sessionConfig2.g;
                                        Logger.c(3, "CaptureSession");
                                        CaptureSession captureSession = CaptureSession.this;
                                        captureSession.o.getClass();
                                        captureSession.b(Collections.singletonList(TorchStateReset.a(captureConfig2)));
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }));
                    }
                    if (this.t != null) {
                        for (CaptureRequest captureRequest : arrayList2) {
                            this.t.a();
                        }
                    }
                    SessionConfig sessionConfig2 = this.f1547f;
                    if (sessionConfig2 == null || sessionConfig2.f2330h != 1) {
                        this.f1546e.h(arrayList2, cameraBurstCaptureCallback);
                    } else {
                        i(arrayList2, cameraBurstCaptureCallback);
                    }
                } catch (CameraAccessException e2) {
                    e2.getMessage();
                    Logger.a("CaptureSession");
                    Thread.dumpStack();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(SessionConfig sessionConfig) {
        synchronized (this.f1543a) {
            try {
                if (sessionConfig == null) {
                    Logger.c(3, "CaptureSession");
                    return;
                }
                if (this.f1550j != State.OPENED) {
                    Logger.c(3, "CaptureSession");
                    return;
                }
                CaptureConfig captureConfig = sessionConfig.g;
                if (Collections.unmodifiableList(captureConfig.f2268a).isEmpty()) {
                    Logger.c(3, "CaptureSession");
                    try {
                        this.f1546e.a();
                    } catch (CameraAccessException e2) {
                        e2.getMessage();
                        Logger.a("CaptureSession");
                        Thread.dumpStack();
                    }
                    return;
                }
                try {
                    Logger.c(3, "CaptureSession");
                    CaptureRequest captureRequestC = Camera2CaptureRequestBuilder.c(captureConfig, this.f1546e.d(), this.g, true, this.r);
                    if (captureRequestC == null) {
                        Logger.c(3, "CaptureSession");
                        return;
                    }
                    CameraCaptureSession.CaptureCallback captureCallbackA = this.p.a(j(captureConfig.f2271e, new CameraCaptureSession.CaptureCallback[0]));
                    Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator = this.t;
                    if (camera2CaptureRequestConfigurator != null) {
                        camera2CaptureRequestConfigurator.a();
                    }
                    int i2 = sessionConfig.f2330h;
                    SynchronizedCaptureSession synchronizedCaptureSession = this.f1546e;
                    if (i2 != 1) {
                        synchronizedCaptureSession.e(captureRequestC, captureCallbackA);
                        return;
                    } else {
                        this.f1546e.g(synchronizedCaptureSession.f(captureRequestC), captureCallbackA);
                        return;
                    }
                } catch (CameraAccessException e3) {
                    e3.getMessage();
                    Logger.a("CaptureSession");
                    Thread.dumpStack();
                    return;
                }
                throw th;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void q(State state) {
        if (state.ordinal() > this.f1549i.ordinal()) {
            this.f1549i = state;
        }
        this.f1550j = state;
        if (!Trace.a() || this.f1549i.ordinal() < State.GET_SURFACE.ordinal()) {
            return;
        }
        android.os.Trace.setCounter(Trace.b("CX:C2State[" + String.format("CaptureSession@%x", Integer.valueOf(hashCode())) + "]"), state.ordinal());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x0046 A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:4:0x0009, B:6:0x0011, B:24:0x007c, B:8:0x0015, B:10:0x0019, B:13:0x001f, B:15:0x0046, B:16:0x004a, B:18:0x004e, B:19:0x0059, B:20:0x005b, B:22:0x005d, B:23:0x0077, B:27:0x0083, B:28:0x0096), top: B:31:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x004e A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:4:0x0009, B:6:0x0011, B:24:0x007c, B:8:0x0015, B:10:0x0019, B:13:0x001f, B:15:0x0046, B:16:0x004a, B:18:0x004e, B:19:0x0059, B:20:0x005b, B:22:0x005d, B:23:0x0077, B:27:0x0083, B:28:0x0096), top: B:31:0x0009 }] */
    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final ListenableFuture release() {
        synchronized (this.f1543a) {
            try {
                int iOrdinal = this.f1550j.ordinal();
                if (iOrdinal == 0) {
                    throw new IllegalStateException("release() should not be possible in state: " + this.f1550j);
                }
                switch (iOrdinal) {
                    case 2:
                        q(State.RELEASED);
                        return Futures.g(null);
                    case 3:
                        Preconditions.e(this.d, "The Opener shouldn't null in state:" + this.f1550j);
                        ((SynchronizedCaptureSessionImpl) this.d).y();
                        q(State.RELEASED);
                        return Futures.g(null);
                    case 4:
                        if (this.f1551k == null) {
                            this.f1551k = CallbackToFutureAdapter.a(new t(this));
                        }
                        return this.f1551k;
                    case 5:
                    case 7:
                        SynchronizedCaptureSession synchronizedCaptureSession = this.f1546e;
                        if (synchronizedCaptureSession != null) {
                            synchronizedCaptureSession.close();
                        }
                        q(State.RELEASING);
                        this.p.c();
                        Preconditions.e(this.d, "The Opener shouldn't null in state:" + this.f1550j);
                        if (((SynchronizedCaptureSessionImpl) this.d).y()) {
                            l();
                            return Futures.g(null);
                        }
                        if (this.f1551k == null) {
                            this.f1551k = CallbackToFutureAdapter.a(new t(this));
                        }
                        return this.f1551k;
                    case 6:
                        q(State.RELEASING);
                        this.p.c();
                        Preconditions.e(this.d, "The Opener shouldn't null in state:" + this.f1550j);
                        if (((SynchronizedCaptureSessionImpl) this.d).y()) {
                            l();
                            return Futures.g(null);
                        }
                        if (this.f1551k == null) {
                            this.f1551k = CallbackToFutureAdapter.a(new t(this));
                        }
                        return this.f1551k;
                    default:
                        return Futures.g(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
