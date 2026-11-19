package com.vuitton.android.presentation.chat;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.result.contract.ActivityResultContracts$RequestPermission;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.datasource.inappbanner.InAppBannerMemCacheDataSource;
import com.vuitton.android.domain.usecase.chat.HandleChatSystemUseCase;
import com.vuitton.android.domain.usecase.chat.StreamChatEventUseCase;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.model.domain.model.config.PowerFrontConfig;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.s3;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BA\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Lcom/vuitton/android/presentation/chat/ActivityResultHandler;", "Lcom/vuitton/android/presentation/chat/ChatCoordinator;", "chatCoordinator", "Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;", "streamChatEventUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/link/LinkHandler;", "linkHandler", "Lcom/vuitton/android/presentation/chat/ChatAttachable;", "chatAttachable", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;", "inAppBannerMemCacheDataSource", "<init>", "(Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/android/presentation/chat/ChatAttachable;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ChatLifecycleObserver implements DefaultLifecycleObserver, ActivityResultHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChatCoordinator f50689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StreamChatEventUseCase f50690c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkHandler f50691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ChatAttachable f50692f;
    public final LVEventSender g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppBannerMemCacheDataSource f50693h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ChatLifecycleObserver$onBackPressedCallback$1 f50694i;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.vuitton.android.presentation.chat.ChatLifecycleObserver$onBackPressedCallback$1] */
    @Inject
    public ChatLifecycleObserver(ChatCoordinator chatCoordinator, StreamChatEventUseCase streamChatEventUseCase, AnalyticsTracker analyticsTracker, LinkHandler linkHandler, ChatAttachable chatAttachable, LVEventSender lVEventSender, InAppBannerMemCacheDataSource inAppBannerMemCacheDataSource) {
        chatCoordinator.getClass();
        streamChatEventUseCase.getClass();
        analyticsTracker.getClass();
        linkHandler.getClass();
        chatAttachable.getClass();
        lVEventSender.getClass();
        inAppBannerMemCacheDataSource.getClass();
        this.f50689b = chatCoordinator;
        this.f50690c = streamChatEventUseCase;
        this.d = analyticsTracker;
        this.f50691e = linkHandler;
        this.f50692f = chatAttachable;
        this.g = lVEventSender;
        this.f50693h = inAppBannerMemCacheDataSource;
        this.f50694i = new OnBackPressedCallback() { // from class: com.vuitton.android.presentation.chat.ChatLifecycleObserver$onBackPressedCallback$1
            {
                super(false);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public final void b() {
                this.d.f50692f.a();
                f(false);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(LifecycleOwner lifecycleOwner) {
        if (!(lifecycleOwner instanceof ChatHostActivity) || !(lifecycleOwner instanceof Activity)) {
            md.n("ChatLifecycleObserver requires the LifecycleOwner to be an Activity and implement ChatHostActivity");
            return;
        }
        Activity activity = (Activity) lifecycleOwner;
        ChatCoordinator chatCoordinator = this.f50689b;
        chatCoordinator.getClass();
        if (chatCoordinator.c()) {
            chatCoordinator.f50679c.i(activity);
        }
    }

    public final void b(String str) {
        ChatCoordinator chatCoordinator = this.f50689b;
        chatCoordinator.getClass();
        if (chatCoordinator.c()) {
            BuildersKt.c(chatCoordinator.f50684j, null, null, new ChatCoordinator$getConfirmationDetails$1(chatCoordinator, str, null), 3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        if (!(lifecycleOwner instanceof ChatHostActivity) || !(lifecycleOwner instanceof Activity)) {
            md.n("ChatLifecycleObserver requires the LifecycleOwner to be an Activity and implement ChatHostActivity");
            return;
        }
        Activity activity = (Activity) lifecycleOwner;
        ChatCoordinator chatCoordinator = this.f50689b;
        chatCoordinator.getClass();
        if (chatCoordinator.f50680e.b(new Feature[]{Feature.POWERFRONT})) {
            boolean zA = chatCoordinator.f50681f.a();
            PowerFrontConfig powerFrontConfig = chatCoordinator.d.a().b0;
            if (powerFrontConfig == null || !zA) {
                return;
            }
            chatCoordinator.f50679c.h(activity);
            HandleChatSystemUseCase handleChatSystemUseCase = chatCoordinator.f50678b;
            handleChatSystemUseCase.getClass();
            handleChatSystemUseCase.f49646a.a(powerFrontConfig);
            chatCoordinator.f50683i = powerFrontConfig;
        }
    }

    public final void d(int i2, int i3, Intent intent) {
        ChatCoordinator chatCoordinator = this.f50689b;
        if (chatCoordinator.c()) {
            chatCoordinator.f50679c.j(i2, i3, intent);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        if (!(lifecycleOwner instanceof ChatHostActivity) || !(lifecycleOwner instanceof Activity)) {
            md.n("ChatLifecycleObserver requires the LifecycleOwner to be an Activity and implement ChatHostActivity");
            return;
        }
        AppCompatActivity appCompatActivityB = ContextExtKt.b((Context) lifecycleOwner);
        BuildersKt.c(LifecycleOwnerKt.a(lifecycleOwner), null, null, new ChatLifecycleObserver$listenToChatEvents$2(appCompatActivityB != null ? appCompatActivityB.registerForActivityResult(new ActivityResultContracts$RequestPermission(), new s3(this, 17)) : null, lifecycleOwner, this, null), 3);
        BuildersKt.c(LifecycleOwnerKt.a(lifecycleOwner), null, null, new ChatLifecycleObserver$listenToChatConsentEvents$1(lifecycleOwner, this, null), 3);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        a(lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        c(lifecycleOwner);
    }
}
