package kotlinx.coroutines.channels;

import defpackage.b21;
import defpackage.d3;
import defpackage.f1;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import defpackage.no0;
import defpackage.o91;
import defpackage.pq0;
import defpackage.r81;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002\u0018\u0019B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\"\b\u0002\u0010\b\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0007¢\u0006\u0004\b\t\u0010\nR\u000b\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004R\u000b\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004R\u000b\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004R\u000b\u0010\u000f\u001a\u00020\u000b8\u0002X\u0082\u0004R\u0017\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00110\u00108\u0002X\u0082\u0004R\u0017\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00110\u00108\u0002X\u0082\u0004R\u0017\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00110\u00108\u0002X\u0082\u0004R\u0013\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00108\u0002X\u0082\u0004R\u0013\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00108\u0002X\u0082\u0004¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel;", "E", "Lkotlinx/coroutines/channels/Channel;", "", "capacity", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(ILkotlin/jvm/functions/Function1;)V", "Lkotlinx/atomicfu/AtomicLong;", "sendersAndCloseStatus", "receivers", "bufferEnd", "completedExpandBuffersAndPauseFlag", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/channels/ChannelSegment;", "sendSegment", "receiveSegment", "bufferEndSegment", "", "_closeCause", "closeHandler", "SendBroadcast", "BufferedChannelIterator", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class BufferedChannel<E> implements Channel<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f74728e = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f74729f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f74730h = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f74731i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f74732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f74733k;
    public static final /* synthetic */ AtomicReferenceFieldUpdater l;
    public static final /* synthetic */ AtomicReferenceFieldUpdater m;
    public static final /* synthetic */ long n;
    public static final /* synthetic */ long o;
    public static final /* synthetic */ long p;
    public static final /* synthetic */ long q;
    public static final /* synthetic */ long r;
    private volatile /* synthetic */ Object _closeCause$volatile;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f74734b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f74735c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    public final d3 d;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;", "Lkotlinx/coroutines/channels/ChannelIterator;", "Lkotlinx/coroutines/Waiter;", "<init>", "(Lkotlinx/coroutines/channels/BufferedChannel;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class BufferedChannelIterator implements ChannelIterator<E>, Waiter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f74736b = BufferedChannelKt.p;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CancellableContinuationImpl f74737c;

        public BufferedChannelIterator() {
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public final Object a(ContinuationImpl continuationImpl) throws Throwable {
            ChannelSegment channelSegmentT;
            Boolean bool;
            Object obj = this.f74736b;
            boolean z = true;
            if (obj == BufferedChannelKt.p || obj == BufferedChannelKt.l) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.f74732j;
                BufferedChannel bufferedChannel = BufferedChannel.this;
                ChannelSegment channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
                while (!bufferedChannel.G()) {
                    long andIncrement = BufferedChannel.f74729f.getAndIncrement(bufferedChannel);
                    long j2 = BufferedChannelKt.f74747b;
                    long j3 = andIncrement / j2;
                    int i2 = (int) (andIncrement % j2);
                    if (channelSegment.f75137f != j3) {
                        channelSegmentT = bufferedChannel.t(j3, channelSegment);
                        if (channelSegmentT == null) {
                            continue;
                        }
                    } else {
                        channelSegmentT = channelSegment;
                    }
                    Object objT = bufferedChannel.T(channelSegmentT, i2, andIncrement, null);
                    Symbol symbol = BufferedChannelKt.m;
                    f1 f1Var = null;
                    if (objT == symbol) {
                        md.k("unreachable");
                        return null;
                    }
                    Symbol symbol2 = BufferedChannelKt.o;
                    if (objT == symbol2) {
                        if (andIncrement < bufferedChannel.B()) {
                            channelSegmentT.b();
                        }
                        channelSegment = channelSegmentT;
                    } else {
                        if (objT == BufferedChannelKt.n) {
                            BufferedChannel bufferedChannel2 = BufferedChannel.this;
                            CancellableContinuationImpl cancellableContinuationImplB = CancellableContinuationKt.b(IntrinsicsKt.b(continuationImpl));
                            try {
                                this.f74737c = cancellableContinuationImplB;
                                Object objT2 = bufferedChannel2.T(channelSegmentT, i2, andIncrement, this);
                                Function1 function1 = bufferedChannel2.f74735c;
                                if (objT2 != symbol) {
                                    if (objT2 == symbol2) {
                                        if (andIncrement < bufferedChannel2.B()) {
                                            channelSegmentT.b();
                                        }
                                        ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.f74732j.get(bufferedChannel2);
                                        while (true) {
                                            if (bufferedChannel2.G()) {
                                                CancellableContinuationImpl cancellableContinuationImpl = this.f74737c;
                                                cancellableContinuationImpl.getClass();
                                                this.f74737c = null;
                                                this.f74736b = BufferedChannelKt.l;
                                                Throwable thY = bufferedChannel.y();
                                                if (thY != null) {
                                                    Result.Companion companion = Result.INSTANCE;
                                                    cancellableContinuationImpl.resumeWith(new Result.Failure(thY));
                                                    break;
                                                }
                                                Result.Companion companion2 = Result.INSTANCE;
                                                cancellableContinuationImpl.resumeWith(Boolean.FALSE);
                                                break;
                                            }
                                            long andIncrement2 = BufferedChannel.f74729f.getAndIncrement(bufferedChannel2);
                                            long j4 = BufferedChannelKt.f74747b;
                                            long j5 = andIncrement2 / j4;
                                            int i3 = (int) (andIncrement2 % j4);
                                            if (channelSegment2.f75137f != j5) {
                                                ChannelSegment channelSegmentT2 = bufferedChannel2.t(j5, channelSegment2);
                                                if (channelSegmentT2 != null) {
                                                    channelSegment2 = channelSegmentT2;
                                                }
                                            }
                                            Object objT3 = bufferedChannel2.T(channelSegment2, i3, andIncrement2, this);
                                            if (objT3 == BufferedChannelKt.m) {
                                                invokeOnCancellation(channelSegment2, i3);
                                                break;
                                            }
                                            if (objT3 == BufferedChannelKt.o) {
                                                if (andIncrement2 < bufferedChannel2.B()) {
                                                    channelSegment2.b();
                                                }
                                            } else {
                                                if (objT3 == BufferedChannelKt.n) {
                                                    throw new IllegalStateException("unexpected");
                                                }
                                                channelSegment2.b();
                                                this.f74736b = objT3;
                                                this.f74737c = null;
                                                bool = Boolean.TRUE;
                                                if (function1 != null) {
                                                    f1Var = new f1(function1, objT3, 13);
                                                }
                                            }
                                        }
                                    } else {
                                        channelSegmentT.b();
                                        this.f74736b = objT2;
                                        this.f74737c = null;
                                        bool = Boolean.TRUE;
                                        if (function1 != null) {
                                            f1Var = new f1(function1, objT2, 13);
                                        }
                                    }
                                    cancellableContinuationImplB.resume(bool, f1Var);
                                    break;
                                }
                                invokeOnCancellation(channelSegmentT, i2);
                                Object result = cancellableContinuationImplB.getResult();
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                return result;
                            } catch (Throwable th) {
                                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                                throw th;
                            }
                        }
                        channelSegmentT.b();
                        this.f74736b = objT;
                    }
                }
                this.f74736b = BufferedChannelKt.l;
                Throwable thY2 = bufferedChannel.y();
                if (thY2 != null) {
                    int i4 = StackTraceRecoveryKt.f75138a;
                    throw thY2;
                }
                z = false;
            }
            return Boolean.valueOf(z);
        }

        @Override // kotlinx.coroutines.Waiter
        public final void invokeOnCancellation(Segment segment, int i2) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f74737c;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(segment, i2);
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public final Object next() throws Throwable {
            Object obj = this.f74736b;
            Symbol symbol = BufferedChannelKt.p;
            if (obj == symbol) {
                md.k("`hasNext()` has not been invoked");
                return null;
            }
            this.f74736b = symbol;
            if (obj != BufferedChannelKt.l) {
                return obj;
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.f74728e;
            Throwable thZ = BufferedChannel.this.z();
            int i2 = StackTraceRecoveryKt.f75138a;
            throw thZ;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;", "Lkotlinx/coroutines/Waiter;", "Lkotlinx/coroutines/CancellableContinuation;", "", "cont", "<init>", "(Lkotlinx/coroutines/CancellableContinuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class SendBroadcast implements Waiter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ CancellableContinuationImpl f74738b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CancellableContinuation f74739c;

        public SendBroadcast(CancellableContinuation<? super Boolean> cancellableContinuation) {
            cancellableContinuation.getClass();
            this.f74738b = (CancellableContinuationImpl) cancellableContinuation;
            this.f74739c = cancellableContinuation;
        }

        @Override // kotlinx.coroutines.Waiter
        public final void invokeOnCancellation(Segment segment, int i2) {
            this.f74738b.invokeOnCancellation(segment, i2);
        }
    }

    static {
        Unsafe unsafe = o91.f76733a;
        r = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("sendSegment$volatile"));
        f74732j = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
        q = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("receiveSegment$volatile"));
        f74733k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
        o = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("bufferEndSegment$volatile"));
        l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
        n = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("_closeCause$volatile"));
        m = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
        p = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("closeHandler$volatile"));
    }

    public BufferedChannel(int i2, Function1<? super E, Unit> function1) {
        long j2;
        this.f74734b = i2;
        this.f74735c = function1;
        if (i2 < 0) {
            b21.n(n00.m(i2, "Invalid channel capacity: ", ", should be >=0"));
            throw null;
        }
        ChannelSegment channelSegment = BufferedChannelKt.f74746a;
        if (i2 != 0) {
            j2 = i2 != Integer.MAX_VALUE ? i2 : Long.MAX_VALUE;
        } else {
            j2 = 0;
        }
        this.bufferEnd$volatile = j2;
        this.completedExpandBuffersAndPauseFlag$volatile = g.get(this);
        ChannelSegment channelSegment2 = new ChannelSegment(0L, null, this, 3);
        this.sendSegment$volatile = channelSegment2;
        this.receiveSegment$volatile = channelSegment2;
        if (I()) {
            channelSegment2 = BufferedChannelKt.f74746a;
            channelSegment2.getClass();
        }
        this.bufferEndSegment$volatile = channelSegment2;
        this.d = function1 != null ? new d3(this, 8) : null;
        this._closeCause$volatile = BufferedChannelKt.s;
    }

    public static void D(BufferedChannel bufferedChannel) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f74730h;
        if ((atomicLongFieldUpdater.addAndGet(bufferedChannel, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(bufferedChannel) & 4611686018427387904L) != 0) {
            }
        }
    }

    public static Object L(BufferedChannel bufferedChannel, SuspendLambda suspendLambda) throws Throwable {
        ChannelSegment channelSegment;
        Throwable th;
        ChannelSegment channelSegment2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f74732j;
        atomicReferenceFieldUpdater.getClass();
        KFunction kFunctionG = null;
        if (bufferedChannel == null) {
            r81.h();
            return null;
        }
        ChannelSegment channelSegment3 = (ChannelSegment) o91.f76733a.getObjectVolatile(bufferedChannel, q);
        while (!bufferedChannel.G()) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f74729f;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(bufferedChannel);
            long j2 = BufferedChannelKt.f74747b;
            long j3 = andIncrement / j2;
            int i2 = (int) (andIncrement % j2);
            if (channelSegment3.f75137f != j3) {
                ChannelSegment channelSegmentT = bufferedChannel.t(j3, channelSegment3);
                if (channelSegmentT == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentT;
                }
            } else {
                channelSegment = channelSegment3;
            }
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object objT = bufferedChannel2.T(channelSegment, i2, andIncrement, null);
            Symbol symbol = BufferedChannelKt.m;
            if (objT == symbol) {
                md.k("unexpected");
                return null;
            }
            Symbol symbol2 = BufferedChannelKt.o;
            if (objT == symbol2) {
                if (andIncrement < bufferedChannel2.B()) {
                    channelSegment.b();
                }
                bufferedChannel = bufferedChannel2;
                channelSegment3 = channelSegment;
            } else {
                if (objT != BufferedChannelKt.n) {
                    channelSegment.b();
                    return objT;
                }
                Function1 function1 = bufferedChannel2.f74735c;
                CancellableContinuationImpl cancellableContinuationImplB = CancellableContinuationKt.b(IntrinsicsKt.b(suspendLambda));
                try {
                    Object objT2 = bufferedChannel2.T(channelSegment, i2, andIncrement, cancellableContinuationImplB);
                    if (objT2 == symbol) {
                        cancellableContinuationImplB.invokeOnCancellation(channelSegment, i2);
                    } else {
                        if (objT2 == symbol2) {
                            if (andIncrement < bufferedChannel2.B()) {
                                channelSegment.b();
                            }
                            ChannelSegment channelSegment4 = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel2);
                            while (true) {
                                if (bufferedChannel2.G()) {
                                    Result.Companion companion = Result.INSTANCE;
                                    cancellableContinuationImplB.resumeWith(new Result.Failure(bufferedChannel2.z()));
                                } else {
                                    CancellableContinuationImpl cancellableContinuationImpl = cancellableContinuationImplB;
                                    try {
                                        long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(bufferedChannel2);
                                        long j4 = BufferedChannelKt.f74747b;
                                        long j5 = andIncrement2 / j4;
                                        int i3 = (int) (andIncrement2 % j4);
                                        if (channelSegment4.f75137f != j5) {
                                            try {
                                                ChannelSegment channelSegmentT2 = bufferedChannel2.t(j5, channelSegment4);
                                                if (channelSegmentT2 == null) {
                                                    cancellableContinuationImplB = cancellableContinuationImpl;
                                                } else {
                                                    channelSegment2 = channelSegmentT2;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                cancellableContinuationImplB = cancellableContinuationImpl;
                                                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                                                throw th;
                                            }
                                        } else {
                                            channelSegment2 = channelSegment4;
                                        }
                                        BufferedChannel bufferedChannel3 = bufferedChannel2;
                                        objT2 = bufferedChannel3.T(channelSegment2, i3, andIncrement2, cancellableContinuationImpl);
                                        bufferedChannel2 = bufferedChannel3;
                                        ChannelSegment channelSegment5 = channelSegment2;
                                        cancellableContinuationImplB = cancellableContinuationImpl;
                                        if (objT2 == BufferedChannelKt.m) {
                                            cancellableContinuationImplB.invokeOnCancellation(channelSegment5, i3);
                                        } else {
                                            if (objT2 != BufferedChannelKt.o) {
                                                if (objT2 == BufferedChannelKt.n) {
                                                    throw new IllegalStateException("unexpected");
                                                }
                                                channelSegment5.b();
                                                if (function1 == null) {
                                                    break;
                                                }
                                                kFunctionG = bufferedChannel2.g();
                                                break;
                                            }
                                            if (andIncrement2 < bufferedChannel2.B()) {
                                                channelSegment5.b();
                                            }
                                            channelSegment4 = channelSegment5;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        cancellableContinuationImplB = cancellableContinuationImpl;
                                        th = th;
                                        cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                                        throw th;
                                    }
                                }
                            }
                        } else {
                            channelSegment.b();
                            if (function1 != null) {
                                kFunctionG = bufferedChannel2.g();
                            }
                        }
                        cancellableContinuationImplB.resume(objT2, (Function3<? super Throwable, ? super Object, ? super CoroutineContext, Unit>) kFunctionG);
                    }
                    Object result = cancellableContinuationImplB.getResult();
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    return result;
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }
        Throwable thZ = bufferedChannel.z();
        int i4 = StackTraceRecoveryKt.f75138a;
        throw thZ;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static Object M(BufferedChannel bufferedChannel, ContinuationImpl continuationImpl) {
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$1;
        ChannelSegment channelSegment;
        if (continuationImpl instanceof BufferedChannel$receiveCatching$1) {
            bufferedChannel$receiveCatching$1 = (BufferedChannel$receiveCatching$1) continuationImpl;
            int i2 = bufferedChannel$receiveCatching$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatching$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuationImpl);
            }
        } else {
            bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuationImpl);
        }
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$2 = bufferedChannel$receiveCatching$1;
        Object obj = bufferedChannel$receiveCatching$2.f74742b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bufferedChannel$receiveCatching$2.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((ChannelResult) obj).f74761a;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        f74732j.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) o91.f76733a.getObjectVolatile(bufferedChannel, q);
        while (!bufferedChannel.G()) {
            long andIncrement = f74729f.getAndIncrement(bufferedChannel);
            long j2 = BufferedChannelKt.f74747b;
            long j3 = andIncrement / j2;
            int i4 = (int) (andIncrement % j2);
            if (channelSegment2.f75137f != j3) {
                ChannelSegment channelSegmentT = bufferedChannel.t(j3, channelSegment2);
                if (channelSegmentT == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentT;
                }
            } else {
                channelSegment = channelSegment2;
            }
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object objT = bufferedChannel2.T(channelSegment, i4, andIncrement, null);
            if (objT == BufferedChannelKt.m) {
                md.k("unexpected");
                return null;
            }
            if (objT != BufferedChannelKt.o) {
                if (objT == BufferedChannelKt.n) {
                    bufferedChannel$receiveCatching$2.d = 1;
                    Object objN = bufferedChannel2.N(channelSegment, i4, andIncrement, bufferedChannel$receiveCatching$2);
                    return objN == coroutineSingletons ? coroutineSingletons : objN;
                }
                channelSegment.b();
                ChannelResult.f74759b.getClass();
                return objT;
            }
            if (andIncrement < bufferedChannel2.B()) {
                channelSegment.b();
            }
            bufferedChannel = bufferedChannel2;
            channelSegment2 = channelSegment;
        }
        ChannelResult.Companion companion = ChannelResult.f74759b;
        Throwable thY = bufferedChannel.y();
        companion.getClass();
        return ChannelResult.Companion.a(thY);
    }

    /* JADX WARN: Code duplicated, block: B:86:0x0160  */
    /* JADX WARN: Code duplicated, block: B:88:0x0164 A[RETURN] */
    public static Object Q(BufferedChannel bufferedChannel, Object obj, Continuation continuation) {
        Object result;
        CoroutineSingletons coroutineSingletons;
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f74731i;
        atomicReferenceFieldUpdater.getClass();
        ChannelSegment channelSegment = (ChannelSegment) o91.f76733a.getObjectVolatile(bufferedChannel, r);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f74728e;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(bufferedChannel);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zF = bufferedChannel.F(andIncrement, false);
            int i2 = BufferedChannelKt.f74747b;
            long j3 = i2;
            long j4 = j2 / j3;
            int i3 = (int) (j2 % j3);
            if (channelSegment.f75137f != j4) {
                ChannelSegment channelSegmentX = bufferedChannel.x(j4, channelSegment);
                if (channelSegmentX != null) {
                    channelSegment = channelSegmentX;
                } else if (zF) {
                    Object objK = bufferedChannel.K(obj, continuation);
                    if (objK != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        break;
                    }
                    return objK;
                }
            }
            int iE = e(bufferedChannel, channelSegment, i3, obj, j2, null, zF);
            if (iE == 0) {
                channelSegment.b();
                break;
            }
            if (iE != 1) {
                if (iE == 2) {
                    if (!zF) {
                        break;
                    }
                    channelSegment.n();
                    Object objK2 = bufferedChannel.K(obj, continuation);
                    if (objK2 != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        break;
                    }
                    return objK2;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater2 = f74729f;
                if (iE == 3) {
                    CancellableContinuationImpl cancellableContinuationImplB = CancellableContinuationKt.b(IntrinsicsKt.b(continuation));
                    try {
                        int iE2 = e(bufferedChannel, channelSegment, i3, obj, j2, cancellableContinuationImplB, false);
                        if (iE2 == 0) {
                            channelSegment.b();
                            Result.Companion companion = Result.INSTANCE;
                        } else {
                            if (iE2 != 1) {
                                if (iE2 != 2) {
                                    if (iE2 != 4) {
                                        String str = "unexpected";
                                        if (iE2 != 5) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        channelSegment.b();
                                        ChannelSegment channelSegment2 = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
                                        while (true) {
                                            long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(bufferedChannel);
                                            long j5 = andIncrement2 & 1152921504606846975L;
                                            boolean zF2 = bufferedChannel.F(andIncrement2, false);
                                            int i4 = BufferedChannelKt.f74747b;
                                            str = str;
                                            long j6 = i4;
                                            long j7 = j5 / j6;
                                            int i5 = (int) (j5 % j6);
                                            atomicLongFieldUpdater2 = atomicLongFieldUpdater2;
                                            if (channelSegment2.f75137f != j7) {
                                                ChannelSegment channelSegmentX2 = bufferedChannel.x(j7, channelSegment2);
                                                if (channelSegmentX2 != null) {
                                                    channelSegment2 = channelSegmentX2;
                                                } else if (zF2) {
                                                    c(bufferedChannel, obj, cancellableContinuationImplB);
                                                    break;
                                                }
                                            }
                                            obj2 = obj;
                                            int iE3 = e(bufferedChannel, channelSegment2, i5, obj2, j5, cancellableContinuationImplB, zF2);
                                            if (iE3 == 0) {
                                                channelSegment2.b();
                                                Result.Companion companion2 = Result.INSTANCE;
                                            } else if (iE3 == 1) {
                                                Result.Companion companion3 = Result.INSTANCE;
                                            } else if (iE3 == 2) {
                                                if (!zF2) {
                                                    cancellableContinuationImplB.invokeOnCancellation(channelSegment2, i5 + i4);
                                                    break;
                                                }
                                                channelSegment2.n();
                                            } else {
                                                if (iE3 == 3) {
                                                    throw new IllegalStateException(str);
                                                }
                                                if (iE3 != 4) {
                                                    if (iE3 == 5) {
                                                        channelSegment2.b();
                                                    }
                                                } else if (j5 < atomicLongFieldUpdater2.get(bufferedChannel)) {
                                                    channelSegment2.b();
                                                }
                                            }
                                        }
                                    } else {
                                        obj2 = obj;
                                        if (j2 < atomicLongFieldUpdater2.get(bufferedChannel)) {
                                            channelSegment.b();
                                        }
                                    }
                                    c(bufferedChannel, obj2, cancellableContinuationImplB);
                                    break;
                                } else {
                                    cancellableContinuationImplB.invokeOnCancellation(channelSegment, i3 + i2);
                                }
                                result = cancellableContinuationImplB.getResult();
                                coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                if (result != coroutineSingletons) {
                                    result = Unit.f71739a;
                                }
                                if (result == coroutineSingletons) {
                                    break;
                                }
                                return result;
                            }
                            Result.Companion companion4 = Result.INSTANCE;
                        }
                        cancellableContinuationImplB.resumeWith(Unit.f71739a);
                        result = cancellableContinuationImplB.getResult();
                        coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        if (result != coroutineSingletons) {
                            result = Unit.f71739a;
                        }
                        if (result == coroutineSingletons) {
                            break;
                        }
                        return result;
                    } catch (Throwable th) {
                        cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                        throw th;
                    }
                }
                if (iE == 4) {
                    if (j2 < atomicLongFieldUpdater2.get(bufferedChannel)) {
                        channelSegment.b();
                    }
                    Object objK3 = bufferedChannel.K(obj, continuation);
                    if (objK3 != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        break;
                    }
                    return objK3;
                }
                if (iE == 5) {
                    channelSegment.b();
                }
            } else {
                break;
            }
        }
        return Unit.f71739a;
    }

    public static final void c(BufferedChannel bufferedChannel, Object obj, CancellableContinuationImpl cancellableContinuationImpl) {
        Function1 function1 = bufferedChannel.f74735c;
        if (function1 != null) {
            OnUndeliveredElementKt.a(function1, obj, cancellableContinuationImpl.getContext());
        }
        Throwable thA = bufferedChannel.A();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuationImpl.resumeWith(new Result.Failure(thA));
    }

    public static final int e(BufferedChannel bufferedChannel, ChannelSegment channelSegment, int i2, Object obj, long j2, Object obj2, boolean z) {
        channelSegment.s(i2, obj);
        if (z) {
            return bufferedChannel.U(channelSegment, i2, obj, j2, obj2, z);
        }
        Object objQ = channelSegment.q(i2);
        if (objQ == null) {
            if (bufferedChannel.k(j2)) {
                if (channelSegment.p(null, BufferedChannelKt.d, i2)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.p(null, obj2, i2)) {
                    return 2;
                }
            }
        } else if (objQ instanceof Waiter) {
            channelSegment.s(i2, null);
            if (bufferedChannel.R(objQ, obj)) {
                channelSegment.t(i2, BufferedChannelKt.f74752i);
                return 0;
            }
            Symbol symbol = BufferedChannelKt.f74754k;
            if (channelSegment.f74764i.getAndSet((i2 * 2) + 1, symbol) == symbol) {
                return 5;
            }
            channelSegment.r(i2, true);
            return 5;
        }
        return bufferedChannel.U(channelSegment, i2, obj, j2, obj2, z);
    }

    public final Throwable A() {
        Throwable thY = y();
        return thY == null ? new ClosedSendChannelException("Channel was closed") : thY;
    }

    public final long B() {
        return f74728e.get(this) & 1152921504606846975L;
    }

    public final boolean C() {
        while (true) {
            f74732j.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = q;
            ChannelSegment channelSegmentT = (ChannelSegment) unsafe.getObjectVolatile(this, j2);
            AtomicLongFieldUpdater atomicLongFieldUpdater = f74729f;
            long j3 = atomicLongFieldUpdater.get(this);
            if (B() <= j3) {
                return false;
            }
            long j4 = BufferedChannelKt.f74747b;
            long j5 = j3 / j4;
            if (channelSegmentT.f75137f == j5 || (channelSegmentT = t(j5, channelSegmentT)) != null) {
                channelSegmentT.b();
                int i2 = (int) (j3 % j4);
                while (true) {
                    Object objQ = channelSegmentT.q(i2);
                    if (objQ != null && objQ != BufferedChannelKt.f74749e) {
                        if (objQ != BufferedChannelKt.d) {
                            if (objQ != BufferedChannelKt.f74753j && objQ != BufferedChannelKt.l && objQ != BufferedChannelKt.f74752i && objQ != BufferedChannelKt.f74751h) {
                                if (objQ != BufferedChannelKt.g) {
                                    if (objQ == BufferedChannelKt.f74750f || j3 != atomicLongFieldUpdater.get(this)) {
                                        break;
                                        break;
                                    }
                                    return true;
                                }
                                return true;
                            }
                            break;
                            break;
                            break;
                            break;
                        }
                        return true;
                    }
                    if (channelSegmentT.p(objQ, BufferedChannelKt.f74751h, i2)) {
                        q();
                        break;
                    }
                }
                f74729f.compareAndSet(this, j3, j3 + 1);
            } else if (((ChannelSegment) unsafe.getObjectVolatile(this, j2)).f75137f < j5) {
                return false;
            }
        }
    }

    public final void E() {
        Object objectVolatile;
        BufferedChannel<E> bufferedChannel;
        loop0: while (true) {
            m.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = p;
            objectVolatile = unsafe.getObjectVolatile(this, j2);
            Symbol symbol = objectVolatile == null ? BufferedChannelKt.q : BufferedChannelKt.r;
            while (true) {
                Unsafe unsafe2 = o91.f76733a;
                bufferedChannel = this;
                if (unsafe2.compareAndSwapObject(bufferedChannel, p, objectVolatile, symbol)) {
                    break loop0;
                } else if (unsafe2.getObjectVolatile(bufferedChannel, j2) != objectVolatile) {
                    break;
                } else {
                    this = bufferedChannel;
                }
            }
            this = bufferedChannel;
        }
        if (objectVolatile == null) {
            return;
        }
        TypeIntrinsics.e(1, objectVolatile);
        ((Function1) objectVolatile).invoke(bufferedChannel.y());
    }

    public final boolean F(long j2, boolean z) {
        int i2 = (int) (j2 >> 60);
        if (i2 != 0 && i2 != 1) {
            if (i2 == 2) {
                o(j2 & 1152921504606846975L);
                if (!z || !C()) {
                }
            } else {
                if (i2 != 3) {
                    tg0.c(pq0.k(i2, "unexpected close status: "));
                    return false;
                }
                ChannelSegment channelSegmentO = o(j2 & 1152921504606846975L);
                UndeliveredElementException undeliveredElementExceptionB = null;
                Object objA = null;
                loop0: do {
                    AtomicReferenceArray atomicReferenceArray = channelSegmentO.f74764i;
                    for (int i3 = BufferedChannelKt.f74747b - 1; -1 < i3; i3--) {
                        long j3 = (channelSegmentO.f75137f * ((long) BufferedChannelKt.f74747b)) + ((long) i3);
                        while (true) {
                            Object objQ = channelSegmentO.q(i3);
                            if (objQ == BufferedChannelKt.f74752i) {
                                break loop0;
                            }
                            Symbol symbol = BufferedChannelKt.d;
                            AtomicLongFieldUpdater atomicLongFieldUpdater = f74729f;
                            Function1 function1 = this.f74735c;
                            if (objQ != symbol) {
                                if (objQ != BufferedChannelKt.f74749e && objQ != null) {
                                    if (!(objQ instanceof Waiter) && !(objQ instanceof WaiterEB)) {
                                        Symbol symbol2 = BufferedChannelKt.g;
                                        if (objQ == symbol2 || objQ == BufferedChannelKt.f74750f) {
                                            break loop0;
                                        }
                                        if (objQ != symbol2) {
                                            break;
                                        }
                                    } else {
                                        if (j3 < atomicLongFieldUpdater.get(this)) {
                                            break loop0;
                                        }
                                        Waiter waiter = objQ instanceof WaiterEB ? ((WaiterEB) objQ).f74773a : (Waiter) objQ;
                                        if (channelSegmentO.p(objQ, BufferedChannelKt.l, i3)) {
                                            if (function1 != null) {
                                                undeliveredElementExceptionB = OnUndeliveredElementKt.b(function1, atomicReferenceArray.get(i3 * 2), undeliveredElementExceptionB);
                                            }
                                            objA = InlineList.a(objA, waiter);
                                            channelSegmentO.s(i3, null);
                                            channelSegmentO.n();
                                            break;
                                        }
                                    }
                                } else {
                                    if (channelSegmentO.p(objQ, BufferedChannelKt.l, i3)) {
                                        channelSegmentO.n();
                                        break;
                                    }
                                }
                            } else {
                                if (j3 < atomicLongFieldUpdater.get(this)) {
                                    break loop0;
                                }
                                if (channelSegmentO.p(objQ, BufferedChannelKt.l, i3)) {
                                    if (function1 != null) {
                                        undeliveredElementExceptionB = OnUndeliveredElementKt.b(function1, atomicReferenceArray.get(i3 * 2), undeliveredElementExceptionB);
                                    }
                                    channelSegmentO.s(i3, null);
                                    channelSegmentO.n();
                                    break;
                                }
                            }
                        }
                    }
                    channelSegmentO = (ChannelSegment) channelSegmentO.f();
                } while (channelSegmentO != null);
                if (objA != null) {
                    if (objA instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) objA;
                        for (int size = arrayList.size() - 1; -1 < size; size--) {
                            P((Waiter) arrayList.get(size), false);
                        }
                    } else {
                        P((Waiter) objA, false);
                    }
                }
                if (undeliveredElementExceptionB != null) {
                    throw undeliveredElementExceptionB;
                }
            }
            return true;
        }
        return false;
    }

    public final boolean G() {
        return F(f74728e.get(this), true);
    }

    public boolean H() {
        return false;
    }

    public final boolean I() {
        long j2 = g.get(this);
        return j2 == 0 || j2 == Long.MAX_VALUE;
    }

    public final void J(long j2, ChannelSegment channelSegment) {
        BufferedChannel<E> bufferedChannel;
        ChannelSegment channelSegment2;
        ChannelSegment channelSegment3;
        while (channelSegment.f75137f < j2 && (channelSegment3 = (ChannelSegment) channelSegment.d()) != null) {
            channelSegment = channelSegment3;
        }
        while (true) {
            ChannelSegment channelSegment4 = channelSegment;
            while (channelSegment4.g() && (channelSegment2 = (ChannelSegment) channelSegment4.d()) != null) {
                channelSegment4 = channelSegment2;
            }
            while (true) {
                f74733k.getClass();
                Unsafe unsafe = o91.f76733a;
                long j3 = o;
                Segment segment = (Segment) unsafe.getObjectVolatile(this, j3);
                if (segment.f75137f >= channelSegment4.f75137f) {
                    return;
                }
                if (!channelSegment4.o()) {
                    break;
                }
                while (true) {
                    Unsafe unsafe2 = o91.f76733a;
                    bufferedChannel = this;
                    if (unsafe2.compareAndSwapObject(bufferedChannel, o, segment, channelSegment4)) {
                        if (segment.k()) {
                            segment.i();
                            return;
                        }
                        return;
                    } else if (unsafe2.getObjectVolatile(bufferedChannel, j3) != segment) {
                        break;
                    } else {
                        this = bufferedChannel;
                    }
                }
                if (channelSegment4.k()) {
                    channelSegment4.i();
                }
                this = bufferedChannel;
            }
            channelSegment = channelSegment4;
        }
    }

    public final Object K(Object obj, Continuation continuation) {
        UndeliveredElementException undeliveredElementExceptionB;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Function1 function1 = this.f74735c;
        if (function1 == null || (undeliveredElementExceptionB = OnUndeliveredElementKt.b(function1, obj, null)) == null) {
            Throwable thA = A();
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(new Result.Failure(thA));
        } else {
            ExceptionsKt.a(undeliveredElementExceptionB, A());
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(new Result.Failure(undeliveredElementExceptionB));
        }
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object N(ChannelSegment channelSegment, int i2, long j2, ContinuationImpl continuationImpl) {
        BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 bufferedChannel$receiveCatchingOnNoWaiterSuspend$1;
        ChannelResult channelResult;
        ChannelSegment channelSegment2;
        if (continuationImpl instanceof BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = (BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) continuationImpl;
            int i3 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.d = i3 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuationImpl);
            }
        } else {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuationImpl);
        }
        Object result = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f74744b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.d;
        KFunction kFunctionH = null;
        if (i4 == 0) {
            ResultKt.b(result);
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.d = 1;
            CancellableContinuationImpl cancellableContinuationImplB = CancellableContinuationKt.b(IntrinsicsKt.b(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1));
            try {
                ReceiveCatching receiveCatching = new ReceiveCatching(cancellableContinuationImplB);
                Object objT = T(channelSegment, i2, j2, receiveCatching);
                if (objT == BufferedChannelKt.m) {
                    receiveCatching.invokeOnCancellation(channelSegment, i2);
                } else {
                    Symbol symbol = BufferedChannelKt.o;
                    Function1 function1 = this.f74735c;
                    if (objT == symbol) {
                        if (j2 < B()) {
                            channelSegment.b();
                        }
                        ChannelSegment channelSegment3 = (ChannelSegment) f74732j.get(this);
                        while (true) {
                            if (G()) {
                                Result.Companion companion = Result.INSTANCE;
                                ChannelResult.Companion companion2 = ChannelResult.f74759b;
                                Throwable thY = y();
                                companion2.getClass();
                                cancellableContinuationImplB.resumeWith(new ChannelResult(ChannelResult.Companion.a(thY)));
                            } else {
                                long andIncrement = f74729f.getAndIncrement(this);
                                long j3 = BufferedChannelKt.f74747b;
                                long j4 = andIncrement / j3;
                                int i5 = (int) (andIncrement % j3);
                                if (channelSegment3.f75137f != j4) {
                                    ChannelSegment channelSegmentT = t(j4, channelSegment3);
                                    if (channelSegmentT != null) {
                                        channelSegment2 = channelSegmentT;
                                    }
                                } else {
                                    channelSegment2 = channelSegment3;
                                }
                                Object objT2 = T(channelSegment2, i5, andIncrement, receiveCatching);
                                ChannelSegment channelSegment4 = channelSegment2;
                                if (objT2 == BufferedChannelKt.m) {
                                    receiveCatching.invokeOnCancellation(channelSegment4, i5);
                                } else if (objT2 == BufferedChannelKt.o) {
                                    if (andIncrement < B()) {
                                        channelSegment4.b();
                                    }
                                    channelSegment3 = channelSegment4;
                                } else {
                                    if (objT2 == BufferedChannelKt.n) {
                                        throw new IllegalStateException("unexpected");
                                    }
                                    channelSegment4.b();
                                    ChannelResult.f74759b.getClass();
                                    channelResult = new ChannelResult(objT2);
                                    if (function1 != null) {
                                        kFunctionH = h();
                                    }
                                }
                            }
                        }
                    } else {
                        channelSegment.b();
                        ChannelResult.f74759b.getClass();
                        channelResult = new ChannelResult(objT);
                        if (function1 != null) {
                            kFunctionH = h();
                        }
                    }
                    cancellableContinuationImplB.resume(channelResult, (Function3<? super Throwable, ? super ChannelResult, ? super CoroutineContext, Unit>) kFunctionH);
                }
                result = cancellableContinuationImplB.getResult();
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (result == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } catch (Throwable th) {
                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th;
            }
        } else {
            if (i4 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(result);
        }
        return ((ChannelResult) result).f74761a;
    }

    public final void O(SelectInstance selectInstance) {
        ChannelSegment channelSegment;
        Object obj;
        f74732j.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) o91.f76733a.getObjectVolatile(this, q);
        while (!this.G()) {
            long andIncrement = f74729f.getAndIncrement(this);
            long j2 = BufferedChannelKt.f74747b;
            long j3 = andIncrement / j2;
            int i2 = (int) (andIncrement % j2);
            if (channelSegment2.f75137f != j3) {
                ChannelSegment channelSegmentT = this.t(j3, channelSegment2);
                if (channelSegmentT == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentT;
                }
            } else {
                channelSegment = channelSegment2;
            }
            Object objT = this.T(channelSegment, i2, andIncrement, selectInstance);
            channelSegment2 = channelSegment;
            if (objT == BufferedChannelKt.m) {
                Waiter waiter = selectInstance instanceof Waiter ? (Waiter) obj : null;
                if (waiter == null) {
                    obj = selectInstance;
                    return;
                } else {
                    obj = selectInstance;
                    waiter.invokeOnCancellation(channelSegment2, i2);
                    return;
                }
            }
            if (objT != BufferedChannelKt.o) {
                if (objT == BufferedChannelKt.n) {
                    md.k("unexpected");
                    return;
                } else {
                    channelSegment2.b();
                    selectInstance.b(objT);
                    return;
                }
            }
            if (andIncrement < this.B()) {
                channelSegment2.b();
            }
            this = this;
            selectInstance = selectInstance;
        }
        selectInstance.b(BufferedChannelKt.l);
    }

    public final void P(Waiter waiter, boolean z) {
        if (waiter instanceof SendBroadcast) {
            CancellableContinuation cancellableContinuation = ((SendBroadcast) waiter).f74739c;
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuation.resumeWith(Boolean.FALSE);
            return;
        }
        if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(new Result.Failure(z ? z() : A()));
            return;
        }
        if (waiter instanceof ReceiveCatching) {
            CancellableContinuationImpl cancellableContinuationImpl = ((ReceiveCatching) waiter).f74772b;
            Result.Companion companion3 = Result.INSTANCE;
            ChannelResult.Companion companion4 = ChannelResult.f74759b;
            Throwable thY = y();
            companion4.getClass();
            cancellableContinuationImpl.resumeWith(new ChannelResult(ChannelResult.Companion.a(thY)));
            return;
        }
        if (!(waiter instanceof BufferedChannelIterator)) {
            if (waiter instanceof SelectInstance) {
                ((SelectInstance) waiter).d(this, BufferedChannelKt.l);
                return;
            } else {
                mt.f(waiter, "Unexpected waiter: ");
                return;
            }
        }
        BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) waiter;
        CancellableContinuationImpl cancellableContinuationImpl2 = bufferedChannelIterator.f74737c;
        cancellableContinuationImpl2.getClass();
        bufferedChannelIterator.f74737c = null;
        bufferedChannelIterator.f74736b = BufferedChannelKt.l;
        Throwable thY2 = BufferedChannel.this.y();
        if (thY2 == null) {
            Result.Companion companion5 = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(Boolean.FALSE);
        } else {
            Result.Companion companion6 = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(new Result.Failure(thY2));
        }
    }

    public final boolean R(Object obj, Object obj2) {
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).d(this, obj2);
        }
        boolean z = obj instanceof ReceiveCatching;
        Function1 function1 = this.f74735c;
        if (z) {
            CancellableContinuationImpl cancellableContinuationImpl = ((ReceiveCatching) obj).f74772b;
            ChannelResult.f74759b.getClass();
            return BufferedChannelKt.a(cancellableContinuationImpl, new ChannelResult(obj2), (Function3) (function1 != null ? h() : null));
        }
        if (!(obj instanceof BufferedChannelIterator)) {
            if (obj instanceof CancellableContinuation) {
                return BufferedChannelKt.a((CancellableContinuation) obj, obj2, (Function3) (function1 != null ? g() : null));
            }
            mt.f(obj, "Unexpected receiver type: ");
            return false;
        }
        BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) obj;
        CancellableContinuationImpl cancellableContinuationImpl2 = bufferedChannelIterator.f74737c;
        cancellableContinuationImpl2.getClass();
        bufferedChannelIterator.f74737c = null;
        bufferedChannelIterator.f74736b = obj2;
        Boolean bool = Boolean.TRUE;
        Function1 function2 = BufferedChannel.this.f74735c;
        return BufferedChannelKt.a(cancellableContinuationImpl2, bool, function2 != null ? new f1(function2, obj2, 13) : null);
    }

    public final boolean S(Object obj, ChannelSegment channelSegment, int i2) {
        TrySelectDetailedResult trySelectDetailedResult;
        if (obj instanceof CancellableContinuation) {
            return BufferedChannelKt.a((CancellableContinuation) obj, Unit.f71739a, null);
        }
        if (!(obj instanceof SelectInstance)) {
            if (obj instanceof SendBroadcast) {
                return BufferedChannelKt.a(((SendBroadcast) obj).f74739c, Boolean.TRUE, null);
            }
            mt.f(obj, "Unexpected waiter: ");
            return false;
        }
        int iK = ((SelectImplementation) obj).k(this, Unit.f71739a);
        Function3 function3 = SelectKt.f75199a;
        if (iK == 0) {
            trySelectDetailedResult = TrySelectDetailedResult.SUCCESSFUL;
        } else if (iK == 1) {
            trySelectDetailedResult = TrySelectDetailedResult.REREGISTER;
        } else if (iK == 2) {
            trySelectDetailedResult = TrySelectDetailedResult.CANCELLED;
        } else {
            if (iK != 3) {
                no0.i(iK, "Unexpected internal result: ");
                return false;
            }
            trySelectDetailedResult = TrySelectDetailedResult.ALREADY_SELECTED;
        }
        if (trySelectDetailedResult == TrySelectDetailedResult.REREGISTER) {
            channelSegment.s(i2, null);
        }
        return trySelectDetailedResult == TrySelectDetailedResult.SUCCESSFUL;
    }

    public final Object T(ChannelSegment channelSegment, int i2, long j2, Object obj) {
        Object objQ = channelSegment.q(i2);
        AtomicReferenceArray atomicReferenceArray = channelSegment.f74764i;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f74728e;
        if (objQ == null) {
            if (j2 >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.n;
                }
                if (channelSegment.p(objQ, obj, i2)) {
                    q();
                    return BufferedChannelKt.m;
                }
            }
        } else if (objQ == BufferedChannelKt.d && channelSegment.p(objQ, BufferedChannelKt.f74752i, i2)) {
            q();
            Object obj2 = atomicReferenceArray.get(i2 * 2);
            channelSegment.s(i2, null);
            return obj2;
        }
        while (true) {
            Object objQ2 = channelSegment.q(i2);
            if (objQ2 == null || objQ2 == BufferedChannelKt.f74749e) {
                if (j2 < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (channelSegment.p(objQ2, BufferedChannelKt.f74751h, i2)) {
                        q();
                        return BufferedChannelKt.o;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.n;
                    }
                    if (channelSegment.p(objQ2, obj, i2)) {
                        q();
                        return BufferedChannelKt.m;
                    }
                }
            } else {
                if (objQ2 != BufferedChannelKt.d) {
                    Symbol symbol = BufferedChannelKt.f74753j;
                    if (objQ2 != symbol && objQ2 != BufferedChannelKt.f74751h) {
                        if (objQ2 == BufferedChannelKt.l) {
                            q();
                            return BufferedChannelKt.o;
                        }
                        if (objQ2 != BufferedChannelKt.g && channelSegment.p(objQ2, BufferedChannelKt.f74750f, i2)) {
                            boolean z = objQ2 instanceof WaiterEB;
                            if (z) {
                                objQ2 = ((WaiterEB) objQ2).f74773a;
                            }
                            if (S(objQ2, channelSegment, i2)) {
                                channelSegment.t(i2, BufferedChannelKt.f74752i);
                                q();
                                Object obj3 = atomicReferenceArray.get(i2 * 2);
                                channelSegment.s(i2, null);
                                return obj3;
                            }
                            channelSegment.t(i2, symbol);
                            channelSegment.n();
                            if (z) {
                                q();
                            }
                            return BufferedChannelKt.o;
                        }
                    }
                    return BufferedChannelKt.o;
                }
                if (channelSegment.p(objQ2, BufferedChannelKt.f74752i, i2)) {
                    q();
                    Object obj4 = atomicReferenceArray.get(i2 * 2);
                    channelSegment.s(i2, null);
                    return obj4;
                }
            }
        }
    }

    public final int U(ChannelSegment channelSegment, int i2, Object obj, long j2, Object obj2, boolean z) {
        while (true) {
            Object objQ = channelSegment.q(i2);
            if (objQ == null) {
                if (!k(j2) || z) {
                    if (z) {
                        if (channelSegment.p(null, BufferedChannelKt.f74753j, i2)) {
                            channelSegment.n();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (channelSegment.p(null, obj2, i2)) {
                            return 2;
                        }
                    }
                } else if (channelSegment.p(null, BufferedChannelKt.d, i2)) {
                    break;
                }
            } else {
                if (objQ != BufferedChannelKt.f74749e) {
                    Symbol symbol = BufferedChannelKt.f74754k;
                    if (objQ == symbol) {
                        channelSegment.s(i2, null);
                        return 5;
                    }
                    if (objQ == BufferedChannelKt.f74751h) {
                        channelSegment.s(i2, null);
                        return 5;
                    }
                    if (objQ == BufferedChannelKt.l) {
                        channelSegment.s(i2, null);
                        v();
                        return 4;
                    }
                    channelSegment.s(i2, null);
                    if (objQ instanceof WaiterEB) {
                        objQ = ((WaiterEB) objQ).f74773a;
                    }
                    if (R(objQ, obj)) {
                        channelSegment.t(i2, BufferedChannelKt.f74752i);
                        return 0;
                    }
                    if (channelSegment.f74764i.getAndSet((i2 * 2) + 1, symbol) != symbol) {
                        channelSegment.r(i2, true);
                    }
                    return 5;
                }
                if (channelSegment.p(objQ, BufferedChannelKt.d, i2)) {
                    break;
                }
            }
        }
        return 1;
    }

    public final void V(long j2) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        BufferedChannel<E> bufferedChannel = this;
        if (bufferedChannel.I()) {
            return;
        }
        while (true) {
            atomicLongFieldUpdater = g;
            if (atomicLongFieldUpdater.get(bufferedChannel) > j2) {
                break;
            } else {
                bufferedChannel = this;
            }
        }
        int i2 = BufferedChannelKt.f74748c;
        int i3 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = f74730h;
            if (i3 < i2) {
                long j3 = atomicLongFieldUpdater.get(bufferedChannel);
                if (j3 == (4611686018427387903L & atomicLongFieldUpdater2.get(bufferedChannel)) && j3 == atomicLongFieldUpdater.get(bufferedChannel)) {
                    return;
                } else {
                    i3++;
                }
            } else {
                while (true) {
                    long j4 = atomicLongFieldUpdater2.get(bufferedChannel);
                    if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j4, (j4 & 4611686018427387903L) + 4611686018427387904L)) {
                        break;
                    } else {
                        bufferedChannel = this;
                    }
                }
                while (true) {
                    long j5 = atomicLongFieldUpdater.get(bufferedChannel);
                    long j6 = atomicLongFieldUpdater2.get(bufferedChannel);
                    long j7 = j6 & 4611686018427387903L;
                    boolean z = (j6 & 4611686018427387904L) != 0;
                    if (j5 == j7 && j5 == atomicLongFieldUpdater.get(bufferedChannel)) {
                        break;
                    }
                    if (z) {
                        bufferedChannel = this;
                    } else {
                        bufferedChannel = this;
                        atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j6, 4611686018427387904L + j7);
                    }
                }
                while (true) {
                    long j8 = atomicLongFieldUpdater2.get(bufferedChannel);
                    if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j8, j8 & 4611686018427387903L)) {
                        return;
                    } else {
                        bufferedChannel = this;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final void a(Function1 function1) {
        Unsafe unsafe;
        while (true) {
            m.getClass();
            Unsafe unsafe2 = o91.f76733a;
            BufferedChannel<E> bufferedChannel = this;
            if (unsafe2.compareAndSwapObject(bufferedChannel, p, (Object) null, function1)) {
                return;
            }
            long j2 = p;
            if (unsafe2.getObjectVolatile(bufferedChannel, j2) != null) {
                while (true) {
                    Object objectVolatile = o91.f76733a.getObjectVolatile(bufferedChannel, j2);
                    Symbol symbol = BufferedChannelKt.q;
                    if (objectVolatile != symbol) {
                        if (objectVolatile == BufferedChannelKt.r) {
                            md.k("Another handler was already registered and successfully invoked");
                            return;
                        } else {
                            mt.f(objectVolatile, "Another handler is already registered: ");
                            return;
                        }
                    }
                    Symbol symbol2 = BufferedChannelKt.r;
                    do {
                        BufferedChannel<E> bufferedChannel2 = bufferedChannel;
                        unsafe = o91.f76733a;
                        boolean zCompareAndSwapObject = unsafe.compareAndSwapObject(bufferedChannel2, p, symbol, symbol2);
                        bufferedChannel = bufferedChannel2;
                        if (zCompareAndSwapObject) {
                            ((ProduceKt$awaitClose$4$1) function1).invoke(bufferedChannel.y());
                            return;
                        }
                    } while (unsafe.getObjectVolatile(bufferedChannel, j2) == symbol);
                }
            } else {
                this = bufferedChannel;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0075 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0077  */
    /* JADX WARN: Code duplicated, block: B:24:0x007b  */
    /* JADX WARN: Code duplicated, block: B:26:0x007e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    /* JADX WARN: Code duplicated, block: B:31:0x0085  */
    /* JADX WARN: Code duplicated, block: B:34:0x0093  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:42:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0066 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x0077, please report this as an issue */
    @Override // kotlinx.coroutines.channels.SendChannel
    public Object b(Object obj) {
        int iE;
        Waiter waiter;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f74728e;
        long j2 = atomicLongFieldUpdater.get(this);
        long j3 = 1152921504606846975L;
        if (F(j2, false) ? false : !k(j2 & 1152921504606846975L)) {
            ChannelResult.f74759b.getClass();
            return ChannelResult.f74760c;
        }
        Object obj2 = BufferedChannelKt.f74753j;
        f74731i.getClass();
        ChannelSegment channelSegment = (ChannelSegment) o91.f76733a.getObjectVolatile(this, r);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = andIncrement & j3;
            boolean zF = F(andIncrement, false);
            int i2 = BufferedChannelKt.f74747b;
            long j5 = i2;
            long j6 = j4 / j5;
            int i3 = (int) (j4 % j5);
            if (channelSegment.f75137f == j6) {
                iE = e(this, channelSegment, i3, obj, j4, obj2, zF);
                if (iE != 0) {
                    channelSegment.b();
                } else if (iE != 1) {
                    if (iE != 2) {
                        if (zF) {
                            channelSegment.n();
                            ChannelResult.Companion companion = ChannelResult.f74759b;
                            Throwable thA = A();
                            companion.getClass();
                            return ChannelResult.Companion.a(thA);
                        }
                        waiter = obj2 instanceof Waiter ? (Waiter) obj2 : null;
                        if (waiter != null) {
                            waiter.invokeOnCancellation(channelSegment, i3 + i2);
                        }
                        channelSegment.n();
                        ChannelResult.f74759b.getClass();
                        return ChannelResult.f74760c;
                    }
                    if (iE != 3) {
                        md.k("unexpected");
                        return null;
                    }
                    if (iE != 4) {
                        if (j4 < f74729f.get(this)) {
                            channelSegment.b();
                        }
                        ChannelResult.Companion companion2 = ChannelResult.f74759b;
                        Throwable thA2 = A();
                        companion2.getClass();
                        return ChannelResult.Companion.a(thA2);
                    }
                    if (iE != 5) {
                        channelSegment.b();
                    }
                }
                ChannelResult.Companion companion3 = ChannelResult.f74759b;
                Unit unit = Unit.f71739a;
                companion3.getClass();
                return unit;
            }
            ChannelSegment channelSegmentX = x(j6, channelSegment);
            if (channelSegmentX != null) {
                channelSegment = channelSegmentX;
                iE = e(this, channelSegment, i3, obj, j4, obj2, zF);
                if (iE != 0) {
                    channelSegment.b();
                } else if (iE != 1) {
                    if (iE != 2) {
                        if (zF) {
                            channelSegment.n();
                            ChannelResult.Companion companion4 = ChannelResult.f74759b;
                            Throwable thA3 = A();
                            companion4.getClass();
                            return ChannelResult.Companion.a(thA3);
                        }
                        if (obj2 instanceof Waiter) {
                        }
                        if (waiter != null) {
                            waiter.invokeOnCancellation(channelSegment, i3 + i2);
                        }
                        channelSegment.n();
                        ChannelResult.f74759b.getClass();
                        return ChannelResult.f74760c;
                    }
                    if (iE != 3) {
                        md.k("unexpected");
                        return null;
                    }
                    if (iE != 4) {
                        if (j4 < f74729f.get(this)) {
                            channelSegment.b();
                        }
                        ChannelResult.Companion companion5 = ChannelResult.f74759b;
                        Throwable thA4 = A();
                        companion5.getClass();
                        return ChannelResult.Companion.a(thA4);
                    }
                    if (iE != 5) {
                        channelSegment.b();
                    }
                }
                ChannelResult.Companion companion6 = ChannelResult.f74759b;
                Unit unit2 = Unit.f71739a;
                companion6.getClass();
                return unit2;
            }
            if (zF) {
                ChannelResult.Companion companion7 = ChannelResult.f74759b;
                Throwable thA5 = A();
                companion7.getClass();
                return ChannelResult.Companion.a(thA5);
            }
            j3 = 1152921504606846975L;
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        n(cancellationException, true);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 d() {
        BufferedChannel$onReceiveCatching$1 bufferedChannel$onReceiveCatching$1 = BufferedChannel$onReceiveCatching$1.f74740b;
        bufferedChannel$onReceiveCatching$1.getClass();
        TypeIntrinsics.e(3, bufferedChannel$onReceiveCatching$1);
        BufferedChannel$onReceiveCatching$2 bufferedChannel$onReceiveCatching$2 = BufferedChannel$onReceiveCatching$2.f74741b;
        bufferedChannel$onReceiveCatching$2.getClass();
        TypeIntrinsics.e(3, bufferedChannel$onReceiveCatching$2);
        return new SelectClause1Impl(this, bufferedChannel$onReceiveCatching$1, bufferedChannel$onReceiveCatching$2, this.d);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object f() {
        ChannelSegment channelSegmentT;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f74729f;
        long j2 = atomicLongFieldUpdater.get(this);
        long j3 = f74728e.get(this);
        if (F(j3, true)) {
            ChannelResult.Companion companion = ChannelResult.f74759b;
            Throwable thY = y();
            companion.getClass();
            return ChannelResult.Companion.a(thY);
        }
        if (j2 >= (j3 & 1152921504606846975L)) {
            ChannelResult.f74759b.getClass();
            return ChannelResult.f74760c;
        }
        Object obj = BufferedChannelKt.f74754k;
        f74732j.getClass();
        ChannelSegment channelSegment = (ChannelSegment) o91.f76733a.getObjectVolatile(this, q);
        while (!this.G()) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = BufferedChannelKt.f74747b;
            long j5 = andIncrement / j4;
            int i2 = (int) (andIncrement % j4);
            if (channelSegment.f75137f != j5) {
                channelSegmentT = this.t(j5, channelSegment);
                if (channelSegmentT == null) {
                    continue;
                }
            } else {
                channelSegmentT = channelSegment;
            }
            BufferedChannel<E> bufferedChannel = this;
            Object objT = bufferedChannel.T(channelSegmentT, i2, andIncrement, obj);
            channelSegment = channelSegmentT;
            if (objT == BufferedChannelKt.m) {
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    waiter.invokeOnCancellation(channelSegment, i2);
                }
                bufferedChannel.V(andIncrement);
                channelSegment.n();
                ChannelResult.f74759b.getClass();
                return ChannelResult.f74760c;
            }
            if (objT != BufferedChannelKt.o) {
                if (objT == BufferedChannelKt.n) {
                    md.k("unexpected");
                    return null;
                }
                channelSegment.b();
                ChannelResult.f74759b.getClass();
                return objT;
            }
            if (andIncrement < bufferedChannel.B()) {
                channelSegment.b();
            }
            this = bufferedChannel;
        }
        ChannelResult.Companion companion2 = ChannelResult.f74759b;
        Throwable thY2 = this.y();
        companion2.getClass();
        return ChannelResult.Companion.a(thY2);
    }

    public final KFunction g() {
        return new BufferedChannel$bindCancellationFun$2(3, this, BufferedChannel.class, "onCancellationImplDoNotCall", "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    public final KFunction h() {
        return new BufferedChannel$bindCancellationFunResult$1(3, this, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object i(Continuation continuation) {
        return M(this, (ContinuationImpl) continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final ChannelIterator iterator() {
        return new BufferedChannelIterator();
    }

    public final boolean k(long j2) {
        return j2 < g.get(this) || j2 < f74729f.get(this) + ((long) this.f74734b);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean l(Throwable th) {
        return n(th, false);
    }

    public final ChannelSegment m() {
        f74733k.getClass();
        Unsafe unsafe = o91.f76733a;
        Object objectVolatile = unsafe.getObjectVolatile(this, o);
        f74731i.getClass();
        ChannelSegment channelSegment = (ChannelSegment) unsafe.getObjectVolatile(this, r);
        if (channelSegment.f75137f > ((ChannelSegment) objectVolatile).f75137f) {
            objectVolatile = channelSegment;
        }
        f74732j.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) unsafe.getObjectVolatile(this, q);
        if (channelSegment2.f75137f > ((ChannelSegment) objectVolatile).f75137f) {
            objectVolatile = channelSegment2;
        }
        ConcurrentLinkedListNode concurrentLinkedListNode = (ConcurrentLinkedListNode) objectVolatile;
        Symbol symbol = ConcurrentLinkedListKt.f75102a;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = ConcurrentLinkedListNode.f75103b;
            Object objE = concurrentLinkedListNode.e();
            if (objE == ConcurrentLinkedListKt.f75102a) {
                break;
            }
            ConcurrentLinkedListNode concurrentLinkedListNode2 = (ConcurrentLinkedListNode) objE;
            if (concurrentLinkedListNode2 != null) {
                concurrentLinkedListNode = concurrentLinkedListNode2;
            } else if (concurrentLinkedListNode.h()) {
                break;
            }
        }
        return (ChannelSegment) concurrentLinkedListNode;
    }

    public final boolean n(Throwable th, boolean z) {
        BufferedChannel<E> bufferedChannel;
        boolean z2;
        long j2;
        long j3;
        long j4;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f74728e;
        if (!z) {
            bufferedChannel = this;
            break;
        }
        while (true) {
            long j5 = atomicLongFieldUpdater.get(this);
            if (((int) (j5 >> 60)) != 0) {
                bufferedChannel = this;
                break;
            }
            ChannelSegment channelSegment = BufferedChannelKt.f74746a;
            bufferedChannel = this;
            if (atomicLongFieldUpdater.compareAndSet(bufferedChannel, j5, (j5 & 1152921504606846975L) + 1152921504606846976L)) {
                break;
            }
            this = bufferedChannel;
        }
        Symbol symbol = BufferedChannelKt.s;
        while (true) {
            l.getClass();
            BufferedChannel<E> bufferedChannel2 = bufferedChannel;
            Unsafe unsafe = o91.f76733a;
            long j6 = n;
            Throwable th2 = th;
            boolean zCompareAndSwapObject = unsafe.compareAndSwapObject(bufferedChannel2, j6, symbol, th2);
            bufferedChannel = bufferedChannel2;
            if (zCompareAndSwapObject) {
                z2 = true;
                break;
            }
            if (unsafe.getObjectVolatile(bufferedChannel, j6) != symbol) {
                z2 = false;
                break;
            }
            th = th2;
        }
        if (z) {
            do {
                j4 = atomicLongFieldUpdater.get(bufferedChannel);
            } while (!atomicLongFieldUpdater.compareAndSet(bufferedChannel, j4, 3458764513820540928L + (j4 & 1152921504606846975L)));
        } else {
            do {
                j2 = atomicLongFieldUpdater.get(bufferedChannel);
                int i2 = (int) (j2 >> 60);
                if (i2 == 0) {
                    j3 = (j2 & 1152921504606846975L) + 2305843009213693952L;
                } else {
                    if (i2 != 1) {
                        break;
                    }
                    j3 = (j2 & 1152921504606846975L) + 3458764513820540928L;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(bufferedChannel, j2, j3));
        }
        bufferedChannel.v();
        if (z2) {
            bufferedChannel.E();
        }
        return z2;
    }

    public final ChannelSegment o(long j2) {
        long j3;
        ChannelSegment channelSegmentM = m();
        if (H()) {
            ChannelSegment channelSegment = channelSegmentM;
            loop0: while (true) {
                int i2 = BufferedChannelKt.f74747b - 1;
                while (true) {
                    if (-1 < i2) {
                        j3 = (channelSegment.f75137f * ((long) BufferedChannelKt.f74747b)) + ((long) i2);
                        if (j3 >= f74729f.get(this)) {
                            while (true) {
                                Object objQ = channelSegment.q(i2);
                                if (objQ != null && objQ != BufferedChannelKt.f74749e) {
                                    if (objQ != BufferedChannelKt.d) {
                                        break;
                                    }
                                    break loop0;
                                }
                                if (channelSegment.p(objQ, BufferedChannelKt.l, i2)) {
                                    channelSegment.n();
                                    break;
                                }
                            }
                            i2--;
                        }
                    } else {
                        channelSegment = (ChannelSegment) channelSegment.f();
                        if (channelSegment == null) {
                        }
                    }
                    j3 = -1;
                    break loop0;
                }
            }
            if (j3 != -1) {
                p(j3);
            }
        }
        Object objA = null;
        loop3: for (ChannelSegment channelSegment2 = channelSegmentM; channelSegment2 != null; channelSegment2 = (ChannelSegment) channelSegment2.f()) {
            for (int i3 = BufferedChannelKt.f74747b - 1; -1 < i3; i3--) {
                if ((channelSegment2.f75137f * ((long) BufferedChannelKt.f74747b)) + ((long) i3) < j2) {
                    break loop3;
                }
                while (true) {
                    Object objQ2 = channelSegment2.q(i3);
                    if (objQ2 != null && objQ2 != BufferedChannelKt.f74749e) {
                        if (!(objQ2 instanceof WaiterEB)) {
                            if (!(objQ2 instanceof Waiter)) {
                                break;
                            }
                            if (channelSegment2.p(objQ2, BufferedChannelKt.l, i3)) {
                                objA = InlineList.a(objA, objQ2);
                                channelSegment2.r(i3, true);
                                break;
                            }
                        } else {
                            if (channelSegment2.p(objQ2, BufferedChannelKt.l, i3)) {
                                objA = InlineList.a(objA, ((WaiterEB) objQ2).f74773a);
                                channelSegment2.r(i3, true);
                                break;
                            }
                        }
                    } else {
                        if (channelSegment2.p(objQ2, BufferedChannelKt.l, i3)) {
                            channelSegment2.n();
                            break;
                        }
                    }
                }
            }
        }
        if (objA != null) {
            if (!(objA instanceof ArrayList)) {
                P((Waiter) objA, true);
                return channelSegmentM;
            }
            ArrayList arrayList = (ArrayList) objA;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                P((Waiter) arrayList.get(size), true);
            }
        }
        return channelSegmentM;
    }

    public final void p(long j2) {
        UndeliveredElementException undeliveredElementExceptionB;
        f74732j.getClass();
        ChannelSegment channelSegment = (ChannelSegment) o91.f76733a.getObjectVolatile(this, q);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f74729f;
            long j3 = atomicLongFieldUpdater.get(this);
            if (j2 < Math.max(((long) this.f74734b) + j3, g.get(this))) {
                return;
            }
            this = this;
            if (atomicLongFieldUpdater.compareAndSet(this, j3, 1 + j3)) {
                long j4 = BufferedChannelKt.f74747b;
                long j5 = j3 / j4;
                int i2 = (int) (j3 % j4);
                if (channelSegment.f75137f != j5) {
                    ChannelSegment channelSegmentT = this.t(j5, channelSegment);
                    if (channelSegmentT != null) {
                        channelSegment = channelSegmentT;
                    }
                }
                ChannelSegment channelSegment2 = channelSegment;
                Object objT = this.T(channelSegment2, i2, j3, null);
                if (objT != BufferedChannelKt.o) {
                    channelSegment2.b();
                    Function1 function1 = this.f74735c;
                    if (function1 != null && (undeliveredElementExceptionB = OnUndeliveredElementKt.b(function1, objT, null)) != null) {
                        throw undeliveredElementExceptionB;
                    }
                } else if (j3 < this.B()) {
                    channelSegment2.b();
                }
                channelSegment = channelSegment2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00b3 A[EDGE_INSN: B:43:0x00b3->B:46:0x00c0 BREAK  A[LOOP:1: B:31:0x0080->B:92:0x0080]] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00f1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0090 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00c0 A[EDGE_INSN: B:89:0x00c0->B:46:0x00c0 BREAK  A[LOOP:1: B:31:0x0080->B:92:0x0080], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[SYNTHETIC] */
    public final void q() {
        int i2;
        boolean z;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        Object objQ;
        if (I()) {
            return;
        }
        f74733k.getClass();
        ChannelSegment channelSegment = (ChannelSegment) o91.f76733a.getObjectVolatile(this, o);
        while (true) {
            long andIncrement = g.getAndIncrement(this);
            long j2 = BufferedChannelKt.f74747b;
            long j3 = andIncrement / j2;
            if (this.B() <= andIncrement) {
                if (channelSegment.f75137f < j3 && channelSegment.d() != null) {
                    this.J(j3, channelSegment);
                }
                D(this);
                return;
            }
            BufferedChannel<E> bufferedChannel = this;
            if (channelSegment.f75137f == j3) {
                i2 = (int) (andIncrement % j2);
                Object objQ2 = channelSegment.q(i2);
                z = objQ2 instanceof Waiter;
                atomicLongFieldUpdater = f74729f;
                if (z || andIncrement < atomicLongFieldUpdater.get(bufferedChannel) || !channelSegment.p(objQ2, BufferedChannelKt.g, i2)) {
                    while (true) {
                        objQ = channelSegment.q(i2);
                        if (objQ instanceof Waiter) {
                            if (andIncrement < atomicLongFieldUpdater.get(bufferedChannel)) {
                                if (channelSegment.p(objQ, new WaiterEB((Waiter) objQ), i2)) {
                                    D(bufferedChannel);
                                    return;
                                }
                            } else if (channelSegment.p(objQ, BufferedChannelKt.g, i2)) {
                                if (!bufferedChannel.S(objQ, channelSegment, i2)) {
                                    channelSegment.t(i2, BufferedChannelKt.f74753j);
                                    channelSegment.n();
                                    break;
                                } else {
                                    channelSegment.t(i2, BufferedChannelKt.d);
                                    D(bufferedChannel);
                                    return;
                                }
                            }
                        } else {
                            if (objQ == BufferedChannelKt.f74753j) {
                                break;
                            }
                            if (objQ == null) {
                                if (channelSegment.p(objQ, BufferedChannelKt.f74749e, i2)) {
                                    D(bufferedChannel);
                                    return;
                                }
                            } else if (objQ != BufferedChannelKt.d || objQ == BufferedChannelKt.f74751h || objQ == BufferedChannelKt.f74752i || objQ == BufferedChannelKt.f74754k || objQ == BufferedChannelKt.l) {
                                D(bufferedChannel);
                                return;
                            } else if (objQ != BufferedChannelKt.f74750f) {
                                mt.f(objQ, "Unexpected cell state: ");
                                return;
                            }
                        }
                    }
                    D(bufferedChannel);
                } else if (bufferedChannel.S(objQ2, channelSegment, i2)) {
                    channelSegment.t(i2, BufferedChannelKt.d);
                    D(bufferedChannel);
                    return;
                } else {
                    channelSegment.t(i2, BufferedChannelKt.f74753j);
                    channelSegment.n();
                    D(bufferedChannel);
                }
            } else {
                ChannelSegment channelSegmentS = bufferedChannel.s(j3, channelSegment, andIncrement);
                if (channelSegmentS == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentS;
                    i2 = (int) (andIncrement % j2);
                    Object objQ3 = channelSegment.q(i2);
                    z = objQ3 instanceof Waiter;
                    atomicLongFieldUpdater = f74729f;
                    if (z) {
                        while (true) {
                            objQ = channelSegment.q(i2);
                            if (objQ instanceof Waiter) {
                                if (andIncrement < atomicLongFieldUpdater.get(bufferedChannel)) {
                                    if (channelSegment.p(objQ, new WaiterEB((Waiter) objQ), i2)) {
                                        D(bufferedChannel);
                                        return;
                                    }
                                } else if (channelSegment.p(objQ, BufferedChannelKt.g, i2)) {
                                    if (!bufferedChannel.S(objQ, channelSegment, i2)) {
                                        channelSegment.t(i2, BufferedChannelKt.f74753j);
                                        channelSegment.n();
                                        break;
                                    } else {
                                        channelSegment.t(i2, BufferedChannelKt.d);
                                        D(bufferedChannel);
                                        return;
                                    }
                                }
                            } else {
                                if (objQ == BufferedChannelKt.f74753j) {
                                    break;
                                    break;
                                }
                                if (objQ == null) {
                                    if (objQ != BufferedChannelKt.d) {
                                        if (objQ != BufferedChannelKt.f74750f) {
                                            mt.f(objQ, "Unexpected cell state: ");
                                            return;
                                        }
                                    }
                                    D(bufferedChannel);
                                    return;
                                }
                                if (channelSegment.p(objQ, BufferedChannelKt.f74749e, i2)) {
                                    D(bufferedChannel);
                                    return;
                                }
                            }
                        }
                        D(bufferedChannel);
                    } else {
                        while (true) {
                            objQ = channelSegment.q(i2);
                            if (objQ instanceof Waiter) {
                                if (andIncrement < atomicLongFieldUpdater.get(bufferedChannel)) {
                                    if (channelSegment.p(objQ, new WaiterEB((Waiter) objQ), i2)) {
                                        D(bufferedChannel);
                                        return;
                                    }
                                } else if (channelSegment.p(objQ, BufferedChannelKt.g, i2)) {
                                    if (!bufferedChannel.S(objQ, channelSegment, i2)) {
                                        channelSegment.t(i2, BufferedChannelKt.f74753j);
                                        channelSegment.n();
                                        break;
                                    } else {
                                        channelSegment.t(i2, BufferedChannelKt.d);
                                        D(bufferedChannel);
                                        return;
                                    }
                                }
                            } else {
                                if (objQ == BufferedChannelKt.f74753j) {
                                    break;
                                    break;
                                }
                                if (objQ == null) {
                                    if (objQ != BufferedChannelKt.d) {
                                        if (objQ != BufferedChannelKt.f74750f) {
                                            mt.f(objQ, "Unexpected cell state: ");
                                            return;
                                        }
                                    }
                                    D(bufferedChannel);
                                    return;
                                }
                                if (channelSegment.p(objQ, BufferedChannelKt.f74749e, i2)) {
                                    D(bufferedChannel);
                                    return;
                                }
                            }
                        }
                        D(bufferedChannel);
                    }
                }
            }
            this = bufferedChannel;
        }
    }

    public final ChannelSegment s(long j2, ChannelSegment channelSegment, long j3) {
        Object objA;
        Unsafe unsafe;
        ChannelSegment channelSegment2 = BufferedChannelKt.f74746a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.f74755b;
        loop0: while (true) {
            objA = ConcurrentLinkedListKt.a(channelSegment, j2, bufferedChannelKt$createSegmentFunction$1);
            if (!SegmentOrClosed.b(objA)) {
                Segment segmentA = SegmentOrClosed.a(objA);
                while (true) {
                    f74733k.getClass();
                    Unsafe unsafe2 = o91.f76733a;
                    long j4 = o;
                    Segment segment = (Segment) unsafe2.getObjectVolatile(this, j4);
                    if (segment.f75137f >= segmentA.f75137f) {
                        break loop0;
                    }
                    if (!segmentA.o()) {
                        break;
                    }
                    do {
                        unsafe = o91.f76733a;
                        if (unsafe.compareAndSwapObject(this, o, segment, segmentA)) {
                            if (!segment.k()) {
                                break loop0;
                            }
                            segment.i();
                            break loop0;
                        }
                    } while (unsafe.getObjectVolatile(this, j4) == segment);
                    if (segmentA.k()) {
                        segmentA.i();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.b(objA)) {
            v();
            J(j2, channelSegment);
            D(this);
            return null;
        }
        ChannelSegment channelSegment3 = (ChannelSegment) SegmentOrClosed.a(objA);
        long j5 = channelSegment3.f75137f;
        if (j5 <= j2) {
            return channelSegment3;
        }
        long j6 = j5 * ((long) BufferedChannelKt.f74747b);
        if (!g.compareAndSet(this, j3 + 1, j6)) {
            D(this);
            return null;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f74730h;
        if ((atomicLongFieldUpdater.addAndGet(this, j6 - j3) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0) {
            }
        }
        return null;
    }

    public final ChannelSegment t(long j2, ChannelSegment channelSegment) {
        Object objA;
        ChannelSegment channelSegment2;
        long j3;
        Unsafe unsafe;
        ChannelSegment channelSegment3 = BufferedChannelKt.f74746a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.f74755b;
        loop0: while (true) {
            objA = ConcurrentLinkedListKt.a(channelSegment, j2, bufferedChannelKt$createSegmentFunction$1);
            if (!SegmentOrClosed.b(objA)) {
                Segment segmentA = SegmentOrClosed.a(objA);
                while (true) {
                    f74732j.getClass();
                    Unsafe unsafe2 = o91.f76733a;
                    long j4 = q;
                    Segment segment = (Segment) unsafe2.getObjectVolatile(this, j4);
                    if (segment.f75137f >= segmentA.f75137f) {
                        break loop0;
                    }
                    if (!segmentA.o()) {
                        break;
                    }
                    do {
                        unsafe = o91.f76733a;
                        if (unsafe.compareAndSwapObject(this, q, segment, segmentA)) {
                            if (!segment.k()) {
                                break loop0;
                            }
                            segment.i();
                            break loop0;
                        }
                    } while (unsafe.getObjectVolatile(this, j4) == segment);
                    if (segmentA.k()) {
                        segmentA.i();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.b(objA)) {
            v();
            if (channelSegment.f75137f * ((long) BufferedChannelKt.f74747b) < B()) {
                channelSegment.b();
                return null;
            }
        } else {
            ChannelSegment channelSegment4 = (ChannelSegment) SegmentOrClosed.a(objA);
            long j5 = channelSegment4.f75137f;
            if (I() || j2 > g.get(this) / ((long) BufferedChannelKt.f74747b)) {
                channelSegment2 = channelSegment4;
                break;
            }
            loop3: while (true) {
                f74733k.getClass();
                Unsafe unsafe3 = o91.f76733a;
                long j6 = o;
                Segment segment2 = (Segment) unsafe3.getObjectVolatile(this, j6);
                if (segment2.f75137f >= j5 || !channelSegment4.o()) {
                    channelSegment2 = channelSegment4;
                    break;
                }
                while (true) {
                    Unsafe unsafe4 = o91.f76733a;
                    channelSegment2 = channelSegment4;
                    if (unsafe4.compareAndSwapObject(this, o, segment2, channelSegment4)) {
                        if (!segment2.k()) {
                            break loop3;
                        }
                        segment2.i();
                        break loop3;
                    }
                    if (unsafe4.getObjectVolatile(this, j6) != segment2) {
                        break;
                    }
                    channelSegment4 = channelSegment2;
                }
                if (channelSegment2.k()) {
                    channelSegment2.i();
                }
                channelSegment4 = channelSegment2;
            }
            if (j5 <= j2) {
                return channelSegment2;
            }
            long j7 = j5 * ((long) BufferedChannelKt.f74747b);
            do {
                j3 = f74729f.get(this);
                if (j3 >= j7) {
                    break;
                }
            } while (!f74729f.compareAndSet(this, j3, j7));
            if (j5 * ((long) BufferedChannelKt.f74747b) < B()) {
                channelSegment2.b();
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        int i2;
        String string;
        StringBuilder sb = new StringBuilder();
        int i3 = (int) (f74728e.get(this) >> 60);
        if (i3 == 2) {
            sb.append("closed,");
        } else if (i3 == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.f74734b + ',');
        sb.append("data=[");
        f74732j.getClass();
        Unsafe unsafe = o91.f76733a;
        int i4 = 0;
        f74731i.getClass();
        Object objectVolatile = unsafe.getObjectVolatile(this, r);
        int i5 = 1;
        f74733k.getClass();
        List listP = CollectionsKt.P(unsafe.getObjectVolatile(this, q), objectVolatile, unsafe.getObjectVolatile(this, o));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listP) {
            if (((ChannelSegment) obj) != BufferedChannelKt.f74746a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            b21.x();
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j2 = ((ChannelSegment) next).f75137f;
            do {
                Object next2 = it.next();
                long j3 = ((ChannelSegment) next2).f75137f;
                if (j2 > j3) {
                    next = next2;
                    j2 = j3;
                }
            } while (it.hasNext());
        }
        ChannelSegment channelSegment = (ChannelSegment) next;
        long j4 = f74729f.get(this);
        long jB = B();
        loop2: while (true) {
            int i6 = BufferedChannelKt.f74747b;
            int i7 = i4;
            while (i7 < i6) {
                i2 = i5;
                long j5 = (channelSegment.f75137f * ((long) BufferedChannelKt.f74747b)) + ((long) i7);
                if (j5 >= jB && j5 >= j4) {
                    break loop2;
                }
                Object objQ = channelSegment.q(i7);
                Object obj2 = channelSegment.f74764i.get(i7 * 2);
                if (objQ instanceof CancellableContinuation) {
                    string = (jB > j5 || j5 >= j4) ? (j4 > j5 || j5 >= jB) ? "cont" : "send" : "receive";
                } else if (objQ instanceof SelectInstance) {
                    string = (jB > j5 || j5 >= j4) ? (j4 > j5 || j5 >= jB) ? "select" : "onSend" : "onReceive";
                } else if (objQ instanceof ReceiveCatching) {
                    string = "receiveCatching";
                } else if (objQ instanceof SendBroadcast) {
                    string = "sendBroadcast";
                } else if (objQ instanceof WaiterEB) {
                    string = "EB(" + objQ + ')';
                } else if (Intrinsics.c(objQ, BufferedChannelKt.f74750f) || Intrinsics.c(objQ, BufferedChannelKt.g)) {
                    string = "resuming_sender";
                } else {
                    if (objQ != null && !objQ.equals(BufferedChannelKt.f74749e) && !objQ.equals(BufferedChannelKt.f74752i) && !objQ.equals(BufferedChannelKt.f74751h) && !objQ.equals(BufferedChannelKt.f74754k) && !objQ.equals(BufferedChannelKt.f74753j) && !objQ.equals(BufferedChannelKt.l)) {
                        string = objQ.toString();
                    }
                    i7++;
                    i5 = i2;
                }
                if (obj2 != null) {
                    sb.append("(" + string + ',' + obj2 + "),");
                } else {
                    sb.append(string + ',');
                }
                i7++;
                i5 = i2;
            }
            i2 = i5;
            channelSegment = (ChannelSegment) channelSegment.d();
            if (channelSegment == null) {
                break;
            }
            i5 = i2;
            i4 = 0;
        }
        if (StringsKt.x(sb) == ',') {
            sb.deleteCharAt(sb.length() - i2).getClass();
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object u(Object obj, Continuation continuation) {
        return Q(this, obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean v() {
        return F(f74728e.get(this), false);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object w(SuspendLambda suspendLambda) {
        return L(this, suspendLambda);
    }

    public final ChannelSegment x(long j2, ChannelSegment channelSegment) {
        Object objA;
        long j3;
        long j4;
        Unsafe unsafe;
        ChannelSegment channelSegment2 = BufferedChannelKt.f74746a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.f74755b;
        loop0: while (true) {
            objA = ConcurrentLinkedListKt.a(channelSegment, j2, bufferedChannelKt$createSegmentFunction$1);
            if (!SegmentOrClosed.b(objA)) {
                Segment segmentA = SegmentOrClosed.a(objA);
                while (true) {
                    f74731i.getClass();
                    Unsafe unsafe2 = o91.f76733a;
                    long j5 = r;
                    Segment segment = (Segment) unsafe2.getObjectVolatile(this, j5);
                    if (segment.f75137f >= segmentA.f75137f) {
                        break loop0;
                    }
                    if (!segmentA.o()) {
                        break;
                    }
                    do {
                        unsafe = o91.f76733a;
                        if (unsafe.compareAndSwapObject(this, r, segment, segmentA)) {
                            if (!segment.k()) {
                                break loop0;
                            }
                            segment.i();
                            break loop0;
                        }
                    } while (unsafe.getObjectVolatile(this, j5) == segment);
                    if (segmentA.k()) {
                        segmentA.i();
                    }
                }
            } else {
                break;
            }
        }
        boolean zB = SegmentOrClosed.b(objA);
        AtomicLongFieldUpdater atomicLongFieldUpdater = f74729f;
        if (zB) {
            v();
            if (channelSegment.f75137f * ((long) BufferedChannelKt.f74747b) < atomicLongFieldUpdater.get(this)) {
                channelSegment.b();
                return null;
            }
        } else {
            ChannelSegment channelSegment3 = (ChannelSegment) SegmentOrClosed.a(objA);
            long j6 = channelSegment3.f75137f;
            if (j6 <= j2) {
                return channelSegment3;
            }
            long j7 = j6 * ((long) BufferedChannelKt.f74747b);
            do {
                j3 = f74728e.get(this);
                j4 = 1152921504606846975L & j3;
                if (j4 >= j7) {
                    break;
                }
            } while (!f74728e.compareAndSet(this, j3, j4 + (((long) ((int) (j3 >> 60))) << 60)));
            if (j6 * ((long) BufferedChannelKt.f74747b) < atomicLongFieldUpdater.get(this)) {
                channelSegment3.b();
            }
        }
        return null;
    }

    public final Throwable y() {
        l.getClass();
        return (Throwable) o91.f76733a.getObjectVolatile(this, n);
    }

    public final Throwable z() {
        Throwable thY = y();
        return thY == null ? new ClosedReceiveChannelException("Channel was closed") : thY;
    }

    public /* synthetic */ BufferedChannel(int i2, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? null : function1);
    }
}
