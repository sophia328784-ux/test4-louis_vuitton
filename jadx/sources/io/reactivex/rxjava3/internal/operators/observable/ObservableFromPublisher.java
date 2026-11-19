package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromPublisher<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Publisher f70551b;

    public static final class PublisherSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70552b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Subscription f70553c;

        public PublisherSubscriber(Observer observer) {
            this.f70552b = observer;
        }

        @Override // org.reactivestreams.Subscriber
        public final void b(Subscription subscription) {
            if (SubscriptionHelper.b(this.f70553c, subscription)) {
                this.f70553c = subscription;
                this.f70552b.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70553c.cancel();
            this.f70553c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70553c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.f70552b.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            this.f70552b.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            this.f70552b.onNext(obj);
        }
    }

    public ObservableFromPublisher(Publisher<? extends T> publisher) {
        this.f70551b = publisher;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70551b.a(new PublisherSubscriber(observer));
    }
}
