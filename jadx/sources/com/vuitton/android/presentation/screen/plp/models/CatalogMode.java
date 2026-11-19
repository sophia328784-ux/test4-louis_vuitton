package com.vuitton.android.presentation.screen.plp.models;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0087\u0081\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;", "Landroid/os/Parcelable;", "", "IN_STORE", "ONLINE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CatalogMode implements Parcelable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CatalogMode[] $VALUES;
    public static final Parcelable.Creator<CatalogMode> CREATOR;
    public static final CatalogMode IN_STORE;
    public static final CatalogMode ONLINE;

    static {
        CatalogMode catalogMode = new CatalogMode("IN_STORE", 0);
        IN_STORE = catalogMode;
        CatalogMode catalogMode2 = new CatalogMode("ONLINE", 1);
        ONLINE = catalogMode2;
        CatalogMode[] catalogModeArr = {catalogMode, catalogMode2};
        $VALUES = catalogModeArr;
        $ENTRIES = EnumEntriesKt.a(catalogModeArr);
        CREATOR = new Parcelable.Creator<CatalogMode>() { // from class: com.vuitton.android.presentation.screen.plp.models.CatalogMode.Creator
            @Override // android.os.Parcelable.Creator
            public final CatalogMode createFromParcel(Parcel parcel) {
                parcel.getClass();
                return CatalogMode.valueOf(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final CatalogMode[] newArray(int i2) {
                return new CatalogMode[i2];
            }
        };
    }

    public static CatalogMode valueOf(String str) {
        return (CatalogMode) Enum.valueOf(CatalogMode.class, str);
    }

    public static CatalogMode[] values() {
        return (CatalogMode[]) $VALUES.clone();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(name());
    }
}
