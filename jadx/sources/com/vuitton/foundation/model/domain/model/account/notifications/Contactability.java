package com.vuitton.foundation.model.domain.model.account.notifications;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;", "", "PREFERENCE_CENTER", "PREFERENCE_CENTER_WITH_NOTIFICATION", "SYSTEM_NOTIFICATION", "PERSONALIZATION", "NO_ACTION_REQUIRED", "EVERYTHING", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Contactability {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Contactability[] $VALUES;
    public static final Contactability EVERYTHING;
    public static final Contactability NO_ACTION_REQUIRED;
    public static final Contactability PERSONALIZATION;
    public static final Contactability PREFERENCE_CENTER;
    public static final Contactability PREFERENCE_CENTER_WITH_NOTIFICATION;
    public static final Contactability SYSTEM_NOTIFICATION;

    static {
        Contactability contactability = new Contactability("PREFERENCE_CENTER", 0);
        PREFERENCE_CENTER = contactability;
        Contactability contactability2 = new Contactability("PREFERENCE_CENTER_WITH_NOTIFICATION", 1);
        PREFERENCE_CENTER_WITH_NOTIFICATION = contactability2;
        Contactability contactability3 = new Contactability("SYSTEM_NOTIFICATION", 2);
        SYSTEM_NOTIFICATION = contactability3;
        Contactability contactability4 = new Contactability("PERSONALIZATION", 3);
        PERSONALIZATION = contactability4;
        Contactability contactability5 = new Contactability("NO_ACTION_REQUIRED", 4);
        NO_ACTION_REQUIRED = contactability5;
        Contactability contactability6 = new Contactability("EVERYTHING", 5);
        EVERYTHING = contactability6;
        Contactability[] contactabilityArr = {contactability, contactability2, contactability3, contactability4, contactability5, contactability6};
        $VALUES = contactabilityArr;
        $ENTRIES = EnumEntriesKt.a(contactabilityArr);
    }

    public static Contactability valueOf(String str) {
        return (Contactability) Enum.valueOf(Contactability.class, str);
    }

    public static Contactability[] values() {
        return (Contactability[]) $VALUES.clone();
    }
}
