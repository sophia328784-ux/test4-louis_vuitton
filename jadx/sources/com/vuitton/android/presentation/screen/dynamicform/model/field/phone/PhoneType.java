package com.vuitton.android.presentation.screen.dynamicform.model.field.phone;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;", "", "FIRST_PHONE", "SECOND_PHONE", "THIRD_PHONE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PhoneType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PhoneType[] $VALUES;
    public static final PhoneType FIRST_PHONE;
    public static final PhoneType SECOND_PHONE;
    public static final PhoneType THIRD_PHONE;

    static {
        PhoneType phoneType = new PhoneType("FIRST_PHONE", 0);
        FIRST_PHONE = phoneType;
        PhoneType phoneType2 = new PhoneType("SECOND_PHONE", 1);
        SECOND_PHONE = phoneType2;
        PhoneType phoneType3 = new PhoneType("THIRD_PHONE", 2);
        THIRD_PHONE = phoneType3;
        PhoneType[] phoneTypeArr = {phoneType, phoneType2, phoneType3};
        $VALUES = phoneTypeArr;
        $ENTRIES = EnumEntriesKt.a(phoneTypeArr);
    }

    public static PhoneType valueOf(String str) {
        return (PhoneType) Enum.valueOf(PhoneType.class, str);
    }

    public static PhoneType[] values() {
        return (PhoneType[]) $VALUES.clone();
    }
}
