package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceType;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B¯\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0017¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", b.a.f24015b, "", "displayableId", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;", "transactionId", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;", "type", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;", "category", "stepTitle", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;", "action", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;", "product", "trackingURL", "", "creationDateInUtcMs", "deliveryDateInUtcMs", "updatedDeliveryDateInUtcMs", "restitutionHistoryDateInUtcMs", "", "shouldShowPbl", "shouldShowTrackShipment", "shouldShowConfirmAddress", "shouldShowAcceptAssessment", "shouldShowContactAnExpert", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceShortUiModel implements Parcelable {
    public static final Parcelable.Creator<CareServiceShortUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64064c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CareServiceType f64065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CareServiceCategory f64066f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CareServiceAction f64067h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CareServiceProductUiModel f64068i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f64069j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f64070k;
    public final Long l;
    public final Long m;
    public final Long n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceShortUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceShortUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String str = CareServiceIdUiModel.CREATOR.createFromParcel(parcel).f64060b;
            String string = parcel.readString();
            CareServiceTransactionIdUiModel careServiceTransactionIdUiModelCreateFromParcel = parcel.readInt() == 0 ? null : CareServiceTransactionIdUiModel.CREATOR.createFromParcel(parcel);
            String str2 = careServiceTransactionIdUiModelCreateFromParcel != null ? careServiceTransactionIdUiModelCreateFromParcel.f64072b : null;
            CareServiceType careServiceTypeValueOf = CareServiceType.valueOf(parcel.readString());
            CareServiceCategory careServiceCategoryValueOf = CareServiceCategory.valueOf(parcel.readString());
            String str3 = str2;
            String string2 = parcel.readString();
            CareServiceAction careServiceActionValueOf = parcel.readInt() == 0 ? null : CareServiceAction.valueOf(parcel.readString());
            CareServiceProductUiModel careServiceProductUiModelCreateFromParcel = parcel.readInt() == 0 ? null : CareServiceProductUiModel.CREATOR.createFromParcel(parcel);
            CareServiceAction careServiceAction = careServiceActionValueOf;
            String string3 = parcel.readString();
            Long lValueOf = null;
            long j2 = parcel.readLong();
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf3 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() != 0) {
                lValueOf = Long.valueOf(parcel.readLong());
            }
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
            return new CareServiceShortUiModel(str, string, str3, careServiceTypeValueOf, careServiceCategoryValueOf, string2, careServiceAction, careServiceProductUiModelCreateFromParcel, string3, j2, lValueOf2, lValueOf3, lValueOf, z3, z, z2, z, parcel.readInt() != 0, null);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceShortUiModel[] newArray(int i2) {
            return new CareServiceShortUiModel[i2];
        }
    }

    public /* synthetic */ CareServiceShortUiModel(String str, String str2, String str3, CareServiceType careServiceType, CareServiceCategory careServiceCategory, String str4, CareServiceAction careServiceAction, CareServiceProductUiModel careServiceProductUiModel, String str5, long j2, Long l, Long l2, Long l3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, careServiceType, careServiceCategory, str4, careServiceAction, careServiceProductUiModel, str5, j2, l, l2, l3, (i2 & 8192) != 0 ? false : z, (i2 & 16384) != 0 ? false : z2, (32768 & i2) != 0 ? false : z3, (65536 & i2) != 0 ? false : z4, (i2 & 131072) != 0 ? false : z5, null);
    }

    public static CareServiceShortUiModel a(CareServiceShortUiModel careServiceShortUiModel, String str, String str2, CareServiceCategory careServiceCategory, String str3, CareServiceAction careServiceAction, long j2, Long l, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2) {
        String str4 = (i2 & 1) != 0 ? careServiceShortUiModel.f64063b : str;
        String str5 = (i2 & 2) != 0 ? careServiceShortUiModel.f64064c : str2;
        String str6 = careServiceShortUiModel.d;
        CareServiceType careServiceType = careServiceShortUiModel.f64065e;
        CareServiceCategory careServiceCategory2 = (i2 & 16) != 0 ? careServiceShortUiModel.f64066f : careServiceCategory;
        String str7 = (i2 & 32) != 0 ? careServiceShortUiModel.g : str3;
        CareServiceAction careServiceAction2 = (i2 & 64) != 0 ? careServiceShortUiModel.f64067h : careServiceAction;
        CareServiceProductUiModel careServiceProductUiModel = careServiceShortUiModel.f64068i;
        String str8 = careServiceShortUiModel.f64069j;
        long j3 = (i2 & 512) != 0 ? careServiceShortUiModel.f64070k : j2;
        Long l2 = (i2 & 1024) != 0 ? careServiceShortUiModel.l : l;
        Long l3 = careServiceShortUiModel.m;
        Long l4 = careServiceShortUiModel.n;
        boolean z6 = (i2 & 8192) != 0 ? careServiceShortUiModel.o : z;
        boolean z7 = (i2 & 16384) != 0 ? careServiceShortUiModel.p : z2;
        boolean z8 = (32768 & i2) != 0 ? careServiceShortUiModel.q : z3;
        boolean z9 = (i2 & 131072) != 0 ? careServiceShortUiModel.s : z5;
        str4.getClass();
        str5.getClass();
        careServiceType.getClass();
        careServiceCategory2.getClass();
        str7.getClass();
        return new CareServiceShortUiModel(str4, str5, str6, careServiceType, careServiceCategory2, str7, careServiceAction2, careServiceProductUiModel, str8, j3, l2, l3, l4, z6, z7, z8, z4, z9, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002e  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceShortUiModel)) {
            return false;
        }
        CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) obj;
        String str = careServiceShortUiModel.f64063b;
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        if (!Intrinsics.c(this.f64063b, str) || !Intrinsics.c(this.f64064c, careServiceShortUiModel.f64064c)) {
            return false;
        }
        String str2 = careServiceShortUiModel.d;
        String str3 = this.d;
        if (str3 == null) {
            if (str2 == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str2 == null) {
            zC = false;
        } else {
            CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
            zC = Intrinsics.c(str3, str2);
        }
        return zC && this.f64065e == careServiceShortUiModel.f64065e && this.f64066f == careServiceShortUiModel.f64066f && Intrinsics.c(this.g, careServiceShortUiModel.g) && this.f64067h == careServiceShortUiModel.f64067h && Intrinsics.c(this.f64068i, careServiceShortUiModel.f64068i) && Intrinsics.c(this.f64069j, careServiceShortUiModel.f64069j) && this.f64070k == careServiceShortUiModel.f64070k && Intrinsics.c(this.l, careServiceShortUiModel.l) && Intrinsics.c(this.m, careServiceShortUiModel.m) && Intrinsics.c(this.n, careServiceShortUiModel.n) && this.o == careServiceShortUiModel.o && this.p == careServiceShortUiModel.p && this.q == careServiceShortUiModel.q && this.r == careServiceShortUiModel.r && this.s == careServiceShortUiModel.s;
    }

    public final int hashCode() {
        int iHashCode;
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        int iB = fc.b(this.f64063b.hashCode() * 31, 31, this.f64064c);
        String str = this.d;
        if (str == null) {
            iHashCode = 0;
        } else {
            CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
            iHashCode = str.hashCode();
        }
        int iB2 = fc.b((this.f64066f.hashCode() + ((this.f64065e.hashCode() + ((iB + iHashCode) * 31)) * 31)) * 31, 31, this.g);
        CareServiceAction careServiceAction = this.f64067h;
        int iHashCode2 = (iB2 + (careServiceAction == null ? 0 : careServiceAction.hashCode())) * 31;
        CareServiceProductUiModel careServiceProductUiModel = this.f64068i;
        int iHashCode3 = (iHashCode2 + (careServiceProductUiModel == null ? 0 : careServiceProductUiModel.hashCode())) * 31;
        String str2 = this.f64069j;
        int iA = fc.a((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f64070k);
        Long l = this.l;
        int iHashCode4 = (iA + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.m;
        int iHashCode5 = (iHashCode4 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.n;
        return Boolean.hashCode(this.s) + o60.b(o60.b(o60.b(o60.b((iHashCode5 + (l3 != null ? l3.hashCode() : 0)) * 31, 31, this.o), 31, this.p), 31, this.q), 31, this.r);
    }

    public final String toString() {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str = this.d;
        if (str == null) {
            str = "null";
        } else {
            CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
        }
        StringBuilder sbS = fc.s("CareServiceShortUiModel(id=", this.f64063b, ", displayableId=", this.f64064c, ", transactionId=");
        sbS.append(str);
        sbS.append(", type=");
        sbS.append(this.f64065e);
        sbS.append(", category=");
        sbS.append(this.f64066f);
        sbS.append(", stepTitle=");
        sbS.append(this.g);
        sbS.append(", action=");
        sbS.append(this.f64067h);
        sbS.append(", product=");
        sbS.append(this.f64068i);
        sbS.append(", trackingURL=");
        sbS.append(this.f64069j);
        sbS.append(", creationDateInUtcMs=");
        sbS.append(this.f64070k);
        sbS.append(", deliveryDateInUtcMs=");
        sbS.append(this.l);
        sbS.append(", updatedDeliveryDateInUtcMs=");
        sbS.append(this.m);
        sbS.append(", restitutionHistoryDateInUtcMs=");
        sbS.append(this.n);
        sbS.append(", shouldShowPbl=");
        sbS.append(this.o);
        sbS.append(", shouldShowTrackShipment=");
        sbS.append(this.p);
        sbS.append(", shouldShowConfirmAddress=");
        sbS.append(this.q);
        sbS.append(", shouldShowAcceptAssessment=");
        sbS.append(this.r);
        sbS.append(", shouldShowContactAnExpert=");
        sbS.append(this.s);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        parcel.writeString(this.f64063b);
        parcel.writeString(this.f64064c);
        String str = this.d;
        if (str == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
            parcel.writeString(str);
        }
        parcel.writeString(this.f64065e.name());
        parcel.writeString(this.f64066f.name());
        parcel.writeString(this.g);
        CareServiceAction careServiceAction = this.f64067h;
        if (careServiceAction == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(careServiceAction.name());
        }
        CareServiceProductUiModel careServiceProductUiModel = this.f64068i;
        if (careServiceProductUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            careServiceProductUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.f64069j);
        parcel.writeLong(this.f64070k);
        Long l = this.l;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        }
        Long l2 = this.m;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l2.longValue());
        }
        Long l3 = this.n;
        if (l3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l3.longValue());
        }
        parcel.writeInt(this.o ? 1 : 0);
        parcel.writeInt(this.p ? 1 : 0);
        parcel.writeInt(this.q ? 1 : 0);
        parcel.writeInt(this.r ? 1 : 0);
        parcel.writeInt(this.s ? 1 : 0);
    }

    public CareServiceShortUiModel(String str, String str2, String str3, CareServiceType careServiceType, CareServiceCategory careServiceCategory, String str4, CareServiceAction careServiceAction, CareServiceProductUiModel careServiceProductUiModel, String str5, long j2, Long l, Long l2, Long l3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        careServiceType.getClass();
        careServiceCategory.getClass();
        str4.getClass();
        this.f64063b = str;
        this.f64064c = str2;
        this.d = str3;
        this.f64065e = careServiceType;
        this.f64066f = careServiceCategory;
        this.g = str4;
        this.f64067h = careServiceAction;
        this.f64068i = careServiceProductUiModel;
        this.f64069j = str5;
        this.f64070k = j2;
        this.l = l;
        this.m = l2;
        this.n = l3;
        this.o = z;
        this.p = z2;
        this.q = z3;
        this.r = z4;
        this.s = z5;
    }
}
