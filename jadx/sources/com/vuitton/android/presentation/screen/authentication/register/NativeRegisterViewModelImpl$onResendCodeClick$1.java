package com.vuitton.android.presentation.screen.authentication.register;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$onResendCodeClick$1", f = "NativeRegisterViewModelImpl.kt", l = {629}, m = "invokeSuspend", v = 2)
final class NativeRegisterViewModelImpl$onResendCodeClick$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModelImpl f53782c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$onResendCodeClick$1(Continuation continuation, NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
        super(2, continuation);
        this.f53782c = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterViewModelImpl$onResendCodeClick$1(continuation, this.f53782c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterViewModelImpl$onResendCodeClick$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objZc;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53781b;
        NativeRegisterViewModelImpl nativeRegisterViewModelImpl = this.f53782c;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f53781b = 1;
            objZc = NativeRegisterViewModelImpl.zc(nativeRegisterViewModelImpl, this);
            if (objZc == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objZc = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objZc instanceof Result.Failure)) {
            BuildersKt.c(ViewModelKt.a(nativeRegisterViewModelImpl), null, null, new NativeRegisterViewModelImpl$showSuccessNotification$1(nativeRegisterViewModelImpl, new StringResourceUiModel.ResId(R.string.mylv_authent_native_resend_code_success_banner, null, 2, null), null), 3);
        }
        if (Result.a(objZc) != null) {
            NativeRegisterViewModelImpl.Fc(nativeRegisterViewModelImpl, new StringResourceUiModel.ResId(R.string.mylv_authent_native_resend_code_error_banner, null, 2, null));
        }
        return Unit.f71739a;
    }
}
