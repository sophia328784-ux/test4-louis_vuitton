package com.vuitton.android.presentation.screen.distantrepairs.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/AvailabilitiesCallerUiModel;", "", "APPOINTMENT", "DISTANT_REPAIRS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AvailabilitiesCallerUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AvailabilitiesCallerUiModel[] $VALUES;
    public static final AvailabilitiesCallerUiModel APPOINTMENT;
    public static final AvailabilitiesCallerUiModel DISTANT_REPAIRS;

    static {
        AvailabilitiesCallerUiModel availabilitiesCallerUiModel = new AvailabilitiesCallerUiModel("APPOINTMENT", 0);
        APPOINTMENT = availabilitiesCallerUiModel;
        AvailabilitiesCallerUiModel availabilitiesCallerUiModel2 = new AvailabilitiesCallerUiModel("DISTANT_REPAIRS", 1);
        DISTANT_REPAIRS = availabilitiesCallerUiModel2;
        AvailabilitiesCallerUiModel[] availabilitiesCallerUiModelArr = {availabilitiesCallerUiModel, availabilitiesCallerUiModel2};
        $VALUES = availabilitiesCallerUiModelArr;
        $ENTRIES = EnumEntriesKt.a(availabilitiesCallerUiModelArr);
    }

    public static AvailabilitiesCallerUiModel valueOf(String str) {
        return (AvailabilitiesCallerUiModel) Enum.valueOf(AvailabilitiesCallerUiModel.class, str);
    }

    public static AvailabilitiesCallerUiModel[] values() {
        return (AvailabilitiesCallerUiModel[]) $VALUES.clone();
    }
}
