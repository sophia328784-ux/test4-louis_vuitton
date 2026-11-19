package com.vuitton.android.presentation.screen.certificates.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u009b\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "Landroid/os/Parcelable;", "", "identifier", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "productName", "productImageUrl", "engravingIdentifier", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;", "status", "detailId", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;", "productId", "carat", "", "caratDouble", "color", "clarity", "certificateDetailsUrl", "", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;", "stoneList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateDiamondUiModel extends CertificateUiModel implements Parcelable {
    public static final Parcelable.Creator<CertificateDiamondUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55828c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f55830f;
    public final CertificateStatusUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f55831h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f55832i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f55833j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Double f55834k;
    public final String l;
    public final String m;
    public final String n;
    public final List o;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CertificateDiamondUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CertificateDiamondUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String str = SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b;
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            CertificateStatusUiModel certificateStatusUiModelCreateFromParcel = CertificateStatusUiModel.CREATOR.createFromParcel(parcel);
            String string5 = parcel.readString();
            String str2 = ProductIdUiModel.CREATOR.createFromParcel(parcel).f61732b;
            String string6 = parcel.readString();
            Double dValueOf = parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble());
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            while (true) {
                String str3 = str;
                if (iD == i2) {
                    return new CertificateDiamondUiModel(string, str, string2, string3, string4, certificateStatusUiModelCreateFromParcel, string5, str2, string6, dValueOf, string7, string8, string9, arrayList, null);
                }
                iD = pq0.d(CertificateDiamondStoneUiModel.CREATOR, parcel, arrayList, iD, 1);
                str = str3;
                string2 = string2;
            }
        }

        @Override // android.os.Parcelable.Creator
        public final CertificateDiamondUiModel[] newArray(int i2) {
            return new CertificateDiamondUiModel[i2];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CertificateDiamondUiModel(String str, String str2, String str3, String str4, String str5, CertificateStatusUiModel certificateStatusUiModel, String str6, String str7, String str8, Double d, String str9, String str10, String str11, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str12;
        String str13;
        String str14 = (i2 & 1) != 0 ? "" : str;
        if ((i2 & 2) != 0) {
            SkuIdUiModel.f61763c.getClass();
            str12 = SkuIdUiModel.d;
        } else {
            str12 = str2;
        }
        String str15 = (i2 & 4) != 0 ? "" : str3;
        String str16 = (i2 & 8) != 0 ? "" : str4;
        String str17 = (i2 & 16) != 0 ? "" : str5;
        CertificateStatusUiModel certificateStatusUiModel2 = (i2 & 32) != 0 ? CertificateStatusUiModel.UNLOCKED : certificateStatusUiModel;
        String str18 = (i2 & 64) != 0 ? "" : str6;
        if ((i2 & 128) != 0) {
            ProductIdUiModel.f61731c.getClass();
            str13 = ProductIdUiModel.d;
        } else {
            str13 = str7;
        }
        this(str14, str12, str15, str16, str17, certificateStatusUiModel2, str18, str13, (i2 & 256) != 0 ? "" : str8, (i2 & 512) != 0 ? null : d, (i2 & 1024) != 0 ? "" : str9, (i2 & 2048) != 0 ? "" : str10, (i2 & 4096) == 0 ? str11 : "", (i2 & 8192) != 0 ? EmptyList.f71768b : list, null);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF55886f() {
        return this.f55830f;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF55883b() {
        return this.f55827b;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getF55885e() {
        return this.f55829e;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getD() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getF55884c() {
        return this.f55828c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateDiamondUiModel)) {
            return false;
        }
        CertificateDiamondUiModel certificateDiamondUiModel = (CertificateDiamondUiModel) obj;
        if (!Intrinsics.c(this.f55827b, certificateDiamondUiModel.f55827b)) {
            return false;
        }
        String str = certificateDiamondUiModel.f55828c;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        if (!Intrinsics.c(this.f55828c, str) || !Intrinsics.c(this.d, certificateDiamondUiModel.d) || !Intrinsics.c(this.f55829e, certificateDiamondUiModel.f55829e) || !Intrinsics.c(this.f55830f, certificateDiamondUiModel.f55830f) || this.g != certificateDiamondUiModel.g || !Intrinsics.c(this.f55831h, certificateDiamondUiModel.f55831h)) {
            return false;
        }
        String str2 = certificateDiamondUiModel.f55832i;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        return Intrinsics.c(this.f55832i, str2) && Intrinsics.c(this.f55833j, certificateDiamondUiModel.f55833j) && Intrinsics.c(this.f55834k, certificateDiamondUiModel.f55834k) && Intrinsics.c(this.l, certificateDiamondUiModel.l) && Intrinsics.c(this.m, certificateDiamondUiModel.m) && Intrinsics.c(this.n, certificateDiamondUiModel.n) && Intrinsics.c(this.o, certificateDiamondUiModel.o);
    }

    public final int hashCode() {
        int iHashCode = this.f55827b.hashCode() * 31;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b((this.g.hashCode() + fc.b(fc.b(fc.b(fc.b(iHashCode, 31, this.f55828c), 31, this.d), 31, this.f55829e), 31, this.f55830f)) * 31, 31, this.f55831h);
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        int iB2 = fc.b(fc.b(iB, 31, this.f55832i), 31, this.f55833j);
        Double d = this.f55834k;
        return this.o.hashCode() + fc.b(fc.b(fc.b((iB2 + (d == null ? 0 : d.hashCode())) * 31, 31, this.l), 31, this.m), 31, this.n);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        StringBuilder sbS = fc.s("CertificateDiamondUiModel(identifier=", this.f55827b, ", sku=", this.f55828c, ", productName=");
        cj.C(sbS, this.d, ", productImageUrl=", this.f55829e, ", engravingIdentifier=");
        sbS.append(this.f55830f);
        sbS.append(", status=");
        sbS.append(this.g);
        sbS.append(", detailId=");
        cj.C(sbS, this.f55831h, ", productId=", this.f55832i, ", carat=");
        sbS.append(this.f55833j);
        sbS.append(", caratDouble=");
        sbS.append(this.f55834k);
        sbS.append(", color=");
        cj.C(sbS, this.l, ", clarity=", this.m, ", certificateDetailsUrl=");
        return o60.o(this.n, ", stoneList=", ")", sbS, this.o);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f55827b);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f55828c);
        parcel.writeString(this.d);
        parcel.writeString(this.f55829e);
        parcel.writeString(this.f55830f);
        this.g.writeToParcel(parcel, i2);
        parcel.writeString(this.f55831h);
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        parcel.writeString(this.f55832i);
        parcel.writeString(this.f55833j);
        Double d = this.f55834k;
        if (d == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d.doubleValue());
        }
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        Iterator itP = cj.p(this.o, parcel);
        while (itP.hasNext()) {
            ((CertificateDiamondStoneUiModel) itP.next()).writeToParcel(parcel, i2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateDiamondUiModel(String str, String str2, String str3, String str4, String str5, CertificateStatusUiModel certificateStatusUiModel, String str6, String str7, String str8, Double d, String str9, String str10, String str11, List list, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        pq0.z(str, str2, str3, str4, str5);
        certificateStatusUiModel.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        str9.getClass();
        pq0.B(str10, str11, list);
        this.f55827b = str;
        this.f55828c = str2;
        this.d = str3;
        this.f55829e = str4;
        this.f55830f = str5;
        this.g = certificateStatusUiModel;
        this.f55831h = str6;
        this.f55832i = str7;
        this.f55833j = str8;
        this.f55834k = d;
        this.l = str9;
        this.m = str10;
        this.n = str11;
        this.o = list;
    }
}
