package androidx.camera.core.processing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.d21;
import defpackage.f21;
import defpackage.fc;
import defpackage.h21;
import defpackage.kt;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceEdge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Matrix f2551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f2552c;
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2554f;
    public final StreamSpec g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2555h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2556i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SurfaceRequest f2558k;
    public SettableSurface l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2557j = false;
    public final HashSet m = new HashSet();
    public boolean n = false;
    public final ArrayList o = new ArrayList();

    public static class SettableSurface extends DeferrableSurface {
        public final ListenableFuture o;
        public CallbackToFutureAdapter.Completer p;
        public DeferrableSurface q;
        public SurfaceOutputImpl r;

        public SettableSurface(Size size, int i2) {
            super(size, i2);
            this.o = CallbackToFutureAdapter.a(new e(this, 0));
        }

        @Override // androidx.camera.core.impl.DeferrableSurface
        public final void a() {
            super.a();
            Threads.c(new c(this, 2));
        }

        @Override // androidx.camera.core.impl.DeferrableSurface
        public final ListenableFuture f() {
            return this.o;
        }

        public final boolean g(DeferrableSurface deferrableSurface, Runnable runnable) {
            boolean z;
            Size size = this.f2292h;
            Threads.a();
            deferrableSurface.getClass();
            int i2 = deferrableSurface.f2293i;
            Size size2 = deferrableSurface.f2292h;
            DeferrableSurface deferrableSurface2 = this.q;
            if (deferrableSurface2 == deferrableSurface) {
                return false;
            }
            Preconditions.f("A different provider has been set. To change the provider, call SurfaceEdge#invalidate before calling SurfaceEdge#setProvider", deferrableSurface2 == null);
            Preconditions.b(size.equals(size2), "The provider's size(" + size + ") must match the parent(" + size2 + ")");
            int i3 = this.f2293i;
            Preconditions.b(i3 == i2, fc.f(i3, i2, "The provider's format(", ") must match the parent(", ")"));
            synchronized (this.f2287a) {
                z = this.f2289c;
            }
            Preconditions.f("The parent is closed. Call SurfaceEdge#invalidate() before setting a new provider.", !z);
            this.q = deferrableSurface;
            Futures.i(this.p, deferrableSurface.c());
            deferrableSurface.d();
            Futures.h(this.f2290e).addListener(new kt(deferrableSurface, 2), CameraXExecutors.a());
            Futures.h(deferrableSurface.g).addListener(runnable, CameraXExecutors.c());
            return true;
        }
    }

    public SurfaceEdge(int i2, int i3, StreamSpec streamSpec, Matrix matrix, boolean z, Rect rect, int i4, int i5, boolean z2) {
        this.f2554f = i2;
        this.f2550a = i3;
        this.g = streamSpec;
        this.f2551b = matrix;
        this.f2552c = z;
        this.d = rect;
        this.f2556i = i4;
        this.f2555h = i5;
        this.f2553e = z2;
        this.l = new SettableSurface(streamSpec.f(), i3);
    }

    public final void a(Runnable runnable) {
        Threads.a();
        b();
        this.m.add(runnable);
    }

    public final void b() {
        Preconditions.f("Edge is already closed.", !this.n);
    }

    public final void c() {
        Threads.a();
        this.l.a();
        this.n = true;
        this.o.clear();
        this.m.clear();
    }

    public final SurfaceRequest d(CameraInternal cameraInternal, boolean z) {
        Threads.a();
        b();
        StreamSpec streamSpec = this.g;
        Size sizeF = streamSpec.f();
        DynamicRange dynamicRangeB = streamSpec.b();
        int iG = streamSpec.g();
        Range rangeC = streamSpec.c();
        int i2 = 0;
        SurfaceRequest surfaceRequest = new SurfaceRequest(sizeF, cameraInternal, z, dynamicRangeB, iG, rangeC, new f21(this, 0));
        try {
            DeferrableSurface deferrableSurface = surfaceRequest.m;
            SettableSurface settableSurface = this.l;
            Objects.requireNonNull(settableSurface);
            if (settableSurface.g(deferrableSurface, new c(settableSurface, i2))) {
                Futures.h(settableSurface.f2290e).addListener(new kt(deferrableSurface, 1), CameraXExecutors.a());
            }
            this.f2558k = surfaceRequest;
            g();
            return surfaceRequest;
        } catch (DeferrableSurface.SurfaceClosedException e2) {
            throw new AssertionError("Surface is somehow already closed", e2);
        } catch (RuntimeException e3) {
            surfaceRequest.c();
            throw e3;
        }
    }

    public final void e() {
        Threads.a();
        b();
        this.l.a();
    }

    public final void f() {
        boolean z;
        Threads.a();
        b();
        SettableSurface settableSurface = this.l;
        settableSurface.getClass();
        Threads.a();
        if (settableSurface.q == null) {
            synchronized (settableSurface.f2287a) {
                z = settableSurface.f2289c;
            }
            if (!z) {
                return;
            }
        }
        this.f2557j = false;
        this.l.a();
        this.l = new SettableSurface(this.g.f(), this.f2550a);
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public final void g() {
        SurfaceRequest.TransformationInfoListener transformationInfoListener;
        Executor executor;
        Threads.a();
        SurfaceRequest.TransformationInfo transformationInfoG = SurfaceRequest.TransformationInfo.g(this.d, this.f2556i, this.f2555h, this.f2552c, this.f2551b, this.f2553e);
        SurfaceRequest surfaceRequest = this.f2558k;
        if (surfaceRequest != null) {
            synchronized (surfaceRequest.f1973a) {
                surfaceRequest.n = transformationInfoG;
                transformationInfoListener = surfaceRequest.o;
                executor = surfaceRequest.p;
            }
            if (transformationInfoListener != null && executor != null) {
                executor.execute(new h21(transformationInfoListener, transformationInfoG, 0));
            }
        }
        Iterator it = this.o.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(transformationInfoG);
        }
    }

    public final void h(DeferrableSurface deferrableSurface) {
        Threads.a();
        b();
        SettableSurface settableSurface = this.l;
        Objects.requireNonNull(settableSurface);
        settableSurface.g(deferrableSurface, new c(settableSurface, 0));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SurfaceEdge{targets=");
        sb.append(this.f2554f);
        sb.append(", format=");
        sb.append(this.f2550a);
        sb.append(", resolution=");
        sb.append(this.g.f());
        sb.append(", cropRect=");
        sb.append(this.d);
        sb.append(", rotationDegrees=");
        sb.append(this.f2556i);
        sb.append(", mirroring=");
        sb.append(this.f2553e);
        sb.append(", sensorToBufferTransform= ");
        Matrix matrix = this.f2551b;
        sb.append(matrix);
        sb.append(", rotationInTransform= ");
        sb.append(TransformUtils.b(matrix));
        sb.append(", isMirrorInTransform= ");
        sb.append(TransformUtils.f(matrix));
        sb.append(", isClosed=");
        return d21.q(sb, this.n, '}');
    }
}
