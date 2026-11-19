package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.Timed;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableReplay<T> extends ConnectableObservable<T> implements HasUpstreamObservableSource<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final UnBoundedFactory f70758f = new UnBoundedFactory();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f70760c;
    public final BufferSupplier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ObservableSource f70761e;

    public static abstract class BoundedReplayBuffer<T> extends AtomicReference<Node> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Node f70762b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f70763c;
        public final boolean d;

        public BoundedReplayBuffer(boolean z) {
            this.d = z;
            Node node = new Node(null);
            this.f70762b = node;
            set(node);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void a(InnerDisposable innerDisposable) {
            if (innerDisposable.getAndIncrement() != 0) {
                return;
            }
            int iAddAndGet = 1;
            do {
                Node nodeD = (Node) innerDisposable.d;
                if (nodeD == null) {
                    nodeD = d();
                    innerDisposable.d = nodeD;
                }
                while (true) {
                    if (innerDisposable.f70767e) {
                        innerDisposable.d = null;
                        return;
                    }
                    Node node = nodeD.get();
                    if (node != null) {
                        if (NotificationLite.a(innerDisposable.f70766c, e(node.f70770b))) {
                            innerDisposable.d = null;
                            return;
                        }
                        nodeD = node;
                    }
                }
                innerDisposable.d = nodeD;
                iAddAndGet = innerDisposable.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void b(Throwable th) {
            Node node = new Node(c(NotificationLite.d(th)));
            this.f70762b.set(node);
            this.f70762b = node;
            this.f70763c++;
            j();
        }

        public Object c(Object obj) {
            return obj;
        }

        public Node d() {
            return get();
        }

        public Object e(Object obj) {
            return obj;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void f() {
            Node node = new Node(c(NotificationLite.COMPLETE));
            this.f70762b.set(node);
            this.f70762b = node;
            this.f70763c++;
            j();
        }

        public final void g(Node node) {
            if (this.d) {
                Node node2 = new Node(null);
                node2.lazySet(node.get());
                node = node2;
            }
            set(node);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void h(Object obj) {
            Node node = new Node(c(obj));
            this.f70762b.set(node);
            this.f70762b = node;
            this.f70763c++;
            i();
        }

        public abstract void i();

        public void j() {
            Node node = get();
            if (node.f70770b != null) {
                Node node2 = new Node(null);
                node2.lazySet(node.get());
                set(node2);
            }
        }
    }

    public interface BufferSupplier<T> {
        ReplayBuffer call();
    }

    public static final class DisposeConsumer<R> implements Consumer<Disposable> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ObserverResourceWrapper f70764b;

        public DisposeConsumer(ObserverResourceWrapper observerResourceWrapper) {
            this.f70764b = observerResourceWrapper;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
            DisposableHelper.d(this.f70764b, (Disposable) obj);
        }
    }

    public static final class InnerDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2728361546769921047L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ReplayObserver f70765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Observer f70766c;
        public Serializable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f70767e;

        public InnerDisposable(ReplayObserver replayObserver, Observer observer) {
            this.f70765b = replayObserver;
            this.f70766c = observer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f70767e) {
                return;
            }
            this.f70767e = true;
            this.f70765b.a(this);
            this.d = null;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70767e;
        }
    }

    public static final class MulticastReplay<R, U> extends Observable<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Supplier f70768b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70769c;

        public MulticastReplay(Function function, Supplier supplier) {
            this.f70768b = supplier;
            this.f70769c = function;
        }

        @Override // io.reactivex.rxjava3.core.Observable
        public final void subscribeActual(Observer observer) {
            try {
                Object obj = this.f70768b.get();
                Objects.requireNonNull(obj, "The connectableFactory returned a null ConnectableObservable");
                ConnectableObservable connectableObservable = (ConnectableObservable) obj;
                Object objApply = this.f70769c.apply(connectableObservable);
                Objects.requireNonNull(objApply, "The selector returned a null ObservableSource");
                ObservableSource observableSource = (ObservableSource) objApply;
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(observer);
                observableSource.subscribe(observerResourceWrapper);
                connectableObservable.c(new DisposeConsumer(observerResourceWrapper));
            } catch (Throwable th) {
                Exceptions.a(th);
                EmptyDisposable.b(th, observer);
            }
        }
    }

    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f70770b;

        public Node(Object obj) {
            this.f70770b = obj;
        }
    }

    public interface ReplayBuffer<T> {
        void a(InnerDisposable innerDisposable);

        void b(Throwable th);

        void f();

        void h(Object obj);
    }

    public static final class ReplayBufferSupplier<T> implements BufferSupplier<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f70771a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f70772b;

        public ReplayBufferSupplier(int i2, boolean z) {
            this.f70771a = i2;
            this.f70772b = z;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BufferSupplier
        public final ReplayBuffer call() {
            return new SizeBoundReplayBuffer(this.f70771a, this.f70772b);
        }
    }

    public static final class ReplayObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
        public static final InnerDisposable[] g = new InnerDisposable[0];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final InnerDisposable[] f70773h = new InnerDisposable[0];
        private static final long serialVersionUID = -533785617179540163L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ReplayBuffer f70774b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f70775c;
        public final AtomicReference d = new AtomicReference(g);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicBoolean f70776e = new AtomicBoolean();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicReference f70777f;

        public ReplayObserver(ReplayBuffer replayBuffer, AtomicReference atomicReference) {
            this.f70774b = replayBuffer;
            this.f70777f = atomicReference;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(InnerDisposable innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            while (true) {
                AtomicReference atomicReference = this.d;
                InnerDisposable[] innerDisposableArr2 = (InnerDisposable[]) atomicReference.get();
                int length = innerDisposableArr2.length;
                if (length == 0) {
                    return;
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        i2 = -1;
                        break;
                    } else if (innerDisposableArr2[i2].equals(innerDisposable)) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    innerDisposableArr = g;
                } else {
                    InnerDisposable[] innerDisposableArr3 = new InnerDisposable[length - 1];
                    System.arraycopy(innerDisposableArr2, 0, innerDisposableArr3, 0, i2);
                    System.arraycopy(innerDisposableArr2, i2 + 1, innerDisposableArr3, i2, (length - i2) - 1);
                    innerDisposableArr = innerDisposableArr3;
                }
                while (!atomicReference.compareAndSet(innerDisposableArr2, innerDisposableArr)) {
                    if (atomicReference.get() != innerDisposableArr2) {
                    }
                }
                return;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            AtomicReference atomicReference;
            this.d.set(f70773h);
            do {
                atomicReference = this.f70777f;
                if (atomicReference.compareAndSet(this, null)) {
                    break;
                }
            } while (atomicReference.get() == this);
            DisposableHelper.a(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.get() == f70773h;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70775c) {
                return;
            }
            this.f70775c = true;
            ReplayBuffer replayBuffer = this.f70774b;
            replayBuffer.f();
            for (InnerDisposable innerDisposable : (InnerDisposable[]) this.d.getAndSet(f70773h)) {
                replayBuffer.a(innerDisposable);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70775c) {
                RxJavaPlugins.b(th);
                return;
            }
            this.f70775c = true;
            ReplayBuffer replayBuffer = this.f70774b;
            replayBuffer.b(th);
            for (InnerDisposable innerDisposable : (InnerDisposable[]) this.d.getAndSet(f70773h)) {
                replayBuffer.a(innerDisposable);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70775c) {
                return;
            }
            ReplayBuffer replayBuffer = this.f70774b;
            replayBuffer.h(obj);
            for (InnerDisposable innerDisposable : (InnerDisposable[]) this.d.get()) {
                replayBuffer.a(innerDisposable);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.e(this, disposable)) {
                for (InnerDisposable innerDisposable : (InnerDisposable[]) this.d.get()) {
                    this.f70774b.a(innerDisposable);
                }
            }
        }
    }

    public static final class ReplaySource<T> implements ObservableSource<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicReference f70778b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BufferSupplier f70779c;

        public ReplaySource(AtomicReference atomicReference, BufferSupplier bufferSupplier) {
            this.f70778b = atomicReference;
            this.f70779c = bufferSupplier;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.ObservableSource
        public final void subscribe(Observer observer) {
            ReplayObserver replayObserver;
            loop0: while (true) {
                replayObserver = (ReplayObserver) this.f70778b.get();
                if (replayObserver != null) {
                    break;
                }
                ReplayObserver replayObserver2 = new ReplayObserver(this.f70779c.call(), this.f70778b);
                AtomicReference atomicReference = this.f70778b;
                do {
                    if (atomicReference.compareAndSet(null, replayObserver2)) {
                        replayObserver = replayObserver2;
                        break loop0;
                    }
                } while (atomicReference.get() == null);
            }
            InnerDisposable innerDisposable = new InnerDisposable(replayObserver, observer);
            observer.onSubscribe(innerDisposable);
            AtomicReference atomicReference2 = replayObserver.d;
            loop2: while (true) {
                InnerDisposable[] innerDisposableArr = (InnerDisposable[]) atomicReference2.get();
                if (innerDisposableArr == ReplayObserver.f70773h) {
                    break;
                }
                int length = innerDisposableArr.length;
                InnerDisposable[] innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
                do {
                    if (atomicReference2.compareAndSet(innerDisposableArr, innerDisposableArr2)) {
                        break loop2;
                    }
                } while (atomicReference2.get() == innerDisposableArr);
            }
            if (innerDisposable.f70767e) {
                replayObserver.a(innerDisposable);
            } else {
                replayObserver.f70774b.a(innerDisposable);
            }
        }
    }

    public static final class ScheduledReplaySupplier<T> implements BufferSupplier<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f70780a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f70781b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TimeUnit f70782c;
        public final Scheduler d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f70783e;

        public ScheduledReplaySupplier(int i2, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
            this.f70780a = i2;
            this.f70781b = j2;
            this.f70782c = timeUnit;
            this.d = scheduler;
            this.f70783e = z;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BufferSupplier
        public final ReplayBuffer call() {
            return new SizeAndTimeBoundReplayBuffer(this.f70780a, this.f70781b, this.f70782c, this.d, this.f70783e);
        }
    }

    public static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Scheduler f70784e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f70785f;
        public final TimeUnit g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f70786h;

        public SizeAndTimeBoundReplayBuffer(int i2, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
            super(z);
            this.f70784e = scheduler;
            this.f70786h = i2;
            this.f70785f = j2;
            this.g = timeUnit;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public final Object c(Object obj) {
            this.f70784e.getClass();
            TimeUnit timeUnit = this.g;
            return new Timed(obj, Scheduler.a(timeUnit), timeUnit);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public final Node d() {
            Node node;
            Timed timed;
            Object obj;
            this.f70784e.getClass();
            long jA = Scheduler.a(this.g) - this.f70785f;
            Node node2 = get();
            Node node3 = node2.get();
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                if (node2 != null && (obj = (timed = (Timed) node2.f70770b).f71162a) != NotificationLite.COMPLETE && !NotificationLite.f(obj) && timed.f71163b <= jA) {
                    node3 = node2.get();
                }
            }
            return node;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public final Object e(Object obj) {
            return ((Timed) obj).f71162a;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public final void i() {
            Node node;
            this.f70784e.getClass();
            long jA = Scheduler.a(this.g) - this.f70785f;
            Node node2 = get();
            Node node3 = node2.get();
            int i2 = 0;
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                int i3 = this.f70763c;
                if (i3 > 1) {
                    if (i3 <= this.f70786h) {
                        if (((Timed) node2.f70770b).f71163b > jA) {
                            break;
                        }
                        i2++;
                        this.f70763c = i3 - 1;
                        node3 = node2.get();
                    } else {
                        i2++;
                        this.f70763c = i3 - 1;
                        node3 = node2.get();
                    }
                } else {
                    break;
                }
            }
            if (i2 != 0) {
                g(node);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public final void j() {
            Node node;
            this.f70784e.getClass();
            long jA = Scheduler.a(this.g) - this.f70785f;
            Node node2 = get();
            Node node3 = node2.get();
            int i2 = 0;
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                int i3 = this.f70763c;
                if (i3 <= 1 || ((Timed) node2.f70770b).f71163b > jA) {
                    break;
                }
                i2++;
                this.f70763c = i3 - 1;
                node3 = node2.get();
            }
            if (i2 != 0) {
                g(node);
            }
        }
    }

    public static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f70787e;

        public SizeBoundReplayBuffer(int i2, boolean z) {
            super(z);
            this.f70787e = i2;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public final void i() {
            if (this.f70763c > this.f70787e) {
                Node node = get().get();
                this.f70763c--;
                g(node);
            }
        }
    }

    public static final class UnBoundedFactory implements BufferSupplier<Object> {
        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BufferSupplier
        public final ReplayBuffer call() {
            return new UnboundedReplayBuffer(16);
        }
    }

    public static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile int f70788b;

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void a(InnerDisposable innerDisposable) {
            if (innerDisposable.getAndIncrement() != 0) {
                return;
            }
            Observer observer = innerDisposable.f70766c;
            int iAddAndGet = 1;
            while (!innerDisposable.f70767e) {
                int i2 = this.f70788b;
                Integer num = (Integer) innerDisposable.d;
                int iIntValue = num != null ? num.intValue() : 0;
                while (iIntValue < i2) {
                    if (NotificationLite.a(observer, get(iIntValue)) || innerDisposable.f70767e) {
                        return;
                    } else {
                        iIntValue++;
                    }
                }
                innerDisposable.d = Integer.valueOf(iIntValue);
                iAddAndGet = innerDisposable.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void b(Throwable th) {
            add(NotificationLite.d(th));
            this.f70788b++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void f() {
            add(NotificationLite.COMPLETE);
            this.f70788b++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void h(Object obj) {
            add(obj);
            this.f70788b++;
        }
    }

    public ObservableReplay(ObservableSource observableSource, Observable observable, AtomicReference atomicReference, BufferSupplier bufferSupplier) {
        this.f70761e = observableSource;
        this.f70759b = observable;
        this.f70760c = atomicReference;
        this.d = bufferSupplier;
    }

    public static ObservableReplay e(int i2, long j2, Observable observable, Scheduler scheduler, TimeUnit timeUnit, boolean z) {
        return h(observable, new ScheduledReplaySupplier(i2, j2, timeUnit, scheduler, z));
    }

    public static ObservableReplay g(Observable observable, int i2, boolean z) {
        return i2 == Integer.MAX_VALUE ? h(observable, f70758f) : h(observable, new ReplayBufferSupplier(i2, z));
    }

    public static ObservableReplay h(Observable observable, BufferSupplier bufferSupplier) {
        AtomicReference atomicReference = new AtomicReference();
        return new ObservableReplay(new ReplaySource(atomicReference, bufferSupplier), observable, atomicReference, bufferSupplier);
    }

    public static Observable i(Function function, Supplier supplier) {
        return new MulticastReplay(function, supplier);
    }

    @Override // io.reactivex.rxjava3.observables.ConnectableObservable
    public final void c(Consumer consumer) {
        ReplayObserver replayObserver;
        loop0: while (true) {
            AtomicReference atomicReference = this.f70760c;
            replayObserver = (ReplayObserver) atomicReference.get();
            if (replayObserver != null && !replayObserver.isDisposed()) {
                break;
            }
            ReplayObserver replayObserver2 = new ReplayObserver(this.d.call(), atomicReference);
            do {
                if (atomicReference.compareAndSet(replayObserver, replayObserver2)) {
                    replayObserver = replayObserver2;
                    break loop0;
                }
            } while (atomicReference.get() == replayObserver);
        }
        AtomicBoolean atomicBoolean = replayObserver.f70776e;
        boolean z = !atomicBoolean.get() && atomicBoolean.compareAndSet(false, true);
        try {
            consumer.accept(replayObserver);
            if (z) {
                this.f70759b.subscribe(replayObserver);
            }
        } catch (Throwable th) {
            Exceptions.a(th);
            if (z) {
                atomicBoolean.compareAndSet(true, false);
            }
            Exceptions.a(th);
            throw ExceptionHelper.e(th);
        }
    }

    @Override // io.reactivex.rxjava3.observables.ConnectableObservable
    public final void d() {
        AtomicReference atomicReference = this.f70760c;
        ReplayObserver replayObserver = (ReplayObserver) atomicReference.get();
        if (replayObserver == null || !replayObserver.isDisposed()) {
            return;
        }
        while (!atomicReference.compareAndSet(replayObserver, null) && atomicReference.get() == replayObserver) {
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ((ReplaySource) this.f70761e).subscribe(observer);
    }
}
