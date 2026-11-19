package com.vuitton.android.presentation.screen.certificates.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;", "Landroid/os/Parcelable;", "", "identifier", "detailIdentifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateDiamondStoneUiModel implements Parcelable {
    public static final Parcelable.Creator<CertificateDiamondStoneUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55826c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CertificateDiamondStoneUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CertificateDiamondStoneUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CertificateDiamondStoneUiModel(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final CertificateDiamondStoneUiModel[] newArray(int i2) {
            return new CertificateDiamondStoneUiModel[i2];
        }
    }

    public CertificateDiamondStoneUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f55825b = str;
        this.f55826c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateDiamondStoneUiModel)) {
            return false;
        }
        CertificateDiamondStoneUiModel certificateDiamondStoneUiModel = (CertificateDiamondStoneUiModel) obj;
        return Intrinsics.c(this.f55825b, certificateDiamondStoneUiModel.f55825b) && Intrinsics.c(this.f55826c, certificateDiamondStoneUiModel.f55826c);
    }

    public final int hashCode() {
        return this.f55826c.hashCode() + (this.f55825b.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("CertificateDiamondStoneUiModel(identifier=", this.f55825b, ", detailIdentifier=", this.f55826c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f55825b);
        parcel.writeString(this.f55826c);
    }
}
