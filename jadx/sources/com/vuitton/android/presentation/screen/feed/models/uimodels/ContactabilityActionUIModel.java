package com.vuitton.android.presentation.screen.feed.models.uimodels;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;", "", "PREFERENCE_CENTER", "PREFERENCE_CENTER_WITH_NOTIFICATION", "SYSTEM_NOTIFICATION", "PERSONALIZATION", "EVERYTHING", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ContactabilityActionUIModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ContactabilityActionUIModel[] $VALUES;
    public static final ContactabilityActionUIModel EVERYTHING;
    public static final ContactabilityActionUIModel PERSONALIZATION;
    public static final ContactabilityActionUIModel PREFERENCE_CENTER;
    public static final ContactabilityActionUIModel PREFERENCE_CENTER_WITH_NOTIFICATION;
    public static final ContactabilityActionUIModel SYSTEM_NOTIFICATION;

    static {
        ContactabilityActionUIModel contactabilityActionUIModel = new ContactabilityActionUIModel("PREFERENCE_CENTER", 0);
        PREFERENCE_CENTER = contactabilityActionUIModel;
        ContactabilityActionUIModel contactabilityActionUIModel2 = new ContactabilityActionUIModel("PREFERENCE_CENTER_WITH_NOTIFICATION", 1);
        PREFERENCE_CENTER_WITH_NOTIFICATION = contactabilityActionUIModel2;
        ContactabilityActionUIModel contactabilityActionUIModel3 = new ContactabilityActionUIModel("SYSTEM_NOTIFICATION", 2);
        SYSTEM_NOTIFICATION = contactabilityActionUIModel3;
        ContactabilityActionUIModel contactabilityActionUIModel4 = new ContactabilityActionUIModel("PERSONALIZATION", 3);
        PERSONALIZATION = contactabilityActionUIModel4;
        ContactabilityActionUIModel contactabilityActionUIModel5 = new ContactabilityActionUIModel("EVERYTHING", 4);
        EVERYTHING = contactabilityActionUIModel5;
        ContactabilityActionUIModel[] contactabilityActionUIModelArr = {contactabilityActionUIModel, contactabilityActionUIModel2, contactabilityActionUIModel3, contactabilityActionUIModel4, contactabilityActionUIModel5};
        $VALUES = contactabilityActionUIModelArr;
        $ENTRIES = EnumEntriesKt.a(contactabilityActionUIModelArr);
    }

    public static ContactabilityActionUIModel valueOf(String str) {
        return (ContactabilityActionUIModel) Enum.valueOf(ContactabilityActionUIModel.class, str);
    }

    public static ContactabilityActionUIModel[] values() {
        return (ContactabilityActionUIModel[]) $VALUES.clone();
    }
}
