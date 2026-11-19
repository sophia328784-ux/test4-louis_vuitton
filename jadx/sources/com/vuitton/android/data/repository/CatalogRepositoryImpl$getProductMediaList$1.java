package com.vuitton.android.data.repository;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl", f = "CatalogRepositoryImpl.kt", l = {343}, m = "getProductMediaList", v = 2)
final class CatalogRepositoryImpl$getProductMediaList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Collection f47557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Iterator f47558c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47560f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47561h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f47562i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getProductMediaList$1(CatalogRepositoryImpl catalogRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47561h = catalogRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f47562i |= Integer.MIN_VALUE;
        int i2 = CatalogRepositoryImpl.p;
        return this.f47561h.r(null, this);
    }
}
