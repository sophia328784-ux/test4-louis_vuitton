package com.vuitton.android.data.repository;

import com.vuitton.android.data.dto.pdp.ProductDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl", f = "CatalogRepositoryImpl.kt", l = {314, 322, 326}, m = "getProduct-FV2jlBI", v = 2)
final class CatalogRepositoryImpl$getProduct$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProductDto f47544c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f47545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f47546f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f47547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f47549j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getProduct$1(CatalogRepositoryImpl catalogRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47548i = catalogRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47547h = obj;
        this.f47549j |= Integer.MIN_VALUE;
        Object objB = this.f47548i.b(null, false, null, null, null, false, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
