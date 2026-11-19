package com.vuitton.android.presentation.notification;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/notification/NotificationDuration;", "", "SHORT", "LONG", "INDEFINITE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationDuration {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NotificationDuration[] $VALUES;
    public static final NotificationDuration INDEFINITE;
    public static final NotificationDuration LONG;
    public static final NotificationDuration SHORT;

    static {
        NotificationDuration notificationDuration = new NotificationDuration("SHORT", 0);
        SHORT = notificationDuration;
        NotificationDuration notificationDuration2 = new NotificationDuration("LONG", 1);
        LONG = notificationDuration2;
        NotificationDuration notificationDuration3 = new NotificationDuration("INDEFINITE", 2);
        INDEFINITE = notificationDuration3;
        NotificationDuration[] notificationDurationArr = {notificationDuration, notificationDuration2, notificationDuration3};
        $VALUES = notificationDurationArr;
        $ENTRIES = EnumEntriesKt.a(notificationDurationArr);
    }

    public static NotificationDuration valueOf(String str) {
        return (NotificationDuration) Enum.valueOf(NotificationDuration.class, str);
    }

    public static NotificationDuration[] values() {
        return (NotificationDuration[]) $VALUES.clone();
    }
}
