package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.ReportDYSlotClickUseCase", f = "ReportDYSlotClickUseCase.kt", l = {9}, m = "run", v = 2)
final class ReportDYSlotClickUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ReportDYSlotClickUseCase f49983c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportDYSlotClickUseCase$run$1(ReportDYSlotClickUseCase reportDYSlotClickUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49983c = reportDYSlotClickUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49982b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49983c.a(null, this);
    }
}
