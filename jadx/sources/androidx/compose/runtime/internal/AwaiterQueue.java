package androidx.compose.runtime.internal;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.OneShotCancellationHandle;
import androidx.compose.runtime.internal.AwaiterQueue.Awaiter;
import defpackage.q;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/internal/AwaiterQueue;", "Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;", "A", "", "<init>", "()V", "Awaiter", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AwaiterQueue<A extends Awaiter> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f8378a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Throwable f8379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInt f8380c;
    public MutableObjectList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MutableObjectList f8381e;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Awaiter {
        public abstract void a();

        public abstract void b(Throwable th);
    }

    public AwaiterQueue() {
        int i2 = AtomicAwaitersCount.f8377a;
        int i3 = 0;
        this.f8380c = new AtomicInt(0);
        int i4 = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        this.d = new MutableObjectList(i3, i4, defaultConstructorMarker);
        this.f8381e = new MutableObjectList(i3, i4, defaultConstructorMarker);
    }

    public final CancellationHandle a(Awaiter awaiter, Function0 function0) {
        int i2;
        int i3;
        int i4;
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.f71919b = -1;
        synchronized (this.f8378a) {
            Throwable th = this.f8379b;
            if (th != null) {
                awaiter.b(th);
                return CancellationHandle.Companion.f7926a;
            }
            AtomicInt atomicInt = this.f8380c;
            do {
                i2 = atomicInt.get();
                i3 = i2 + 1;
            } while (!atomicInt.compareAndSet(i2, i3));
            boolean z = (134217727 & i3) == 1;
            ref$IntRef.f71919b = (i3 >>> 27) & 15;
            this.d.g(awaiter);
            if (z && function0 != null) {
                try {
                    function0.mo47invoke();
                } catch (Throwable th2) {
                    synchronized (this.f8378a) {
                        try {
                            if (this.f8379b == null) {
                                this.f8379b = th2;
                                MutableObjectList mutableObjectList = this.d;
                                Object[] objArr = mutableObjectList.f3345a;
                                int i5 = mutableObjectList.f3346b;
                                for (int i6 = 0; i6 < i5; i6++) {
                                    ((Awaiter) objArr[i6]).b(th2);
                                }
                                this.d.k();
                                AtomicInt atomicInt2 = this.f8380c;
                                do {
                                    i4 = atomicInt2.get();
                                    int i7 = AtomicAwaitersCount.f8377a;
                                } while (!atomicInt2.compareAndSet(i4, ((((i4 >>> 27) & 15) + 1) & 15) << 27));
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            }
            return new OneShotCancellationHandle(new q(awaiter, this, ref$IntRef, 11));
        }
    }

    public final void b(Function1 function1) {
        int i2;
        synchronized (this.f8378a) {
            try {
                MutableObjectList mutableObjectList = this.d;
                this.d = this.f8381e;
                this.f8381e = mutableObjectList;
                AtomicInt atomicInt = this.f8380c;
                do {
                    i2 = atomicInt.get();
                    int i3 = AtomicAwaitersCount.f8377a;
                } while (!atomicInt.compareAndSet(i2, ((((i2 >>> 27) & 15) + 1) & 15) << 27));
                int i4 = mutableObjectList.f3346b;
                for (int i5 = 0; i5 < i4; i5++) {
                    function1.invoke(mutableObjectList.b(i5));
                }
                mutableObjectList.k();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
