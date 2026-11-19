package kotlinx.coroutines.internal;

import defpackage.md;
import defpackage.o91;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0002\u0010\u0011B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR%\u0010\u000b\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\n0\t8\u0002X\u0082\u0004R\u000b\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004R\u0013\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e8\u0002X\u0082\u0004¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "", "E", "", "capacity", "", "singleConsumer", "<init>", "(IZ)V", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/internal/Core;", "_next", "Lkotlinx/atomicfu/AtomicLong;", "_state", "Lkotlinx/atomicfu/AtomicArray;", "array", "Placeholder", "Companion", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class LockFreeTaskQueueCore<E> {
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f75127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f75128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f75129c;
    public final /* synthetic */ AtomicReferenceArray d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f75123e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75124f = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ long f75126i = o91.f76733a.objectFieldOffset(LockFreeTaskQueueCore.class.getDeclaredField("_next$volatile"));
    public static final /* synthetic */ AtomicLongFieldUpdater g = AtomicLongFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, "_state$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Symbol f75125h = new Symbol("REMOVE_FROZEN");

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\t\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\nR\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0004¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;", "", "", "INITIAL_CAPACITY", "I", "CAPACITY_BITS", "MAX_CAPACITY_MASK", "HEAD_SHIFT", "", "HEAD_MASK", "J", "TAIL_SHIFT", "TAIL_MASK", "FROZEN_SHIFT", "FROZEN_MASK", "CLOSED_SHIFT", "CLOSED_MASK", "MIN_ADD_SPIN_CAPACITY", "Lkotlinx/coroutines/internal/Symbol;", "REMOVE_FROZEN", "Lkotlinx/coroutines/internal/Symbol;", "ADD_SUCCESS", "ADD_FROZEN", "ADD_CLOSED", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;", "", "", "index", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Placeholder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f75130a;

        public Placeholder(int i2) {
            this.f75130a = i2;
        }
    }

    public LockFreeTaskQueueCore(int i2, boolean z) {
        this.f75127a = i2;
        this.f75128b = z;
        int i3 = i2 - 1;
        this.f75129c = i3;
        this.d = new AtomicReferenceArray(i2);
        if (i3 > 1073741823) {
            md.k("Check failed.");
            throw null;
        }
        if ((i2 & i3) == 0) {
            return;
        }
        md.k("Check failed.");
        throw null;
    }

    public final int a(Object obj) {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = g;
            long j2 = atomicLongFieldUpdater.get(lockFreeTaskQueueCore);
            long j3 = 3458764513820540928L & j2;
            Companion companion = f75123e;
            if (j3 != 0) {
                companion.getClass();
                return (2305843009213693952L & j2) != 0 ? 2 : 1;
            }
            int i2 = (int) (1073741823 & j2);
            int i3 = (int) ((1152921503533105152L & j2) >> 30);
            int i4 = lockFreeTaskQueueCore.f75129c;
            if (((i3 + 2) & i4) == (i2 & i4)) {
                return 1;
            }
            boolean z = lockFreeTaskQueueCore.f75128b;
            AtomicReferenceArray atomicReferenceArray = lockFreeTaskQueueCore.d;
            if (z || atomicReferenceArray.get(i3 & i4) == null) {
                companion.getClass();
                if (g.compareAndSet(lockFreeTaskQueueCore, j2, ((-1152921503533105153L) & j2) | (((long) ((i3 + 1) & 1073741823)) << 30))) {
                    atomicReferenceArray.set(i3 & i4, obj);
                    LockFreeTaskQueueCore<E> lockFreeTaskQueueCoreD = this;
                    while ((atomicLongFieldUpdater.get(lockFreeTaskQueueCoreD) & 1152921504606846976L) != 0) {
                        lockFreeTaskQueueCoreD = lockFreeTaskQueueCoreD.d();
                        AtomicReferenceArray atomicReferenceArray2 = lockFreeTaskQueueCoreD.d;
                        int i5 = lockFreeTaskQueueCoreD.f75129c & i3;
                        Object obj2 = atomicReferenceArray2.get(i5);
                        if ((obj2 instanceof Placeholder) && ((Placeholder) obj2).f75130a == i3) {
                            atomicReferenceArray2.set(i5, obj);
                        } else {
                            lockFreeTaskQueueCoreD = null;
                        }
                        if (lockFreeTaskQueueCoreD == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
                lockFreeTaskQueueCore = this;
            } else {
                int i6 = lockFreeTaskQueueCore.f75127a;
                if (i6 < 1024 || ((i3 - i2) & 1073741823) > (i6 >> 1)) {
                    return 1;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final LockFreeTaskQueueCore b(long j2) {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore;
        while (true) {
            f75124f.getClass();
            Unsafe unsafe = o91.f76733a;
            long j3 = f75126i;
            LockFreeTaskQueueCore lockFreeTaskQueueCore2 = (LockFreeTaskQueueCore) unsafe.getObjectVolatile(this, j3);
            if (lockFreeTaskQueueCore2 != null) {
                return lockFreeTaskQueueCore2;
            }
            LockFreeTaskQueueCore lockFreeTaskQueueCore3 = new LockFreeTaskQueueCore(this.f75127a * 2, this.f75128b);
            int i2 = (int) (1073741823 & j2);
            int i3 = (int) ((1152921503533105152L & j2) >> 30);
            while (true) {
                int i4 = this.f75129c;
                int i5 = i2 & i4;
                if (i5 == (i4 & i3)) {
                    break;
                }
                Object placeholder = this.d.get(i5);
                if (placeholder == null) {
                    placeholder = new Placeholder(i2);
                }
                lockFreeTaskQueueCore3.d.set(lockFreeTaskQueueCore3.f75129c & i2, placeholder);
                i2++;
            }
            f75123e.getClass();
            g.set(lockFreeTaskQueueCore3, (-1152921504606846977L) & j2);
            while (true) {
                Unsafe unsafe2 = o91.f76733a;
                lockFreeTaskQueueCore = this;
                if (unsafe2.compareAndSwapObject(lockFreeTaskQueueCore, f75126i, (Object) null, lockFreeTaskQueueCore3) || unsafe2.getObjectVolatile(lockFreeTaskQueueCore, j3) != null) {
                    break;
                }
                this = lockFreeTaskQueueCore;
            }
            this = lockFreeTaskQueueCore;
        }
    }

    public final boolean c() {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = g;
            long j2 = atomicLongFieldUpdater.get(this);
            if ((j2 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j2) != 0) {
                return false;
            }
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
            if (atomicLongFieldUpdater.compareAndSet(lockFreeTaskQueueCore, j2, 2305843009213693952L | j2)) {
                return true;
            }
            this = lockFreeTaskQueueCore;
        }
    }

    public final LockFreeTaskQueueCore d() {
        long j2;
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = g;
            j2 = atomicLongFieldUpdater.get(this);
            if ((j2 & 1152921504606846976L) != 0) {
                lockFreeTaskQueueCore = this;
                break;
            }
            long j3 = 1152921504606846976L | j2;
            lockFreeTaskQueueCore = this;
            if (atomicLongFieldUpdater.compareAndSet(lockFreeTaskQueueCore, j2, j3)) {
                j2 = j3;
                break;
            }
            this = lockFreeTaskQueueCore;
        }
        return lockFreeTaskQueueCore.b(j2);
    }

    public final Object e() {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCoreD = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = g;
            long j2 = atomicLongFieldUpdater.get(lockFreeTaskQueueCoreD);
            if ((j2 & 1152921504606846976L) != 0) {
                return f75125h;
            }
            int i2 = (int) (j2 & 1073741823);
            int i3 = lockFreeTaskQueueCoreD.f75129c;
            int i4 = i2 & i3;
            if ((((int) ((1152921503533105152L & j2) >> 30)) & i3) != i4) {
                AtomicReferenceArray atomicReferenceArray = lockFreeTaskQueueCoreD.d;
                Object obj = atomicReferenceArray.get(i4);
                boolean z = lockFreeTaskQueueCoreD.f75128b;
                if (obj == null) {
                    if (z) {
                    }
                } else if (!(obj instanceof Placeholder)) {
                    f75123e.getClass();
                    long j3 = (i2 + 1) & 1073741823;
                    if (g.compareAndSet(lockFreeTaskQueueCoreD, j2, (j2 & (-1073741824)) | j3)) {
                        atomicReferenceArray.set(i4, null);
                        return obj;
                    }
                    lockFreeTaskQueueCoreD = this;
                    if (z) {
                        while (true) {
                            long j4 = atomicLongFieldUpdater.get(lockFreeTaskQueueCoreD);
                            int i5 = (int) (j4 & 1073741823);
                            if ((j4 & 1152921504606846976L) != 0) {
                                lockFreeTaskQueueCoreD = lockFreeTaskQueueCoreD.d();
                            } else {
                                LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = lockFreeTaskQueueCoreD;
                                if (g.compareAndSet(lockFreeTaskQueueCore, j4, (j4 & (-1073741824)) | j3)) {
                                    lockFreeTaskQueueCore.d.set(i5 & lockFreeTaskQueueCore.f75129c, null);
                                    lockFreeTaskQueueCoreD = null;
                                } else {
                                    lockFreeTaskQueueCoreD = lockFreeTaskQueueCore;
                                }
                            }
                            if (lockFreeTaskQueueCoreD == null) {
                                return obj;
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}
