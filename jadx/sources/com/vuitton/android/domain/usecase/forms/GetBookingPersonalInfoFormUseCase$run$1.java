package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.GetBookingPersonalInfoFormUseCase", f = "GetBookingPersonalInfoFormUseCase.kt", l = {14, 15}, m = "run-gIAlu-s", v = 2)
final class GetBookingPersonalInfoFormUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f50046c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f50047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ GetBookingPersonalInfoFormUseCase f50048f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetBookingPersonalInfoFormUseCase$run$1(GetBookingPersonalInfoFormUseCase getBookingPersonalInfoFormUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50048f = getBookingPersonalInfoFormUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50047e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objA = this.f50048f.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
