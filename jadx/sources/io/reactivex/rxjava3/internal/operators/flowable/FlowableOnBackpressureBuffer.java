package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes4.dex */
public final class FlowableOnBackpressureBuffer<T> extends AbstractFlowableWithUpstream<T, T> {
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f70144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f70145f;
    public final Action g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Consumer f70146h;

    public static final class BackpressureBufferSubscriber<T> extends BasicIntQueueSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -2514538129242366402L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FlowableSubscriber f70147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SimplePlainQueue f70148c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Action f70149e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Consumer f70150f;
        public Subscription g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70151h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70152i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Throwable f70153j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final AtomicLong f70154k = new AtomicLong();

        public BackpressureBufferSubscriber(FlowableSubscriber flowableSubscriber, int i2, boolean z, boolean z2, Action action, Consumer consumer) {
            this.f70147b = flowableSubscriber;
            this.f70149e = action;
            this.d = z2;
            this.f70150f = consumer;
            this.f70148c = z ? new SpscLinkedArrayQueue(i2) : new SpscArrayQueue(i2);
        }

        public final boolean a(boolean z, boolean z2, FlowableSubscriber flowableSubscriber) {
            if (this.f70151h) {
                this.f70148c.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.d) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.f70153j;
                if (th != null) {
                    flowableSubscriber.onError(th);
                    return true;
                }
                flowableSubscriber.onComplete();
                return true;
            }
            Throwable th2 = this.f70153j;
            if (th2 != null) {
                this.f70148c.clear();
                flowableSubscriber.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            flowableSubscriber.onComplete();
            return true;
        }

        @Override // org.reactivestreams.Subscriber
        public final void b(Subscription subscription) {
            if (SubscriptionHelper.b(this.g, subscription)) {
                this.g = subscription;
                this.f70147b.b(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        public final void c() {
            if (getAndIncrement() == 0) {
                SimplePlainQueue simplePlainQueue = this.f70148c;
                FlowableSubscriber flowableSubscriber = this.f70147b;
                int iAddAndGet = 1;
                while (!a(this.f70152i, simplePlainQueue.isEmpty(), flowableSubscriber)) {
                    long j2 = this.f70154k.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        boolean z = this.f70152i;
                        Object objPoll = simplePlainQueue.poll();
                        boolean z2 = objPoll == null;
                        if (a(z, z2, flowableSubscriber)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        flowableSubscriber.onNext(objPoll);
                        j3++;
                    }
                    if (j3 == j2 && a(this.f70152i, simplePlainQueue.isEmpty(), flowableSubscriber)) {
                        return;
                    }
                    if (j3 != 0 && j2 != Long.MAX_VALUE) {
                        this.f70154k.addAndGet(-j3);
                    }
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (this.f70151h) {
                return;
            }
            this.f70151h = true;
            this.g.cancel();
            if (getAndIncrement() == 0) {
                this.f70148c.clear();
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.f70148c.clear();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return this.f70148c.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.f70152i = true;
            c();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            this.f70153j = th;
            this.f70152i = true;
            c();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.f70148c.offer(obj)) {
                c();
                return;
            }
            this.g.cancel();
            MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
            try {
                this.f70149e.run();
                this.f70150f.accept(obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                missingBackpressureException.initCause(th);
            }
            onError(missingBackpressureException);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            return this.f70148c.poll();
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j2) {
            if (SubscriptionHelper.a(j2)) {
                BackpressureHelper.a(this.f70154k, j2);
                c();
            }
        }
    }

    public FlowableOnBackpressureBuffer(Flowable<T> flowable, int i2, boolean z, boolean z2, Action action, Consumer<? super T> consumer) {
        super(flowable);
        this.d = i2;
        this.f70144e = z;
        this.f70145f = z2;
        this.g = action;
        this.f70146h = consumer;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void c(FlowableSubscriber flowableSubscriber) {
        this.f70140c.b(new BackpressureBufferSubscriber(flowableSubscriber, this.d, this.f70144e, this.f70145f, this.g, this.f70146h));
    }
}
