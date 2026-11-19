package com.vuitton.android.presentation.screen.permissions.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/NotificationType;", "", "SHOP", "UNKNOWN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NotificationType[] $VALUES;
    public static final NotificationType SHOP;
    public static final NotificationType UNKNOWN;

    static {
        NotificationType notificationType = new NotificationType("SHOP", 0);
        SHOP = notificationType;
        NotificationType notificationType2 = new NotificationType("UNKNOWN", 1);
        UNKNOWN = notificationType2;
        NotificationType[] notificationTypeArr = {notificationType, notificationType2};
        $VALUES = notificationTypeArr;
        $ENTRIES = EnumEntriesKt.a(notificationTypeArr);
    }

    public static NotificationType valueOf(String str) {
        return (NotificationType) Enum.valueOf(NotificationType.class, str);
    }

    public static NotificationType[] values() {
        return (NotificationType[]) $VALUES.clone();
    }
}
