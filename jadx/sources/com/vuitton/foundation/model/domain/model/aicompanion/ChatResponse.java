package com.vuitton.foundation.model.domain.model.aicompanion;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatResponse;", "", "", "sessionId", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;", "message", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ChatResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChatMessage f66370b;

    public ChatResponse(String str, ChatMessage chatMessage) {
        str.getClass();
        chatMessage.getClass();
        this.f66369a = str;
        this.f66370b = chatMessage;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatResponse)) {
            return false;
        }
        ChatResponse chatResponse = (ChatResponse) obj;
        return Intrinsics.c(this.f66369a, chatResponse.f66369a) && Intrinsics.c(this.f66370b, chatResponse.f66370b);
    }

    public final int hashCode() {
        return this.f66370b.hashCode() + (this.f66369a.hashCode() * 31);
    }

    public final String toString() {
        return "ChatResponse(sessionId=" + this.f66369a + ", message=" + this.f66370b + ")";
    }
}
