package com.linecorp.linesdk.openchat;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class OpenChatRoomStatus {
    private static final /* synthetic */ OpenChatRoomStatus[] $VALUES;
    public static final OpenChatRoomStatus ALIVE;
    public static final OpenChatRoomStatus DELETED;
    public static final OpenChatRoomStatus SUSPENDED;

    static {
        OpenChatRoomStatus openChatRoomStatus = new OpenChatRoomStatus("ALIVE", 0);
        ALIVE = openChatRoomStatus;
        OpenChatRoomStatus openChatRoomStatus2 = new OpenChatRoomStatus("DELETED", 1);
        DELETED = openChatRoomStatus2;
        OpenChatRoomStatus openChatRoomStatus3 = new OpenChatRoomStatus("SUSPENDED", 2);
        SUSPENDED = openChatRoomStatus3;
        $VALUES = new OpenChatRoomStatus[]{openChatRoomStatus, openChatRoomStatus2, openChatRoomStatus3};
    }

    public static OpenChatRoomStatus valueOf(String str) {
        return (OpenChatRoomStatus) Enum.valueOf(OpenChatRoomStatus.class, str);
    }

    public static OpenChatRoomStatus[] values() {
        return (OpenChatRoomStatus[]) $VALUES.clone();
    }
}
