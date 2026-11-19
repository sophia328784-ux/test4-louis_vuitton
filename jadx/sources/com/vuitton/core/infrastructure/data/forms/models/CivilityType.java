package com.vuitton.core.infrastructure.data.forms.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;", "", "ADDRESS_ATG", "ADDRESS_TWIST", "GUEST_APPOINTMENT", "PROFILE_ATG", "PROFILE_TWIST", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CivilityType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CivilityType[] $VALUES;
    public static final CivilityType ADDRESS_ATG;
    public static final CivilityType ADDRESS_TWIST;
    public static final CivilityType GUEST_APPOINTMENT;
    public static final CivilityType PROFILE_ATG;
    public static final CivilityType PROFILE_TWIST;

    static {
        CivilityType civilityType = new CivilityType("ADDRESS_ATG", 0);
        ADDRESS_ATG = civilityType;
        CivilityType civilityType2 = new CivilityType("ADDRESS_TWIST", 1);
        ADDRESS_TWIST = civilityType2;
        CivilityType civilityType3 = new CivilityType("GUEST_APPOINTMENT", 2);
        GUEST_APPOINTMENT = civilityType3;
        CivilityType civilityType4 = new CivilityType("PROFILE_ATG", 3);
        PROFILE_ATG = civilityType4;
        CivilityType civilityType5 = new CivilityType("PROFILE_TWIST", 4);
        PROFILE_TWIST = civilityType5;
        CivilityType[] civilityTypeArr = {civilityType, civilityType2, civilityType3, civilityType4, civilityType5};
        $VALUES = civilityTypeArr;
        $ENTRIES = EnumEntriesKt.a(civilityTypeArr);
    }

    public static CivilityType valueOf(String str) {
        return (CivilityType) Enum.valueOf(CivilityType.class, str);
    }

    public static CivilityType[] values() {
        return (CivilityType[]) $VALUES.clone();
    }
}
