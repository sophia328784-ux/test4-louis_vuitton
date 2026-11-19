package com.vuitton.android.presentation.screen.repairs;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/FollowUp;", "", "PAST", "CURRENT", "FUTURE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FollowUp {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FollowUp[] $VALUES;
    public static final FollowUp CURRENT;
    public static final FollowUp FUTURE;
    public static final FollowUp PAST;

    static {
        FollowUp followUp = new FollowUp("PAST", 0);
        PAST = followUp;
        FollowUp followUp2 = new FollowUp("CURRENT", 1);
        CURRENT = followUp2;
        FollowUp followUp3 = new FollowUp("FUTURE", 2);
        FUTURE = followUp3;
        FollowUp[] followUpArr = {followUp, followUp2, followUp3};
        $VALUES = followUpArr;
        $ENTRIES = EnumEntriesKt.a(followUpArr);
    }

    public static FollowUp valueOf(String str) {
        return (FollowUp) Enum.valueOf(FollowUp.class, str);
    }

    public static FollowUp[] values() {
        return (FollowUp[]) $VALUES.clone();
    }
}
