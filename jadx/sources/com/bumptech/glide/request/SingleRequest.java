package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.Model;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleRequest<R> implements Request, SizeReadyCallback, ResourceCallback {
    public static final boolean z = Log.isLoggable("GlideRequest", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StateVerifier f24941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequestCoordinator f24943c;
    public final GlideContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f24944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f24945f;
    public final BaseRequestOptions g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f24946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f24947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Priority f24948j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Target f24949k;
    public final List l;
    public final TransitionFactory m;
    public final Executor n;
    public Resource o;
    public Engine.LoadStatus p;
    public volatile Engine q;
    public Status r;
    public Drawable s;
    public Drawable t;
    public Drawable u;
    public int v;
    public int w;
    public boolean x;
    public final RuntimeException y;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Status {
        private static final /* synthetic */ Status[] $VALUES;
        public static final Status CLEARED;
        public static final Status COMPLETE;
        public static final Status FAILED;
        public static final Status PENDING;
        public static final Status RUNNING;
        public static final Status WAITING_FOR_SIZE;

        static {
            Status status = new Status("PENDING", 0);
            PENDING = status;
            Status status2 = new Status("RUNNING", 1);
            RUNNING = status2;
            Status status3 = new Status("WAITING_FOR_SIZE", 2);
            WAITING_FOR_SIZE = status3;
            Status status4 = new Status("COMPLETE", 3);
            COMPLETE = status4;
            Status status5 = new Status("FAILED", 4);
            FAILED = status5;
            Status status6 = new Status("CLEARED", 5);
            CLEARED = status6;
            $VALUES = new Status[]{status, status2, status3, status4, status5, status6};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }
    }

    public SingleRequest(Context context, GlideContext glideContext, Object obj, Object obj2, Class cls, BaseRequestOptions baseRequestOptions, int i2, int i3, Priority priority, Target target, ArrayList arrayList, RequestCoordinator requestCoordinator, Engine engine, TransitionFactory transitionFactory) {
        Executor executor = Executors.f24983a;
        if (z) {
            String.valueOf(hashCode());
        }
        this.f24941a = StateVerifier.a();
        this.f24942b = obj;
        this.d = glideContext;
        this.f24944e = obj2;
        this.f24945f = cls;
        this.g = baseRequestOptions;
        this.f24946h = i2;
        this.f24947i = i3;
        this.f24948j = priority;
        this.f24949k = target;
        this.l = arrayList;
        this.f24943c = requestCoordinator;
        this.q = engine;
        this.m = transitionFactory;
        this.n = executor;
        this.r = Status.PENDING;
        if (this.y == null && glideContext.f24297h.f24300a.containsKey(GlideBuilder.LogRequestOrigins.class)) {
            this.y = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean a() {
        boolean z2;
        synchronized (this.f24942b) {
            z2 = this.r == Status.COMPLETE;
        }
        return z2;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean b() {
        boolean z2;
        synchronized (this.f24942b) {
            z2 = this.r == Status.COMPLETE;
        }
        return z2;
    }

    @Override // com.bumptech.glide.request.Request
    public final void begin() {
        synchronized (this.f24942b) {
            try {
                if (this.x) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f24941a.b();
                int i2 = LogTime.f24987a;
                SystemClock.elapsedRealtimeNanos();
                if (this.f24944e == null) {
                    if (Util.i(this.f24946h, this.f24947i)) {
                        this.v = this.f24946h;
                        this.w = this.f24947i;
                    }
                    if (this.u == null) {
                        this.g.getClass();
                        this.u = null;
                    }
                    j(new GlideException("Received null model"), this.u == null ? 5 : 3);
                    return;
                }
                Status status = this.r;
                if (status == Status.RUNNING) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (status == Status.COMPLETE) {
                    c(this.o, DataSource.MEMORY_CACHE, false);
                    return;
                }
                List<RequestListener> list = this.l;
                if (list != null) {
                    for (RequestListener requestListener : list) {
                    }
                }
                Status status2 = Status.WAITING_FOR_SIZE;
                this.r = status2;
                if (Util.i(this.f24946h, this.f24947i)) {
                    e(this.f24946h, this.f24947i);
                } else {
                    this.f24949k.c(this);
                }
                Status status3 = this.r;
                if (status3 == Status.RUNNING || status3 == status2) {
                    RequestCoordinator requestCoordinator = this.f24943c;
                    if (requestCoordinator == null || requestCoordinator.c(this)) {
                        this.f24949k.d(i());
                    }
                }
                if (z) {
                    SystemClock.elapsedRealtimeNanos();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public final void c(Resource resource, DataSource dataSource, boolean z2) {
        this.f24941a.b();
        Resource resource2 = null;
        try {
            synchronized (this.f24942b) {
                try {
                    this.p = null;
                    if (resource == null) {
                        j(new GlideException("Expected to receive a Resource<R> with an object of " + this.f24945f + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = resource.get();
                    try {
                        if (obj == null || !this.f24945f.isAssignableFrom(obj.getClass())) {
                            this.o = null;
                            StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                            sb.append(this.f24945f);
                            sb.append(" but instead got ");
                            sb.append(obj != null ? obj.getClass() : "");
                            sb.append("{");
                            sb.append(obj);
                            sb.append("} inside Resource{");
                            sb.append(resource);
                            sb.append("}.");
                            sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                            j(new GlideException(sb.toString()), 5);
                        } else {
                            RequestCoordinator requestCoordinator = this.f24943c;
                            if (requestCoordinator == null || requestCoordinator.d(this)) {
                                k(resource, obj, dataSource, z2);
                                return;
                            } else {
                                this.o = null;
                                this.r = Status.COMPLETE;
                            }
                        }
                        this.q.getClass();
                        Engine.g(resource);
                    } catch (Throwable th) {
                        resource2 = resource;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (resource2 != null) {
                this.q.getClass();
                Engine.g(resource2);
            }
            throw th3;
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final void clear() {
        synchronized (this.f24942b) {
            try {
                if (this.x) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f24941a.b();
                Status status = this.r;
                Status status2 = Status.CLEARED;
                if (status == status2) {
                    return;
                }
                if (this.x) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f24941a.b();
                this.f24949k.b(this);
                Engine.LoadStatus loadStatus = this.p;
                Resource resource = null;
                if (loadStatus != null) {
                    loadStatus.a();
                    this.p = null;
                }
                Resource resource2 = this.o;
                if (resource2 != null) {
                    this.o = null;
                    resource = resource2;
                }
                RequestCoordinator requestCoordinator = this.f24943c;
                if (requestCoordinator == null || requestCoordinator.i(this)) {
                    this.f24949k.e(i());
                }
                this.r = status2;
                if (resource != null) {
                    this.q.getClass();
                    Engine.g(resource);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public final void d(GlideException glideException) {
        j(glideException, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v2 */
    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public final void e(int i2, int i3) throws Throwable {
        ?? r1;
        int i4 = i2;
        this.f24941a.b();
        Object obj = this.f24942b;
        synchronized (obj) {
            try {
                try {
                    boolean z2 = z;
                    if (z2) {
                        int i5 = LogTime.f24987a;
                        SystemClock.elapsedRealtimeNanos();
                    }
                    if (this.r != Status.WAITING_FOR_SIZE) {
                        return;
                    }
                    Status status = Status.RUNNING;
                    this.r = status;
                    this.g.getClass();
                    this.v = i4 == Integer.MIN_VALUE ? i4 : Math.round(i4 * 1.0f);
                    this.w = i3 == Integer.MIN_VALUE ? i3 : Math.round(1.0f * i3);
                    if (z2) {
                        int i6 = LogTime.f24987a;
                        SystemClock.elapsedRealtimeNanos();
                    }
                    Engine engine = this.q;
                    GlideContext glideContext = this.d;
                    Object obj2 = this.f24944e;
                    BaseRequestOptions baseRequestOptions = this.g;
                    this.p = engine.d(glideContext, obj2, baseRequestOptions.f24932h, this.v, this.w, baseRequestOptions.m, this.f24945f, this.f24948j, baseRequestOptions.f24929c, baseRequestOptions.l, baseRequestOptions.f24933i, baseRequestOptions.q, baseRequestOptions.f24935k, baseRequestOptions.f24930e, baseRequestOptions.r, this, this.n);
                    if (this.r != status) {
                        this.p = null;
                    }
                    if (z2) {
                        int i7 = LogTime.f24987a;
                        SystemClock.elapsedRealtimeNanos();
                    }
                } catch (Throwable th) {
                    th = th;
                    r1 = obj;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                r1 = i4;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean f() {
        boolean z2;
        synchronized (this.f24942b) {
            z2 = this.r == Status.CLEARED;
        }
        return z2;
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public final Object g() {
        this.f24941a.b();
        return this.f24942b;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean h(Request request) {
        int i2;
        int i3;
        Object obj;
        Class cls;
        BaseRequestOptions baseRequestOptions;
        Priority priority;
        int size;
        int i4;
        int i5;
        Object obj2;
        Class cls2;
        BaseRequestOptions baseRequestOptions2;
        Priority priority2;
        int size2;
        boolean zA;
        boolean zE;
        if (request instanceof SingleRequest) {
            synchronized (this.f24942b) {
                try {
                    i2 = this.f24946h;
                    i3 = this.f24947i;
                    obj = this.f24944e;
                    cls = this.f24945f;
                    baseRequestOptions = this.g;
                    priority = this.f24948j;
                    List list = this.l;
                    size = list != null ? list.size() : 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
            SingleRequest singleRequest = (SingleRequest) request;
            synchronized (singleRequest.f24942b) {
                try {
                    i4 = singleRequest.f24946h;
                    i5 = singleRequest.f24947i;
                    obj2 = singleRequest.f24944e;
                    cls2 = singleRequest.f24945f;
                    baseRequestOptions2 = singleRequest.g;
                    priority2 = singleRequest.f24948j;
                    List list2 = singleRequest.l;
                    size2 = list2 != null ? list2.size() : 0;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (i2 == i4 && i3 == i5) {
                if (obj == null) {
                    zA = obj2 == null;
                } else {
                    zA = obj instanceof Model ? ((Model) obj).a() : obj.equals(obj2);
                }
                if (zA && cls.equals(cls2)) {
                    if (baseRequestOptions == null) {
                        zE = baseRequestOptions2 == null;
                    } else {
                        zE = baseRequestOptions.e(baseRequestOptions2);
                    }
                    if (zE && priority == priority2 && size == size2) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final Drawable i() {
        if (this.t == null) {
            this.g.getClass();
            this.t = null;
        }
        return this.t;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isRunning() {
        boolean z2;
        synchronized (this.f24942b) {
            try {
                Status status = this.r;
                z2 = status == Status.RUNNING || status == Status.WAITING_FOR_SIZE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    public final void j(GlideException glideException, int i2) {
        boolean zOnLoadFailed;
        Drawable drawableI;
        this.f24941a.b();
        synchronized (this.f24942b) {
            try {
                glideException.getClass();
                int i3 = this.d.f24298i;
                if (i3 <= i2) {
                    Objects.toString(this.f24944e);
                    if (i3 <= 4) {
                        ArrayList arrayList = new ArrayList();
                        GlideException.a(glideException, arrayList);
                        int size = arrayList.size();
                        int i4 = 0;
                        while (i4 < size) {
                            int i5 = i4 + 1;
                            i4 = i5;
                        }
                    }
                }
                this.p = null;
                this.r = Status.FAILED;
                RequestCoordinator requestCoordinator = this.f24943c;
                if (requestCoordinator != null) {
                    requestCoordinator.e(this);
                }
                boolean z2 = true;
                this.x = true;
                try {
                    List<RequestListener> list = this.l;
                    if (list != null) {
                        zOnLoadFailed = false;
                        for (RequestListener requestListener : list) {
                            Object obj = this.f24944e;
                            Target target = this.f24949k;
                            RequestCoordinator requestCoordinator2 = this.f24943c;
                            zOnLoadFailed |= requestListener.onLoadFailed(glideException, obj, target, requestCoordinator2 == null || !requestCoordinator2.getRoot().b());
                        }
                    } else {
                        zOnLoadFailed = false;
                    }
                    if (!zOnLoadFailed) {
                        RequestCoordinator requestCoordinator3 = this.f24943c;
                        if (requestCoordinator3 != null && !requestCoordinator3.c(this)) {
                            z2 = false;
                        }
                        if (z2) {
                            if (this.f24944e == null) {
                                if (this.u == null) {
                                    this.g.getClass();
                                    this.u = null;
                                }
                                drawableI = this.u;
                            } else {
                                drawableI = null;
                            }
                            if (drawableI == null) {
                                if (this.s == null) {
                                    this.g.getClass();
                                    this.s = null;
                                }
                                drawableI = this.s;
                            }
                            if (drawableI == null) {
                                drawableI = i();
                            }
                            this.f24949k.h(drawableI);
                        }
                    }
                    this.x = false;
                } catch (Throwable th) {
                    this.x = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void k(Resource resource, Object obj, DataSource dataSource, boolean z2) {
        boolean z3;
        RequestCoordinator requestCoordinator = this.f24943c;
        boolean z4 = requestCoordinator == null || !requestCoordinator.getRoot().b();
        this.r = Status.COMPLETE;
        this.o = resource;
        if (this.d.f24298i <= 3) {
            Objects.toString(dataSource);
            Objects.toString(this.f24944e);
            int i2 = LogTime.f24987a;
            SystemClock.elapsedRealtimeNanos();
        }
        if (requestCoordinator != null) {
            requestCoordinator.g(this);
        }
        this.x = true;
        try {
            List<RequestListener> list = this.l;
            if (list != null) {
                z3 = false;
                for (RequestListener requestListener : list) {
                    Object obj2 = obj;
                    DataSource dataSource2 = dataSource;
                    boolean zOnResourceReady = requestListener.onResourceReady(obj2, this.f24944e, this.f24949k, dataSource2, z4) | z3;
                    if (requestListener instanceof ExperimentalRequestListener) {
                        zOnResourceReady |= ((ExperimentalRequestListener) requestListener).a();
                    }
                    z3 = zOnResourceReady;
                    obj = obj2;
                    dataSource = dataSource2;
                }
            } else {
                z3 = false;
            }
            Object obj3 = obj;
            if (!z3) {
                this.f24949k.f(obj3, this.m.build());
            }
        } finally {
            this.x = false;
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final void pause() {
        synchronized (this.f24942b) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.f24942b) {
            obj = this.f24944e;
            cls = this.f24945f;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
