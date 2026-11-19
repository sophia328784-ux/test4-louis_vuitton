package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressIdUiModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel;", "identifier", "", "description", "addressLine1", "addressLine2", "addressLine3", "postalCode", "stateName", "stateCode", "cityName", "countryName", "countryCode", "firstName", "lastName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceAddressUiModel implements Parcelable {
    public static final Parcelable.Creator<CareServiceAddressUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64030c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f64031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f64032f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f64033h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f64034i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f64035j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f64036k;
    public final String l;
    public final String m;
    public final String n;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceAddressUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceAddressUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            AddressIdUiModel addressIdUiModelCreateFromParcel = parcel.readInt() == 0 ? null : AddressIdUiModel.CREATOR.createFromParcel(parcel);
            return new CareServiceAddressUiModel(addressIdUiModelCreateFromParcel != null ? addressIdUiModelCreateFromParcel.f52201b : null, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceAddressUiModel[] newArray(int i2) {
            return new CareServiceAddressUiModel[i2];
        }
    }

    public CareServiceAddressUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, DefaultConstructorMarker defaultConstructorMarker) {
        d21.y(str3, str6, str9, str11);
        this.f64029b = str;
        this.f64030c = str2;
        this.d = str3;
        this.f64031e = str4;
        this.f64032f = str5;
        this.g = str6;
        this.f64033h = str7;
        this.f64034i = str8;
        this.f64035j = str9;
        this.f64036k = str10;
        this.l = str11;
        this.m = str12;
        this.n = str13;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0018  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof CareServiceAddressUiModel) {
                CareServiceAddressUiModel careServiceAddressUiModel = (CareServiceAddressUiModel) obj;
                String str = careServiceAddressUiModel.f64029b;
                String str2 = this.f64029b;
                if (str2 == null) {
                    if (str == null) {
                        zEquals = true;
                    } else {
                        zEquals = false;
                    }
                } else if (str == null) {
                    zEquals = false;
                } else {
                    AddressIdUiModel.Companion companion = AddressIdUiModel.f52200c;
                    zEquals = str2.equals(str);
                }
                if (zEquals && Intrinsics.c(this.f64030c, careServiceAddressUiModel.f64030c) && this.d.equals(careServiceAddressUiModel.d) && Intrinsics.c(this.f64031e, careServiceAddressUiModel.f64031e) && Intrinsics.c(this.f64032f, careServiceAddressUiModel.f64032f) && this.g.equals(careServiceAddressUiModel.g) && Intrinsics.c(this.f64033h, careServiceAddressUiModel.f64033h) && Intrinsics.c(this.f64034i, careServiceAddressUiModel.f64034i) && this.f64035j.equals(careServiceAddressUiModel.f64035j) && Intrinsics.c(this.f64036k, careServiceAddressUiModel.f64036k) && this.l.equals(careServiceAddressUiModel.l) && Intrinsics.c(this.m, careServiceAddressUiModel.m) && Intrinsics.c(this.n, careServiceAddressUiModel.n)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f64029b;
        if (str == null) {
            iHashCode = 0;
        } else {
            AddressIdUiModel.Companion companion = AddressIdUiModel.f52200c;
            iHashCode = str.hashCode();
        }
        int i2 = iHashCode * 31;
        String str2 = this.f64030c;
        int iB = fc.b((i2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.d);
        String str3 = this.f64031e;
        int iHashCode2 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f64032f;
        int iB2 = fc.b((iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.g);
        String str5 = this.f64033h;
        int iHashCode3 = (iB2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f64034i;
        int iB3 = fc.b((iHashCode3 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.f64035j);
        String str7 = this.f64036k;
        int iB4 = fc.b((iB3 + (str7 == null ? 0 : str7.hashCode())) * 31, 31, this.l);
        String str8 = this.m;
        int iHashCode4 = (iB4 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.n;
        return iHashCode4 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f64029b;
        if (str == null) {
            str = "null";
        } else {
            AddressIdUiModel.Companion companion = AddressIdUiModel.f52200c;
        }
        StringBuilder sbS = fc.s("CareServiceAddressUiModel(identifier=", str, ", description=", this.f64030c, ", addressLine1=");
        cj.C(sbS, this.d, ", addressLine2=", this.f64031e, ", addressLine3=");
        cj.C(sbS, this.f64032f, ", postalCode=", this.g, ", stateName=");
        cj.C(sbS, this.f64033h, ", stateCode=", this.f64034i, ", cityName=");
        cj.C(sbS, this.f64035j, ", countryName=", this.f64036k, ", countryCode=");
        cj.C(sbS, this.l, ", firstName=", this.m, ", lastName=");
        return n00.r(this.n, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        String str = this.f64029b;
        if (str == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            AddressIdUiModel.Companion companion = AddressIdUiModel.f52200c;
            parcel.writeString(str);
        }
        parcel.writeString(this.f64030c);
        parcel.writeString(this.d);
        parcel.writeString(this.f64031e);
        parcel.writeString(this.f64032f);
        parcel.writeString(this.g);
        parcel.writeString(this.f64033h);
        parcel.writeString(this.f64034i);
        parcel.writeString(this.f64035j);
        parcel.writeString(this.f64036k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
    }
}
