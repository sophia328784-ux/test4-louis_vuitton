package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetSneakerFaqUseCase;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailViewModel$getDocumentationDetails$1", f = "SneakerDetailViewModel.kt", l = {23}, m = "invokeSuspend", v = 2)
final class SneakerDetailViewModel$getDocumentationDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableLiveData f56249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f56250c;
    public final /* synthetic */ SneakerDetailViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SneakerDetailViewModel$getDocumentationDetails$1(SneakerDetailViewModel sneakerDetailViewModel, Continuation continuation) {
        super(2, continuation);
        this.d = sneakerDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SneakerDetailViewModel$getDocumentationDetails$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SneakerDetailViewModel$getDocumentationDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableLiveData mutableLiveData;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56250c;
        if (i2 == 0) {
            ResultKt.b(obj);
            SneakerDetailViewModel sneakerDetailViewModel = this.d;
            MutableLiveData mutableLiveData2 = sneakerDetailViewModel.d;
            GetSneakerFaqUseCase getSneakerFaqUseCase = sneakerDetailViewModel.f56248c;
            this.f56249b = mutableLiveData2;
            this.f56250c = 1;
            obj = getSneakerFaqUseCase.a(this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutableLiveData = mutableLiveData2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableLiveData = this.f56249b;
            ResultKt.b(obj);
        }
        mutableLiveData.postValue(obj);
        return Unit.f71739a;
    }
}
