package com.vuitton.foundation.model.domain.model.aicompanion;

import com.batch.android.s.b;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;", "role", "Lkotlinx/datetime/Instant;", "dateTime", "", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection;", "sections", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ChatMessage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChatRole f66363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Instant f66364c;
    public final List d;

    public ChatMessage(String str, ChatRole chatRole, Instant instant, List<? extends ChatMessageSection> list) {
        str.getClass();
        chatRole.getClass();
        instant.getClass();
        list.getClass();
        this.f66362a = str;
        this.f66363b = chatRole;
        this.f66364c = instant;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatMessage)) {
            return false;
        }
        ChatMessage chatMessage = (ChatMessage) obj;
        return Intrinsics.c(this.f66362a, chatMessage.f66362a) && this.f66363b == chatMessage.f66363b && Intrinsics.c(this.f66364c, chatMessage.f66364c) && Intrinsics.c(this.d, chatMessage.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f66364c.f75239b.hashCode() + ((this.f66363b.hashCode() + (this.f66362a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ChatMessage(id=" + this.f66362a + ", role=" + this.f66363b + ", dateTime=" + this.f66364c + ", sections=" + this.d + ")";
    }
}
