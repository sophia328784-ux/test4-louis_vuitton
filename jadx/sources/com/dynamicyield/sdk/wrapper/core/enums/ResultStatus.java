package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;", "", "SUCCESS", "ERROR", "WARNING", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ResultStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ResultStatus[] $VALUES;
    public static final ResultStatus ERROR;
    public static final ResultStatus SUCCESS;
    public static final ResultStatus WARNING;

    static {
        ResultStatus resultStatus = new ResultStatus("SUCCESS", 0);
        SUCCESS = resultStatus;
        ResultStatus resultStatus2 = new ResultStatus("ERROR", 1);
        ERROR = resultStatus2;
        ResultStatus resultStatus3 = new ResultStatus("WARNING", 2);
        WARNING = resultStatus3;
        ResultStatus[] resultStatusArr = {resultStatus, resultStatus2, resultStatus3};
        $VALUES = resultStatusArr;
        $ENTRIES = EnumEntriesKt.a(resultStatusArr);
    }

    public static ResultStatus valueOf(String str) {
        return (ResultStatus) Enum.valueOf(ResultStatus.class, str);
    }

    public static ResultStatus[] values() {
        return (ResultStatus[]) $VALUES.clone();
    }
}
