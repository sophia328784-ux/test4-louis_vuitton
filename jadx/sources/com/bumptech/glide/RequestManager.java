package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.manager.TargetTracker;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Util;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class RequestManager implements ComponentCallbacks2, LifecycleListener, ModelTypes<RequestBuilder<Drawable>> {
    public static final RequestOptions l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Glide f24314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f24315c;
    public final Lifecycle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RequestTracker f24316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RequestManagerTreeNode f24317f;
    public final TargetTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Runnable f24318h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ConnectivityMonitor f24319i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList f24320j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RequestOptions f24321k;

    public class RequestManagerConnectivityListener implements ConnectivityMonitor.ConnectivityListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RequestTracker f24322a;

        public RequestManagerConnectivityListener(RequestTracker requestTracker) {
            this.f24322a = requestTracker;
        }

        @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
        public final void a(boolean z) {
            if (z) {
                synchronized (RequestManager.this) {
                    RequestTracker requestTracker = this.f24322a;
                    for (Request request : Util.e(requestTracker.f24897a)) {
                        if (!request.a() && !request.f()) {
                            request.clear();
                            if (requestTracker.f24899c) {
                                requestTracker.f24898b.add(request);
                            } else {
                                request.begin();
                            }
                        }
                    }
                }
            }
        }
    }

    static {
        RequestOptions requestOptions = (RequestOptions) new RequestOptions().c(Bitmap.class);
        requestOptions.n = true;
        l = requestOptions;
        ((RequestOptions) new RequestOptions().c(GifDrawable.class)).n = true;
    }

    public RequestManager(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        RequestOptions requestOptions;
        RequestTracker requestTracker = new RequestTracker();
        ConnectivityMonitorFactory connectivityMonitorFactory = glide.g;
        this.g = new TargetTracker();
        Runnable runnable = new Runnable() { // from class: com.bumptech.glide.RequestManager.1
            @Override // java.lang.Runnable
            public void run() {
                RequestManager requestManager = RequestManager.this;
                requestManager.d.b(requestManager);
            }
        };
        this.f24318h = runnable;
        this.f24314b = glide;
        this.d = lifecycle;
        this.f24317f = requestManagerTreeNode;
        this.f24316e = requestTracker;
        this.f24315c = context;
        ConnectivityMonitor connectivityMonitorA = connectivityMonitorFactory.a(context.getApplicationContext(), new RequestManagerConnectivityListener(requestTracker));
        this.f24319i = connectivityMonitorA;
        synchronized (glide.f24280h) {
            if (glide.f24280h.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            glide.f24280h.add(this);
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            lifecycle.b(this);
        } else {
            Util.f().post(runnable);
        }
        lifecycle.b(connectivityMonitorA);
        this.f24320j = new CopyOnWriteArrayList(glide.d.f24295e);
        GlideContext glideContext = glide.d;
        synchronized (glideContext) {
            try {
                if (glideContext.f24299j == null) {
                    RequestOptions requestOptionsBuild = glideContext.d.build();
                    requestOptionsBuild.n = true;
                    glideContext.f24299j = requestOptionsBuild;
                }
                requestOptions = glideContext.f24299j;
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this) {
            RequestOptions requestOptions2 = (RequestOptions) requestOptions.clone();
            if (requestOptions2.n && !requestOptions2.p) {
                throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
            }
            requestOptions2.p = true;
            requestOptions2.n = true;
            this.f24321k = requestOptions2;
        }
    }

    public final void i(Target target) {
        if (target == null) {
            return;
        }
        boolean zM = m(target);
        Request requestA = target.a();
        if (zM) {
            return;
        }
        Glide glide = this.f24314b;
        synchronized (glide.f24280h) {
            try {
                Iterator it = glide.f24280h.iterator();
                while (it.hasNext()) {
                    if (((RequestManager) it.next()).m(target)) {
                        return;
                    }
                }
                if (requestA != null) {
                    target.g(null);
                    requestA.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void j() {
        try {
            Iterator it = Util.e(this.g.f24909b).iterator();
            while (it.hasNext()) {
                i((Target) it.next());
            }
            this.g.f24909b.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void k() {
        RequestTracker requestTracker = this.f24316e;
        requestTracker.f24899c = true;
        for (Request request : Util.e(requestTracker.f24897a)) {
            if (request.isRunning()) {
                request.pause();
                requestTracker.f24898b.add(request);
            }
        }
    }

    public final synchronized void l() {
        RequestTracker requestTracker = this.f24316e;
        requestTracker.f24899c = false;
        for (Request request : Util.e(requestTracker.f24897a)) {
            if (!request.a() && !request.isRunning()) {
                request.begin();
            }
        }
        requestTracker.f24898b.clear();
    }

    public final synchronized boolean m(Target target) {
        Request requestA = target.a();
        if (requestA == null) {
            return true;
        }
        if (!this.f24316e.a(requestA)) {
            return false;
        }
        this.g.f24909b.remove(target);
        target.g(null);
        return true;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void onDestroy() {
        this.g.onDestroy();
        j();
        RequestTracker requestTracker = this.f24316e;
        Iterator it = Util.e(requestTracker.f24897a).iterator();
        while (it.hasNext()) {
            requestTracker.a((Request) it.next());
        }
        requestTracker.f24898b.clear();
        this.d.a(this);
        this.d.a(this.f24319i);
        Util.f().removeCallbacks(this.f24318h);
        Glide glide = this.f24314b;
        synchronized (glide.f24280h) {
            if (!glide.f24280h.contains(this)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            glide.f24280h.remove(this);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void onStart() {
        l();
        this.g.onStart();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void onStop() {
        this.g.onStop();
        k();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.f24316e + ", treeNode=" + this.f24317f + "}";
    }
}
