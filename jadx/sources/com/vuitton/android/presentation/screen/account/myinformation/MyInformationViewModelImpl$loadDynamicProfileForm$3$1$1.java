package com.vuitton.android.presentation.screen.account.myinformation;

import com.vuitton.android.domain.usecase.forms.GetProfileFormUseCase;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.forms.Form;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/forms/Form;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1", f = "MyInformationViewModelImpl.kt", l = {213}, m = "invokeSuspend", v = 2)
final class MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1 extends SuspendLambda implements Function1<Continuation<? super Result<? extends Form>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52558c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1(MyInformationViewModelImpl myInformationViewModelImpl, Continuation continuation) {
        super(1, continuation);
        this.f52558c = myInformationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1(this.f52558c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52557b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MyInformationViewModelImpl myInformationViewModelImpl = this.f52558c;
            GetProfileFormUseCase getProfileFormUseCase = myInformationViewModelImpl.f52535k;
            InAppDispatch inAppDispatch = myInformationViewModelImpl.s;
            this.f52557b = 1;
            objA = getProfileFormUseCase.a(inAppDispatch, this);
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
        return new Result(objA);
    }
}
