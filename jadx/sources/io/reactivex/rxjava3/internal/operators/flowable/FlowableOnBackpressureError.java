package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes4.dex */
public final class FlowableOnBackpressureError<T> extends AbstractFlowableWithUpstream<T, T> {

    public static final class BackpressureErrorSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -3176480756392482682L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FlowableSubscriber f70158b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Subscription f70159c;
        public boolean d;

        public BackpressureErrorSubscriber(FlowableSubscriber flowableSubscriber) {
            this.f70158b = flowableSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public final void b(Subscription subscription) {
            if (SubscriptionHelper.b(this.f70159c, subscription)) {
                this.f70159c = subscription;
                this.f70158b.b(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f70159c.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.d) {
                return;
            }
            this.d = true;
            this.f70158b.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.d) {
                RxJavaPlugins.b(th);
            } else {
                this.d = true;
                this.f70158b.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.d) {
                return;
            }
            if (get() != 0) {
                this.f70158b.onNext(obj);
                BackpressureHelper.b(this, 1L);
            } else {
                this.f70159c.cancel();
                onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j2) {
            if (SubscriptionHelper.a(j2)) {
                BackpressureHelper.a(this, j2);
            }
        }
    }

    public FlowableOnBackpressureError(Flowable<T> flowable) {
        super(flowable);
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void c(FlowableSubscriber flowableSubscriber) {
        this.f70140c.b(new BackpressureErrorSubscriber(flowableSubscriber));
    }
}
