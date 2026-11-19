package org.teleal.cling.support.model;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class WriteStatus {
    private static final /* synthetic */ WriteStatus[] $VALUES;
    public static final WriteStatus MIXED;
    public static final WriteStatus NOT_WRITABLE;
    public static final WriteStatus UNKNOWN;
    public static final WriteStatus WRITABLE;

    static {
        WriteStatus writeStatus = new WriteStatus("WRITABLE", 0);
        WRITABLE = writeStatus;
        WriteStatus writeStatus2 = new WriteStatus("NOT_WRITABLE", 1);
        NOT_WRITABLE = writeStatus2;
        WriteStatus writeStatus3 = new WriteStatus("UNKNOWN", 2);
        UNKNOWN = writeStatus3;
        WriteStatus writeStatus4 = new WriteStatus("MIXED", 3);
        MIXED = writeStatus4;
        $VALUES = new WriteStatus[]{writeStatus, writeStatus2, writeStatus3, writeStatus4};
    }

    public static WriteStatus valueOf(String str) {
        return (WriteStatus) Enum.valueOf(WriteStatus.class, str);
    }

    public static WriteStatus[] values() {
        return (WriteStatus[]) $VALUES.clone();
    }
}
