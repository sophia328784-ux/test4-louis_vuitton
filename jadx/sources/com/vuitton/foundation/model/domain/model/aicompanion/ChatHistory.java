package com.vuitton.foundation.model.domain.model.aicompanion;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBA\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;", "", "", "sessionId", "firstMessage", "", "timestamp", "ownerId", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ChatHistory {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f66360c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ChatHistory> serializer() {
            return ChatHistory$$serializer.f66361a;
        }
    }

    public /* synthetic */ ChatHistory(int i2, String str, String str2, long j2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ChatHistory$$serializer.f66361a.a());
            throw null;
        }
        this.f66358a = str;
        this.f66359b = str2;
        if ((i2 & 4) == 0) {
            this.f66360c = System.currentTimeMillis();
        } else {
            this.f66360c = j2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
    }

    public static ChatHistory a(ChatHistory chatHistory, String str, String str2, int i2) {
        if ((i2 & 1) != 0) {
            str = chatHistory.f66358a;
        }
        String str3 = str;
        String str4 = chatHistory.f66359b;
        long j2 = chatHistory.f66360c;
        if ((i2 & 8) != 0) {
            str2 = chatHistory.d;
        }
        chatHistory.getClass();
        str3.getClass();
        str4.getClass();
        return new ChatHistory(str3, str4, j2, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatHistory)) {
            return false;
        }
        ChatHistory chatHistory = (ChatHistory) obj;
        return Intrinsics.c(this.f66358a, chatHistory.f66358a) && Intrinsics.c(this.f66359b, chatHistory.f66359b) && this.f66360c == chatHistory.f66360c && Intrinsics.c(this.d, chatHistory.d);
    }

    public final int hashCode() {
        int iA = fc.a(fc.b(this.f66358a.hashCode() * 31, 31, this.f66359b), 31, this.f66360c);
        String str = this.d;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ChatHistory(sessionId=", this.f66358a, ", firstMessage=", this.f66359b, ", timestamp=");
        sbS.append(this.f66360c);
        sbS.append(", ownerId=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public ChatHistory(String str, String str2, long j2, String str3) {
        str.getClass();
        str2.getClass();
        this.f66358a = str;
        this.f66359b = str2;
        this.f66360c = j2;
        this.d = str3;
    }

    public /* synthetic */ ChatHistory(String str, String str2, long j2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? System.currentTimeMillis() : j2, (i2 & 8) != 0 ? null : str3);
    }
}
