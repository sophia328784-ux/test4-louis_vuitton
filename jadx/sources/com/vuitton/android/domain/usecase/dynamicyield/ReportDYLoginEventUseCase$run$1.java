package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase", f = "ReportDYLoginEventUseCase.kt", l = {16, 16, 17}, m = "run", v = 2)
final class ReportDYLoginEventUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ReportDYLoginEventUseCase f49968c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportDYLoginEventUseCase$run$1(ReportDYLoginEventUseCase reportDYLoginEventUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49968c = reportDYLoginEventUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49967b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49968c.a(this);
    }
}
