package com.vuitton.foundation.model.domain.model.aicompanion;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;", "", "", "sessionId", "userPrompt", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ChatRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66368b;

    public ChatRequest(String str, String str2) {
        str2.getClass();
        this.f66367a = str;
        this.f66368b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatRequest)) {
            return false;
        }
        ChatRequest chatRequest = (ChatRequest) obj;
        return Intrinsics.c(this.f66367a, chatRequest.f66367a) && Intrinsics.c(this.f66368b, chatRequest.f66368b);
    }

    public final int hashCode() {
        String str = this.f66367a;
        return this.f66368b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return d21.l("ChatRequest(sessionId=", this.f66367a, ", userPrompt=", this.f66368b, ")");
    }
}
