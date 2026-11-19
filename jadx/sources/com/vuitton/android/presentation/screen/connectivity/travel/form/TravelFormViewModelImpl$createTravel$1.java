package com.vuitton.android.presentation.screen.connectivity.travel.form;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.travel.CreateTravelUseCase;
import com.vuitton.android.presentation.screen.connectivity.travel.MapperKt;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl$createTravel$1", f = "TravelFormViewModelImpl.kt", l = {EACTags.SEX}, m = "invokeSuspend", v = 2)
final class TravelFormViewModelImpl$createTravel$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TravelFormViewModelImpl f56426c;
    public final /* synthetic */ TravelUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TravelFormViewModelImpl$createTravel$1(TravelFormViewModelImpl travelFormViewModelImpl, TravelUiModel travelUiModel, Continuation continuation) {
        super(2, continuation);
        this.f56426c = travelFormViewModelImpl;
        this.d = travelUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TravelFormViewModelImpl$createTravel$1(this.f56426c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TravelFormViewModelImpl$createTravel$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        TravelFormViewModelImpl travelFormViewModelImpl = this.f56426c;
        MutableLiveData mutableLiveData = travelFormViewModelImpl.f56418e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56425b;
        if (i2 == 0) {
            ResultKt.b(obj);
            CreateTravelUseCase createTravelUseCase = travelFormViewModelImpl.f56415a;
            Travel travelA = MapperKt.a(this.d);
            this.f56425b = 1;
            objA = createTravelUseCase.a(travelA, this);
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
            mutableLiveData.postValue(new Result(Unit.f71739a));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            mutableLiveData.postValue(new Result(new Result.Failure(thA)));
        }
        return Unit.f71739a;
    }
}
