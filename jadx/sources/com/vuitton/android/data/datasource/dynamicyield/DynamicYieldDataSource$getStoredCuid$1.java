package com.vuitton.android.data.datasource.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource", f = "DynamicYieldDataSource.kt", l = {31}, m = "getStoredCuid", v = 2)
final class DynamicYieldDataSource$getStoredCuid$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DynamicYieldDataSource f44110c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldDataSource$getStoredCuid$1(DynamicYieldDataSource dynamicYieldDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44110c = dynamicYieldDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44109b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f44110c.c(this);
    }
}
