package com.vuitton.android.core.coroutine.operator;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;", "", "FIXED_DELAY", "LINEAR_BACKOFF", "EXPONENTIAL_BACKOFF", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RetryMechanism {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RetryMechanism[] $VALUES;
    public static final RetryMechanism EXPONENTIAL_BACKOFF;
    public static final RetryMechanism FIXED_DELAY;
    public static final RetryMechanism LINEAR_BACKOFF;

    static {
        RetryMechanism retryMechanism = new RetryMechanism("FIXED_DELAY", 0);
        FIXED_DELAY = retryMechanism;
        RetryMechanism retryMechanism2 = new RetryMechanism("LINEAR_BACKOFF", 1);
        LINEAR_BACKOFF = retryMechanism2;
        RetryMechanism retryMechanism3 = new RetryMechanism("EXPONENTIAL_BACKOFF", 2);
        EXPONENTIAL_BACKOFF = retryMechanism3;
        RetryMechanism[] retryMechanismArr = {retryMechanism, retryMechanism2, retryMechanism3};
        $VALUES = retryMechanismArr;
        $ENTRIES = EnumEntriesKt.a(retryMechanismArr);
    }

    public static RetryMechanism valueOf(String str) {
        return (RetryMechanism) Enum.valueOf(RetryMechanism.class, str);
    }

    public static RetryMechanism[] values() {
        return (RetryMechanism[]) $VALUES.clone();
    }
}
