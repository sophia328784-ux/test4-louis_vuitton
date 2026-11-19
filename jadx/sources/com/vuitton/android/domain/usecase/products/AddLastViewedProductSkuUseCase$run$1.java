package com.vuitton.android.domain.usecase.products;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase", f = "AddLastViewedProductSkuUseCase.kt", l = {26, 27}, m = "run-1cKmzHo", v = 2)
final class AddLastViewedProductSkuUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f50287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f50288c;
    public final /* synthetic */ AddLastViewedProductSkuUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f50289e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddLastViewedProductSkuUseCase$run$1(AddLastViewedProductSkuUseCase addLastViewedProductSkuUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = addLastViewedProductSkuUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50288c = obj;
        this.f50289e |= Integer.MIN_VALUE;
        return this.d.a(null, null, null, this);
    }
}
