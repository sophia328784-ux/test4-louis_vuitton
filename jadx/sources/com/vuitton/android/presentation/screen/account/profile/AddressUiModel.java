package com.vuitton.android.presentation.screen.account.profile;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b&\b\u0087\b\u0018\u00002\u00020\u0001B\u009d\u0003\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b(\u0010)¨\u0006*"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;", "Landroid/os/Parcelable;", "", "addressId", "", "isMain", "description", "civilityCode", "firstName", "lastName", "firstName2", "lastName2", "address1", "address2", "address3", "streetNumber", "street", "county", "city", "postalCode", "state", "displayStateName", "regionCodeIso31661Alpha2", "displayCountryName", "phoneNumberInternational", "phoneNumber", "phoneNumberRegionCodeIso31661Alpha2", "phoneNumberType", "displayPhoneNumber", "otherPhoneNumberInternational", "otherPhoneNumber", "otherPhoneNumberRegionCodeIso31661Alpha2", "otherPhoneNumberType", "displayOtherPhoneNumber", "thirdPhoneNumberInternational", "thirdPhoneNumber", "thirdPhoneNumberRegionCodeIso31661Alpha2", "thirdPhoneNumberType", "displayThirdPhoneNumber", "latLong", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddressUiModel implements Parcelable {
    public static final Parcelable.Creator<AddressUiModel> CREATOR = new Creator();
    public final String A;
    public final String B;
    public final String C;
    public final String D;
    public final String E;
    public final String F;
    public final String G;
    public final String H;
    public final String I;
    public final String J;
    public final String K;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f52674c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f52675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f52676f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f52677h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f52678i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f52679j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f52680k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;
    public final String x;
    public final String y;
    public final String z;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AddressUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AddressUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AddressUiModel(parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AddressUiModel[] newArray(int i2) {
            return new AddressUiModel[i2];
        }
    }

    public /* synthetic */ AddressUiModel(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4, (i2 & 32) != 0 ? "" : str5, (i2 & 64) != 0 ? null : str6, (i2 & 128) != 0 ? null : str7, (i2 & 256) != 0 ? null : str8, (i2 & 512) != 0 ? null : str9, (i2 & 1024) != 0 ? null : str10, (i2 & 2048) != 0 ? null : str11, (i2 & 4096) != 0 ? null : str12, (i2 & 8192) != 0 ? null : str13, (i2 & 16384) != 0 ? "" : str14, (i2 & 32768) != 0 ? null : str15, (i2 & 65536) != 0 ? null : str16, (i2 & 131072) != 0 ? null : str17, (i2 & 262144) != 0 ? "" : str18, (i2 & 524288) != 0 ? "" : str19, (i2 & 1048576) != 0 ? "" : str20, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? "" : str21, (i2 & 4194304) != 0 ? "" : str22, (i2 & 8388608) != 0 ? "" : str23, (i2 & 16777216) == 0 ? str24 : "", (i2 & 33554432) != 0 ? null : str25, (i2 & 67108864) != 0 ? null : str26, (i2 & 134217728) != 0 ? null : str27, (i2 & 268435456) != 0 ? null : str28, (i2 & PKIFailureInfo.duplicateCertReq) != 0 ? null : str29, (i2 & 1073741824) != 0 ? null : str30, (i2 & Integer.MIN_VALUE) != 0 ? null : str31, (i3 & 1) != 0 ? null : str32, (i3 & 2) != 0 ? null : str33, (i3 & 4) != 0 ? null : str34, (i3 & 8) != 0 ? null : str35);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressUiModel)) {
            return false;
        }
        AddressUiModel addressUiModel = (AddressUiModel) obj;
        return Intrinsics.c(this.f52673b, addressUiModel.f52673b) && this.f52674c == addressUiModel.f52674c && Intrinsics.c(this.d, addressUiModel.d) && Intrinsics.c(this.f52675e, addressUiModel.f52675e) && Intrinsics.c(this.f52676f, addressUiModel.f52676f) && Intrinsics.c(this.g, addressUiModel.g) && Intrinsics.c(this.f52677h, addressUiModel.f52677h) && Intrinsics.c(this.f52678i, addressUiModel.f52678i) && Intrinsics.c(this.f52679j, addressUiModel.f52679j) && Intrinsics.c(this.f52680k, addressUiModel.f52680k) && Intrinsics.c(this.l, addressUiModel.l) && Intrinsics.c(this.m, addressUiModel.m) && Intrinsics.c(this.n, addressUiModel.n) && Intrinsics.c(this.o, addressUiModel.o) && Intrinsics.c(this.p, addressUiModel.p) && Intrinsics.c(this.q, addressUiModel.q) && Intrinsics.c(this.r, addressUiModel.r) && Intrinsics.c(this.s, addressUiModel.s) && Intrinsics.c(this.t, addressUiModel.t) && Intrinsics.c(this.u, addressUiModel.u) && Intrinsics.c(this.v, addressUiModel.v) && Intrinsics.c(this.w, addressUiModel.w) && Intrinsics.c(this.x, addressUiModel.x) && Intrinsics.c(this.y, addressUiModel.y) && Intrinsics.c(this.z, addressUiModel.z) && Intrinsics.c(this.A, addressUiModel.A) && Intrinsics.c(this.B, addressUiModel.B) && Intrinsics.c(this.C, addressUiModel.C) && Intrinsics.c(this.D, addressUiModel.D) && Intrinsics.c(this.E, addressUiModel.E) && Intrinsics.c(this.F, addressUiModel.F) && Intrinsics.c(this.G, addressUiModel.G) && Intrinsics.c(this.H, addressUiModel.H) && Intrinsics.c(this.I, addressUiModel.I) && Intrinsics.c(this.J, addressUiModel.J) && Intrinsics.c(this.K, addressUiModel.K);
    }

    public final int hashCode() {
        int iB = o60.b(this.f52673b.hashCode() * 31, 31, this.f52674c);
        String str = this.d;
        int iB2 = fc.b(fc.b(fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f52675e), 31, this.f52676f), 31, this.g);
        String str2 = this.f52677h;
        int iHashCode = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f52678i;
        int iHashCode2 = (iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f52679j;
        int iHashCode3 = (iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f52680k;
        int iHashCode4 = (iHashCode3 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.l;
        int iHashCode5 = (iHashCode4 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.m;
        int iHashCode6 = (iHashCode5 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.n;
        int iHashCode7 = (iHashCode6 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.o;
        int iB3 = fc.b((iHashCode7 + (str9 == null ? 0 : str9.hashCode())) * 31, 31, this.p);
        String str10 = this.q;
        int iHashCode8 = (iB3 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.r;
        int iHashCode9 = (iHashCode8 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.s;
        int iB4 = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b((iHashCode9 + (str12 == null ? 0 : str12.hashCode())) * 31, 31, this.t), 31, this.u), 31, this.v), 31, this.w), 31, this.x), 31, this.y), 31, this.z);
        String str13 = this.A;
        int iHashCode10 = (iB4 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.B;
        int iHashCode11 = (iHashCode10 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.C;
        int iHashCode12 = (iHashCode11 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.D;
        int iHashCode13 = (iHashCode12 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.E;
        int iHashCode14 = (iHashCode13 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.F;
        int iHashCode15 = (iHashCode14 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.G;
        int iHashCode16 = (iHashCode15 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.H;
        int iHashCode17 = (iHashCode16 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.I;
        int iHashCode18 = (iHashCode17 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.J;
        int iHashCode19 = (iHashCode18 + (str22 == null ? 0 : str22.hashCode())) * 31;
        String str23 = this.K;
        return iHashCode19 + (str23 != null ? str23.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = d21.s("AddressUiModel(addressId=", this.f52673b, ", isMain=", ", description=", this.f52674c);
        cj.C(sbS, this.d, ", civilityCode=", this.f52675e, ", firstName=");
        cj.C(sbS, this.f52676f, ", lastName=", this.g, ", firstName2=");
        cj.C(sbS, this.f52677h, ", lastName2=", this.f52678i, ", address1=");
        cj.C(sbS, this.f52679j, ", address2=", this.f52680k, ", address3=");
        cj.C(sbS, this.l, ", streetNumber=", this.m, ", street=");
        cj.C(sbS, this.n, ", county=", this.o, ", city=");
        cj.C(sbS, this.p, ", postalCode=", this.q, ", state=");
        cj.C(sbS, this.r, ", displayStateName=", this.s, ", regionCodeIso31661Alpha2=");
        cj.C(sbS, this.t, ", displayCountryName=", this.u, ", phoneNumberInternational=");
        cj.C(sbS, this.v, ", phoneNumber=", this.w, ", phoneNumberRegionCodeIso31661Alpha2=");
        cj.C(sbS, this.x, ", phoneNumberType=", this.y, ", displayPhoneNumber=");
        cj.C(sbS, this.z, ", otherPhoneNumberInternational=", this.A, ", otherPhoneNumber=");
        cj.C(sbS, this.B, ", otherPhoneNumberRegionCodeIso31661Alpha2=", this.C, ", otherPhoneNumberType=");
        cj.C(sbS, this.D, ", displayOtherPhoneNumber=", this.E, ", thirdPhoneNumberInternational=");
        cj.C(sbS, this.F, ", thirdPhoneNumber=", this.G, ", thirdPhoneNumberRegionCodeIso31661Alpha2=");
        cj.C(sbS, this.H, ", thirdPhoneNumberType=", this.I, ", displayThirdPhoneNumber=");
        return tr.l(sbS, this.J, ", latLong=", this.K, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f52673b);
        parcel.writeInt(this.f52674c ? 1 : 0);
        parcel.writeString(this.d);
        parcel.writeString(this.f52675e);
        parcel.writeString(this.f52676f);
        parcel.writeString(this.g);
        parcel.writeString(this.f52677h);
        parcel.writeString(this.f52678i);
        parcel.writeString(this.f52679j);
        parcel.writeString(this.f52680k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.o);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeString(this.y);
        parcel.writeString(this.z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeString(this.C);
        parcel.writeString(this.D);
        parcel.writeString(this.E);
        parcel.writeString(this.F);
        parcel.writeString(this.G);
        parcel.writeString(this.H);
        parcel.writeString(this.I);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
    }

    public AddressUiModel(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35) {
        pq0.z(str, str3, str4, str5, str14);
        pq0.z(str18, str19, str20, str21, str22);
        str23.getClass();
        str24.getClass();
        this.f52673b = str;
        this.f52674c = z;
        this.d = str2;
        this.f52675e = str3;
        this.f52676f = str4;
        this.g = str5;
        this.f52677h = str6;
        this.f52678i = str7;
        this.f52679j = str8;
        this.f52680k = str9;
        this.l = str10;
        this.m = str11;
        this.n = str12;
        this.o = str13;
        this.p = str14;
        this.q = str15;
        this.r = str16;
        this.s = str17;
        this.t = str18;
        this.u = str19;
        this.v = str20;
        this.w = str21;
        this.x = str22;
        this.y = str23;
        this.z = str24;
        this.A = str25;
        this.B = str26;
        this.C = str27;
        this.D = str28;
        this.E = str29;
        this.F = str30;
        this.G = str31;
        this.H = str32;
        this.I = str33;
        this.J = str34;
        this.K = str35;
    }

    public AddressUiModel() {
        this(null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 15, null);
    }
}
