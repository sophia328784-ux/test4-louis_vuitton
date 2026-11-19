package okhttp3.internal.http2;

import defpackage.a20;
import defpackage.dt;
import defpackage.k6;
import defpackage.md;
import defpackage.n00;
import defpackage.ou;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$schedule$2;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.flowcontrol.WindowCounter;
import okio.Buffer;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0004\u0007\b\t\nB\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "Lokhttp3/internal/concurrent/Lockable;", "Lokhttp3/internal/http2/Http2Connection$Builder;", "builder", "<init>", "(Lokhttp3/internal/http2/Http2Connection$Builder;)V", "Builder", "ReaderRunnable", "Listener", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Http2Connection implements Closeable, Lockable {
    public static final Companion C = new Companion(null);
    public static final Settings D;
    public final ReaderRunnable A;
    public final LinkedHashSet B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f77229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Listener f77230c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f77231e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f77232f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f77233h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TaskRunner f77234i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TaskQueue f77235j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TaskQueue f77236k;
    public final TaskQueue l;
    public final PushObserver m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public final FlowControlListener s;
    public final Settings t;
    public Settings u;
    public final WindowCounter v;
    public long w;
    public long x;
    public final BufferedSocket y;
    public final Http2Writer z;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", "", "", "client", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f77237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TaskRunner f77238b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public BufferedSocket f77239c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Listener f77240e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final PushObserver f77241f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public FlowControlListener f77242h;

        public Builder(boolean z, TaskRunner taskRunner) {
            taskRunner.getClass();
            this.f77237a = z;
            this.f77238b = taskRunner;
            this.f77240e = Listener.f77243b;
            this.f77241f = PushObserver.f77287a;
            this.f77242h = FlowControlListener.None.f77202a;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", "", "", "OKHTTP_CLIENT_WINDOW_SIZE", "I", "INTERVAL_PING", "DEGRADED_PING", "AWAIT_PING", "DEGRADED_PONG_TIMEOUT_NS", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", "", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Listener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 f77243b;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener$Companion;", "", "Lokhttp3/internal/http2/Http2Connection$Listener;", "REFUSE_INCOMING_STREAMS", "Lokhttp3/internal/http2/Http2Connection$Listener;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
            f77243b = new Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1();
        }

        public void a(Http2Connection http2Connection, Settings settings) {
            http2Connection.getClass();
            settings.getClass();
        }

        public abstract void b(Http2Stream http2Stream);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", "", "Lokhttp3/internal/http2/Http2Reader;", "reader", "<init>", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Http2Reader f77244b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Http2Connection f77245c;

        public ReaderRunnable(Http2Connection http2Connection, Http2Reader http2Reader) {
            http2Reader.getClass();
            this.f77245c = http2Connection;
            this.f77244b = http2Reader;
        }

        public final void a(final boolean z, final int i2, BufferedSource bufferedSource, final int i3) throws EOFException {
            boolean z2;
            boolean z3;
            bufferedSource.getClass();
            this.f77245c.getClass();
            boolean z4 = i2 != 0 && (i2 & 1) == 0;
            final Http2Connection http2Connection = this.f77245c;
            if (z4) {
                http2Connection.getClass();
                final Buffer buffer = new Buffer();
                long j2 = i3;
                bufferedSource.D0(j2);
                bufferedSource.read(buffer, j2);
                TaskQueue.b(http2Connection.f77236k, http2Connection.f77231e + '[' + i2 + "] onData", 0L, new Function0(i2, buffer, i3, z) { // from class: okhttp3.internal.http2.a

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ int f77292c;
                    public final /* synthetic */ Buffer d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ int f77293e;

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        Http2Connection http2Connection2 = this.f77291b;
                        int i4 = this.f77292c;
                        Buffer buffer2 = this.d;
                        int i5 = this.f77293e;
                        Http2Connection.Companion companion = Http2Connection.C;
                        try {
                            ((PushObserver$Companion$PushObserverCancel) http2Connection2.m).getClass();
                            buffer2.skip(i5);
                            http2Connection2.z.k(i4, ErrorCode.CANCEL);
                            synchronized (http2Connection2) {
                                http2Connection2.B.remove(Integer.valueOf(i4));
                            }
                        } catch (IOException unused) {
                        }
                        return Unit.f71739a;
                    }
                }, 6);
                return;
            }
            Http2Stream http2StreamD = http2Connection.d(i2);
            if (http2StreamD == null) {
                this.f77245c.k(i2, ErrorCode.PROTOCOL_ERROR);
                long j3 = i3;
                this.f77245c.h(j3);
                bufferedSource.skip(j3);
                return;
            }
            TimeZone timeZone = _UtilJvmKt.f77018a;
            Http2Stream.FramingSource framingSource = http2StreamD.f77266i;
            long j4 = i3;
            framingSource.getClass();
            long j5 = j4;
            while (true) {
                Http2Stream http2Stream = Http2Stream.this;
                if (j5 <= 0) {
                    TimeZone timeZone2 = _UtilJvmKt.f77018a;
                    http2Stream.f77262c.h(j4);
                    Http2Stream http2Stream2 = Http2Stream.this;
                    FlowControlListener flowControlListener = http2Stream2.f77262c.s;
                    WindowCounter windowCounter = http2Stream2.d;
                    long j6 = framingSource.f77274e.f77390c;
                    flowControlListener.a(windowCounter);
                    break;
                }
                synchronized (http2Stream) {
                    z2 = framingSource.f77273c;
                    z3 = framingSource.f77274e.f77390c + j5 > framingSource.f77272b;
                }
                if (z3) {
                    bufferedSource.skip(j5);
                    Http2Stream.this.f(ErrorCode.FLOW_CONTROL_ERROR);
                    break;
                }
                if (z2) {
                    bufferedSource.skip(j5);
                    break;
                }
                long j7 = bufferedSource.read(framingSource.d, j5);
                if (j7 == -1) {
                    md.e();
                    return;
                }
                j5 -= j7;
                Http2Stream http2Stream3 = Http2Stream.this;
                synchronized (http2Stream3) {
                    try {
                        if (framingSource.f77275f) {
                            framingSource.d.h();
                        } else {
                            Buffer buffer2 = framingSource.f77274e;
                            boolean z5 = buffer2.f77390c == 0;
                            buffer2.u0(framingSource.d);
                            if (z5) {
                                http2Stream3.notifyAll();
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z) {
                http2StreamD.j(Headers.d, true);
            }
        }

        public final void b(List list, int i2, boolean z) {
            list.getClass();
            this.f77245c.getClass();
            boolean z2 = i2 != 0 && (i2 & 1) == 0;
            Http2Connection http2Connection = this.f77245c;
            if (z2) {
                http2Connection.getClass();
                TaskQueue.b(http2Connection.f77236k, http2Connection.f77231e + '[' + i2 + "] onHeaders", 0L, new b(http2Connection, i2, list, z), 6);
                return;
            }
            synchronized (http2Connection) {
                Http2Stream http2StreamD = http2Connection.d(i2);
                if (http2StreamD != null) {
                    http2StreamD.j(_UtilJvmKt.h(list), z);
                    return;
                }
                if (http2Connection.f77233h) {
                    return;
                }
                if (i2 <= http2Connection.f77232f) {
                    return;
                }
                if (i2 % 2 == http2Connection.g % 2) {
                    return;
                }
                Http2Stream http2Stream = new Http2Stream(i2, http2Connection, false, z, _UtilJvmKt.h(list));
                http2Connection.f77232f = i2;
                http2Connection.d.put(Integer.valueOf(i2), http2Stream);
                TaskQueue.b(http2Connection.f77234i.d(), http2Connection.f77231e + '[' + i2 + "] onStream", 0L, new dt(http2Connection, http2Stream, 23), 6);
            }
        }

        public final void c(int i2, int i3, boolean z) {
            Http2Connection http2Connection = this.f77245c;
            if (!z) {
                TaskQueue.b(http2Connection.f77235j, n00.r(this.f77245c.f77231e, " ping", new StringBuilder()), 0L, new a20(i2, i3, 0, this.f77245c), 6);
                return;
            }
            synchronized (http2Connection) {
                try {
                    if (i2 == 1) {
                        http2Connection.o++;
                    } else if (i2 == 2) {
                        http2Connection.q++;
                    } else if (i2 == 3) {
                        http2Connection.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void d(int i2, List list) {
            list.getClass();
            Http2Connection http2Connection = this.f77245c;
            http2Connection.getClass();
            synchronized (http2Connection) {
                if (http2Connection.B.contains(Integer.valueOf(i2))) {
                    http2Connection.k(i2, ErrorCode.PROTOCOL_ERROR);
                    return;
                }
                http2Connection.B.add(Integer.valueOf(i2));
                TaskQueue.b(http2Connection.f77236k, http2Connection.f77231e + '[' + i2 + "] onRequest", 0L, new b(http2Connection, i2, list), 6);
            }
        }

        public final void e(final int i2, final ErrorCode errorCode) {
            final Http2Connection http2Connection = this.f77245c;
            http2Connection.getClass();
            if (i2 == 0 || (i2 & 1) != 0) {
                Http2Stream http2StreamE = http2Connection.e(i2);
                if (http2StreamE != null) {
                    synchronized (http2StreamE) {
                        if (http2StreamE.g() == null) {
                            http2StreamE.m = errorCode;
                            http2StreamE.notifyAll();
                        }
                    }
                    return;
                }
                return;
            }
            TaskQueue.b(http2Connection.f77236k, http2Connection.f77231e + '[' + i2 + "] onReset", 0L, new Function0(i2, errorCode) { // from class: okhttp3.internal.http2.c

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f77298c;

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    Http2Connection http2Connection2 = this.f77297b;
                    int i3 = this.f77298c;
                    ((PushObserver$Companion$PushObserverCancel) http2Connection2.m).getClass();
                    synchronized (http2Connection2) {
                        http2Connection2.B.remove(Integer.valueOf(i3));
                    }
                    return Unit.f71739a;
                }
            }, 6);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v10 */
        /* JADX WARN: Type inference failed for: r5v11 */
        /* JADX WARN: Type inference failed for: r5v7 */
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
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() throws Throwable {
            Http2Connection http2Connection = this.f77245c;
            Http2Reader http2Reader = this.f77244b;
            ErrorCode errorCode = ErrorCode.INTERNAL_ERROR;
            IOException e2 = null;
            try {
                try {
                    http2Reader.d(this);
                    while (http2Reader.c(false, this)) {
                    }
                    ErrorCode errorCode2 = ErrorCode.NO_ERROR;
                    try {
                        errorCode = ErrorCode.CANCEL;
                        http2Connection.c(errorCode2, errorCode, null);
                        this = errorCode2;
                    } catch (IOException e3) {
                        e2 = e3;
                        ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                        http2Connection.c(errorCode3, errorCode3, e2);
                        this = errorCode3;
                    }
                } catch (Throwable th) {
                    th = th;
                    http2Connection.c(this, errorCode, e2);
                    _UtilCommonKt.b(http2Reader);
                    throw th;
                }
            } catch (IOException e4) {
                e2 = e4;
            } catch (Throwable th2) {
                th = th2;
                this = errorCode;
                http2Connection.c(this, errorCode, e2);
                _UtilCommonKt.b(http2Reader);
                throw th;
            }
            _UtilCommonKt.b(http2Reader);
            return Unit.f71739a;
        }
    }

    static {
        Settings settings = new Settings();
        settings.b(4, 65535);
        settings.b(5, 16384);
        D = settings;
    }

    public Http2Connection(Builder builder) {
        builder.getClass();
        boolean z = builder.f77237a;
        this.f77229b = z;
        this.f77230c = builder.f77240e;
        this.d = new LinkedHashMap();
        String str = builder.d;
        if (str == null) {
            Intrinsics.h("connectionName");
            throw null;
        }
        this.f77231e = str;
        int i2 = 2;
        this.g = z ? 3 : 2;
        TaskRunner taskRunner = builder.f77238b;
        this.f77234i = taskRunner;
        TaskQueue taskQueueD = taskRunner.d();
        this.f77235j = taskQueueD;
        this.f77236k = taskRunner.d();
        this.l = taskRunner.d();
        this.m = builder.f77241f;
        this.s = builder.f77242h;
        Settings settings = new Settings();
        if (z) {
            settings.b(4, 16777216);
        }
        this.t = settings;
        this.u = D;
        this.v = new WindowCounter(0);
        this.x = this.u.a();
        BufferedSocket bufferedSocket = builder.f77239c;
        if (bufferedSocket == null) {
            Intrinsics.h("socket");
            throw null;
        }
        this.y = bufferedSocket;
        this.z = new Http2Writer(bufferedSocket.a(), z);
        this.A = new ReaderRunnable(this, new Http2Reader(bufferedSocket.getSource(), z));
        this.B = new LinkedHashSet();
        int i3 = builder.g;
        if (i3 != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(i3);
            taskQueueD.d(new TaskQueue$schedule$2(str.concat(" ping"), new k6(this, nanos, i2)), nanos);
        }
    }

    public final void c(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i2;
        Object[] array;
        errorCode.getClass();
        errorCode2.getClass();
        TimeZone timeZone = _UtilJvmKt.f77018a;
        try {
            g(errorCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (this.d.isEmpty()) {
                array = null;
            } else {
                array = this.d.values().toArray(new Http2Stream[0]);
                this.d.clear();
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) array;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.d(errorCode2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.z.close();
        } catch (IOException unused3) {
        }
        try {
            this.y.cancel();
        } catch (IOException unused4) {
        }
        this.f77235j.g();
        this.f77236k.g();
        this.l.g();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        c(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final Http2Stream d(int i2) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.d.get(Integer.valueOf(i2));
        }
        return http2Stream;
    }

    public final Http2Stream e(int i2) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.d.remove(Integer.valueOf(i2));
            notifyAll();
        }
        return http2Stream;
    }

    public final void flush() {
        this.z.flush();
    }

    public final void g(ErrorCode errorCode) {
        errorCode.getClass();
        synchronized (this.z) {
            synchronized (this) {
                if (this.f77233h) {
                    return;
                }
                this.f77233h = true;
                this.z.g(this.f77232f, errorCode, _UtilCommonKt.f77016a);
            }
        }
    }

    public final void h(long j2) {
        synchronized (this) {
            try {
                WindowCounter.b(this.v, j2, 0L, 2);
                long jA = this.v.a();
                if (jA >= this.t.a() / 2) {
                    m(0, jA);
                    WindowCounter.b(this.v, 0L, jA, 1);
                }
                this.s.b(this.v);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j(int i2, boolean z, Buffer buffer, long j2) {
        long j3;
        long j4;
        int iMin;
        long j5;
        if (j2 == 0) {
            this.z.d(z, i2, buffer, 0);
            return;
        }
        while (j2 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j3 = this.w;
                            j4 = this.x;
                            if (j3 >= j4) {
                                if (!this.d.containsKey(Integer.valueOf(i2))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                iMin = Math.min((int) Math.min(j2, j4 - j3), this.z.f77279e);
                j5 = iMin;
                this.w += j5;
            }
            j2 -= j5;
            this.z.d(z && j2 == 0, i2, buffer, iMin);
        }
    }

    public final void k(int i2, ErrorCode errorCode) {
        errorCode.getClass();
        TaskQueue.b(this.f77235j, this.f77231e + '[' + i2 + "] writeSynReset", 0L, new ou(this, i2, errorCode, 2), 6);
    }

    public final void m(final int i2, final long j2) {
        TaskQueue.b(this.f77235j, this.f77231e + '[' + i2 + "] windowUpdate", 0L, new Function0() { // from class: z10
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Http2Connection http2Connection = this.f81495b;
                int i3 = i2;
                long j3 = j2;
                Http2Connection.Companion companion = Http2Connection.C;
                try {
                    http2Connection.z.m(i3, j3);
                } catch (IOException e2) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.c(errorCode, errorCode, e2);
                }
                return Unit.f71739a;
            }
        }, 6);
    }
}
