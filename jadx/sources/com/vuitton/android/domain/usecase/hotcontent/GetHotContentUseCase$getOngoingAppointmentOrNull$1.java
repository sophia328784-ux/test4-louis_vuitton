package com.vuitton.android.domain.usecase.hotcontent;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase", f = "GetHotContentUseCase.kt", l = {91}, m = "getOngoingAppointmentOrNull", v = 2)
final class GetHotContentUseCase$getOngoingAppointmentOrNull$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetHotContentUseCase f50106c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetHotContentUseCase$getOngoingAppointmentOrNull$1(GetHotContentUseCase getHotContentUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50106c = getHotContentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50105b = obj;
        this.d |= Integer.MIN_VALUE;
        return GetHotContentUseCase.b(this.f50106c, this);
    }
}
