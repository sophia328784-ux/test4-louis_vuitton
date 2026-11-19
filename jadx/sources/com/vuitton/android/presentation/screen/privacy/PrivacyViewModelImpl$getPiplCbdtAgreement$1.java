package com.vuitton.android.presentation.screen.privacy;

import com.vuitton.android.domain.usecase.privacy.consent.GetPiplCbdtAgreementUseCase;
import com.vuitton.foundation.model.domain.error.privacy.PrivacyException;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$getPiplCbdtAgreement$1", f = "PrivacyViewModelImpl.kt", l = {239}, m = "invokeSuspend", v = 2)
final class PrivacyViewModelImpl$getPiplCbdtAgreement$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrivacyViewModelImpl f63362c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyViewModelImpl$getPiplCbdtAgreement$1(PrivacyViewModelImpl privacyViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f63362c = privacyViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PrivacyViewModelImpl$getPiplCbdtAgreement$1(this.f63362c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrivacyViewModelImpl$getPiplCbdtAgreement$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws PrivacyException.CbdtRetrievalException {
        Object objA;
        PrivacyViewModelImpl privacyViewModelImpl = this.f63362c;
        MutableStateFlow mutableStateFlow = privacyViewModelImpl.q;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63361b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetPiplCbdtAgreementUseCase getPiplCbdtAgreementUseCase = privacyViewModelImpl.g;
            this.f63361b = 1;
            objA = getPiplCbdtAgreementUseCase.a(this);
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
            Boolean bool = (Boolean) objA;
            bool.booleanValue();
            privacyViewModelImpl.r.setValue(bool);
        }
        if (Result.a(objA) != null) {
            throw new PrivacyException.CbdtRetrievalException();
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
