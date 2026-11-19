package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SpotlightRepositoryImpl", f = "SpotlightRepositoryImpl.kt", l = {33}, m = "getSpotlight-gIAlu-s", v = 2)
final class SpotlightRepositoryImpl$getSpotlight$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpotlightRepositoryImpl f48031c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightRepositoryImpl$getSpotlight$1(SpotlightRepositoryImpl spotlightRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48031c = spotlightRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48030b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f48031c.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
