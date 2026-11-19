package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl", f = "CatalogRepositoryImpl.kt", l = {424, 425}, m = "getThematicPlpThemes-BWLJW6A", v = 2)
final class CatalogRepositoryImpl$getThematicPlpThemes$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47570c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f47572f;
    public final /* synthetic */ CatalogRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47573h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getThematicPlpThemes$1(CatalogRepositoryImpl catalogRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = catalogRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47572f = obj;
        this.f47573h |= Integer.MIN_VALUE;
        Object objE = this.g.e(null, null, null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
