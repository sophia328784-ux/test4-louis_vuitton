package androidx.camera.core;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseArray;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.MetadataHolderService;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.QuirkSettingsLoader;
import androidx.camera.core.impl.RetryPolicyInternal;
import androidx.camera.core.impl.TimeoutRetryPolicy;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.StreamSpecsCalculatorImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.md;
import defpackage.p3;
import defpackage.s3;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class CameraX {
    public static final Object r = new Object();
    public static final SparseArray s = new SparseArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraRepository f1898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CameraXConfig f1900c;
    public final Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f1901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HandlerThread f1902f;
    public CameraFactory g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CameraDeviceSurfaceManager f1903h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public UseCaseConfigFactory f1904i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public StreamSpecsCalculatorImpl f1905j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CameraUseCaseAdapterProviderImpl f1906k;
    public final RetryPolicy l;
    public final ListenableFuture m;
    public final CameraPresenceProvider n;
    public InternalInitState o;
    public ListenableFuture p;
    public final Integer q;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class InternalInitState {
        private static final /* synthetic */ InternalInitState[] $VALUES;
        public static final InternalInitState INITIALIZED;
        public static final InternalInitState INITIALIZING;
        public static final InternalInitState INITIALIZING_ERROR;
        public static final InternalInitState SHUTDOWN;
        public static final InternalInitState UNINITIALIZED;

        static {
            InternalInitState internalInitState = new InternalInitState("UNINITIALIZED", 0);
            UNINITIALIZED = internalInitState;
            InternalInitState internalInitState2 = new InternalInitState("INITIALIZING", 1);
            INITIALIZING = internalInitState2;
            InternalInitState internalInitState3 = new InternalInitState("INITIALIZING_ERROR", 2);
            INITIALIZING_ERROR = internalInitState3;
            InternalInitState internalInitState4 = new InternalInitState("INITIALIZED", 3);
            INITIALIZED = internalInitState4;
            InternalInitState internalInitState5 = new InternalInitState("SHUTDOWN", 4);
            SHUTDOWN = internalInitState5;
            $VALUES = new InternalInitState[]{internalInitState, internalInitState2, internalInitState3, internalInitState4, internalInitState5};
        }

        public static InternalInitState valueOf(String str) {
            return (InternalInitState) Enum.valueOf(InternalInitState.class, str);
        }

        public static InternalInitState[] values() {
            return (InternalInitState[]) $VALUES.clone();
        }
    }

    public CameraX(Context context, CameraXConfig.Provider provider) {
        ComponentCallbacks2 componentCallbacks2;
        CameraXConfig.Provider provider2;
        boolean z;
        ListenableFuture listenableFutureA;
        QuirkSettingsLoader quirkSettingsLoader = new QuirkSettingsLoader();
        this.f1898a = new CameraRepository();
        this.f1899b = new Object();
        this.o = InternalInitState.UNINITIALIZED;
        this.p = Futures.g(null);
        if (provider != null) {
            this.f1900c = provider.getCameraXConfig();
        } else {
            Context contextA = ContextUtil.a(context);
            while (true) {
                if (!(contextA instanceof ContextWrapper)) {
                    componentCallbacks2 = null;
                    break;
                } else {
                    if (contextA instanceof Application) {
                        componentCallbacks2 = (Application) contextA;
                        break;
                    }
                    contextA = ((ContextWrapper) contextA).getBaseContext();
                }
            }
            if (componentCallbacks2 instanceof CameraXConfig.Provider) {
                provider2 = (CameraXConfig.Provider) componentCallbacks2;
            } else {
                try {
                    Context contextA2 = ContextUtil.a(context);
                    Bundle bundle = contextA2.getPackageManager().getServiceInfo(new ComponentName(contextA2, (Class<?>) MetadataHolderService.class), com.sightcall.uvc.Camera.DEFAULT_PREVIEW_WIDTH).metaData;
                    String string = bundle != null ? bundle.getString("androidx.camera.core.impl.MetadataHolderService.DEFAULT_CONFIG_PROVIDER") : null;
                    if (string == null) {
                        Logger.a("CameraX");
                        provider2 = null;
                    } else {
                        provider2 = (CameraXConfig.Provider) Class.forName(string).getDeclaredConstructor(null).newInstance(null);
                    }
                } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | NullPointerException | InvocationTargetException unused) {
                    Logger.b("CameraX");
                }
            }
            if (provider2 == null) {
                md.k("CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as 'camera-camera2'.");
                throw null;
            }
            this.f1900c = provider2.getCameraXConfig();
        }
        QuirkSettings quirkSettings = (QuirkSettings) this.f1900c.M.f(CameraXConfig.W, null);
        if (quirkSettings != null) {
            quirkSettings.toString();
            Logger.c(3, "CameraX");
        } else {
            quirkSettings = (QuirkSettings) quirkSettingsLoader.mo0apply(context);
            Objects.toString(quirkSettings);
            Logger.c(3, "CameraX");
        }
        if (quirkSettings == null) {
            quirkSettings = QuirkSettingsHolder.f2319b;
            Objects.toString(quirkSettings);
            Logger.c(3, "CameraX");
        }
        QuirkSettingsHolder.f2320c.f2321a.f(quirkSettings);
        ((Integer) this.f1900c.M.f(CameraXConfig.X, -1)).getClass();
        Executor cameraExecutor = (Executor) this.f1900c.M.f(CameraXConfig.Q, null);
        Handler handler = (Handler) this.f1900c.M.f(CameraXConfig.R, null);
        cameraExecutor = cameraExecutor == null ? new CameraExecutor() : cameraExecutor;
        this.d = cameraExecutor;
        if (handler == null) {
            HandlerThread handlerThread = new HandlerThread("CameraX-scheduler", 10);
            this.f1902f = handlerThread;
            handlerThread.start();
            this.f1901e = Handler.createAsync(handlerThread.getLooper());
        } else {
            this.f1902f = null;
            this.f1901e = handler;
        }
        Integer num = (Integer) this.f1900c.f(CameraXConfig.S, null);
        this.q = num;
        synchronized (r) {
            z = true;
            try {
                if (num != null) {
                    Preconditions.c(num.intValue(), 3, 6, "minLogLevel");
                    SparseArray sparseArray = s;
                    sparseArray.put(num.intValue(), Integer.valueOf(sparseArray.get(num.intValue()) != null ? ((Integer) sparseArray.get(num.intValue())).intValue() + 1 : 1));
                    c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        RetryPolicy retryPolicy = (RetryPolicy) this.f1900c.M.f(CameraXConfig.V, RetryPolicy.f1949a);
        Objects.requireNonNull(retryPolicy);
        RetryPolicy.Builder builder = new RetryPolicy.Builder(retryPolicy);
        long j2 = builder.f1951b;
        RetryPolicy retryPolicy2 = builder.f1950a;
        this.l = retryPolicy2 instanceof RetryPolicyInternal ? ((RetryPolicyInternal) retryPolicy2).b(j2) : new TimeoutRetryPolicy(j2, retryPolicy2);
        this.n = new CameraPresenceProvider(cameraExecutor);
        synchronized (this.f1899b) {
            if (this.o != InternalInitState.UNINITIALIZED) {
                z = false;
            }
            Preconditions.f("CameraX.initInternal() should only be called once per instance", z);
            this.o = InternalInitState.INITIALIZING;
            listenableFutureA = CallbackToFutureAdapter.a(new p3(this, context, 4));
        }
        this.m = listenableFutureA;
    }

    public static void a(Integer num) {
        synchronized (r) {
            try {
                if (num == null) {
                    return;
                }
                SparseArray sparseArray = s;
                int iIntValue = ((Integer) sparseArray.get(num.intValue())).intValue() - 1;
                if (iIntValue == 0) {
                    sparseArray.remove(num.intValue());
                } else {
                    sparseArray.put(num.intValue(), Integer.valueOf(iIntValue));
                }
                c();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void c() {
        SparseArray sparseArray = s;
        if (sparseArray.size() == 0) {
            Logger.f1936a = 3;
            return;
        }
        if (sparseArray.get(3) != null) {
            Logger.f1936a = 3;
            return;
        }
        if (sparseArray.get(4) != null) {
            Logger.f1936a = 4;
        } else if (sparseArray.get(5) != null) {
            Logger.f1936a = 5;
        } else if (sparseArray.get(6) != null) {
            Logger.f1936a = 6;
        }
    }

    public final ListenableFuture b() {
        synchronized (this.f1899b) {
            try {
                this.f1901e.removeCallbacksAndMessages("retry_token");
                int iOrdinal = this.o.ordinal();
                if (iOrdinal == 0) {
                    this.o = InternalInitState.SHUTDOWN;
                    return Futures.g(null);
                }
                if (iOrdinal == 1) {
                    throw new IllegalStateException("CameraX could not be shutdown when it is initializing.");
                }
                if (iOrdinal == 2 || iOrdinal == 3) {
                    this.o = InternalInitState.SHUTDOWN;
                    a(this.q);
                    this.p = CallbackToFutureAdapter.a(new s3(this, 16));
                }
                return this.p;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
