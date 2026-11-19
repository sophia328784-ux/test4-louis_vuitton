package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.LastViewedProductRepositoryImpl", f = "LastViewedProductRepositoryImpl.kt", l = {70, 73}, m = "deleteDeprecatedProducts", v = 2)
final class LastViewedProductRepositoryImpl$deleteDeprecatedProducts$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LastViewedProductRepositoryImpl f47759c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LastViewedProductRepositoryImpl$deleteDeprecatedProducts$1(LastViewedProductRepositoryImpl lastViewedProductRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47759c = lastViewedProductRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47758b = obj;
        this.d |= Integer.MIN_VALUE;
        return LastViewedProductRepositoryImpl.c(this.f47759c, this);
    }
}
