package com.linecorp.linesdk;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class LineApiResponseCode {
    private static final /* synthetic */ LineApiResponseCode[] $VALUES;
    public static final LineApiResponseCode AUTHENTICATION_AGENT_ERROR;
    public static final LineApiResponseCode CANCEL;
    public static final LineApiResponseCode INTERNAL_ERROR;
    public static final LineApiResponseCode NETWORK_ERROR;
    public static final LineApiResponseCode SERVER_ERROR;
    public static final LineApiResponseCode SUCCESS;

    static {
        LineApiResponseCode lineApiResponseCode = new LineApiResponseCode("SUCCESS", 0);
        SUCCESS = lineApiResponseCode;
        LineApiResponseCode lineApiResponseCode2 = new LineApiResponseCode("CANCEL", 1);
        CANCEL = lineApiResponseCode2;
        LineApiResponseCode lineApiResponseCode3 = new LineApiResponseCode("NETWORK_ERROR", 2);
        NETWORK_ERROR = lineApiResponseCode3;
        LineApiResponseCode lineApiResponseCode4 = new LineApiResponseCode("SERVER_ERROR", 3);
        SERVER_ERROR = lineApiResponseCode4;
        LineApiResponseCode lineApiResponseCode5 = new LineApiResponseCode("AUTHENTICATION_AGENT_ERROR", 4);
        AUTHENTICATION_AGENT_ERROR = lineApiResponseCode5;
        LineApiResponseCode lineApiResponseCode6 = new LineApiResponseCode("INTERNAL_ERROR", 5);
        INTERNAL_ERROR = lineApiResponseCode6;
        $VALUES = new LineApiResponseCode[]{lineApiResponseCode, lineApiResponseCode2, lineApiResponseCode3, lineApiResponseCode4, lineApiResponseCode5, lineApiResponseCode6};
    }

    public static LineApiResponseCode valueOf(String str) {
        return (LineApiResponseCode) Enum.valueOf(LineApiResponseCode.class, str);
    }

    public static LineApiResponseCode[] values() {
        return (LineApiResponseCode[]) $VALUES.clone();
    }
}
