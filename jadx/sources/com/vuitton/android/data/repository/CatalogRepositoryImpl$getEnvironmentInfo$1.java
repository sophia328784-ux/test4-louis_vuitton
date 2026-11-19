package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl", f = "CatalogRepositoryImpl.kt", l = {391}, m = "getEnvironmentInfo-hd8RJmg", v = 2)
final class CatalogRepositoryImpl$getEnvironmentInfo$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47511c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getEnvironmentInfo$1(CatalogRepositoryImpl catalogRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47511c = catalogRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47510b = obj;
        this.d |= Integer.MIN_VALUE;
        int i2 = CatalogRepositoryImpl.p;
        return this.f47511c.q(null, this);
    }
}
