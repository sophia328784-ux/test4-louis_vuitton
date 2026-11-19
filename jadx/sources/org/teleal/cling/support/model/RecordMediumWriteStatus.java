package org.teleal.cling.support.model;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class RecordMediumWriteStatus {
    private static final /* synthetic */ RecordMediumWriteStatus[] $VALUES;
    public static final RecordMediumWriteStatus NOT_IMPLEMENTED;
    public static final RecordMediumWriteStatus NOT_WRITABLE;
    public static final RecordMediumWriteStatus PROTECTED;
    public static final RecordMediumWriteStatus UNKNOWN;
    public static final RecordMediumWriteStatus WRITABLE;

    static {
        RecordMediumWriteStatus recordMediumWriteStatus = new RecordMediumWriteStatus("WRITABLE", 0);
        WRITABLE = recordMediumWriteStatus;
        RecordMediumWriteStatus recordMediumWriteStatus2 = new RecordMediumWriteStatus("PROTECTED", 1);
        PROTECTED = recordMediumWriteStatus2;
        RecordMediumWriteStatus recordMediumWriteStatus3 = new RecordMediumWriteStatus("NOT_WRITABLE", 2);
        NOT_WRITABLE = recordMediumWriteStatus3;
        RecordMediumWriteStatus recordMediumWriteStatus4 = new RecordMediumWriteStatus("UNKNOWN", 3);
        UNKNOWN = recordMediumWriteStatus4;
        RecordMediumWriteStatus recordMediumWriteStatus5 = new RecordMediumWriteStatus("NOT_IMPLEMENTED", 4);
        NOT_IMPLEMENTED = recordMediumWriteStatus5;
        $VALUES = new RecordMediumWriteStatus[]{recordMediumWriteStatus, recordMediumWriteStatus2, recordMediumWriteStatus3, recordMediumWriteStatus4, recordMediumWriteStatus5};
    }

    public static RecordMediumWriteStatus valueOf(String str) {
        return (RecordMediumWriteStatus) Enum.valueOf(RecordMediumWriteStatus.class, str);
    }

    public static RecordMediumWriteStatus[] values() {
        return (RecordMediumWriteStatus[]) $VALUES.clone();
    }
}
