package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase", f = "ReportDYAddToWishlistEventUseCase.kt", l = {9}, m = "run", v = 2)
final class ReportDYAddToWishlistEventUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ReportDYAddToWishlistEventUseCase f49959c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportDYAddToWishlistEventUseCase$run$1(ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49959c = reportDYAddToWishlistEventUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49958b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49959c.a(null, this);
    }
}
