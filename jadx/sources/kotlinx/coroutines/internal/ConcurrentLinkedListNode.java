package kotlinx.coroutines.internal;

import defpackage.o91;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0013\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00068\u0002X\u0082\u0004R\u0013\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00068\u0002X\u0082\u0004¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "", "prev", "<init>", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V", "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75103b = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75104c;
    public static final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ long f75105e;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    static {
        Unsafe unsafe = o91.f76733a;
        d = unsafe.objectFieldOffset(ConcurrentLinkedListNode.class.getDeclaredField("_next$volatile"));
        f75104c = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev$volatile");
        f75105e = unsafe.objectFieldOffset(ConcurrentLinkedListNode.class.getDeclaredField("_prev$volatile"));
    }

    public ConcurrentLinkedListNode(N n) {
        this._prev$volatile = n;
    }

    public final void b() {
        f75104c.getClass();
        o91.f76733a.putObjectVolatile(this, f75105e, (Object) null);
    }

    public final ConcurrentLinkedListNode c() {
        ConcurrentLinkedListNode concurrentLinkedListNodeF = f();
        while (concurrentLinkedListNodeF != null && concurrentLinkedListNodeF.g()) {
            f75104c.getClass();
            concurrentLinkedListNodeF = (ConcurrentLinkedListNode) o91.f76733a.getObjectVolatile(concurrentLinkedListNodeF, f75105e);
        }
        return concurrentLinkedListNodeF;
    }

    public final ConcurrentLinkedListNode d() {
        Object objE = e();
        if (objE == ConcurrentLinkedListKt.f75102a) {
            return null;
        }
        return (ConcurrentLinkedListNode) objE;
    }

    public final Object e() {
        f75103b.getClass();
        return o91.f76733a.getObjectVolatile(this, d);
    }

    public final ConcurrentLinkedListNode f() {
        f75104c.getClass();
        return (ConcurrentLinkedListNode) o91.f76733a.getObjectVolatile(this, f75105e);
    }

    public abstract boolean g();

    public final boolean h() {
        Symbol symbol = ConcurrentLinkedListKt.f75102a;
        while (true) {
            f75103b.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = d;
            ConcurrentLinkedListNode<N> concurrentLinkedListNode = this;
            if (unsafe.compareAndSwapObject(concurrentLinkedListNode, j2, (Object) null, symbol)) {
                return true;
            }
            if (unsafe.getObjectVolatile(concurrentLinkedListNode, j2) != null) {
                return false;
            }
            this = concurrentLinkedListNode;
        }
    }

    public final void i() {
        ConcurrentLinkedListNode concurrentLinkedListNode;
        Unsafe unsafe;
        if (d() == null) {
            return;
        }
        while (true) {
            ConcurrentLinkedListNode concurrentLinkedListNodeC = c();
            ConcurrentLinkedListNode concurrentLinkedListNodeD = d();
            concurrentLinkedListNodeD.getClass();
            do {
                concurrentLinkedListNode = concurrentLinkedListNodeD;
                if (!concurrentLinkedListNode.g()) {
                    break;
                } else {
                    concurrentLinkedListNodeD = concurrentLinkedListNode.d();
                }
            } while (concurrentLinkedListNodeD != null);
            while (true) {
                f75104c.getClass();
                Unsafe unsafe2 = o91.f76733a;
                long j2 = f75105e;
                Object objectVolatile = unsafe2.getObjectVolatile(concurrentLinkedListNode, j2);
                ConcurrentLinkedListNode concurrentLinkedListNode2 = ((ConcurrentLinkedListNode) objectVolatile) == null ? null : concurrentLinkedListNodeC;
                while (true) {
                    unsafe = o91.f76733a;
                    if (unsafe.compareAndSwapObject(concurrentLinkedListNode, f75105e, objectVolatile, concurrentLinkedListNode2)) {
                        break;
                    } else if (unsafe.getObjectVolatile(concurrentLinkedListNode, j2) != objectVolatile) {
                    }
                }
            }
            if (concurrentLinkedListNodeC != null) {
                f75103b.getClass();
                unsafe.putObjectVolatile(concurrentLinkedListNodeC, d, concurrentLinkedListNode);
            }
            if (!concurrentLinkedListNode.g() || concurrentLinkedListNode.d() == null) {
                if (concurrentLinkedListNodeC == null || !concurrentLinkedListNodeC.g()) {
                    return;
                }
            }
        }
    }

    public final boolean j(Segment segment) {
        while (true) {
            f75103b.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = d;
            ConcurrentLinkedListNode<N> concurrentLinkedListNode = this;
            Segment segment2 = segment;
            if (unsafe.compareAndSwapObject(concurrentLinkedListNode, j2, (Object) null, segment2)) {
                return true;
            }
            if (unsafe.getObjectVolatile(concurrentLinkedListNode, j2) != null) {
                return false;
            }
            this = concurrentLinkedListNode;
            segment = segment2;
        }
    }
}
