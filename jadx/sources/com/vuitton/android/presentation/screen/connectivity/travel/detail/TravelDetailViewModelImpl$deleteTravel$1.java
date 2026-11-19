package com.vuitton.android.presentation.screen.connectivity.travel.detail;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.travel.DeleteTravelUseCase;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModelImpl$deleteTravel$1", f = "TravelDetailViewModelImpl.kt", l = {34}, m = "invokeSuspend", v = 2)
final class TravelDetailViewModelImpl$deleteTravel$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TravelDetailViewModelImpl f56398c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TravelDetailViewModelImpl$deleteTravel$1(TravelDetailViewModelImpl travelDetailViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f56398c = travelDetailViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TravelDetailViewModelImpl$deleteTravel$1(this.f56398c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TravelDetailViewModelImpl$deleteTravel$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        TravelDetailViewModelImpl travelDetailViewModelImpl = this.f56398c;
        MutableLiveData mutableLiveData = travelDetailViewModelImpl.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56397b;
        if (i2 == 0) {
            ResultKt.b(obj);
            DeleteTravelUseCase deleteTravelUseCase = travelDetailViewModelImpl.f56392a;
            this.f56397b = 1;
            objA = deleteTravelUseCase.a(this.d, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            mutableLiveData.postValue(Boolean.TRUE);
        }
        if (Result.a(objA) != null) {
            mutableLiveData.postValue(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
