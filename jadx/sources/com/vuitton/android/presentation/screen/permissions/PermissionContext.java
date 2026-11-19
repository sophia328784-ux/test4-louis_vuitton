package com.vuitton.android.presentation.screen.permissions;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;", "", "FEED", "INBOX", "PORTAL", "IMMERSIVE", "BACK_IN_STOCK", "CONTACTABILITY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PermissionContext {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PermissionContext[] $VALUES;
    public static final PermissionContext BACK_IN_STOCK;
    public static final PermissionContext CONTACTABILITY;
    public static final PermissionContext FEED;
    public static final PermissionContext IMMERSIVE;
    public static final PermissionContext INBOX;
    public static final PermissionContext PORTAL;

    static {
        PermissionContext permissionContext = new PermissionContext("FEED", 0);
        FEED = permissionContext;
        PermissionContext permissionContext2 = new PermissionContext("INBOX", 1);
        INBOX = permissionContext2;
        PermissionContext permissionContext3 = new PermissionContext("PORTAL", 2);
        PORTAL = permissionContext3;
        PermissionContext permissionContext4 = new PermissionContext("IMMERSIVE", 3);
        IMMERSIVE = permissionContext4;
        PermissionContext permissionContext5 = new PermissionContext("BACK_IN_STOCK", 4);
        BACK_IN_STOCK = permissionContext5;
        PermissionContext permissionContext6 = new PermissionContext("CONTACTABILITY", 5);
        CONTACTABILITY = permissionContext6;
        PermissionContext[] permissionContextArr = {permissionContext, permissionContext2, permissionContext3, permissionContext4, permissionContext5, permissionContext6};
        $VALUES = permissionContextArr;
        $ENTRIES = EnumEntriesKt.a(permissionContextArr);
    }

    public static PermissionContext valueOf(String str) {
        return (PermissionContext) Enum.valueOf(PermissionContext.class, str);
    }

    public static PermissionContext[] values() {
        return (PermissionContext[]) $VALUES.clone();
    }
}
