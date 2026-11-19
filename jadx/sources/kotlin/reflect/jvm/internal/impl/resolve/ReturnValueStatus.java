package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class ReturnValueStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReturnValueStatus[] $VALUES;
    public static final Companion Companion;
    public static final ReturnValueStatus ExplicitlyIgnorable;
    public static final ReturnValueStatus MustUse;
    public static final ReturnValueStatus Unspecified;

    /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.reflect.jvm.internal.impl.resolve.ReturnValueStatus$Companion] */
    static {
        ReturnValueStatus returnValueStatus = new ReturnValueStatus("MustUse", 0);
        MustUse = returnValueStatus;
        ReturnValueStatus returnValueStatus2 = new ReturnValueStatus("ExplicitlyIgnorable", 1);
        ExplicitlyIgnorable = returnValueStatus2;
        ReturnValueStatus returnValueStatus3 = new ReturnValueStatus("Unspecified", 2);
        Unspecified = returnValueStatus3;
        ReturnValueStatus[] returnValueStatusArr = {returnValueStatus, returnValueStatus2, returnValueStatus3};
        $VALUES = returnValueStatusArr;
        $ENTRIES = EnumEntriesKt.a(returnValueStatusArr);
        Companion = new Object(null) { // from class: kotlin.reflect.jvm.internal.impl.resolve.ReturnValueStatus.Companion
        };
    }

    public static ReturnValueStatus valueOf(String str) {
        return (ReturnValueStatus) Enum.valueOf(ReturnValueStatus.class, str);
    }

    public static ReturnValueStatus[] values() {
        return (ReturnValueStatus[]) $VALUES.clone();
    }
}
