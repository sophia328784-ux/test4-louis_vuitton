package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractBackpressureThrottlingSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
    private static final long serialVersionUID = -5050301752721603566L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlowableSubscriber f70135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Subscription f70136c;
    public volatile boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f70137e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f70138f;
    public final AtomicLong g = new AtomicLong();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicReference f70139h = new AtomicReference();

    public AbstractBackpressureThrottlingSubscriber(FlowableSubscriber flowableSubscriber) {
        this.f70135b = flowableSubscriber;
    }

    public final boolean a(boolean z, boolean z2, FlowableSubscriber flowableSubscriber, AtomicReference atomicReference) {
        if (this.f70138f) {
            atomicReference.lazySet(null);
            return true;
        }
        if (!z) {
            return false;
        }
        Throwable th = this.f70137e;
        if (th != null) {
            atomicReference.lazySet(null);
            flowableSubscriber.onError(th);
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
        if (SubscriptionHelper.b(this.f70136c, subscription)) {
            this.f70136c = subscription;
            this.f70135b.b(this);
            subscription.request(Long.MAX_VALUE);
        }
    }

    public final void c() {
        if (getAndIncrement() != 0) {
            return;
        }
        FlowableSubscriber flowableSubscriber = this.f70135b;
        AtomicLong atomicLong = this.g;
        AtomicReference atomicReference = this.f70139h;
        int iAddAndGet = 1;
        do {
            long j2 = 0;
            while (true) {
                if (j2 == atomicLong.get()) {
                    break;
                }
                boolean z = this.d;
                Object andSet = atomicReference.getAndSet(null);
                boolean z2 = andSet == null;
                if (a(z, z2, flowableSubscriber, atomicReference)) {
                    return;
                }
                if (z2) {
                    break;
                }
                flowableSubscriber.onNext(andSet);
                j2++;
            }
            if (j2 == atomicLong.get()) {
                if (a(this.d, atomicReference.get() == null, flowableSubscriber, atomicReference)) {
                    return;
                }
            }
            if (j2 != 0) {
                BackpressureHelper.b(atomicLong, j2);
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        if (this.f70138f) {
            return;
        }
        this.f70138f = true;
        this.f70136c.cancel();
        if (getAndIncrement() == 0) {
            this.f70139h.lazySet(null);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        this.d = true;
        c();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        this.f70137e = th;
        this.d = true;
        c();
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j2) {
        if (SubscriptionHelper.a(j2)) {
            BackpressureHelper.a(this.g, j2);
            c();
        }
    }
}
