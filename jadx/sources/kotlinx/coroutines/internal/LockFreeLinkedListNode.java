package kotlinx.coroutines.internal;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.o91;
import defpackage.r81;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.NodeList;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00048\u0002X\u0082\u0004R\u0011\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00048\u0002X\u0082\u0004R\u0013\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00048\u0002X\u0082\u0004¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "", "<init>", "()V", "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "Lkotlinx/coroutines/internal/Removed;", "_removedRef", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class LockFreeLinkedListNode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75117b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75118c;
    public static final /* synthetic */ AtomicReferenceFieldUpdater d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ long f75119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ long f75120f;
    public static final /* synthetic */ long g;
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    /* JADX INFO: renamed from: kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass1 extends PropertyReference0Impl {
        @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
        public final Object get() {
            return this.receiver.getClass().getSimpleName();
        }
    }

    static {
        Unsafe unsafe = o91.f76733a;
        f75119e = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_next$volatile"));
        f75118c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");
        f75120f = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_prev$volatile"));
        d = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
        g = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_removedRef$volatile"));
    }

    public static LockFreeLinkedListNode h(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.m()) {
            f75118c.getClass();
            lockFreeLinkedListNode = (LockFreeLinkedListNode) o91.f76733a.getObjectVolatile(lockFreeLinkedListNode, f75120f);
        }
        return lockFreeLinkedListNode;
    }

    public final boolean c(LockFreeLinkedListNode lockFreeLinkedListNode, int i2) {
        LockFreeLinkedListNode lockFreeLinkedListNodeL;
        do {
            lockFreeLinkedListNodeL = l();
            if (lockFreeLinkedListNodeL instanceof ListClosed) {
                return (((ListClosed) lockFreeLinkedListNodeL).f75116h & i2) == 0 && lockFreeLinkedListNodeL.c(lockFreeLinkedListNode, i2);
            }
        } while (!lockFreeLinkedListNodeL.d(lockFreeLinkedListNode, this));
        return true;
    }

    public final boolean d(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        f75118c.getClass();
        if (lockFreeLinkedListNode == null) {
            r81.h();
            return false;
        }
        Unsafe unsafe = o91.f76733a;
        unsafe.putObjectVolatile(lockFreeLinkedListNode, f75120f, this);
        f75117b.getClass();
        if (lockFreeLinkedListNode == null) {
            r81.h();
            return false;
        }
        long j2 = f75119e;
        unsafe.putObjectVolatile(lockFreeLinkedListNode, j2, lockFreeLinkedListNode2);
        while (true) {
            Unsafe unsafe2 = o91.f76733a;
            LockFreeLinkedListNode lockFreeLinkedListNode3 = this;
            LockFreeLinkedListNode lockFreeLinkedListNode4 = lockFreeLinkedListNode;
            LockFreeLinkedListNode lockFreeLinkedListNode5 = lockFreeLinkedListNode2;
            if (unsafe2.compareAndSwapObject(lockFreeLinkedListNode3, f75119e, lockFreeLinkedListNode5, lockFreeLinkedListNode4)) {
                lockFreeLinkedListNode4.i(lockFreeLinkedListNode5);
                return true;
            }
            if (unsafe2.getObjectVolatile(lockFreeLinkedListNode3, j2) != lockFreeLinkedListNode5) {
                return false;
            }
            this = lockFreeLinkedListNode3;
            lockFreeLinkedListNode2 = lockFreeLinkedListNode5;
            lockFreeLinkedListNode = lockFreeLinkedListNode4;
        }
    }

    public final void e(NodeList nodeList) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        NodeList nodeList2;
        f75118c.getClass();
        Unsafe unsafe = o91.f76733a;
        unsafe.putObjectVolatile(nodeList, f75120f, this);
        f75117b.getClass();
        long j2 = f75119e;
        unsafe.putObjectVolatile(nodeList, j2, this);
        while (this.j() == this) {
            while (true) {
                Unsafe unsafe2 = o91.f76733a;
                lockFreeLinkedListNode = this;
                nodeList2 = nodeList;
                if (unsafe2.compareAndSwapObject(lockFreeLinkedListNode, f75119e, this, nodeList2)) {
                    nodeList2.i(lockFreeLinkedListNode);
                    return;
                } else {
                    if (unsafe2.getObjectVolatile(lockFreeLinkedListNode, j2) != lockFreeLinkedListNode) {
                        break;
                    }
                    this = lockFreeLinkedListNode;
                    nodeList = nodeList2;
                }
            }
            this = lockFreeLinkedListNode;
            nodeList = nodeList2;
        }
    }

    public final void f(int i2) {
        c(new ListClosed(i2), i2);
    }

    public final LockFreeLinkedListNode g() {
        while (true) {
            f75118c.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = f75120f;
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) unsafe.getObjectVolatile(this, j2);
            LockFreeLinkedListNode lockFreeLinkedListNode2 = null;
            LockFreeLinkedListNode lockFreeLinkedListNode3 = lockFreeLinkedListNode;
            while (true) {
                f75117b.getClass();
                if (lockFreeLinkedListNode3 == null) {
                    r81.h();
                    return null;
                }
                Unsafe unsafe2 = o91.f76733a;
                long j3 = f75119e;
                Object objectVolatile = unsafe2.getObjectVolatile(lockFreeLinkedListNode3, j3);
                if (objectVolatile == this) {
                    if (lockFreeLinkedListNode != lockFreeLinkedListNode3) {
                        while (true) {
                            Unsafe unsafe3 = o91.f76733a;
                            LockFreeLinkedListNode lockFreeLinkedListNode4 = this;
                            boolean zCompareAndSwapObject = unsafe3.compareAndSwapObject(lockFreeLinkedListNode4, f75120f, lockFreeLinkedListNode, lockFreeLinkedListNode3);
                            LockFreeLinkedListNode lockFreeLinkedListNode5 = lockFreeLinkedListNode;
                            this = lockFreeLinkedListNode4;
                            if (!zCompareAndSwapObject) {
                                if (unsafe3.getObjectVolatile(this, j2) != lockFreeLinkedListNode5) {
                                    break;
                                }
                                this = this;
                                lockFreeLinkedListNode = lockFreeLinkedListNode5;
                            }
                        }
                    }
                    return lockFreeLinkedListNode3;
                }
                lockFreeLinkedListNode = lockFreeLinkedListNode;
                this = this;
                if (this.m()) {
                    return null;
                }
                if (!(objectVolatile instanceof Removed)) {
                    objectVolatile.getClass();
                    lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
                    lockFreeLinkedListNode3 = (LockFreeLinkedListNode) objectVolatile;
                } else if (lockFreeLinkedListNode2 != null) {
                    LockFreeLinkedListNode lockFreeLinkedListNode6 = ((Removed) objectVolatile).f75136a;
                    while (true) {
                        LockFreeLinkedListNode lockFreeLinkedListNode7 = lockFreeLinkedListNode3;
                        Unsafe unsafe4 = o91.f76733a;
                        boolean zCompareAndSwapObject2 = unsafe4.compareAndSwapObject(lockFreeLinkedListNode2, f75119e, lockFreeLinkedListNode7, lockFreeLinkedListNode6);
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode7;
                        if (zCompareAndSwapObject2) {
                            lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                            lockFreeLinkedListNode2 = null;
                            break;
                        }
                        if (unsafe4.getObjectVolatile(lockFreeLinkedListNode2, j3) != lockFreeLinkedListNode3) {
                            break;
                        }
                    }
                } else {
                    if (lockFreeLinkedListNode3 == null) {
                        r81.h();
                        return null;
                    }
                    lockFreeLinkedListNode3 = (LockFreeLinkedListNode) unsafe2.getObjectVolatile(lockFreeLinkedListNode3, j2);
                }
            }
            this = this;
        }
    }

    public final void i(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        while (true) {
            f75118c.getClass();
            if (lockFreeLinkedListNode == null) {
                r81.h();
                return;
            }
            Unsafe unsafe = o91.f76733a;
            long j2 = f75120f;
            LockFreeLinkedListNode lockFreeLinkedListNode3 = (LockFreeLinkedListNode) unsafe.getObjectVolatile(lockFreeLinkedListNode, j2);
            if (this.j() != lockFreeLinkedListNode) {
                return;
            }
            while (true) {
                if (lockFreeLinkedListNode == null) {
                    r81.h();
                    return;
                }
                Unsafe unsafe2 = o91.f76733a;
                lockFreeLinkedListNode2 = this;
                LockFreeLinkedListNode lockFreeLinkedListNode4 = lockFreeLinkedListNode;
                if (unsafe2.compareAndSwapObject(lockFreeLinkedListNode4, f75120f, lockFreeLinkedListNode3, lockFreeLinkedListNode2)) {
                    if (lockFreeLinkedListNode2.m()) {
                        lockFreeLinkedListNode4.g();
                        return;
                    }
                    return;
                } else {
                    if (lockFreeLinkedListNode4 == null) {
                        r81.h();
                        return;
                    }
                    lockFreeLinkedListNode = lockFreeLinkedListNode4;
                    if (unsafe2.getObjectVolatile(lockFreeLinkedListNode4, j2) != lockFreeLinkedListNode3) {
                        break;
                    } else {
                        this = lockFreeLinkedListNode2;
                    }
                }
            }
            this = lockFreeLinkedListNode2;
        }
    }

    public final Object j() {
        f75117b.getClass();
        return o91.f76733a.getObjectVolatile(this, f75119e);
    }

    public final LockFreeLinkedListNode k() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object objJ = j();
        Removed removed = objJ instanceof Removed ? (Removed) objJ : null;
        if (removed != null && (lockFreeLinkedListNode = removed.f75136a) != null) {
            return lockFreeLinkedListNode;
        }
        objJ.getClass();
        return (LockFreeLinkedListNode) objJ;
    }

    public final LockFreeLinkedListNode l() {
        LockFreeLinkedListNode lockFreeLinkedListNodeG = g();
        if (lockFreeLinkedListNodeG != null) {
            return lockFreeLinkedListNodeG;
        }
        f75118c.getClass();
        return h((LockFreeLinkedListNode) o91.f76733a.getObjectVolatile(this, f75120f));
    }

    public boolean m() {
        return j() instanceof Removed;
    }

    public final LockFreeLinkedListNode n() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        while (true) {
            Object objJ = this.j();
            if (objJ instanceof Removed) {
                return ((Removed) objJ).f75136a;
            }
            if (objJ == this) {
                return (LockFreeLinkedListNode) objJ;
            }
            objJ.getClass();
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) objJ;
            Removed removedO = lockFreeLinkedListNode2.o();
            while (true) {
                f75117b.getClass();
                Unsafe unsafe = o91.f76733a;
                long j2 = f75119e;
                lockFreeLinkedListNode = this;
                if (unsafe.compareAndSwapObject(lockFreeLinkedListNode, j2, objJ, removedO)) {
                    lockFreeLinkedListNode2.g();
                    return null;
                }
                if (unsafe.getObjectVolatile(lockFreeLinkedListNode, j2) != objJ) {
                    break;
                }
                this = lockFreeLinkedListNode;
            }
            this = lockFreeLinkedListNode;
        }
    }

    public final Removed o() {
        d.getClass();
        Unsafe unsafe = o91.f76733a;
        long j2 = g;
        Removed removed = (Removed) unsafe.getObjectVolatile(this, j2);
        if (removed != null) {
            return removed;
        }
        Removed removed2 = new Removed(this);
        unsafe.putObjectVolatile(this, j2, removed2);
        return removed2;
    }

    public String toString() {
        return new AnonymousClass1(this, DebugStringsKt.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + AnnotationParser.AnnotationInstruction + DebugStringsKt.a(this);
    }
}
