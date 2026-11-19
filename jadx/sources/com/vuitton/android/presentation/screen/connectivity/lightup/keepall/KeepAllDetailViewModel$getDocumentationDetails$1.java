package com.vuitton.android.presentation.screen.connectivity.lightup.keepall;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetKeepAllFaqUseCase;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailViewModel$getDocumentationDetails$1", f = "KeepAllDetailViewModel.kt", l = {23}, m = "invokeSuspend", v = 2)
final class KeepAllDetailViewModel$getDocumentationDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableLiveData f56210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f56211c;
    public final /* synthetic */ KeepAllDetailViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeepAllDetailViewModel$getDocumentationDetails$1(KeepAllDetailViewModel keepAllDetailViewModel, Continuation continuation) {
        super(2, continuation);
        this.d = keepAllDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new KeepAllDetailViewModel$getDocumentationDetails$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeepAllDetailViewModel$getDocumentationDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableLiveData mutableLiveData;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56211c;
        if (i2 == 0) {
            ResultKt.b(obj);
            KeepAllDetailViewModel keepAllDetailViewModel = this.d;
            MutableLiveData mutableLiveData2 = keepAllDetailViewModel.d;
            GetKeepAllFaqUseCase getKeepAllFaqUseCase = keepAllDetailViewModel.f56209c;
            this.f56210b = mutableLiveData2;
            this.f56211c = 1;
            obj = getKeepAllFaqUseCase.a(this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutableLiveData = mutableLiveData2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableLiveData = this.f56210b;
            ResultKt.b(obj);
        }
        mutableLiveData.postValue(obj);
        return Unit.f71739a;
    }
}
