package com.perfectcorp.perfectlib;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class MakeupItemStatus {
    public static final MakeupItemStatus NOT_FOUND;
    public static final MakeupItemStatus NOT_SUPPORTED;
    public static final MakeupItemStatus OUTDATED;
    public static final MakeupItemStatus UPDATED;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ MakeupItemStatus[] f39715a;

    static {
        MakeupItemStatus makeupItemStatus = new MakeupItemStatus("UPDATED", 0);
        UPDATED = makeupItemStatus;
        MakeupItemStatus makeupItemStatus2 = new MakeupItemStatus("OUTDATED", 1);
        OUTDATED = makeupItemStatus2;
        MakeupItemStatus makeupItemStatus3 = new MakeupItemStatus("NOT_FOUND", 2);
        NOT_FOUND = makeupItemStatus3;
        MakeupItemStatus makeupItemStatus4 = new MakeupItemStatus("NOT_SUPPORTED", 3);
        NOT_SUPPORTED = makeupItemStatus4;
        f39715a = new MakeupItemStatus[]{makeupItemStatus, makeupItemStatus2, makeupItemStatus3, makeupItemStatus4};
    }

    public static MakeupItemStatus valueOf(String str) {
        return (MakeupItemStatus) Enum.valueOf(MakeupItemStatus.class, str);
    }

    public static MakeupItemStatus[] values() {
        return (MakeupItemStatus[]) f39715a.clone();
    }
}
