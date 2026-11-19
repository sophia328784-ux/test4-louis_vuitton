package com.vuitton.android.presentation.screen.dynamicform.model.field.phone;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;", "", "NONE", "ONE_EXTRA", "TWO_EXTRA", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ExtraPhoneField {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ExtraPhoneField[] $VALUES;
    public static final ExtraPhoneField NONE;
    public static final ExtraPhoneField ONE_EXTRA;
    public static final ExtraPhoneField TWO_EXTRA;

    static {
        ExtraPhoneField extraPhoneField = new ExtraPhoneField("NONE", 0);
        NONE = extraPhoneField;
        ExtraPhoneField extraPhoneField2 = new ExtraPhoneField("ONE_EXTRA", 1);
        ONE_EXTRA = extraPhoneField2;
        ExtraPhoneField extraPhoneField3 = new ExtraPhoneField("TWO_EXTRA", 2);
        TWO_EXTRA = extraPhoneField3;
        ExtraPhoneField[] extraPhoneFieldArr = {extraPhoneField, extraPhoneField2, extraPhoneField3};
        $VALUES = extraPhoneFieldArr;
        $ENTRIES = EnumEntriesKt.a(extraPhoneFieldArr);
    }

    public static ExtraPhoneField valueOf(String str) {
        return (ExtraPhoneField) Enum.valueOf(ExtraPhoneField.class, str);
    }

    public static ExtraPhoneField[] values() {
        return (ExtraPhoneField[]) $VALUES.clone();
    }
}
