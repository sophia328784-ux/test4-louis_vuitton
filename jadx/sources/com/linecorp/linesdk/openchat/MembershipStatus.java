package com.linecorp.linesdk.openchat;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class MembershipStatus {
    private static final /* synthetic */ MembershipStatus[] $VALUES;
    public static final MembershipStatus JOINED;
    public static final MembershipStatus NOT_JOINED;

    static {
        MembershipStatus membershipStatus = new MembershipStatus("JOINED", 0);
        JOINED = membershipStatus;
        MembershipStatus membershipStatus2 = new MembershipStatus("NOT_JOINED", 1);
        NOT_JOINED = membershipStatus2;
        $VALUES = new MembershipStatus[]{membershipStatus, membershipStatus2};
    }

    public static MembershipStatus valueOf(String str) {
        return (MembershipStatus) Enum.valueOf(MembershipStatus.class, str);
    }

    public static MembershipStatus[] values() {
        return (MembershipStatus[]) $VALUES.clone();
    }
}
