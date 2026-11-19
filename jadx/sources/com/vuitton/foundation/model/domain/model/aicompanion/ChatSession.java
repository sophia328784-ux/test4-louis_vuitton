package com.vuitton.foundation.model.domain.model.aicompanion;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatSession;", "", "", "sessionId", "", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;", "messages", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ChatSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f66372b;

    public ChatSession(String str, List<ChatMessage> list) {
        str.getClass();
        list.getClass();
        this.f66371a = str;
        this.f66372b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatSession)) {
            return false;
        }
        ChatSession chatSession = (ChatSession) obj;
        return Intrinsics.c(this.f66371a, chatSession.f66371a) && Intrinsics.c(this.f66372b, chatSession.f66372b);
    }

    public final int hashCode() {
        return this.f66372b.hashCode() + (this.f66371a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("ChatSession(sessionId=", this.f66371a, ", messages=", this.f66372b, ")");
    }
}
