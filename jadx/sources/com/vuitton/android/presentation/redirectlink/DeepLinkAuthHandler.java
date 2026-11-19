package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.screen.authentication.LoginRedirection;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;", "redirectionState", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkAuthHandler {
    public static final String g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f51898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkEffectEmitter f51899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f51900c;
    public final GetProfileUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f51901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkRedirectionState f51902f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = Reflection.f71922a.b(DeepLinkAuthHandler.class).B();
    }

    @Inject
    public DeepLinkAuthHandler(Logger logger, LinkEffectEmitter linkEffectEmitter, UserSessionService userSessionService, GetProfileUseCase getProfileUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, LinkRedirectionState linkRedirectionState) {
        logger.getClass();
        linkEffectEmitter.getClass();
        userSessionService.getClass();
        getProfileUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        linkRedirectionState.getClass();
        this.f51898a = logger;
        this.f51899b = linkEffectEmitter;
        this.f51900c = userSessionService;
        this.d = getProfileUseCase;
        this.f51901e = isFeatureAvailableUseCase;
        this.f51902f = linkRedirectionState;
    }

    public static /* synthetic */ Object b(DeepLinkAuthHandler deepLinkAuthHandler, LoginRedirection loginRedirection, RedirectionArgs.Repair repair, String str, ContinuationImpl continuationImpl, int i2) {
        if ((i2 & 2) != 0) {
            repair = null;
        }
        if ((i2 & 4) != 0) {
            str = null;
        }
        return deepLinkAuthHandler.a(loginRedirection, repair, str, continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:52:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(LoginRedirection loginRedirection, RedirectionArgs redirectionArgs, String str, ContinuationImpl continuationImpl) {
        DeepLinkAuthHandler$handleLoginRedirect$1 deepLinkAuthHandler$handleLoginRedirect$1;
        PendingPostAuthAction loginRedirect;
        Object value;
        Object obj;
        String str2;
        MutableStateFlow mutableStateFlow;
        Object value2;
        Throwable thA;
        if (continuationImpl instanceof DeepLinkAuthHandler$handleLoginRedirect$1) {
            deepLinkAuthHandler$handleLoginRedirect$1 = (DeepLinkAuthHandler$handleLoginRedirect$1) continuationImpl;
            int i2 = deepLinkAuthHandler$handleLoginRedirect$1.f51905e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkAuthHandler$handleLoginRedirect$1.f51905e = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkAuthHandler$handleLoginRedirect$1 = new DeepLinkAuthHandler$handleLoginRedirect$1(this, continuationImpl);
            }
        } else {
            deepLinkAuthHandler$handleLoginRedirect$1 = new DeepLinkAuthHandler$handleLoginRedirect$1(this, continuationImpl);
        }
        Object objA = deepLinkAuthHandler$handleLoginRedirect$1.f51904c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkAuthHandler$handleLoginRedirect$1.f51905e;
        LinkEffectEmitter linkEffectEmitter = this.f51899b;
        LinkRedirectionState linkRedirectionState = this.f51902f;
        if (i3 == 0) {
            ResultKt.b(objA);
            if (loginRedirection != null) {
                linkRedirectionState.getClass();
                loginRedirect = new PendingPostAuthAction.LoginRedirect(loginRedirection, redirectionArgs);
            } else {
                loginRedirect = null;
            }
            if (loginRedirect == null) {
                loginRedirect = linkRedirectionState.f52020b;
                if (loginRedirect instanceof PendingPostAuthAction.LoginRedirect) {
                    loginRedirect = null;
                }
            }
            linkRedirectionState.f52020b = loginRedirect;
            if (!this.f51900c.b()) {
                LinkEffect.Navigation.Direct.FromDeeplink.ToLoginWithRedirection toLoginWithRedirection = new LinkEffect.Navigation.Direct.FromDeeplink.ToLoginWithRedirection(null);
                linkEffectEmitter.getClass();
                linkEffectEmitter.f52016c.b(toLoginWithRedirection);
                return Unit.f71739a;
            }
            MutableStateFlow mutableStateFlow2 = linkEffectEmitter.f52014a;
            do {
                value = mutableStateFlow2.getValue();
                ((DeeplinkUiState) value).getClass();
            } while (!mutableStateFlow2.i(value, new DeeplinkUiState(true)));
            deepLinkAuthHandler$handleLoginRedirect$1.f51903b = str;
            deepLinkAuthHandler$handleLoginRedirect$1.f51905e = 1;
            objA = this.d.a(deepLinkAuthHandler$handleLoginRedirect$1);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            str = deepLinkAuthHandler$handleLoginRedirect$1.f51903b;
            ResultKt.b(objA);
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str3 = deepLinkAuthHandler$handleLoginRedirect$1.f51903b;
            ResultKt.b(objA);
            obj = ((Result) objA).f71708b;
            str2 = str3;
        }
        mutableStateFlow = linkEffectEmitter.f52014a;
        do {
            value2 = mutableStateFlow.getValue();
            ((DeeplinkUiState) value2).getClass();
        } while (!mutableStateFlow.i(value2, new DeeplinkUiState(false)));
        Result.Companion companion = Result.INSTANCE;
        if (!(obj instanceof Result.Failure)) {
            if (Intrinsics.c(((Profile) obj).f68165b, str2)) {
                linkRedirectionState.a(false);
            } else if (str2 != null || StringsKt.w(str2)) {
                linkRedirectionState.a(true);
            } else {
                LinkEffect.Dialog.AlreadySignedIn.ForLogin forLogin = LinkEffect.Dialog.AlreadySignedIn.ForLogin.f51961a;
                forLogin.getClass();
                linkEffectEmitter.f52016c.b(forLogin);
            }
        }
        thA = Result.a(obj);
        if (thA != null) {
            this.f51898a.c(g, "Unable to get account details", thA);
        }
        return Unit.f71739a;
        deepLinkAuthHandler$handleLoginRedirect$1.f51903b = str;
        deepLinkAuthHandler$handleLoginRedirect$1.f51905e = 2;
        Object objB = ((ResultStrategy) objA).b(deepLinkAuthHandler$handleLoginRedirect$1);
        if (objB != coroutineSingletons) {
            obj = objB;
            str2 = str;
            mutableStateFlow = linkEffectEmitter.f52014a;
            do {
                value2 = mutableStateFlow.getValue();
                ((DeeplinkUiState) value2).getClass();
            } while (!mutableStateFlow.i(value2, new DeeplinkUiState(false)));
            Result.Companion companion2 = Result.INSTANCE;
            if (!(obj instanceof Result.Failure)) {
                if (Intrinsics.c(((Profile) obj).f68165b, str2)) {
                    linkRedirectionState.a(false);
                } else if (str2 != null) {
                    linkRedirectionState.a(true);
                } else {
                    linkRedirectionState.a(true);
                }
            }
            thA = Result.a(obj);
            if (thA != null) {
                this.f51898a.c(g, "Unable to get account details", thA);
            }
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(LoginRedirection loginRedirection, List list, ContinuationImpl continuationImpl) {
        DeepLinkAuthHandler$handleRegisterDeepLink$2 deepLinkAuthHandler$handleRegisterDeepLink$2;
        PendingPostAuthAction loginRedirect;
        if (continuationImpl instanceof DeepLinkAuthHandler$handleRegisterDeepLink$2) {
            deepLinkAuthHandler$handleRegisterDeepLink$2 = (DeepLinkAuthHandler$handleRegisterDeepLink$2) continuationImpl;
            int i2 = deepLinkAuthHandler$handleRegisterDeepLink$2.f51908e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkAuthHandler$handleRegisterDeepLink$2.f51908e = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkAuthHandler$handleRegisterDeepLink$2 = new DeepLinkAuthHandler$handleRegisterDeepLink$2(this, continuationImpl);
            }
        } else {
            deepLinkAuthHandler$handleRegisterDeepLink$2 = new DeepLinkAuthHandler$handleRegisterDeepLink$2(this, continuationImpl);
        }
        Object objC = deepLinkAuthHandler$handleRegisterDeepLink$2.f51907c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkAuthHandler$handleRegisterDeepLink$2.f51908e;
        if (i3 == 0) {
            ResultKt.b(objC);
            LinkRedirectionState linkRedirectionState = this.f51902f;
            if (loginRedirection != null) {
                linkRedirectionState.getClass();
                loginRedirect = new PendingPostAuthAction.LoginRedirect(loginRedirection, null);
            } else {
                loginRedirect = null;
            }
            if (loginRedirect == null) {
                loginRedirect = linkRedirectionState.f52020b;
                if (loginRedirect instanceof PendingPostAuthAction.LoginRedirect) {
                    loginRedirect = null;
                }
            }
            linkRedirectionState.f52020b = loginRedirect;
            Feature[] featureArr = {Feature.NATIVE_ACCOUNT_ACTIVATION};
            deepLinkAuthHandler$handleRegisterDeepLink$2.f51906b = list;
            deepLinkAuthHandler$handleRegisterDeepLink$2.f51908e = 1;
            objC = this.f51901e.c(featureArr, false, deepLinkAuthHandler$handleRegisterDeepLink$2);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            list = deepLinkAuthHandler$handleRegisterDeepLink$2.f51906b;
            ResultKt.b(objC);
        }
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        boolean zB = this.f51900c.b();
        LinkEffectEmitter linkEffectEmitter = this.f51899b;
        if (zB) {
            LinkEffect.Dialog.AlreadySignedIn.ForAccountActivation forAccountActivation = new LinkEffect.Dialog.AlreadySignedIn.ForAccountActivation(list != null ? (String) CollectionsKt.firstOrNull(list) : null, zBooleanValue);
            linkEffectEmitter.getClass();
            linkEffectEmitter.f52016c.b(forAccountActivation);
        } else {
            LinkEffect.Navigation.Direct.FromDeeplink.ToRegisterWithRedirection toRegisterWithRedirection = new LinkEffect.Navigation.Direct.FromDeeplink.ToRegisterWithRedirection(list, zBooleanValue);
            linkEffectEmitter.getClass();
            linkEffectEmitter.f52016c.b(toRegisterWithRedirection);
        }
        return Unit.f71739a;
    }
}
