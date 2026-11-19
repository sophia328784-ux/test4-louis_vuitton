package com.vuitton.android.presentation.screen.repairs.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BÝ\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\b\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\b\u0012\u0006\u0010\u0016\u001a\u00020\b\u0012\u0006\u0010\u0017\u001a\u00020\b\u0012\u0006\u0010\u0018\u001a\u00020\b\u0012\u0006\u0010\u0019\u001a\u00020\b\u0012\u0006\u0010\u001a\u001a\u00020\b\u0012\u0006\u0010\u001b\u001a\u00020\b\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\b\u0012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d\u0012\u0006\u0010 \u001a\u00020\b\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010#\u001a\u00020\b\u0012\u0006\u0010$\u001a\u00020\b\u0012\u0006\u0010%\u001a\u00020\b\u0012\u0006\u0010&\u001a\u00020\b\u0012\u0006\u0010'\u001a\u00020\b\u0012\b\u0010)\u001a\u0004\u0018\u00010(\u0012\u0006\u0010*\u001a\u00020\b\u0012\u0006\u0010+\u001a\u00020\b\u0012\b\u0010,\u001a\u0004\u0018\u00010\b\u0012\b\u0010-\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010.\u001a\u00020\b\u0012\u0006\u0010/\u001a\u00020\b\u0012\u0006\u00100\u001a\u00020\b\u0012\b\u00101\u001a\u0004\u0018\u00010\b\u0012\b\u00102\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u00104\u001a\u000203¢\u0006\u0004\b5\u00106¨\u00067"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/repair/RepairType;", "recordType", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", "myLVCareStatus", "", "createdDate", "currencyCode", "repairType", "", "totalAmount", "totalAmountUpdated", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "productImage", "careExpertNote", "shippingAddressId", "shippingAddressLine1", "shippingAddressLine2", "shippingAddressLine3", "shippingCity", "shippingZipPostalCode", "shippingStateProvince", "shippingCountry", "appointmentDateTime", "appointmentId", "", "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;", "careServicesItems", "trackingNumber", "Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;", "origin", "email", "phoneNumber", "productDescription", "deliveryDate", "updatedDeliveryDate", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;", "transactionId", "productName", "productFamily", "storeName", "storeRetailCode", "addressTitle", "addressFirstName", "addressLastName", "confirmAddressExpirationDate", "payByLinkUrl", "", "shouldShowPbl", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceDetailUiModel implements Parcelable {
    public static final Parcelable.Creator<CareServiceDetailUiModel> CREATOR = new Creator();
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
    public final String L;
    public final String M;
    public final String N;
    public final boolean O;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f63979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RepairType f63980c;
    public final RepairStatusUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f63981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f63982f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final double f63983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Double f63984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f63985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f63986k;
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
    public final List w;
    public final String x;
    public final CareServiceOrigin y;
    public final String z;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceDetailUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceDetailUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String str = CareServiceIdUiModel.CREATOR.createFromParcel(parcel).f64060b;
            RepairType repairTypeValueOf = RepairType.valueOf(parcel.readString());
            RepairStatusUiModel repairStatusUiModelValueOf = RepairStatusUiModel.valueOf(parcel.readString());
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            double d = parcel.readDouble();
            Double dValueOf = parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble());
            String str2 = SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b;
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            String string10 = parcel.readString();
            String string11 = parcel.readString();
            String string12 = parcel.readString();
            String string13 = parcel.readString();
            String string14 = parcel.readString();
            String string15 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            while (iD != i2) {
                iD = pq0.d(CareServiceItemUiModel.CREATOR, parcel, arrayList, iD, 1);
                i2 = i2;
            }
            String string16 = parcel.readString();
            CareServiceOrigin careServiceOriginValueOf = CareServiceOrigin.valueOf(parcel.readString());
            String string17 = parcel.readString();
            String string18 = parcel.readString();
            String string19 = parcel.readString();
            String string20 = parcel.readString();
            String string21 = parcel.readString();
            CareServiceTransactionIdUiModel careServiceTransactionIdUiModelCreateFromParcel = parcel.readInt() == 0 ? null : CareServiceTransactionIdUiModel.CREATOR.createFromParcel(parcel);
            return new CareServiceDetailUiModel(str, repairTypeValueOf, repairStatusUiModelValueOf, string, string2, string3, d, dValueOf, str2, string4, string5, string6, string7, string8, string9, string10, string11, string12, string13, string14, string15, arrayList, string16, careServiceOriginValueOf, string17, string18, string19, string20, string21, careServiceTransactionIdUiModelCreateFromParcel != null ? careServiceTransactionIdUiModelCreateFromParcel.f64072b : null, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, null);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceDetailUiModel[] newArray(int i2) {
            return new CareServiceDetailUiModel[i2];
        }
    }

    public CareServiceDetailUiModel(String str, RepairType repairType, RepairStatusUiModel repairStatusUiModel, String str2, String str3, String str4, double d, Double d2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, List list, String str18, CareServiceOrigin careServiceOrigin, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        repairType.getClass();
        repairStatusUiModel.getClass();
        str2.getClass();
        str3.getClass();
        pq0.z(str4, str5, str6, str7, str8);
        pq0.z(str9, str10, str11, str12, str13);
        str14.getClass();
        str15.getClass();
        str16.getClass();
        list.getClass();
        str18.getClass();
        careServiceOrigin.getClass();
        str19.getClass();
        str20.getClass();
        str21.getClass();
        str22.getClass();
        pq0.z(str23, str25, str26, str29, str30);
        str31.getClass();
        this.f63979b = str;
        this.f63980c = repairType;
        this.d = repairStatusUiModel;
        this.f63981e = str2;
        this.f63982f = str3;
        this.g = str4;
        this.f63983h = d;
        this.f63984i = d2;
        this.f63985j = str5;
        this.f63986k = str6;
        this.l = str7;
        this.m = str8;
        this.n = str9;
        this.o = str10;
        this.p = str11;
        this.q = str12;
        this.r = str13;
        this.s = str14;
        this.t = str15;
        this.u = str16;
        this.v = str17;
        this.w = list;
        this.x = str18;
        this.y = careServiceOrigin;
        this.z = str19;
        this.A = str20;
        this.B = str21;
        this.C = str22;
        this.D = str23;
        this.E = str24;
        this.F = str25;
        this.G = str26;
        this.H = str27;
        this.I = str28;
        this.J = str29;
        this.K = str30;
        this.L = str31;
        this.M = str32;
        this.N = str33;
        this.O = z;
    }

    public static CareServiceDetailUiModel a(CareServiceDetailUiModel careServiceDetailUiModel, RepairStatusUiModel repairStatusUiModel, boolean z, int i2, int i3) {
        String str = careServiceDetailUiModel.f63979b;
        RepairType repairType = careServiceDetailUiModel.f63980c;
        RepairStatusUiModel repairStatusUiModel2 = (i2 & 4) != 0 ? careServiceDetailUiModel.d : repairStatusUiModel;
        String str2 = careServiceDetailUiModel.f63981e;
        String str3 = careServiceDetailUiModel.f63982f;
        String str4 = careServiceDetailUiModel.g;
        double d = careServiceDetailUiModel.f63983h;
        Double d2 = careServiceDetailUiModel.f63984i;
        String str5 = careServiceDetailUiModel.f63985j;
        String str6 = careServiceDetailUiModel.f63986k;
        String str7 = careServiceDetailUiModel.l;
        String str8 = careServiceDetailUiModel.m;
        String str9 = careServiceDetailUiModel.n;
        String str10 = careServiceDetailUiModel.o;
        String str11 = careServiceDetailUiModel.p;
        String str12 = careServiceDetailUiModel.q;
        RepairStatusUiModel repairStatusUiModel3 = repairStatusUiModel2;
        String str13 = careServiceDetailUiModel.r;
        String str14 = careServiceDetailUiModel.s;
        String str15 = careServiceDetailUiModel.t;
        String str16 = careServiceDetailUiModel.u;
        String str17 = careServiceDetailUiModel.v;
        List list = careServiceDetailUiModel.w;
        String str18 = careServiceDetailUiModel.x;
        CareServiceOrigin careServiceOrigin = careServiceDetailUiModel.y;
        String str19 = careServiceDetailUiModel.z;
        String str20 = careServiceDetailUiModel.A;
        String str21 = careServiceDetailUiModel.B;
        String str22 = careServiceDetailUiModel.C;
        String str23 = careServiceDetailUiModel.D;
        String str24 = careServiceDetailUiModel.E;
        String str25 = careServiceDetailUiModel.F;
        String str26 = careServiceDetailUiModel.G;
        String str27 = careServiceDetailUiModel.H;
        String str28 = careServiceDetailUiModel.I;
        String str29 = careServiceDetailUiModel.J;
        String str30 = careServiceDetailUiModel.K;
        String str31 = careServiceDetailUiModel.L;
        String str32 = careServiceDetailUiModel.M;
        String str33 = careServiceDetailUiModel.N;
        boolean z2 = (i3 & 128) != 0 ? careServiceDetailUiModel.O : z;
        careServiceDetailUiModel.getClass();
        str.getClass();
        repairType.getClass();
        repairStatusUiModel3.getClass();
        str2.getClass();
        pq0.z(str3, str4, str5, str6, str7);
        pq0.z(str8, str9, str10, str11, str12);
        str13.getClass();
        str14.getClass();
        str15.getClass();
        str16.getClass();
        list.getClass();
        str18.getClass();
        careServiceOrigin.getClass();
        str19.getClass();
        str20.getClass();
        str21.getClass();
        pq0.z(str22, str23, str25, str26, str29);
        str30.getClass();
        str31.getClass();
        return new CareServiceDetailUiModel(str, repairType, repairStatusUiModel3, str2, str3, str4, d, d2, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, list, str18, careServiceOrigin, str19, str20, str21, str22, str23, str24, str25, str26, str27, str28, str29, str30, str31, str32, str33, z2, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:99:0x014d  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceDetailUiModel)) {
            return false;
        }
        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) obj;
        String str = careServiceDetailUiModel.f63979b;
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        if (!Intrinsics.c(this.f63979b, str) || this.f63980c != careServiceDetailUiModel.f63980c || this.d != careServiceDetailUiModel.d || !Intrinsics.c(this.f63981e, careServiceDetailUiModel.f63981e) || !Intrinsics.c(this.f63982f, careServiceDetailUiModel.f63982f) || !Intrinsics.c(this.g, careServiceDetailUiModel.g) || Double.compare(this.f63983h, careServiceDetailUiModel.f63983h) != 0 || !Intrinsics.c(this.f63984i, careServiceDetailUiModel.f63984i)) {
            return false;
        }
        String str2 = careServiceDetailUiModel.f63985j;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        if (!Intrinsics.c(this.f63985j, str2) || !Intrinsics.c(this.f63986k, careServiceDetailUiModel.f63986k) || !Intrinsics.c(this.l, careServiceDetailUiModel.l) || !Intrinsics.c(this.m, careServiceDetailUiModel.m) || !Intrinsics.c(this.n, careServiceDetailUiModel.n) || !Intrinsics.c(this.o, careServiceDetailUiModel.o) || !Intrinsics.c(this.p, careServiceDetailUiModel.p) || !Intrinsics.c(this.q, careServiceDetailUiModel.q) || !Intrinsics.c(this.r, careServiceDetailUiModel.r) || !Intrinsics.c(this.s, careServiceDetailUiModel.s) || !Intrinsics.c(this.t, careServiceDetailUiModel.t) || !Intrinsics.c(this.u, careServiceDetailUiModel.u) || !Intrinsics.c(this.v, careServiceDetailUiModel.v) || !Intrinsics.c(this.w, careServiceDetailUiModel.w) || !Intrinsics.c(this.x, careServiceDetailUiModel.x) || this.y != careServiceDetailUiModel.y || !Intrinsics.c(this.z, careServiceDetailUiModel.z) || !Intrinsics.c(this.A, careServiceDetailUiModel.A) || !Intrinsics.c(this.B, careServiceDetailUiModel.B) || !Intrinsics.c(this.C, careServiceDetailUiModel.C) || !Intrinsics.c(this.D, careServiceDetailUiModel.D)) {
            return false;
        }
        String str3 = careServiceDetailUiModel.E;
        String str4 = this.E;
        if (str4 == null) {
            if (str3 == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str3 == null) {
            zC = false;
        } else {
            CareServiceTransactionIdUiModel.Companion companion3 = CareServiceTransactionIdUiModel.f64071c;
            zC = Intrinsics.c(str4, str3);
        }
        return zC && Intrinsics.c(this.F, careServiceDetailUiModel.F) && Intrinsics.c(this.G, careServiceDetailUiModel.G) && Intrinsics.c(this.H, careServiceDetailUiModel.H) && Intrinsics.c(this.I, careServiceDetailUiModel.I) && Intrinsics.c(this.J, careServiceDetailUiModel.J) && Intrinsics.c(this.K, careServiceDetailUiModel.K) && Intrinsics.c(this.L, careServiceDetailUiModel.L) && Intrinsics.c(this.M, careServiceDetailUiModel.M) && Intrinsics.c(this.N, careServiceDetailUiModel.N) && this.O == careServiceDetailUiModel.O;
    }

    public final int hashCode() {
        int iHashCode;
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        int iA = d21.a(this.f63983h, fc.b(fc.b(fc.b((this.d.hashCode() + ((this.f63980c.hashCode() + (this.f63979b.hashCode() * 31)) * 31)) * 31, 31, this.f63981e), 31, this.f63982f), 31, this.g), 31);
        Double d = this.f63984i;
        int iHashCode2 = (iA + (d == null ? 0 : d.hashCode())) * 31;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(iHashCode2, 31, this.f63985j), 31, this.f63986k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u);
        String str = this.v;
        int iB2 = fc.b(fc.b(fc.b(fc.b(fc.b((this.y.hashCode() + fc.b(n00.a((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.w), 31, this.x)) * 31, 31, this.z), 31, this.A), 31, this.B), 31, this.C), 31, this.D);
        String str2 = this.E;
        if (str2 == null) {
            iHashCode = 0;
        } else {
            CareServiceTransactionIdUiModel.Companion companion3 = CareServiceTransactionIdUiModel.f64071c;
            iHashCode = str2.hashCode();
        }
        int iB3 = fc.b(fc.b((iB2 + iHashCode) * 31, 31, this.F), 31, this.G);
        String str3 = this.H;
        int iHashCode3 = (iB3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.I;
        int iB4 = fc.b(fc.b(fc.b((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.J), 31, this.K), 31, this.L);
        String str5 = this.M;
        int iHashCode4 = (iB4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.N;
        return Boolean.hashCode(this.O) + ((iHashCode4 + (str6 != null ? str6.hashCode() : 0)) * 31);
    }

    public final String toString() {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        String str = this.E;
        if (str == null) {
            str = "null";
        } else {
            CareServiceTransactionIdUiModel.Companion companion3 = CareServiceTransactionIdUiModel.f64071c;
        }
        StringBuilder sb = new StringBuilder("CareServiceDetailUiModel(id=");
        sb.append(this.f63979b);
        sb.append(", recordType=");
        sb.append(this.f63980c);
        sb.append(", myLVCareStatus=");
        sb.append(this.d);
        sb.append(", createdDate=");
        sb.append(this.f63981e);
        sb.append(", currencyCode=");
        cj.C(sb, this.f63982f, ", repairType=", this.g, ", totalAmount=");
        sb.append(this.f63983h);
        sb.append(", totalAmountUpdated=");
        sb.append(this.f63984i);
        cj.C(sb, ", sku=", this.f63985j, ", productImage=", this.f63986k);
        cj.C(sb, ", careExpertNote=", this.l, ", shippingAddressId=", this.m);
        cj.C(sb, ", shippingAddressLine1=", this.n, ", shippingAddressLine2=", this.o);
        cj.C(sb, ", shippingAddressLine3=", this.p, ", shippingCity=", this.q);
        cj.C(sb, ", shippingZipPostalCode=", this.r, ", shippingStateProvince=", this.s);
        cj.C(sb, ", shippingCountry=", this.t, ", appointmentDateTime=", this.u);
        sb.append(", appointmentId=");
        sb.append(this.v);
        sb.append(", careServicesItems=");
        sb.append(this.w);
        sb.append(", trackingNumber=");
        sb.append(this.x);
        sb.append(", origin=");
        sb.append(this.y);
        cj.C(sb, ", email=", this.z, ", phoneNumber=", this.A);
        cj.C(sb, ", productDescription=", this.B, ", deliveryDate=", this.C);
        cj.C(sb, ", updatedDeliveryDate=", this.D, ", transactionId=", str);
        cj.C(sb, ", productName=", this.F, ", productFamily=", this.G);
        cj.C(sb, ", storeName=", this.H, ", storeRetailCode=", this.I);
        cj.C(sb, ", addressTitle=", this.J, ", addressFirstName=", this.K);
        cj.C(sb, ", addressLastName=", this.L, ", confirmAddressExpirationDate=", this.M);
        sb.append(", payByLinkUrl=");
        sb.append(this.N);
        sb.append(", shouldShowPbl=");
        sb.append(this.O);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        parcel.writeString(this.f63979b);
        parcel.writeString(this.f63980c.name());
        parcel.writeString(this.d.name());
        parcel.writeString(this.f63981e);
        parcel.writeString(this.f63982f);
        parcel.writeString(this.g);
        parcel.writeDouble(this.f63983h);
        Double d = this.f63984i;
        if (d == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d.doubleValue());
        }
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        parcel.writeString(this.f63985j);
        parcel.writeString(this.f63986k);
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
        Iterator itP = cj.p(this.w, parcel);
        while (itP.hasNext()) {
            ((CareServiceItemUiModel) itP.next()).writeToParcel(parcel, i2);
        }
        parcel.writeString(this.x);
        parcel.writeString(this.y.name());
        parcel.writeString(this.z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeString(this.C);
        parcel.writeString(this.D);
        String str = this.E;
        if (str == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            CareServiceTransactionIdUiModel.Companion companion3 = CareServiceTransactionIdUiModel.f64071c;
            parcel.writeString(str);
        }
        parcel.writeString(this.F);
        parcel.writeString(this.G);
        parcel.writeString(this.H);
        parcel.writeString(this.I);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
        parcel.writeString(this.L);
        parcel.writeString(this.M);
        parcel.writeString(this.N);
        parcel.writeInt(this.O ? 1 : 0);
    }

    public /* synthetic */ CareServiceDetailUiModel(String str, RepairType repairType, RepairStatusUiModel repairStatusUiModel, String str2, String str3, String str4, double d, Double d2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, List list, String str18, CareServiceOrigin careServiceOrigin, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, boolean z, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, repairType, repairStatusUiModel, str2, str3, str4, d, d2, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, list, str18, careServiceOrigin, str19, str20, str21, str22, str23, str24, str25, str26, str27, str28, str29, str30, str31, str32, str33, (i3 & 128) != 0 ? false : z, null);
    }
}
