package com.vuitton.android.presentation.screen.repairs.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B¹\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0017¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", b.a.f24015b, "", "transactionId", "storeRetailCode", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", "myLVCareStatus", "Ljava/util/Date;", "createdDate", "deliveryDate", "updatedDeliveryDate", "lastMyRepairStatusChangedDate", "productName", "productFamily", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "productSkuUnknown", "productImage", "Lcom/vuitton/foundation/model/domain/model/repair/RepairType;", "repairType", "trackingNumber", "", "isOnGoing", "shouldShowPbl", "shouldShowTrackShipment", "shouldShowConfirmAddress", "shouldShowAcceptAssessment", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceUiModel implements Parcelable {
    public static final Parcelable.Creator<CareServiceUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f63994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f63995c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RepairStatusUiModel f63996e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Date f63997f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f63998h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f63999i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f64000j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f64001k;
    public final String l;
    public final String m;
    public final String n;
    public final RepairType o;
    public final String p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String str = CareServiceIdUiModel.CREATOR.createFromParcel(parcel).f64060b;
            String string = parcel.readString();
            String string2 = parcel.readString();
            RepairStatusUiModel repairStatusUiModelValueOf = RepairStatusUiModel.valueOf(parcel.readString());
            Date date = (Date) parcel.readSerializable();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            String str2 = SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b;
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            RepairType repairTypeValueOf = RepairType.valueOf(parcel.readString());
            String string10 = parcel.readString();
            boolean z = false;
            boolean z2 = true;
            boolean z3 = parcel.readInt() != 0;
            if (parcel.readInt() != 0) {
                z = true;
            }
            if (parcel.readInt() == 0) {
                z2 = z;
            }
            if (parcel.readInt() != 0) {
                z = true;
            }
            return new CareServiceUiModel(str, string, string2, repairStatusUiModelValueOf, date, string3, string4, string5, string6, string7, str2, string8, string9, repairTypeValueOf, string10, z3, z, z2, z, parcel.readInt() != 0, null);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceUiModel[] newArray(int i2) {
            return new CareServiceUiModel[i2];
        }
    }

    public /* synthetic */ CareServiceUiModel(String str, String str2, String str3, RepairStatusUiModel repairStatusUiModel, Date date, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, RepairType repairType, String str12, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, repairStatusUiModel, date, str4, str5, str6, str7, str8, str9, str10, str11, repairType, (i2 & 16384) != 0 ? "" : str12, (32768 & i2) != 0 ? false : z, (65536 & i2) != 0 ? false : z2, (131072 & i2) != 0 ? false : z3, (262144 & i2) != 0 ? false : z4, (i2 & 524288) != 0 ? false : z5, null);
    }

    public static CareServiceUiModel a(CareServiceUiModel careServiceUiModel, RepairStatusUiModel repairStatusUiModel, String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2) {
        String str3 = careServiceUiModel.f63994b;
        String str4 = careServiceUiModel.f63995c;
        String str5 = careServiceUiModel.d;
        RepairStatusUiModel repairStatusUiModel2 = (i2 & 8) != 0 ? careServiceUiModel.f63996e : repairStatusUiModel;
        Date date = careServiceUiModel.f63997f;
        RepairStatusUiModel repairStatusUiModel3 = repairStatusUiModel2;
        String str6 = careServiceUiModel.g;
        String str7 = careServiceUiModel.f63998h;
        String str8 = careServiceUiModel.f63999i;
        String str9 = careServiceUiModel.f64000j;
        String str10 = careServiceUiModel.f64001k;
        String str11 = careServiceUiModel.l;
        String str12 = careServiceUiModel.m;
        String str13 = (i2 & 4096) != 0 ? careServiceUiModel.n : str;
        RepairType repairType = careServiceUiModel.o;
        String str14 = (i2 & 16384) != 0 ? careServiceUiModel.p : str2;
        boolean z6 = (i2 & 32768) != 0 ? careServiceUiModel.q : z;
        boolean z7 = (i2 & 65536) != 0 ? careServiceUiModel.r : z2;
        boolean z8 = (i2 & 131072) != 0 ? careServiceUiModel.s : z3;
        boolean z9 = (i2 & 262144) != 0 ? careServiceUiModel.t : z4;
        boolean z10 = (i2 & 524288) != 0 ? careServiceUiModel.u : z5;
        careServiceUiModel.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        repairStatusUiModel3.getClass();
        date.getClass();
        str9.getClass();
        str10.getClass();
        str11.getClass();
        str12.getClass();
        str13.getClass();
        repairType.getClass();
        str14.getClass();
        return new CareServiceUiModel(str3, str4, str5, repairStatusUiModel3, date, str6, str7, str8, str9, str10, str11, str12, str13, repairType, str14, z6, z7, z8, z9, z10, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceUiModel)) {
            return false;
        }
        CareServiceUiModel careServiceUiModel = (CareServiceUiModel) obj;
        String str = careServiceUiModel.f63994b;
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        if (!Intrinsics.c(this.f63994b, str) || !Intrinsics.c(this.f63995c, careServiceUiModel.f63995c) || !Intrinsics.c(this.d, careServiceUiModel.d) || this.f63996e != careServiceUiModel.f63996e || !Intrinsics.c(this.f63997f, careServiceUiModel.f63997f) || !Intrinsics.c(this.g, careServiceUiModel.g) || !Intrinsics.c(this.f63998h, careServiceUiModel.f63998h) || !Intrinsics.c(this.f63999i, careServiceUiModel.f63999i) || !Intrinsics.c(this.f64000j, careServiceUiModel.f64000j) || !Intrinsics.c(this.f64001k, careServiceUiModel.f64001k)) {
            return false;
        }
        String str2 = careServiceUiModel.l;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.l, str2) && Intrinsics.c(this.m, careServiceUiModel.m) && Intrinsics.c(this.n, careServiceUiModel.n) && this.o == careServiceUiModel.o && Intrinsics.c(this.p, careServiceUiModel.p) && this.q == careServiceUiModel.q && this.r == careServiceUiModel.r && this.s == careServiceUiModel.s && this.t == careServiceUiModel.t && this.u == careServiceUiModel.u;
    }

    public final int hashCode() {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        int iHashCode = (this.f63997f.hashCode() + ((this.f63996e.hashCode() + fc.b(fc.b(this.f63994b.hashCode() * 31, 31, this.f63995c), 31, this.d)) * 31)) * 31;
        String str = this.g;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f63998h;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f63999i;
        int iB = fc.b(fc.b((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31, 31, this.f64000j), 31, this.f64001k);
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        return Boolean.hashCode(this.u) + o60.b(o60.b(o60.b(o60.b(fc.b((this.o.hashCode() + fc.b(fc.b(fc.b(iB, 31, this.l), 31, this.m), 31, this.n)) * 31, 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t);
    }

    public final String toString() {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("CareServiceUiModel(id=", this.f63994b, ", transactionId=", this.f63995c, ", storeRetailCode=");
        sbS.append(this.d);
        sbS.append(", myLVCareStatus=");
        sbS.append(this.f63996e);
        sbS.append(", createdDate=");
        sbS.append(this.f63997f);
        sbS.append(", deliveryDate=");
        sbS.append(this.g);
        sbS.append(", updatedDeliveryDate=");
        cj.C(sbS, this.f63998h, ", lastMyRepairStatusChangedDate=", this.f63999i, ", productName=");
        cj.C(sbS, this.f64000j, ", productFamily=", this.f64001k, ", sku=");
        cj.C(sbS, this.l, ", productSkuUnknown=", this.m, ", productImage=");
        sbS.append(this.n);
        sbS.append(", repairType=");
        sbS.append(this.o);
        sbS.append(", trackingNumber=");
        pq0.A(this.p, ", isOnGoing=", ", shouldShowPbl=", sbS, this.q);
        fc.y(sbS, this.r, ", shouldShowTrackShipment=", this.s, ", shouldShowConfirmAddress=");
        return pq0.p(sbS, this.t, ", shouldShowAcceptAssessment=", this.u, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        parcel.writeString(this.f63994b);
        parcel.writeString(this.f63995c);
        parcel.writeString(this.d);
        parcel.writeString(this.f63996e.name());
        parcel.writeSerializable(this.f63997f);
        parcel.writeString(this.g);
        parcel.writeString(this.f63998h);
        parcel.writeString(this.f63999i);
        parcel.writeString(this.f64000j);
        parcel.writeString(this.f64001k);
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.o.name());
        parcel.writeString(this.p);
        parcel.writeInt(this.q ? 1 : 0);
        parcel.writeInt(this.r ? 1 : 0);
        parcel.writeInt(this.s ? 1 : 0);
        parcel.writeInt(this.t ? 1 : 0);
        parcel.writeInt(this.u ? 1 : 0);
    }

    public CareServiceUiModel(String str, String str2, String str3, RepairStatusUiModel repairStatusUiModel, Date date, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, RepairType repairType, String str12, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        repairStatusUiModel.getClass();
        date.getClass();
        pq0.z(str7, str8, str9, str10, str11);
        repairType.getClass();
        str12.getClass();
        this.f63994b = str;
        this.f63995c = str2;
        this.d = str3;
        this.f63996e = repairStatusUiModel;
        this.f63997f = date;
        this.g = str4;
        this.f63998h = str5;
        this.f63999i = str6;
        this.f64000j = str7;
        this.f64001k = str8;
        this.l = str9;
        this.m = str10;
        this.n = str11;
        this.o = repairType;
        this.p = str12;
        this.q = z;
        this.r = z2;
        this.s = z3;
        this.t = z4;
        this.u = z5;
    }
}
