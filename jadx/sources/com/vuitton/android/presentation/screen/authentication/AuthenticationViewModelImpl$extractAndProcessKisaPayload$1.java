package com.vuitton.android.presentation.screen.authentication;

import com.vuitton.android.domain.provider.consent.KisaConsentsParser;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl$extractAndProcessKisaPayload$1", f = "AuthenticationViewModelImpl.kt", l = {497, 499}, m = "invokeSuspend", v = 2)
final class AuthenticationViewModelImpl$extractAndProcessKisaPayload$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f53299c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f53300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53301f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$extractAndProcessKisaPayload$1(AuthenticationViewModelImpl authenticationViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f53300e = str;
        this.f53301f = authenticationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AuthenticationViewModelImpl$extractAndProcessKisaPayload$1(this.f53301f, this.f53300e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AuthenticationViewModelImpl$extractAndProcessKisaPayload$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int iV;
        Object objA;
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        AuthenticationViewModelImpl authenticationViewModelImpl = this.f53301f;
        if (i2 == 0) {
            ResultKt.b(obj);
            String str = this.f53300e;
            iV = StringsKt.v(str, "{", 0, false, 6);
            if (iV != -1) {
                String strSubstring = str.substring(iV);
                KisaConsentsParser kisaConsentsParser = authenticationViewModelImpl.g;
                this.f53298b = iV;
                this.d = 1;
                objA = kisaConsentsParser.a(strSubstring, this);
                if (objA != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            return Unit.f71739a;
        }
        if (i2 == 1) {
            iV = this.f53298b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.f53299c;
            ResultKt.b(obj);
        }
        objA = obj2;
        if (Result.a(objA) != null) {
            authenticationViewModelImpl.f53276a.d("AuthenticationViewModelImpl", "Not able to retrieve KISA consents", null);
        }
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            BufferedChannel bufferedChannel = authenticationViewModelImpl.T;
            this.f53299c = objA;
            this.f53298b = iV;
            this.d = 2;
            if (bufferedChannel.u((KisaConsents) objA, this) != coroutineSingletons) {
                obj2 = objA;
                objA = obj2;
                if (Result.a(objA) != null) {
                    authenticationViewModelImpl.f53276a.d("AuthenticationViewModelImpl", "Not able to retrieve KISA consents", null);
                }
            }
            return coroutineSingletons;
        }
        if (Result.a(objA) != null) {
            authenticationViewModelImpl.f53276a.d("AuthenticationViewModelImpl", "Not able to retrieve KISA consents", null);
        }
        return Unit.f71739a;
    }
}
