package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl", f = "RecommendedSourceRepositoryImpl.kt", l = {EACTags.TRANSACTION_DATE}, m = "getRecommendedSourceFromSharedPref-IoAF18A", v = 2)
final class RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RecommendedSourceRepositoryImpl f47933c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1(RecommendedSourceRepositoryImpl recommendedSourceRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47933c = recommendedSourceRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47932b = obj;
        this.d |= Integer.MIN_VALUE;
        int i2 = RecommendedSourceRepositoryImpl.f47924e;
        Object objD = this.f47933c.d(this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
