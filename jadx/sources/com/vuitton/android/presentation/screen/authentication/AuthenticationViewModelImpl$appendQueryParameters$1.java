package com.vuitton.android.presentation.screen.authentication;

import android.net.Uri;
import com.vuitton.android.presentation.screen.privacy.models.ConsentMapperKt;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import com.vuitton.android.presentation.screen.privacy.models.ConsentValueUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl$appendQueryParameters$1", f = "AuthenticationViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class AuthenticationViewModelImpl$appendQueryParameters$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Uri.Builder f53286c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$appendQueryParameters$1(AuthenticationViewModelImpl authenticationViewModelImpl, Uri.Builder builder, Continuation continuation) {
        super(2, continuation);
        this.f53285b = authenticationViewModelImpl;
        this.f53286c = builder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AuthenticationViewModelImpl$appendQueryParameters$1(this.f53285b, this.f53286c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AuthenticationViewModelImpl$appendQueryParameters$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        Object next;
        Object next2;
        String strValueOf;
        ConsentValueUiModel consentValueUiModel;
        ConsentValueUiModel consentValueUiModel2;
        ConsentValueUiModel consentValueUiModel3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AuthenticationViewModelImpl authenticationViewModelImpl = this.f53285b;
        List listF = authenticationViewModelImpl.n.f50267a.f();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listF, 10));
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            arrayList.add(ConsentMapperKt.c((Consent) it.next()));
        }
        Iterator it2 = arrayList.iterator();
        do {
            obj2 = null;
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!(((ConsentUiModel) next) instanceof ConsentUiModel.AnalyticsConsentUiModel));
        ConsentUiModel consentUiModel = (ConsentUiModel) next;
        boolean zA = false;
        String strValueOf2 = String.valueOf((consentUiModel == null || (consentValueUiModel3 = consentUiModel.f63400a) == null) ? false : consentValueUiModel3.a());
        Uri.Builder builder = this.f53286c;
        builder.appendQueryParameter("consentAnalytics", strValueOf2);
        Iterator it3 = arrayList.iterator();
        do {
            if (!it3.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it3.next();
        } while (!(((ConsentUiModel) next2) instanceof ConsentUiModel.CustomisationConsentUiModel));
        ConsentUiModel consentUiModel2 = (ConsentUiModel) next2;
        builder.appendQueryParameter("consentPersonalization", String.valueOf((consentUiModel2 == null || (consentValueUiModel2 = consentUiModel2.f63400a) == null) ? false : consentValueUiModel2.a()));
        if (InAppDispatchExtKt.c(authenticationViewModelImpl.A)) {
            for (Object obj3 : arrayList) {
                if (((ConsentUiModel) obj3) instanceof ConsentUiModel.SocialConsentUiModel) {
                    obj2 = obj3;
                    break;
                }
            }
            ConsentUiModel consentUiModel3 = (ConsentUiModel) obj2;
            if (consentUiModel3 != null && (consentValueUiModel = consentUiModel3.f63400a) != null) {
                zA = consentValueUiModel.a();
            }
            strValueOf = String.valueOf(zA);
        } else {
            strValueOf = "false";
        }
        builder.appendQueryParameter("consentAdvertising", strValueOf);
        authenticationViewModelImpl.N.b(builder.toString());
        return Unit.f71739a;
    }
}
