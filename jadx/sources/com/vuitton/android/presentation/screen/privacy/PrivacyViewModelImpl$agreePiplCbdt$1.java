package com.vuitton.android.presentation.screen.privacy;

import com.vuitton.android.domain.usecase.privacy.consent.SetPiplCbdtAgreementUseCase;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$agreePiplCbdt$1", f = "PrivacyViewModelImpl.kt", l = {232}, m = "invokeSuspend", v = 2)
final class PrivacyViewModelImpl$agreePiplCbdt$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrivacyViewModelImpl f63358c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyViewModelImpl$agreePiplCbdt$1(PrivacyViewModelImpl privacyViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f63358c = privacyViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PrivacyViewModelImpl$agreePiplCbdt$1(this.f63358c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrivacyViewModelImpl$agreePiplCbdt$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63357b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SetPiplCbdtAgreementUseCase setPiplCbdtAgreementUseCase = this.f63358c.f63351f;
            this.f63357b = 1;
            Object objB = setPiplCbdtAgreementUseCase.f50281a.b(true, this);
            if (objB != coroutineSingletons) {
                objB = Unit.f71739a;
            }
            if (objB == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
