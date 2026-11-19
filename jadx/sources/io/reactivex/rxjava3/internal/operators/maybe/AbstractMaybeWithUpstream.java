package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamMaybeSource;

/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractMaybeWithUpstream<T, R> extends Maybe<R> implements HasUpstreamMaybeSource<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MaybeSource f70161b;

    public AbstractMaybeWithUpstream(MaybeSource maybeSource) {
        this.f70161b = maybeSource;
    }
}
