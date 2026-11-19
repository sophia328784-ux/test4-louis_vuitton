package com.vuitton.foundation.model.domain.model.aicompanion;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;", "", "AGENT", "USER", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ChatRole {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ChatRole[] $VALUES;
    public static final ChatRole AGENT;
    public static final ChatRole USER;

    static {
        ChatRole chatRole = new ChatRole("AGENT", 0);
        AGENT = chatRole;
        ChatRole chatRole2 = new ChatRole("USER", 1);
        USER = chatRole2;
        ChatRole[] chatRoleArr = {chatRole, chatRole2};
        $VALUES = chatRoleArr;
        $ENTRIES = EnumEntriesKt.a(chatRoleArr);
    }

    public static ChatRole valueOf(String str) {
        return (ChatRole) Enum.valueOf(ChatRole.class, str);
    }

    public static ChatRole[] values() {
        return (ChatRole[]) $VALUES.clone();
    }
}
