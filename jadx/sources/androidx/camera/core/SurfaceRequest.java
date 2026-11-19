package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.at;
import defpackage.gy0;
import defpackage.h21;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceRequest {
    public static final Range q = StreamSpec.f2348a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Size f1974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DynamicRange f1975c;
    public final Range d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CameraInternal f1976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1977f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ListenableFuture f1978h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CallbackToFutureAdapter.Completer f1979i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ListenableFuture f1980j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CallbackToFutureAdapter.Completer f1981k;
    public final CallbackToFutureAdapter.Completer l;
    public final DeferrableSurface m;
    public TransformationInfo n;
    public TransformationInfoListener o;
    public Executor p;

    public static final class RequestCancelledException extends RuntimeException {
    }

    public static abstract class Result {

        @Retention(RetentionPolicy.SOURCE)
        public @interface ResultCode {
        }

        public abstract int a();

        public abstract Surface b();
    }

    public static abstract class TransformationInfo {
        public static TransformationInfo g(Rect rect, int i2, int i3, boolean z, Matrix matrix, boolean z2) {
            return new AutoValue_SurfaceRequest_TransformationInfo(rect, i2, i3, z, matrix, z2);
        }

        public abstract Rect a();

        public abstract int b();

        public abstract Matrix c();

        public abstract int d();

        public abstract boolean e();

        public abstract boolean f();
    }

    public interface TransformationInfoListener {
        void f(TransformationInfo transformationInfo);
    }

    public SurfaceRequest(Size size, CameraInternal cameraInternal, boolean z, DynamicRange dynamicRange, int i2, Range<Integer> range, final Runnable runnable) {
        this.f1973a = new Object();
        this.f1974b = size;
        this.f1976e = cameraInternal;
        this.f1977f = z;
        Preconditions.b(dynamicRange.b(), "SurfaceRequest's DynamicRange must always be fully specified.");
        this.f1975c = dynamicRange;
        this.g = i2;
        this.d = range;
        final String str = "SurfaceRequest[size: " + size + ", id: " + hashCode() + "]";
        final AtomicReference atomicReference = new AtomicReference(null);
        final int i3 = 0;
        final ListenableFuture listenableFutureA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: g21
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer) {
                int i4 = i3;
                String str2 = str;
                AtomicReference atomicReference2 = atomicReference;
                switch (i4) {
                    case 0:
                        Range range2 = SurfaceRequest.q;
                        atomicReference2.set(completer);
                        return str2.concat("-cancellation");
                    case 1:
                        Range range3 = SurfaceRequest.q;
                        atomicReference2.set(completer);
                        return str2.concat("-status");
                    default:
                        Range range4 = SurfaceRequest.q;
                        atomicReference2.set(completer);
                        return str2.concat("-Surface");
                }
            }
        });
        final CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) atomicReference.get();
        completer.getClass();
        this.l = completer;
        final AtomicReference atomicReference2 = new AtomicReference(null);
        final int i4 = 1;
        ListenableFuture listenableFutureA2 = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: g21
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer2) {
                int i5 = i4;
                String str2 = str;
                AtomicReference atomicReference3 = atomicReference2;
                switch (i5) {
                    case 0:
                        Range range2 = SurfaceRequest.q;
                        atomicReference3.set(completer2);
                        return str2.concat("-cancellation");
                    case 1:
                        Range range3 = SurfaceRequest.q;
                        atomicReference3.set(completer2);
                        return str2.concat("-status");
                    default:
                        Range range4 = SurfaceRequest.q;
                        atomicReference3.set(completer2);
                        return str2.concat("-Surface");
                }
            }
        });
        this.f1980j = listenableFutureA2;
        Futures.a(listenableFutureA2, new FutureCallback<Void>() { // from class: androidx.camera.core.SurfaceRequest.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                if (th instanceof RequestCancelledException) {
                    Preconditions.f(null, listenableFutureA.cancel(false));
                } else {
                    Preconditions.f(null, completer.b(null));
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                Preconditions.f(null, completer.b(null));
            }
        }, CameraXExecutors.a());
        final CallbackToFutureAdapter.Completer completer2 = (CallbackToFutureAdapter.Completer) atomicReference2.get();
        completer2.getClass();
        final AtomicReference atomicReference3 = new AtomicReference(null);
        final int i5 = 2;
        ListenableFuture listenableFutureA3 = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: g21
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer3) {
                int i6 = i5;
                String str2 = str;
                AtomicReference atomicReference4 = atomicReference3;
                switch (i6) {
                    case 0:
                        Range range2 = SurfaceRequest.q;
                        atomicReference4.set(completer3);
                        return str2.concat("-cancellation");
                    case 1:
                        Range range3 = SurfaceRequest.q;
                        atomicReference4.set(completer3);
                        return str2.concat("-status");
                    default:
                        Range range4 = SurfaceRequest.q;
                        atomicReference4.set(completer3);
                        return str2.concat("-Surface");
                }
            }
        });
        this.f1978h = listenableFutureA3;
        CallbackToFutureAdapter.Completer completer3 = (CallbackToFutureAdapter.Completer) atomicReference3.get();
        completer3.getClass();
        this.f1979i = completer3;
        DeferrableSurface deferrableSurface = new DeferrableSurface(size) { // from class: androidx.camera.core.SurfaceRequest.2
            @Override // androidx.camera.core.impl.DeferrableSurface
            public final ListenableFuture f() {
                return SurfaceRequest.this.f1978h;
            }
        };
        this.m = deferrableSurface;
        final ListenableFuture listenableFutureH = Futures.h(deferrableSurface.f2290e);
        Futures.a(listenableFutureA3, new FutureCallback<Surface>() { // from class: androidx.camera.core.SurfaceRequest.3
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                boolean z2 = th instanceof CancellationException;
                CallbackToFutureAdapter.Completer completer4 = completer2;
                if (z2) {
                    Preconditions.f(null, completer4.d(new RequestCancelledException(str.concat(" cancelled."), th)));
                } else {
                    completer4.b(null);
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                Futures.i(completer2, listenableFutureH);
            }
        }, CameraXExecutors.a());
        listenableFutureH.addListener(new at(this, 1), CameraXExecutors.a());
        Executor executorA = CameraXExecutors.a();
        AtomicReference atomicReference4 = new AtomicReference(null);
        Futures.a(CallbackToFutureAdapter.a(new gy0(this, atomicReference4, i5)), new FutureCallback<Void>() { // from class: androidx.camera.core.SurfaceRequest.5
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                runnable.run();
            }
        }, executorA);
        CallbackToFutureAdapter.Completer completer4 = (CallbackToFutureAdapter.Completer) atomicReference4.get();
        completer4.getClass();
        this.f1981k = completer4;
    }

    public final void a(final Surface surface, Executor executor, final Consumer consumer) {
        if (!surface.isValid()) {
            executor.execute(new c(consumer, surface, 0));
            return;
        }
        if (!this.f1979i.b(surface)) {
            ListenableFuture listenableFuture = this.f1978h;
            if (!listenableFuture.isCancelled()) {
                Preconditions.f(null, listenableFuture.isDone());
                try {
                    listenableFuture.get();
                    executor.execute(new c(consumer, surface, 1));
                    return;
                } catch (InterruptedException | ExecutionException unused) {
                    executor.execute(new c(consumer, surface, 2));
                    return;
                }
            }
        }
        Futures.a(this.f1980j, new FutureCallback<Void>() { // from class: androidx.camera.core.SurfaceRequest.4
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                Preconditions.f("Camera surface session should only fail with request cancellation. Instead failed due to:\n" + th, th instanceof RequestCancelledException);
                consumer.accept(new AutoValue_SurfaceRequest_Result(1, surface));
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                consumer.accept(new AutoValue_SurfaceRequest_Result(0, surface));
            }
        }, executor);
    }

    public final void b(Executor executor, TransformationInfoListener transformationInfoListener) {
        TransformationInfo transformationInfo;
        synchronized (this.f1973a) {
            this.o = transformationInfoListener;
            this.p = executor;
            transformationInfo = this.n;
        }
        if (transformationInfo != null) {
            executor.execute(new h21(transformationInfoListener, transformationInfo, 1));
        }
    }

    public final boolean c() {
        return this.f1979i.d(new DeferrableSurface.SurfaceUnavailableException("Surface request will not complete."));
    }

    public SurfaceRequest(Size size, CameraInternal cameraInternal, DynamicRange dynamicRange, Range<Integer> range, Runnable runnable) {
        this(size, cameraInternal, true, dynamicRange, 0, range, runnable);
    }

    public SurfaceRequest(Size size, CameraInternal cameraInternal, Runnable runnable) {
        this(size, cameraInternal, DynamicRange.d, q, runnable);
    }
}
