package kotlinx.coroutines.flow;

import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006:\u0001\u000eB\u001f\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl;", "T", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/SharedFlowSlot;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lkotlinx/coroutines/flow/CancellableFlow;", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "", "replay", "bufferCapacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "<init>", "(IILkotlinx/coroutines/channels/BufferOverflow;)V", "Emitter", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class SharedFlowImpl<T> extends AbstractSharedFlow<SharedFlowSlot> implements MutableSharedFlow<T>, CancellableFlow<T>, FusibleFlow<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f74965f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BufferOverflow f74966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object[] f74967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f74968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f74969k;
    public int l;
    public int m;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B3\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/flow/SharedFlowImpl;", "flow", "", "index", "", "value", "Lkotlin/coroutines/Continuation;", "", "cont", "<init>", "(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Emitter implements DisposableHandle {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SharedFlowImpl f74970b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f74971c;
        public final Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Continuation f74972e;

        public Emitter(SharedFlowImpl<?> sharedFlowImpl, long j2, Object obj, Continuation<? super Unit> continuation) {
            this.f74970b = sharedFlowImpl;
            this.f74971c = j2;
            this.d = obj;
            this.f74972e = continuation;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            SharedFlowImpl sharedFlowImpl = this.f74970b;
            synchronized (sharedFlowImpl) {
                if (this.f74971c >= sharedFlowImpl.s()) {
                    Object[] objArr = sharedFlowImpl.f74967i;
                    objArr.getClass();
                    if (SharedFlowKt.c(objArr, this.f74971c) == this) {
                        SharedFlowKt.d(objArr, this.f74971c, SharedFlowKt.f74979a);
                        sharedFlowImpl.n();
                    }
                }
            }
        }
    }

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74973a;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f74973a = iArr;
        }
    }

    public SharedFlowImpl(int i2, int i3, BufferOverflow bufferOverflow) {
        this.f74965f = i2;
        this.g = i3;
        this.f74966h = bufferOverflow;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0078, code lost:
    
        if (((kotlinx.coroutines.flow.SubscribedFlowCollector) r9).b(r0) == r1) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.coroutines.intrinsics.CoroutineSingletons o(kotlinx.coroutines.flow.SharedFlowImpl r8, kotlinx.coroutines.flow.FlowCollector r9, kotlin.coroutines.Continuation r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.o(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final boolean a(Object obj) {
        int i2;
        boolean z;
        Continuation[] continuationArrR = AbstractSharedFlowKt.f75027a;
        synchronized (this) {
            if (u(obj)) {
                continuationArrR = r(continuationArrR);
                z = true;
            } else {
                z = false;
            }
        }
        for (Continuation continuation : continuationArrR) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Unit.f71739a);
            }
        }
        return z;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow d(CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow) {
        return SharedFlowKt.e(this, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    public final List e() {
        synchronized (this) {
            int iS = (int) ((s() + ((long) this.l)) - this.f74968j);
            if (iS == 0) {
                return EmptyList.f71768b;
            }
            ArrayList arrayList = new ArrayList(iS);
            Object[] objArr = this.f74967i;
            objArr.getClass();
            for (int i2 = 0; i2 < iS; i2++) {
                long j2 = this.f74968j + ((long) i2);
                Symbol symbol = SharedFlowKt.f74979a;
                arrayList.add(objArr[((int) j2) & (objArr.length - 1)]);
            }
            return arrayList;
        }
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) throws Throwable {
        SharedFlowImpl<T> sharedFlowImpl;
        Throwable th;
        Continuation[] continuationArrR;
        Emitter emitter;
        if (a(obj)) {
            return Unit.f71739a;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Continuation[] continuationArrR2 = AbstractSharedFlowKt.f75027a;
        synchronized (this) {
            try {
                if (u(obj)) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuationImpl.resumeWith(Unit.f71739a);
                        continuationArrR = r(continuationArrR2);
                        emitter = null;
                        sharedFlowImpl = this;
                    } catch (Throwable th2) {
                        th = th2;
                        sharedFlowImpl = this;
                        throw th;
                    }
                } else {
                    try {
                        sharedFlowImpl = this;
                        try {
                            Emitter emitter2 = new Emitter(sharedFlowImpl, s() + ((long) (this.l + this.m)), obj, cancellableContinuationImpl);
                            sharedFlowImpl.q(emitter2);
                            sharedFlowImpl.m++;
                            if (sharedFlowImpl.g == 0) {
                                continuationArrR2 = sharedFlowImpl.r(continuationArrR2);
                            }
                            continuationArrR = continuationArrR2;
                            emitter = emitter2;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th4) {
                        sharedFlowImpl = this;
                        th = th4;
                        throw th;
                    }
                }
                if (emitter != null) {
                    CancellableContinuationKt.a(cancellableContinuationImpl, emitter);
                }
                for (Continuation continuation2 : continuationArrR) {
                    if (continuation2 != null) {
                        Result.Companion companion2 = Result.INSTANCE;
                        continuation2.resumeWith(Unit.f71739a);
                    }
                }
                Object result = cancellableContinuationImpl.getResult();
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (result != coroutineSingletons) {
                    result = Unit.f71739a;
                }
                return result == coroutineSingletons ? result : Unit.f71739a;
            } catch (Throwable th5) {
                th = th5;
                sharedFlowImpl = this;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object f(FlowCollector flowCollector, Continuation continuation) {
        return o(this, flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot h() {
        return new SharedFlowSlot();
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final void j() throws Throwable {
        SharedFlowImpl<T> sharedFlowImpl;
        synchronized (this) {
            try {
                sharedFlowImpl = this;
                try {
                    sharedFlowImpl.x(s() + ((long) this.l), this.f74969k, s() + ((long) this.l), s() + ((long) this.l) + ((long) this.m));
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                sharedFlowImpl = this;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] k() {
        return new SharedFlowSlot[2];
    }

    public final Object m(SharedFlowSlot sharedFlowSlot, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            try {
                if (v(sharedFlowSlot) < 0) {
                    sharedFlowSlot.f74981b = cancellableContinuationImpl;
                } else {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Unit.f71739a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.f71739a;
    }

    public final void n() {
        if (this.g != 0 || this.m > 1) {
            Object[] objArr = this.f74967i;
            objArr.getClass();
            while (this.m > 0) {
                long jS = s();
                int i2 = this.l;
                int i3 = this.m;
                if (objArr[((int) ((jS + ((long) (i2 + i3))) - 1)) & (objArr.length - 1)] != SharedFlowKt.f74979a) {
                    return;
                }
                this.m = i3 - 1;
                SharedFlowKt.d(objArr, s() + ((long) (this.l + this.m)), null);
            }
        }
    }

    public final void p() {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Object[] objArr = this.f74967i;
        objArr.getClass();
        SharedFlowKt.d(objArr, s(), null);
        this.l--;
        long jS = s() + 1;
        if (this.f74968j < jS) {
            this.f74968j = jS;
        }
        if (this.f74969k < jS) {
            if (this.f75025c != 0 && (abstractSharedFlowSlotArr = this.f75024b) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                        long j2 = sharedFlowSlot.f74980a;
                        if (0 <= j2 && j2 < jS) {
                            sharedFlowSlot.f74980a = jS;
                        }
                    }
                }
            }
            this.f74969k = jS;
        }
    }

    public final void q(Object obj) {
        int i2 = this.l + this.m;
        Object[] objArrT = this.f74967i;
        if (objArrT == null) {
            objArrT = t(0, 2, null);
        } else if (i2 >= objArrT.length) {
            objArrT = t(i2, objArrT.length * 2, objArrT);
        }
        SharedFlowKt.d(objArrT, s() + ((long) i2), obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [kotlin.coroutines.Continuation[]] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public final Continuation[] r(Continuation[] continuationArr) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        SharedFlowSlot sharedFlowSlot;
        CancellableContinuationImpl cancellableContinuationImpl;
        int length = continuationArr.length;
        if (this.f75025c != 0 && (abstractSharedFlowSlotArr = this.f75024b) != null) {
            int length2 = abstractSharedFlowSlotArr.length;
            int i2 = 0;
            while (i2 < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = abstractSharedFlowSlotArr[i2];
                if (abstractSharedFlowSlot == null || (cancellableContinuationImpl = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).f74981b) == null || v(sharedFlowSlot) < 0) {
                    continuationArr = continuationArr;
                } else {
                    if (length >= continuationArr.length) {
                        continuationArr = continuationArr;
                        continuationArr = continuationArr;
                        continuationArr = Arrays.copyOf((Object[]) continuationArr, Math.max(2, continuationArr.length * 2));
                    }
                    continuationArr = continuationArr;
                    continuationArr = continuationArr;
                    ((Continuation[]) continuationArr)[length] = cancellableContinuationImpl;
                    sharedFlowSlot.f74981b = null;
                    length++;
                }
                i2++;
                continuationArr = continuationArr;
            }
            continuationArr = continuationArr;
        }
        return (Continuation[]) continuationArr;
    }

    public final long s() {
        return Math.min(this.f74969k, this.f74968j);
    }

    public final Object[] t(int i2, int i3, Object[] objArr) {
        if (i3 <= 0) {
            md.k("Buffer size overflow");
            return null;
        }
        Object[] objArr2 = new Object[i3];
        this.f74967i = objArr2;
        if (objArr != null) {
            long jS = s();
            for (int i4 = 0; i4 < i2; i4++) {
                long j2 = ((long) i4) + jS;
                SharedFlowKt.d(objArr2, j2, objArr[((int) j2) & (objArr.length - 1)]);
            }
        }
        return objArr2;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0055  */
    /* JADX WARN: Code duplicated, block: B:31:0x0066  */
    public final boolean u(Object obj) {
        int i2;
        long jS;
        long j2;
        int i3 = this.f75025c;
        int i4 = this.f74965f;
        if (i3 != 0) {
            int i5 = this.l;
            int i6 = this.g;
            if (i5 < i6 || this.f74969k > this.f74968j) {
                q(obj);
                i2 = this.l + 1;
                this.l = i2;
                if (i2 > i6) {
                    p();
                }
                jS = s() + ((long) this.l);
                j2 = this.f74968j;
                if (((int) (jS - j2)) > i4) {
                    x(1 + j2, this.f74969k, s() + ((long) this.l), s() + ((long) this.l) + ((long) this.m));
                }
            } else {
                int i7 = WhenMappings.f74973a[this.f74966h.ordinal()];
                if (i7 == 1) {
                    return false;
                }
                if (i7 != 2) {
                    if (i7 != 3) {
                        v40.g();
                        return false;
                    }
                    q(obj);
                    i2 = this.l + 1;
                    this.l = i2;
                    if (i2 > i6) {
                        p();
                    }
                    jS = s() + ((long) this.l);
                    j2 = this.f74968j;
                    if (((int) (jS - j2)) > i4) {
                        x(1 + j2, this.f74969k, s() + ((long) this.l), s() + ((long) this.l) + ((long) this.m));
                    }
                }
            }
        } else if (i4 != 0) {
            q(obj);
            int i8 = this.l + 1;
            this.l = i8;
            if (i8 > i4) {
                p();
            }
            this.f74969k = s() + ((long) this.l);
            return true;
        }
        return true;
    }

    public final long v(SharedFlowSlot sharedFlowSlot) {
        long j2 = sharedFlowSlot.f74980a;
        if (j2 >= s() + ((long) this.l) && (this.g > 0 || j2 > s() || this.m == 0)) {
            return -1L;
        }
        return j2;
    }

    public final Object w(SharedFlowSlot sharedFlowSlot) {
        Object obj;
        Continuation[] continuationArrY = AbstractSharedFlowKt.f75027a;
        synchronized (this) {
            try {
                long jV = v(sharedFlowSlot);
                if (jV < 0) {
                    obj = SharedFlowKt.f74979a;
                } else {
                    long j2 = sharedFlowSlot.f74980a;
                    Object[] objArr = this.f74967i;
                    objArr.getClass();
                    Symbol symbol = SharedFlowKt.f74979a;
                    Object obj2 = objArr[((int) jV) & (objArr.length - 1)];
                    if (obj2 instanceof Emitter) {
                        obj2 = ((Emitter) obj2).d;
                    }
                    sharedFlowSlot.f74980a = jV + 1;
                    Object obj3 = obj2;
                    continuationArrY = y(j2);
                    obj = obj3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : continuationArrY) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Unit.f71739a);
            }
        }
        return obj;
    }

    public final void x(long j2, long j3, long j4, long j5) {
        long jMin = Math.min(j3, j2);
        for (long jS = s(); jS < jMin; jS++) {
            Object[] objArr = this.f74967i;
            objArr.getClass();
            SharedFlowKt.d(objArr, jS, null);
        }
        this.f74968j = j2;
        this.f74969k = j3;
        this.l = (int) (j4 - jMin);
        this.m = (int) (j5 - j4);
    }

    public final Continuation[] y(long j2) {
        int i2;
        long j3;
        long j4;
        Continuation[] continuationArr;
        Continuation[] continuationArr2;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        long j5 = this.f74969k;
        Continuation[] continuationArr3 = AbstractSharedFlowKt.f75027a;
        if (j2 <= j5) {
            long jS = s();
            long j6 = ((long) this.l) + jS;
            int i3 = this.g;
            if (i3 == 0 && this.m > 0) {
                j6++;
            }
            int i4 = 0;
            if (this.f75025c != 0 && (abstractSharedFlowSlotArr = this.f75024b) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        long j7 = ((SharedFlowSlot) abstractSharedFlowSlot).f74980a;
                        if (0 <= j7 && j7 < j6) {
                            j6 = j7;
                        }
                    }
                }
            }
            if (j6 > this.f74969k) {
                long jS2 = s() + ((long) this.l);
                int i5 = this.f75025c;
                int iMin = this.m;
                if (i5 > 0) {
                    iMin = Math.min(iMin, i3 - ((int) (jS2 - j6)));
                }
                long j8 = ((long) this.m) + jS2;
                if (iMin > 0) {
                    Continuation[] continuationArr4 = new Continuation[iMin];
                    Object[] objArr = this.f74967i;
                    objArr.getClass();
                    j4 = 1;
                    long j9 = jS2;
                    while (true) {
                        if (jS2 >= j8) {
                            i2 = i3;
                            continuationArr2 = continuationArr4;
                            j3 = j6;
                            jS2 = j9;
                            break;
                        }
                        i2 = i3;
                        Object obj = objArr[((int) jS2) & (objArr.length - 1)];
                        continuationArr2 = continuationArr4;
                        Symbol symbol = SharedFlowKt.f74979a;
                        if (obj != symbol) {
                            obj.getClass();
                            Emitter emitter = (Emitter) obj;
                            j3 = j6;
                            int i6 = i4 + 1;
                            continuationArr2[i4] = emitter.f74972e;
                            SharedFlowKt.d(objArr, jS2, symbol);
                            SharedFlowKt.d(objArr, j9, emitter.d);
                            long j10 = j9 + 1;
                            if (i6 >= iMin) {
                                jS2 = j10;
                                break;
                            }
                            j9 = j10;
                            i4 = i6;
                        } else {
                            j3 = j6;
                        }
                        jS2++;
                        i3 = i2;
                        continuationArr4 = continuationArr2;
                        j6 = j3;
                    }
                    continuationArr = continuationArr2;
                } else {
                    i2 = i3;
                    j3 = j6;
                    j4 = 1;
                    continuationArr = continuationArr3;
                }
                long jMax = Math.max(this.f74968j, Math.max(jS, jS2 - ((long) this.f74965f)));
                if (i2 == 0 && jMax < j8) {
                    Object[] objArr2 = this.f74967i;
                    objArr2.getClass();
                    if (Intrinsics.c(objArr2[((int) jMax) & (objArr2.length - 1)], SharedFlowKt.f74979a)) {
                        jS2 += j4;
                        jMax += j4;
                    }
                }
                long j11 = jS2;
                x(jMax, this.f75025c == 0 ? j11 : j3, j11, j8);
                n();
                return continuationArr.length == 0 ? continuationArr : r(continuationArr);
            }
        }
        return continuationArr3;
    }
}
