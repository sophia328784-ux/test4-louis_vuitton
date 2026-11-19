package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamPublisher;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractFlowableWithUpstream<T, R> extends Flowable<R> implements HasUpstreamPublisher<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Flowable f70140c;

    public AbstractFlowableWithUpstream(Flowable flowable) {
        Objects.requireNonNull(flowable, "source is null");
        this.f70140c = flowable;
    }
}
