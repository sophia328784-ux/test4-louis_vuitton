package com.vuitton.android.presentation.chat.consent;

import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.chat.ChatTrackerUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.chat.HasChatConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.chat.UpdateChatConsentUseCase;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BA\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;", "Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;", "Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;", "hasChatConsentUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;", "updateChatConsentUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;", "chatTrackerUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ChatConsentDelegateImpl implements ChatConsentDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HasChatConsentUseCase f50712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserSessionService f50713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UpdateChatConsentUseCase f50714c;
    public final GetProfileUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ChatTrackerUseCase f50715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f50716f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f50717h;

    @Inject
    public ChatConsentDelegateImpl(HasChatConsentUseCase hasChatConsentUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, UserSessionService userSessionService, UpdateChatConsentUseCase updateChatConsentUseCase, GetProfileUseCase getProfileUseCase, ChatTrackerUseCase chatTrackerUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        hasChatConsentUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        userSessionService.getClass();
        updateChatConsentUseCase.getClass();
        getProfileUseCase.getClass();
        chatTrackerUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f50712a = hasChatConsentUseCase;
        this.f50713b = userSessionService;
        this.f50714c = updateChatConsentUseCase;
        this.d = getProfileUseCase;
        this.f50715e = chatTrackerUseCase;
        this.f50716f = requireUserInAppDispatchUseCase;
        this.g = StateFlowKt.a(Boolean.valueOf(hasChatConsentUseCase.a()));
        this.f50717h = StateFlowKt.a(Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.POWERFRONT})));
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        if (a()) {
            ChatTrackerUseCase chatTrackerUseCase = this.f50715e;
            chatTrackerUseCase.getClass();
            chatTrackerUseCase.f49645a.B(chatProductModel, i2, i3);
        }
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        if (a()) {
            ChatTrackerUseCase chatTrackerUseCase = this.f50715e;
            chatTrackerUseCase.getClass();
            chatTrackerUseCase.f49645a.C(screenType);
        }
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        if (a()) {
            ChatTrackerUseCase chatTrackerUseCase = this.f50715e;
            chatTrackerUseCase.getClass();
            chatTrackerUseCase.f49645a.I(chatProductModel, i2);
        }
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.g.setValue(Boolean.TRUE);
        this.f50714c.f50284a.a(new Consent.ChatConsent(ConsentValue.GIVEN));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
    
        if (r9 == r1) goto L25;
     */
    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object S0(kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.chat.consent.ChatConsentDelegateImpl.S0(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Flow U0() {
        return this.g;
    }

    public final boolean a() {
        return ((Boolean) this.f50717h.getValue()).booleanValue() && this.f50712a.a();
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        if (a()) {
            ChatTrackerUseCase chatTrackerUseCase = this.f50715e;
            chatTrackerUseCase.getClass();
            chatTrackerUseCase.f49645a.r(chatProductModel);
        }
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        if (a()) {
            this.f50715e.f49645a.s();
        }
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        if (a()) {
            this.f50715e.f49645a.v(str, str2);
        }
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        if (a()) {
            ChatTrackerUseCase chatTrackerUseCase = this.f50715e;
            chatTrackerUseCase.getClass();
            chatTrackerUseCase.f49645a.x(chatProductModel, i2);
        }
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        if (a()) {
            this.f50715e.f49645a.z();
        }
    }
}
