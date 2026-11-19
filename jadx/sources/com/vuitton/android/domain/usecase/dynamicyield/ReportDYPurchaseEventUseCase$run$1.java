package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.ReportDYPurchaseEventUseCase", f = "ReportDYPurchaseEventUseCase.kt", l = {16}, m = "run", v = 2)
final class ReportDYPurchaseEventUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ReportDYPurchaseEventUseCase f49971c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportDYPurchaseEventUseCase$run$1(ReportDYPurchaseEventUseCase reportDYPurchaseEventUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49971c = reportDYPurchaseEventUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49970b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49971c.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, null, this);
    }
}
