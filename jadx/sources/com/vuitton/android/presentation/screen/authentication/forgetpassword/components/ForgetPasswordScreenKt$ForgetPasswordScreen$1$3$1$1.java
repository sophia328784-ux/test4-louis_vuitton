package com.vuitton.android.presentation.screen.authentication.forgetpassword.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordTrackingUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordScreenKt$ForgetPasswordScreen$1$3$1$1", f = "ForgetPasswordScreen.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "invokeSuspend", v = 2)
final class ForgetPasswordScreenKt$ForgetPasswordScreen$1$3$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f53559c;
    public final /* synthetic */ SoftwareKeyboardController d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PagerState f53560e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForgetPasswordScreenKt$ForgetPasswordScreen$1$3$1$1(Function1 function1, SoftwareKeyboardController softwareKeyboardController, PagerState pagerState, Continuation continuation) {
        super(2, continuation);
        this.f53559c = function1;
        this.d = softwareKeyboardController;
        this.f53560e = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ForgetPasswordScreenKt$ForgetPasswordScreen$1$3$1$1(this.f53559c, this.d, this.f53560e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ForgetPasswordScreenKt$ForgetPasswordScreen$1$3$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53558b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f53559c.invoke(ForgetPasswordTrackingUiModel.OnConfirmOnResetCodeEvent.f53576a);
            SoftwareKeyboardController softwareKeyboardController = this.d;
            if (softwareKeyboardController != null) {
                softwareKeyboardController.b();
            }
            PagerState pagerState = this.f53560e;
            int iK = pagerState.k() + 1;
            this.f53558b = 1;
            if (PagerState.g(pagerState, iK, null, this, 6) == coroutineSingletons) {
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
