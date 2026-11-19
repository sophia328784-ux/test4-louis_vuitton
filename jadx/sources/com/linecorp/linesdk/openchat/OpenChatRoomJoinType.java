package com.linecorp.linesdk.openchat;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class OpenChatRoomJoinType {
    private static final /* synthetic */ OpenChatRoomJoinType[] $VALUES;
    public static final OpenChatRoomJoinType APPROVAL;
    public static final OpenChatRoomJoinType CODE;
    public static final OpenChatRoomJoinType NONE;
    public static final OpenChatRoomJoinType UNDEFINED;

    static {
        OpenChatRoomJoinType openChatRoomJoinType = new OpenChatRoomJoinType("NONE", 0);
        NONE = openChatRoomJoinType;
        OpenChatRoomJoinType openChatRoomJoinType2 = new OpenChatRoomJoinType("APPROVAL", 1);
        APPROVAL = openChatRoomJoinType2;
        OpenChatRoomJoinType openChatRoomJoinType3 = new OpenChatRoomJoinType("CODE", 2);
        CODE = openChatRoomJoinType3;
        OpenChatRoomJoinType openChatRoomJoinType4 = new OpenChatRoomJoinType("UNDEFINED", 3);
        UNDEFINED = openChatRoomJoinType4;
        $VALUES = new OpenChatRoomJoinType[]{openChatRoomJoinType, openChatRoomJoinType2, openChatRoomJoinType3, openChatRoomJoinType4};
    }

    public static OpenChatRoomJoinType valueOf(String str) {
        return (OpenChatRoomJoinType) Enum.valueOf(OpenChatRoomJoinType.class, str);
    }

    public static OpenChatRoomJoinType[] values() {
        return (OpenChatRoomJoinType[]) $VALUES.clone();
    }
}
