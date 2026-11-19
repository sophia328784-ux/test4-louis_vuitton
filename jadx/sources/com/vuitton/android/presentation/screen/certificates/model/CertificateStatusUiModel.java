package com.vuitton.android.presentation.screen.certificates.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;", "Landroid/os/Parcelable;", "", "LOCKED", "UNLOCKED", "PENDING", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateStatusUiModel implements Parcelable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CertificateStatusUiModel[] $VALUES;
    public static final Parcelable.Creator<CertificateStatusUiModel> CREATOR;
    public static final CertificateStatusUiModel LOCKED;
    public static final CertificateStatusUiModel PENDING;
    public static final CertificateStatusUiModel UNLOCKED;

    static {
        CertificateStatusUiModel certificateStatusUiModel = new CertificateStatusUiModel("LOCKED", 0);
        LOCKED = certificateStatusUiModel;
        CertificateStatusUiModel certificateStatusUiModel2 = new CertificateStatusUiModel("UNLOCKED", 1);
        UNLOCKED = certificateStatusUiModel2;
        CertificateStatusUiModel certificateStatusUiModel3 = new CertificateStatusUiModel("PENDING", 2);
        PENDING = certificateStatusUiModel3;
        CertificateStatusUiModel[] certificateStatusUiModelArr = {certificateStatusUiModel, certificateStatusUiModel2, certificateStatusUiModel3};
        $VALUES = certificateStatusUiModelArr;
        $ENTRIES = EnumEntriesKt.a(certificateStatusUiModelArr);
        CREATOR = new Parcelable.Creator<CertificateStatusUiModel>() { // from class: com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel.Creator
            @Override // android.os.Parcelable.Creator
            public final CertificateStatusUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                return CertificateStatusUiModel.valueOf(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final CertificateStatusUiModel[] newArray(int i2) {
                return new CertificateStatusUiModel[i2];
            }
        };
    }

    public static CertificateStatusUiModel valueOf(String str) {
        return (CertificateStatusUiModel) Enum.valueOf(CertificateStatusUiModel.class, str);
    }

    public static CertificateStatusUiModel[] values() {
        return (CertificateStatusUiModel[]) $VALUES.clone();
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
