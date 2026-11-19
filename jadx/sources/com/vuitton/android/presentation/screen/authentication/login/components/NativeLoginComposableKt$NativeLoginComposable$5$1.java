package com.vuitton.android.presentation.screen.authentication.login.components;

import android.content.Context;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountCredentials;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManager;
import com.vuitton.android.presentation.screen.authentication.accountmanager.CredentialManagerResult;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt$NativeLoginComposable$5$1", f = "NativeLoginComposable.kt", l = {72}, m = "invokeSuspend", v = 2)
final class NativeLoginComposableKt$NativeLoginComposable$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountManager f53648c;
    public final /* synthetic */ Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NativeLoginViewModel f53649e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeLoginComposableKt$NativeLoginComposable$5$1(AccountManager accountManager, Context context, NativeLoginViewModel nativeLoginViewModel, Continuation continuation) {
        super(2, continuation);
        this.f53648c = accountManager;
        this.d = context;
        this.f53649e = nativeLoginViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeLoginComposableKt$NativeLoginComposable$5$1(this.f53648c, this.d, this.f53649e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeLoginComposableKt$NativeLoginComposable$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53647b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Context applicationContext = this.d.getApplicationContext();
            applicationContext.getClass();
            this.f53647b = 1;
            obj = this.f53648c.b(applicationContext, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        CredentialManagerResult credentialManagerResult = (CredentialManagerResult) obj;
        if (credentialManagerResult instanceof CredentialManagerResult.Success) {
            AccountCredentials accountCredentials = ((CredentialManagerResult.Success) credentialManagerResult).f53406a;
            accountCredentials.getClass();
            String str = accountCredentials.f53398a;
            PasswordUiModel passwordUiModel = new PasswordUiModel();
            passwordUiModel.d(accountCredentials.f53399b);
            this.f53649e.c7(new NativeLoginUiModel(str, passwordUiModel, false, 4, null));
        }
        return Unit.f71739a;
    }
}
