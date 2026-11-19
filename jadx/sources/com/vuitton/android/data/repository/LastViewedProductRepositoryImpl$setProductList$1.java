package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.LastViewedProductRepositoryImpl", f = "LastViewedProductRepositoryImpl.kt", l = {EACTags.CURRENCY_CODE}, m = "setProductList-gIAlu-s", v = 2)
final class LastViewedProductRepositoryImpl$setProductList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LastViewedProductRepositoryImpl f47764c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LastViewedProductRepositoryImpl$setProductList$1(LastViewedProductRepositoryImpl lastViewedProductRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47764c = lastViewedProductRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47763b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47764c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
