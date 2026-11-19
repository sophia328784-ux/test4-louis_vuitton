package com.vuitton.core.infrastructure.chat;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.webkit.ValueCallback;
import com.powerfront.insidewebsdkandroid.InsideClient;
import com.vuitton.core.infrastructure.chat.adapter.InsideChatAdapter;
import com.vuitton.core.infrastructure.chat.model.ChatEvent;
import com.vuitton.foundation.contracts.chat.ChatManager;
import com.vuitton.foundation.contracts.chat.ChatTracker;
import com.vuitton.foundation.contracts.link.UrlVerifier;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.PowerFrontConfig;
import java.lang.ref.WeakReference;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\rB)\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;", "Lcom/vuitton/foundation/contracts/chat/ChatManager;", "Lcom/vuitton/foundation/contracts/chat/ChatTracker;", "Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;", "Lcom/powerfront/insidewebsdkandroid/InsideClient;", "insideClient", "chatTracker", "Lcom/vuitton/foundation/contracts/link/UrlVerifier;", "urlVerifier", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/powerfront/insidewebsdkandroid/InsideClient;Lcom/vuitton/foundation/contracts/chat/ChatTracker;Lcom/vuitton/foundation/contracts/link/UrlVerifier;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ChatManagerImpl implements ChatManager, ChatTracker, AndroidPlatformContract {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InsideClient f65884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChatTracker f65885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f65886c;
    public WeakReference d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f65887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateFlow f65888f;
    public final SharedFlowImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SharedFlow f65889h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ChatManagerImpl(InsideClient insideClient, ChatTracker chatTracker, UrlVerifier urlVerifier, Logger logger) {
        insideClient.getClass();
        chatTracker.getClass();
        urlVerifier.getClass();
        logger.getClass();
        this.f65884a = insideClient;
        this.f65885b = chatTracker;
        this.f65886c = logger;
        this.d = new WeakReference(null);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.f65887e = mutableStateFlowA;
        this.f65888f = FlowKt.b(mutableStateFlowA);
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(1, 0, BufferOverflow.DROP_OLDEST, 2);
        this.g = sharedFlowImplB;
        this.f65889h = FlowKt.a(sharedFlowImplB);
        insideClient.f43297k = new InsideChatAdapter(urlVerifier, mutableStateFlowA, sharedFlowImplB, insideClient, logger);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f65885b.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f65885b.C(screenType);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f65885b.I(chatProductModel, i2);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatManager
    public final void a(PowerFrontConfig powerFrontConfig) {
        Logger logger = this.f65886c;
        logger.getClass();
        if (this.d.get() == null) {
            logger.d("ChatManager", "initialize: currentActivity is null", null);
            return;
        }
        logger.getClass();
        InsideClient insideClient = this.f65884a;
        insideClient.v = false;
        insideClient.j((Activity) this.d.get(), powerFrontConfig.f67275c, powerFrontConfig.f67274b, powerFrontConfig.f67273a, powerFrontConfig.f67276e, powerFrontConfig.d);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatManager
    public final void b() {
        this.f65884a.f();
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void c(String str, String str2, String str3, String str4) {
        str3.getClass();
        str4.getClass();
        this.f65885b.c(str, str2, str3, str4);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatManager
    /* JADX INFO: renamed from: d, reason: from getter */
    public final SharedFlow getF65889h() {
        return this.f65889h;
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatManager
    public final void e() {
        this.f65884a.k();
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatManager
    public final void f() {
        InsideClient insideClient = this.f65884a;
        ValueCallback valueCallback = insideClient.f43295i;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
            insideClient.f43295i = null;
        }
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatManager
    /* JADX INFO: renamed from: g, reason: from getter */
    public final StateFlow getF65888f() {
        return this.f65888f;
    }

    @Override // com.vuitton.core.infrastructure.chat.AndroidPlatformContract
    public final void h(Activity activity) {
        activity.getClass();
        this.f65886c.getClass();
        this.d = new WeakReference(activity);
    }

    @Override // com.vuitton.core.infrastructure.chat.AndroidPlatformContract
    public final void i(Activity activity) {
        if (activity.equals(this.d.get())) {
            this.f65886c.getClass();
            this.f65885b.s();
            this.f65884a.g();
            this.d = new WeakReference(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003b  */
    @Override // com.vuitton.core.infrastructure.chat.AndroidPlatformContract
    public final void j(int i2, int i3, Intent intent) {
        Uri[] uriArr;
        InsideClient insideClient = this.f65884a;
        if (i2 != 2 || insideClient.l == null) {
            ValueCallback valueCallback = insideClient.l;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                insideClient.l = null;
                return;
            }
            return;
        }
        if (i3 != -1) {
            uriArr = null;
        } else if (intent == null) {
            String str = insideClient.t;
            if (str != null) {
                uriArr = new Uri[]{Uri.parse(str)};
            } else {
                uriArr = null;
            }
        } else {
            String dataString = intent.getDataString();
            if (dataString != null) {
                uriArr = new Uri[]{Uri.parse(dataString)};
            } else {
                String str2 = insideClient.t;
                if (str2 != null) {
                    uriArr = new Uri[]{Uri.parse(str2)};
                } else {
                    uriArr = null;
                }
            }
        }
        insideClient.l.onReceiveValue(uriArr);
        insideClient.l = null;
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void k(String str) {
        str.getClass();
        this.f65885b.k(str);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatManager
    public final void l(int i2, int i3) {
        Logger logger = this.f65886c;
        logger.getClass();
        if (this.d.get() == null) {
            logger.d("ChatManager", "attachChatPane: currentActivity is null", null);
            return;
        }
        this.f65884a.c((Activity) this.d.get(), i2, i3);
        this.g.a(ChatEvent.Companion.a(ChatEvent.ChatIsVisible.f65903a));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatManager
    public final void m() {
        this.g.a(ChatEvent.Companion.a(ChatEvent.ClearChatEvent.f65908a));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f65885b.r(chatProductModel);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void s() {
        this.f65885b.s();
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void v(String str, String str2) {
        this.f65885b.v(str, str2);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f65885b.x(chatProductModel, i2);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void z() {
        this.f65885b.z();
    }
}
