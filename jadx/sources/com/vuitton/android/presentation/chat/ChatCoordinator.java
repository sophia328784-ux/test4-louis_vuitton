package com.vuitton.android.presentation.chat;

import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.usecase.cart.GetConfirmationDetailsUseCase;
import com.vuitton.android.domain.usecase.chat.ChatTrackerUseCase;
import com.vuitton.android.domain.usecase.chat.HandleChatSystemUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.chat.HasChatConsentUseCase;
import com.vuitton.core.infrastructure.chat.AndroidPlatformContract;
import com.vuitton.foundation.model.domain.model.cart.CheckoutConfirmationDetail;
import com.vuitton.foundation.model.domain.model.config.PowerFrontConfig;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BI\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/chat/ChatCoordinator;", "Lcom/vuitton/android/presentation/chat/ChatAttachable;", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;", "handleChatSystemUseCase", "Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;", "platformContract", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "featureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;", "hasChatConsentUseCase", "Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;", "getConfirmationDetailsUseCase", "Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;", "chatTrackerUseCase", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ChatCoordinator implements ChatAttachable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f50677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandleChatSystemUseCase f50678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AndroidPlatformContract f50679c;
    public final RequireCachedAppConfigUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f50680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HasChatConsentUseCase f50681f;
    public final GetConfirmationDetailsUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ChatTrackerUseCase f50682h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PowerFrontConfig f50683i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ContextScope f50684j;

    @Inject
    public ChatCoordinator(CoroutineDispatchers coroutineDispatchers, HandleChatSystemUseCase handleChatSystemUseCase, AndroidPlatformContract androidPlatformContract, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, HasChatConsentUseCase hasChatConsentUseCase, GetConfirmationDetailsUseCase getConfirmationDetailsUseCase, ChatTrackerUseCase chatTrackerUseCase) {
        coroutineDispatchers.getClass();
        handleChatSystemUseCase.getClass();
        androidPlatformContract.getClass();
        requireCachedAppConfigUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        hasChatConsentUseCase.getClass();
        getConfirmationDetailsUseCase.getClass();
        chatTrackerUseCase.getClass();
        this.f50677a = coroutineDispatchers;
        this.f50678b = handleChatSystemUseCase;
        this.f50679c = androidPlatformContract;
        this.d = requireCachedAppConfigUseCase;
        this.f50680e = isFeatureAvailableUseCase;
        this.f50681f = hasChatConsentUseCase;
        this.g = getConfirmationDetailsUseCase;
        this.f50682h = chatTrackerUseCase;
        this.f50684j = CoroutineScopeKt.a(SupervisorKt.b().plus(coroutineDispatchers.getF43530b()));
    }

    @Override // com.vuitton.android.presentation.chat.ChatAttachable
    public final void a() {
        if (c()) {
            this.f50678b.f49646a.b();
        }
    }

    @Override // com.vuitton.android.presentation.chat.ChatAttachable
    public final void b(int i2, int i3) {
        if (c()) {
            this.f50678b.f49646a.l(i2, i3);
        }
    }

    public final boolean c() {
        return this.f50683i != null;
    }

    public final void d(CheckoutConfirmationDetail checkoutConfirmationDetail) {
        checkoutConfirmationDetail.getClass();
        if (c()) {
            BuildersKt.c(this.f50684j, this.f50677a.getF43529a(), null, new ChatCoordinator$trackConfirmationDetails$1(checkoutConfirmationDetail, this, null), 2);
        }
    }
}
