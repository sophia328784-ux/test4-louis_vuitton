package com.vuitton.android.presentation.screen.options.notifications.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesDestination;", "", "DEVICE_SETTINGS", "PRIVACY_POLICY", "BACKWARD", "LEGAL_SETTINGS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationsPreferencesDestination {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NotificationsPreferencesDestination[] $VALUES;
    public static final NotificationsPreferencesDestination BACKWARD;
    public static final NotificationsPreferencesDestination DEVICE_SETTINGS;
    public static final NotificationsPreferencesDestination LEGAL_SETTINGS;
    public static final NotificationsPreferencesDestination PRIVACY_POLICY;

    static {
        NotificationsPreferencesDestination notificationsPreferencesDestination = new NotificationsPreferencesDestination("DEVICE_SETTINGS", 0);
        DEVICE_SETTINGS = notificationsPreferencesDestination;
        NotificationsPreferencesDestination notificationsPreferencesDestination2 = new NotificationsPreferencesDestination("PRIVACY_POLICY", 1);
        PRIVACY_POLICY = notificationsPreferencesDestination2;
        NotificationsPreferencesDestination notificationsPreferencesDestination3 = new NotificationsPreferencesDestination("BACKWARD", 2);
        BACKWARD = notificationsPreferencesDestination3;
        NotificationsPreferencesDestination notificationsPreferencesDestination4 = new NotificationsPreferencesDestination("LEGAL_SETTINGS", 3);
        LEGAL_SETTINGS = notificationsPreferencesDestination4;
        NotificationsPreferencesDestination[] notificationsPreferencesDestinationArr = {notificationsPreferencesDestination, notificationsPreferencesDestination2, notificationsPreferencesDestination3, notificationsPreferencesDestination4};
        $VALUES = notificationsPreferencesDestinationArr;
        $ENTRIES = EnumEntriesKt.a(notificationsPreferencesDestinationArr);
    }

    public static NotificationsPreferencesDestination valueOf(String str) {
        return (NotificationsPreferencesDestination) Enum.valueOf(NotificationsPreferencesDestination.class, str);
    }

    public static NotificationsPreferencesDestination[] values() {
        return (NotificationsPreferencesDestination[]) $VALUES.clone();
    }
}
