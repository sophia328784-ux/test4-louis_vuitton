package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.EventLoopImplBase;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u0000*\u0012\b\u0000\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0004j\u0002`\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007R\u000b\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", "T", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "<init>", "()V", "Lkotlinx/atomicfu/AtomicInt;", "_size", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f75147b = AtomicIntegerFieldUpdater.newUpdater(ThreadSafeHeap.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ThreadSafeHeapNode[] f75148a;

    public final void a(EventLoopImplBase.DelayedTask delayedTask) {
        delayedTask.setHeap(this);
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f75148a;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f75147b;
        if (threadSafeHeapNodeArr == null) {
            threadSafeHeapNodeArr = new ThreadSafeHeapNode[4];
            this.f75148a = threadSafeHeapNodeArr;
        } else if (atomicIntegerFieldUpdater.get(this) >= threadSafeHeapNodeArr.length) {
            threadSafeHeapNodeArr = (ThreadSafeHeapNode[]) Arrays.copyOf(threadSafeHeapNodeArr, atomicIntegerFieldUpdater.get(this) * 2);
            this.f75148a = threadSafeHeapNodeArr;
        }
        int i2 = atomicIntegerFieldUpdater.get(this);
        atomicIntegerFieldUpdater.set(this, i2 + 1);
        threadSafeHeapNodeArr[i2] = delayedTask;
        delayedTask.setIndex(i2);
        c(i2);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0047  */
    /* JADX WARN: Code duplicated, block: B:14:0x0054  */
    /* JADX WARN: Code duplicated, block: B:17:0x0067  */
    /* JADX WARN: Code duplicated, block: B:21:0x007b A[LOOP:0: B:9:0x003c->B:21:0x007b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x0080 A[EDGE_INSN: B:24:0x0080->B:22:0x0080 BREAK  A[LOOP:0: B:9:0x003c->B:21:0x007b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0080 A[EDGE_INSN: B:25:0x0080->B:22:0x0080 BREAK  A[LOOP:0: B:9:0x003c->B:21:0x007b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:? A[SYNTHETIC] */
    public final ThreadSafeHeapNode b(int i2) {
        int i3;
        int i4;
        ThreadSafeHeapNode[] threadSafeHeapNodeArr;
        int i5;
        ThreadSafeHeapNode threadSafeHeapNode;
        ThreadSafeHeapNode threadSafeHeapNode2;
        ThreadSafeHeapNode threadSafeHeapNode3;
        ThreadSafeHeapNode threadSafeHeapNode4;
        ThreadSafeHeapNode[] threadSafeHeapNodeArr2 = this.f75148a;
        threadSafeHeapNodeArr2.getClass();
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f75147b;
        atomicIntegerFieldUpdater.set(this, atomicIntegerFieldUpdater.get(this) - 1);
        if (i2 < atomicIntegerFieldUpdater.get(this)) {
            d(i2, atomicIntegerFieldUpdater.get(this));
            int i6 = (i2 - 1) / 2;
            if (i2 > 0) {
                ThreadSafeHeapNode threadSafeHeapNode5 = threadSafeHeapNodeArr2[i2];
                threadSafeHeapNode5.getClass();
                ThreadSafeHeapNode threadSafeHeapNode6 = threadSafeHeapNodeArr2[i6];
                threadSafeHeapNode6.getClass();
                if (((Comparable) threadSafeHeapNode5).compareTo(threadSafeHeapNode6) < 0) {
                    d(i2, i6);
                    c(i6);
                } else {
                    while (true) {
                        i3 = i2 * 2;
                        i4 = i3 + 1;
                        if (i4 >= atomicIntegerFieldUpdater.get(this)) {
                            break;
                        }
                        threadSafeHeapNodeArr = this.f75148a;
                        threadSafeHeapNodeArr.getClass();
                        i5 = i3 + 2;
                        if (i5 < atomicIntegerFieldUpdater.get(this)) {
                            threadSafeHeapNode3 = threadSafeHeapNodeArr[i5];
                            threadSafeHeapNode3.getClass();
                            threadSafeHeapNode4 = threadSafeHeapNodeArr[i4];
                            threadSafeHeapNode4.getClass();
                            if (((Comparable) threadSafeHeapNode3).compareTo(threadSafeHeapNode4) >= 0) {
                                i5 = i4;
                            }
                        } else {
                            i5 = i4;
                        }
                        threadSafeHeapNode = threadSafeHeapNodeArr[i2];
                        threadSafeHeapNode.getClass();
                        threadSafeHeapNode2 = threadSafeHeapNodeArr[i5];
                        threadSafeHeapNode2.getClass();
                        if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) <= 0) {
                            break;
                        }
                        d(i2, i5);
                        i2 = i5;
                    }
                }
            } else {
                while (true) {
                    i3 = i2 * 2;
                    i4 = i3 + 1;
                    if (i4 >= atomicIntegerFieldUpdater.get(this)) {
                        break;
                        break;
                    }
                    threadSafeHeapNodeArr = this.f75148a;
                    threadSafeHeapNodeArr.getClass();
                    i5 = i3 + 2;
                    if (i5 < atomicIntegerFieldUpdater.get(this)) {
                        threadSafeHeapNode3 = threadSafeHeapNodeArr[i5];
                        threadSafeHeapNode3.getClass();
                        threadSafeHeapNode4 = threadSafeHeapNodeArr[i4];
                        threadSafeHeapNode4.getClass();
                        if (((Comparable) threadSafeHeapNode3).compareTo(threadSafeHeapNode4) >= 0) {
                            i5 = i4;
                        }
                    } else {
                        i5 = i4;
                    }
                    threadSafeHeapNode = threadSafeHeapNodeArr[i2];
                    threadSafeHeapNode.getClass();
                    threadSafeHeapNode2 = threadSafeHeapNodeArr[i5];
                    threadSafeHeapNode2.getClass();
                    if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) <= 0) {
                        break;
                        break;
                    }
                    d(i2, i5);
                    i2 = i5;
                }
            }
        }
        ThreadSafeHeapNode threadSafeHeapNode7 = threadSafeHeapNodeArr2[atomicIntegerFieldUpdater.get(this)];
        threadSafeHeapNode7.getClass();
        threadSafeHeapNode7.setHeap(null);
        threadSafeHeapNode7.setIndex(-1);
        threadSafeHeapNodeArr2[atomicIntegerFieldUpdater.get(this)] = null;
        return threadSafeHeapNode7;
    }

    public final void c(int i2) {
        while (i2 > 0) {
            ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f75148a;
            threadSafeHeapNodeArr.getClass();
            int i3 = (i2 - 1) / 2;
            ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i3];
            threadSafeHeapNode.getClass();
            ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i2];
            threadSafeHeapNode2.getClass();
            if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) <= 0) {
                return;
            }
            d(i2, i3);
            i2 = i3;
        }
    }

    public final void d(int i2, int i3) {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f75148a;
        threadSafeHeapNodeArr.getClass();
        ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i3];
        threadSafeHeapNode.getClass();
        ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i2];
        threadSafeHeapNode2.getClass();
        threadSafeHeapNodeArr[i2] = threadSafeHeapNode;
        threadSafeHeapNodeArr[i3] = threadSafeHeapNode2;
        threadSafeHeapNode.setIndex(i2);
        threadSafeHeapNode2.setIndex(i3);
    }
}
