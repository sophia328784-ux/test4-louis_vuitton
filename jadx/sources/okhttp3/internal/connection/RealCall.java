package okhttp3.internal.connection;

import defpackage.md;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0003\u0014\u0015\u0016B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/connection/RealCall;", "Lokhttp3/Call;", "", "Lokhttp3/internal/concurrent/Lockable;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/Request;", "originalRequest", "", "forWebSocket", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V", "Lokhttp3/EventListener;", "f", "Lokhttp3/EventListener;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "setEventListener$okhttp", "(Lokhttp3/EventListener;)V", "eventListener", "AsyncCall", "CallReference", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealCall implements Call, Cloneable, Lockable {
    public static final /* synthetic */ int v = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OkHttpClient f77118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Request f77119c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RealConnectionPool f77120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public volatile EventListener eventListener;
    public final RealCall$timeout$1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f77122h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f77123i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ExchangeFinder f77124j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public RealConnection f77125k;
    public boolean l;
    public Exchange m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public volatile boolean s;
    public volatile Exchange t;
    public final CopyOnWriteArrayList u;

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u00060\u0000R\u00020\u000eJ\u000e\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0019\u0010\u001d\u001a\u00020\f2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0000¢\u0006\u0002\b J\b\u0010!\u001a\u00020\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\""}, d2 = {"Lokhttp3/internal/connection/RealCall$AsyncCall;", "Ljava/lang/Runnable;", "responseCallback", "Lokhttp3/Callback;", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/Callback;)V", "value", "Ljava/util/concurrent/atomic/AtomicInteger;", "callsPerHost", "getCallsPerHost", "()Ljava/util/concurrent/atomic/AtomicInteger;", "reuseCallsPerHostFrom", "", "other", "Lokhttp3/internal/connection/RealCall;", "host", "", "getHost", "()Ljava/lang/String;", "request", "Lokhttp3/Request;", "getRequest", "()Lokhttp3/Request;", "call", "getCall", "()Lokhttp3/internal/connection/RealCall;", "executeOn", "executorService", "Ljava/util/concurrent/ExecutorService;", "failRejected", "e", "Ljava/util/concurrent/RejectedExecutionException;", "failRejected$okhttp", "run", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class AsyncCall implements Runnable {
        private volatile AtomicInteger callsPerHost;
        private final Callback responseCallback;
        final /* synthetic */ RealCall this$0;

        public AsyncCall(RealCall realCall, Callback callback) {
            callback.getClass();
            this.this$0 = realCall;
            this.responseCallback = callback;
            this.callsPerHost = new AtomicInteger(0);
        }

        public static /* synthetic */ void failRejected$okhttp$default(AsyncCall asyncCall, RejectedExecutionException rejectedExecutionException, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                rejectedExecutionException = null;
            }
            asyncCall.failRejected$okhttp(rejectedExecutionException);
        }

        public final void executeOn(ExecutorService executorService) {
            executorService.getClass();
            this.this$0.f77118b.f76951a.getClass();
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e2) {
                    failRejected$okhttp(e2);
                    Dispatcher dispatcher = this.this$0.f77118b.f76951a;
                    dispatcher.getClass();
                    Dispatcher.c(dispatcher, null, null, this, 3);
                }
            } catch (Throwable th) {
                Dispatcher dispatcher2 = this.this$0.f77118b.f76951a;
                dispatcher2.getClass();
                Dispatcher.c(dispatcher2, null, null, this, 3);
                throw th;
            }
        }

        public final void failRejected$okhttp(RejectedExecutionException e2) {
            InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
            interruptedIOException.initCause(e2);
            this.this$0.g(interruptedIOException);
            this.responseCallback.onFailure(this.this$0, interruptedIOException);
        }

        /* JADX INFO: renamed from: getCall, reason: from getter */
        public final RealCall getThis$0() {
            return this.this$0;
        }

        public final AtomicInteger getCallsPerHost() {
            return this.callsPerHost;
        }

        public final String getHost() {
            return this.this$0.f77119c.f76969a.d;
        }

        public final Request getRequest() {
            return this.this$0.f77119c;
        }

        public final void reuseCallsPerHostFrom(AsyncCall other) {
            other.getClass();
            this.callsPerHost = other.callsPerHost;
        }

        @Override // java.lang.Runnable
        public void run() {
            Dispatcher dispatcher;
            String str = "OkHttp " + this.this$0.f77119c.f76969a.h();
            RealCall realCall = this.this$0;
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            threadCurrentThread.setName(str);
            try {
                realCall.g.i();
                boolean z = false;
                try {
                    try {
                        try {
                            this.responseCallback.onResponse(realCall, realCall.e());
                            dispatcher = realCall.f77118b.f76951a;
                        } catch (IOException e2) {
                            e = e2;
                            z = true;
                            if (z) {
                                Platform.f77312a.getClass();
                                Platform.f77313b.e(4, "Callback failure for ".concat(RealCall.a(realCall)), e);
                            } else {
                                this.responseCallback.onFailure(realCall, e);
                            }
                            dispatcher = realCall.f77118b.f76951a;
                        } catch (Throwable th) {
                            th = th;
                            z = true;
                            realCall.cancel();
                            if (!z) {
                                IOException iOException = new IOException("canceled due to " + th);
                                iOException.initCause(th);
                                this.responseCallback.onFailure(realCall, iOException);
                            }
                            if (!(th instanceof InterruptedException)) {
                                throw th;
                            }
                            Thread.currentThread().interrupt();
                            dispatcher = realCall.f77118b.f76951a;
                        }
                    } catch (Throwable th2) {
                        Dispatcher dispatcher2 = realCall.f77118b.f76951a;
                        dispatcher2.getClass();
                        Dispatcher.c(dispatcher2, null, null, this, 3);
                        throw th2;
                    }
                } catch (IOException e3) {
                    e = e3;
                } catch (Throwable th3) {
                    th = th3;
                }
                dispatcher.getClass();
                Dispatcher.c(dispatcher, null, null, this, 3);
                threadCurrentThread.setName(name);
            } catch (Throwable th4) {
                threadCurrentThread.setName(name);
                throw th4;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokhttp3/internal/connection/RealCall$CallReference;", "Ljava/lang/ref/WeakReference;", "Lokhttp3/internal/connection/RealCall;", "referent", "", "callStackTrace", "<init>", "(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CallReference extends WeakReference<RealCall> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f77126a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CallReference(RealCall realCall, Object obj) {
            super(realCall);
            realCall.getClass();
            this.f77126a = obj;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RealCall$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        AtomicReferenceFieldUpdater.newUpdater(RealCall.class, EventListener.class, "f");
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [okhttp3.internal.connection.RealCall$timeout$1, okio.Timeout] */
    public RealCall(OkHttpClient okHttpClient, Request request, boolean z) {
        okHttpClient.getClass();
        request.getClass();
        this.f77118b = okHttpClient;
        this.f77119c = request;
        this.d = z;
        this.f77120e = okHttpClient.D.f76871a;
        this.eventListener = okHttpClient.d.create(this);
        ?? r3 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // okio.AsyncTimeout
            public final void l() {
                this.o.cancel();
            }
        };
        r3.g(0L, TimeUnit.MILLISECONDS);
        this.g = r3;
        this.f77122h = new AtomicBoolean();
        this.r = true;
        this.u = new CopyOnWriteArrayList();
        new AtomicReference(request.f76972e);
    }

    public static final String a(RealCall realCall) {
        StringBuilder sb = new StringBuilder();
        sb.append(realCall.s ? "canceled " : "");
        sb.append(realCall.d ? "web socket" : "call");
        sb.append(" to ");
        sb.append(realCall.f77119c.f76969a.h());
        return sb.toString();
    }

    public final void b(RealConnection realConnection) {
        realConnection.getClass();
        TimeZone timeZone = _UtilJvmKt.f77018a;
        if (this.f77125k != null) {
            md.k("Check failed.");
        } else {
            this.f77125k = realConnection;
            realConnection.s.add(new CallReference(this, this.f77123i));
        }
    }

    public final IOException c(IOException iOException) {
        IOException interruptedIOException;
        Socket socketH;
        TimeZone timeZone = _UtilJvmKt.f77018a;
        RealConnection realConnection = this.f77125k;
        if (realConnection != null) {
            synchronized (realConnection) {
                socketH = h();
            }
            if (this.f77125k == null) {
                if (socketH != null) {
                    _UtilJvmKt.c(socketH);
                }
                this.eventListener.connectionReleased(this, realConnection);
                realConnection.f77133k.getClass();
                if (socketH != null) {
                    realConnection.f77133k.getClass();
                }
            } else if (socketH != null) {
                md.k("Check failed.");
                return null;
            }
        }
        if (!this.l && j()) {
            interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
        } else {
            interruptedIOException = iOException;
        }
        EventListener eventListener = this.eventListener;
        if (iOException == null) {
            eventListener.callEnd(this);
            return interruptedIOException;
        }
        interruptedIOException.getClass();
        eventListener.callFailed(this, interruptedIOException);
        return interruptedIOException;
    }

    @Override // okhttp3.Call
    public final void cancel() {
        if (this.s) {
            return;
        }
        this.s = true;
        Exchange exchange = this.t;
        if (exchange != null) {
            exchange.f77099c.cancel();
        }
        Iterator it = this.u.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((RoutePlanner.Plan) it.next()).cancel();
        }
        this.eventListener.canceled(this);
    }

    public final Object clone() {
        return new RealCall(this.f77118b, this.f77119c, this.d);
    }

    public final void d(boolean z) {
        Exchange exchange;
        synchronized (this) {
            if (!this.r) {
                throw new IllegalStateException("released");
            }
        }
        if (z && (exchange = this.t) != null) {
            exchange.f77099c.cancel();
            exchange.f77097a.f(exchange, true, true, true, true, null);
        }
        this.m = null;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    public final Response e() {
        ArrayList arrayList = new ArrayList();
        CollectionsKt.j(arrayList, this.f77118b.f76952b);
        arrayList.add(new RetryAndFollowUpInterceptor());
        arrayList.add(new BridgeInterceptor());
        arrayList.add(new CacheInterceptor());
        arrayList.add(ConnectInterceptor.f77085a);
        if (!this.d) {
            CollectionsKt.j(arrayList, this.f77118b.f76953c);
        }
        arrayList.add(CallServerInterceptor.f77164a);
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this, arrayList, 0, null, this.f77119c, null, 32, null);
        boolean z = false;
        try {
            try {
                Response responseB = realInterceptorChain.b(this.f77119c);
                if (this.s) {
                    _UtilCommonKt.b(responseB);
                    throw new IOException("Canceled");
                }
                g(null);
                return responseB;
            } catch (IOException e2) {
                z = true;
                IOException iOExceptionG = g(e2);
                iOExceptionG.getClass();
                throw iOExceptionG;
            }
        } catch (Throwable th) {
            if (!z) {
                g(null);
            }
            throw th;
        }
        if (!z) {
            g(null);
        }
        throw th;
    }

    @Override // okhttp3.Call
    public final Response execute() {
        if (!this.f77122h.compareAndSet(false, true)) {
            md.k("Already Executed");
            return null;
        }
        i();
        Platform.f77312a.getClass();
        this.f77123i = Platform.f77313b.d();
        this.eventListener.callStart(this);
        try {
            Dispatcher dispatcher = this.f77118b.f76951a;
            synchronized (dispatcher) {
                dispatcher.f76903f.add(this);
            }
            Response responseE = e();
            Dispatcher dispatcher2 = this.f77118b.f76951a;
            dispatcher2.getClass();
            Dispatcher.c(dispatcher2, null, this, null, 5);
            return responseE;
        } catch (Throwable th) {
            Dispatcher dispatcher3 = this.f77118b.f76951a;
            dispatcher3.getClass();
            Dispatcher.c(dispatcher3, null, this, null, 5);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x002b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x002d A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:23:0x002d, B:25:0x0031, B:27:0x0035, B:29:0x0039, B:30:0x003b, B:32:0x003f, B:34:0x0043, B:36:0x0047, B:41:0x0050, B:14:0x001b, B:17:0x0021, B:20:0x0027), top: B:63:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0031 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:23:0x002d, B:25:0x0031, B:27:0x0035, B:29:0x0039, B:30:0x003b, B:32:0x003f, B:34:0x0043, B:36:0x0047, B:41:0x0050, B:14:0x001b, B:17:0x0021, B:20:0x0027), top: B:63:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0035 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:23:0x002d, B:25:0x0031, B:27:0x0035, B:29:0x0039, B:30:0x003b, B:32:0x003f, B:34:0x0043, B:36:0x0047, B:41:0x0050, B:14:0x001b, B:17:0x0021, B:20:0x0027), top: B:63:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0039 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:23:0x002d, B:25:0x0031, B:27:0x0035, B:29:0x0039, B:30:0x003b, B:32:0x003f, B:34:0x0043, B:36:0x0047, B:41:0x0050, B:14:0x001b, B:17:0x0021, B:20:0x0027), top: B:63:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x004d  */
    public final IOException f(Exchange exchange, boolean z, boolean z2, boolean z3, boolean z4, IOException iOException) {
        boolean z5;
        boolean z6;
        boolean z7;
        exchange.getClass();
        if (exchange.equals(this.t)) {
            synchronized (this) {
                z5 = false;
                if (z) {
                    try {
                        if (this.n) {
                            if (z) {
                                this.n = false;
                            }
                            if (z2) {
                                this.o = false;
                            }
                            if (z4) {
                                this.p = false;
                            }
                            if (z3) {
                                this.q = false;
                            }
                            if (this.n) {
                                z7 = false;
                            } else {
                                z7 = false;
                            }
                            if (z7) {
                                z5 = true;
                            }
                            boolean z8 = z5;
                            z5 = z7;
                            z6 = z8;
                        } else if ((!z2 && this.o) || ((z4 && this.p) || (z3 && this.q))) {
                            if (z) {
                                this.n = false;
                            }
                            if (z2) {
                                this.o = false;
                            }
                            if (z4) {
                                this.p = false;
                            }
                            if (z3) {
                                this.q = false;
                            }
                            if (this.n || this.o || this.p || this.q) {
                                z7 = false;
                            } else {
                                z7 = true;
                            }
                            if (z7 && !this.r) {
                                z5 = true;
                            }
                            boolean z9 = z5;
                            z5 = z7;
                            z6 = z9;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } else {
                    z6 = !z2 ? false : false;
                }
            }
            if (z5) {
                this.t = null;
                RealConnection realConnection = this.f77125k;
                if (realConnection != null) {
                    synchronized (realConnection) {
                        realConnection.p++;
                    }
                }
            }
            if (z6) {
                return c(iOException);
            }
        }
        return iOException;
    }

    public final IOException g(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.r) {
                this.r = false;
                if (!this.n && !this.o && !this.p && !this.q) {
                    z = true;
                }
            }
        }
        return z ? c(iOException) : iOException;
    }

    public final Socket h() {
        RealConnection realConnection = this.f77125k;
        realConnection.getClass();
        TimeZone timeZone = _UtilJvmKt.f77018a;
        ArrayList arrayList = realConnection.s;
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            if (Intrinsics.c(((Reference) it.next()).get(), this)) {
                break;
            }
            i2++;
        }
        if (i2 == -1) {
            md.k("Check failed.");
            return null;
        }
        arrayList.remove(i2);
        this.f77125k = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        realConnection.t = System.nanoTime();
        RealConnectionPool realConnectionPool = this.f77120e;
        ConcurrentLinkedQueue concurrentLinkedQueue = realConnectionPool.f77138f;
        TimeZone timeZone2 = _UtilJvmKt.f77018a;
        if (!realConnection.m && realConnectionPool.f77134a != 0) {
            realConnectionPool.d.d(realConnectionPool.f77137e, 0L);
            return null;
        }
        realConnection.m = true;
        concurrentLinkedQueue.remove(realConnection);
        if (concurrentLinkedQueue.isEmpty()) {
            TaskQueue taskQueue = realConnectionPool.d;
            synchronized (taskQueue.f77066a) {
                if (taskQueue.a()) {
                    taskQueue.f77066a.c(taskQueue);
                }
            }
        }
        return realConnection.f77129f;
    }

    @Override // okhttp3.Call
    /* JADX INFO: renamed from: isCanceled, reason: from getter */
    public final boolean getS() {
        return this.s;
    }

    @Override // okhttp3.Call
    public final void r(Callback callback) {
        if (!this.f77122h.compareAndSet(false, true)) {
            md.k("Already Executed");
            return;
        }
        Platform.f77312a.getClass();
        this.f77123i = Platform.f77313b.d();
        this.eventListener.callStart(this);
        Dispatcher dispatcher = this.f77118b.f76951a;
        AsyncCall asyncCall = new AsyncCall(this, callback);
        dispatcher.getClass();
        Dispatcher.c(dispatcher, asyncCall, null, null, 6);
    }

    @Override // okhttp3.Call
    /* JADX INFO: renamed from: request, reason: from getter */
    public final Request getF77119c() {
        return this.f77119c;
    }
}
