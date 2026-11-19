package org.teleal.cling.model.gena;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class CancelReason {
    private static final /* synthetic */ CancelReason[] $VALUES;
    public static final CancelReason DEVICE_WAS_REMOVED;
    public static final CancelReason EXPIRED;
    public static final CancelReason RENEWAL_FAILED;
    public static final CancelReason UNSUBSCRIBE_FAILED;

    static {
        CancelReason cancelReason = new CancelReason("RENEWAL_FAILED", 0);
        RENEWAL_FAILED = cancelReason;
        CancelReason cancelReason2 = new CancelReason("DEVICE_WAS_REMOVED", 1);
        DEVICE_WAS_REMOVED = cancelReason2;
        CancelReason cancelReason3 = new CancelReason("UNSUBSCRIBE_FAILED", 2);
        UNSUBSCRIBE_FAILED = cancelReason3;
        CancelReason cancelReason4 = new CancelReason("EXPIRED", 3);
        EXPIRED = cancelReason4;
        $VALUES = new CancelReason[]{cancelReason, cancelReason2, cancelReason3, cancelReason4};
    }

    public static CancelReason valueOf(String str) {
        return (CancelReason) Enum.valueOf(CancelReason.class, str);
    }

    public static CancelReason[] values() {
        return (CancelReason[]) $VALUES.clone();
    }
}
