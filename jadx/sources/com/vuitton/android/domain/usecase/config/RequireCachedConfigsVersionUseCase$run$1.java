package com.vuitton.android.domain.usecase.config;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.RequireCachedConfigsVersionUseCase", f = "RequireCachedConfigsVersionUseCase.kt", l = {14}, m = "run", v = 2)
final class RequireCachedConfigsVersionUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RequireCachedConfigsVersionUseCase f49713c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequireCachedConfigsVersionUseCase$run$1(RequireCachedConfigsVersionUseCase requireCachedConfigsVersionUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49713c = requireCachedConfigsVersionUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49712b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49713c.a(this);
    }
}
