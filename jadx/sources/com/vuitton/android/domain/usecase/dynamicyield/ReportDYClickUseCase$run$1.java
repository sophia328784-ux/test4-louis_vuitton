package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.ReportDYClickUseCase", f = "ReportDYClickUseCase.kt", l = {9}, m = "run", v = 2)
final class ReportDYClickUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ReportDYClickUseCase f49963c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportDYClickUseCase$run$1(ReportDYClickUseCase reportDYClickUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49963c = reportDYClickUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49962b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49963c.a(null, this);
    }
}
