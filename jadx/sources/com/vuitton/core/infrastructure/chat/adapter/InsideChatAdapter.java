package com.vuitton.core.infrastructure.chat.adapter;

import com.powerfront.insidewebsdkandroid.InsideClient;
import com.powerfront.insidewebsdkandroid.interfaces.InsideChatInterface;
import com.vuitton.core.infrastructure.chat.model.ChatEvent;
import com.vuitton.foundation.contracts.link.UrlVerifier;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0010B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;", "Lcom/powerfront/insidewebsdkandroid/interfaces/InsideChatInterface;", "Lcom/vuitton/foundation/contracts/link/UrlVerifier;", "linkHelper", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "isChatAvailable", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;", "chatEvent", "Lcom/powerfront/insidewebsdkandroid/InsideClient;", "insideClient", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/foundation/contracts/link/UrlVerifier;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/powerfront/insidewebsdkandroid/InsideClient;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InsideChatAdapter implements InsideChatInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UrlVerifier f65894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f65895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableSharedFlow f65896c;
    public final InsideClient d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Logger f65897e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter$Companion;", "", "", "TAG", "Ljava/lang/String;", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public InsideChatAdapter(UrlVerifier urlVerifier, MutableStateFlow<Boolean> mutableStateFlow, MutableSharedFlow<ChatResponseEvent> mutableSharedFlow, InsideClient insideClient, Logger logger) {
        urlVerifier.getClass();
        mutableStateFlow.getClass();
        mutableSharedFlow.getClass();
        insideClient.getClass();
        logger.getClass();
        this.f65894a = urlVerifier;
        this.f65895b = mutableStateFlow;
        this.f65896c = mutableSharedFlow;
        this.d = insideClient;
        this.f65897e = logger;
    }

    public final void a() {
        this.f65897e.getClass();
        this.d.f();
        this.f65896c.a(ChatEvent.Companion.a(ChatEvent.ChatIsClosing.f65901a));
    }

    public final void b() {
        this.f65897e.getClass();
        this.f65896c.a(ChatEvent.Companion.a(ChatEvent.DisConnectedToChat.f65909a));
        this.f65895b.setValue(Boolean.FALSE);
    }

    public final void c(String str, String str2) {
        this.f65897e.getClass();
        this.f65896c.a(ChatEvent.Companion.a(new ChatEvent.ViewProductDetails(str, str2)));
    }

    public final void d(boolean z) {
        this.f65897e.getClass();
        if (z) {
            this.f65896c.a(ChatEvent.Companion.a(ChatEvent.RequirePermissions.f65912a));
        }
    }
}
