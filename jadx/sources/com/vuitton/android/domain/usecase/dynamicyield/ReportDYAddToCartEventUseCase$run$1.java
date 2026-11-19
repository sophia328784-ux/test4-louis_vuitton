package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToCartEventUseCase", f = "ReportDYAddToCartEventUseCase.kt", l = {18}, m = "run-qi9HLQg", v = 2)
final class ReportDYAddToCartEventUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ReportDYAddToCartEventUseCase f49956c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportDYAddToCartEventUseCase$run$1(ReportDYAddToCartEventUseCase reportDYAddToCartEventUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49956c = reportDYAddToCartEventUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49955b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49956c.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 0, null, null, this);
    }
}
