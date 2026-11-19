package com.vuitton.android.presentation.screen.certificates.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B«\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "Landroid/os/Parcelable;", "", "identifier", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "productName", "productImageUrl", "engravingIdentifier", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;", "status", "cxid", "currentOwnerId", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "journeyLink", "purchaseDate", "purchaseStore", "formattedDimensionValue", "productionDate", "productionSite", "material", "metallicPart", "acquiredDate", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateVisionnaireUiModel extends CertificateUiModel implements Parcelable {
    public static final Parcelable.Creator<CertificateVisionnaireUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55884c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f55886f;
    public final CertificateStatusUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f55887h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f55888i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ContributionLinkUiModel f55889j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f55890k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CertificateVisionnaireUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CertificateVisionnaireUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CertificateVisionnaireUiModel(parcel.readString(), SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b, parcel.readString(), parcel.readString(), parcel.readString(), CertificateStatusUiModel.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), (ContributionLinkUiModel) parcel.readParcelable(CertificateVisionnaireUiModel.class.getClassLoader()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final CertificateVisionnaireUiModel[] newArray(int i2) {
            return new CertificateVisionnaireUiModel[i2];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CertificateVisionnaireUiModel(String str, String str2, String str3, String str4, String str5, CertificateStatusUiModel certificateStatusUiModel, String str6, String str7, ContributionLinkUiModel contributionLinkUiModel, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str16;
        String str17 = (i2 & 1) != 0 ? "" : str;
        if ((i2 & 2) != 0) {
            SkuIdUiModel.f61763c.getClass();
            str16 = SkuIdUiModel.d;
        } else {
            str16 = str2;
        }
        this(str17, str16, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? "" : str5, certificateStatusUiModel, str6, str7, contributionLinkUiModel, str8, str9, str10, str11, str12, str13, str14, str15, null);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF55820f() {
        return this.f55886f;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF55817b() {
        return this.f55883b;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getF55819e() {
        return this.f55885e;
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
    public final String getF55818c() {
        return this.f55884c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateVisionnaireUiModel)) {
            return false;
        }
        CertificateVisionnaireUiModel certificateVisionnaireUiModel = (CertificateVisionnaireUiModel) obj;
        if (!Intrinsics.c(this.f55883b, certificateVisionnaireUiModel.f55883b)) {
            return false;
        }
        String str = certificateVisionnaireUiModel.f55884c;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f55884c, str) && Intrinsics.c(this.d, certificateVisionnaireUiModel.d) && Intrinsics.c(this.f55885e, certificateVisionnaireUiModel.f55885e) && Intrinsics.c(this.f55886f, certificateVisionnaireUiModel.f55886f) && this.g == certificateVisionnaireUiModel.g && Intrinsics.c(this.f55887h, certificateVisionnaireUiModel.f55887h) && Intrinsics.c(this.f55888i, certificateVisionnaireUiModel.f55888i) && Intrinsics.c(this.f55889j, certificateVisionnaireUiModel.f55889j) && Intrinsics.c(this.f55890k, certificateVisionnaireUiModel.f55890k) && Intrinsics.c(this.l, certificateVisionnaireUiModel.l) && Intrinsics.c(this.m, certificateVisionnaireUiModel.m) && Intrinsics.c(this.n, certificateVisionnaireUiModel.n) && Intrinsics.c(this.o, certificateVisionnaireUiModel.o) && Intrinsics.c(this.p, certificateVisionnaireUiModel.p) && Intrinsics.c(this.q, certificateVisionnaireUiModel.q) && Intrinsics.c(this.r, certificateVisionnaireUiModel.r);
    }

    public final int hashCode() {
        int iHashCode = this.f55883b.hashCode() * 31;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(fc.b((this.g.hashCode() + fc.b(fc.b(fc.b(fc.b(iHashCode, 31, this.f55884c), 31, this.d), 31, this.f55885e), 31, this.f55886f)) * 31, 31, this.f55887h), 31, this.f55888i);
        ContributionLinkUiModel contributionLinkUiModel = this.f55889j;
        int iHashCode2 = (iB + (contributionLinkUiModel == null ? 0 : contributionLinkUiModel.hashCode())) * 31;
        String str = this.f55890k;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.l;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.m;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.n;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.o;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.p;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.q;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.r;
        return iHashCode9 + (str8 != null ? str8.hashCode() : 0);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("CertificateVisionnaireUiModel(identifier=", this.f55883b, ", sku=", this.f55884c, ", productName=");
        cj.C(sbS, this.d, ", productImageUrl=", this.f55885e, ", engravingIdentifier=");
        sbS.append(this.f55886f);
        sbS.append(", status=");
        sbS.append(this.g);
        sbS.append(", cxid=");
        cj.C(sbS, this.f55887h, ", currentOwnerId=", this.f55888i, ", journeyLink=");
        sbS.append(this.f55889j);
        sbS.append(", purchaseDate=");
        sbS.append(this.f55890k);
        sbS.append(", purchaseStore=");
        cj.C(sbS, this.l, ", formattedDimensionValue=", this.m, ", productionDate=");
        cj.C(sbS, this.n, ", productionSite=", this.o, ", material=");
        cj.C(sbS, this.p, ", metallicPart=", this.q, ", acquiredDate=");
        return n00.r(this.r, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f55883b);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f55884c);
        parcel.writeString(this.d);
        parcel.writeString(this.f55885e);
        parcel.writeString(this.f55886f);
        this.g.writeToParcel(parcel, i2);
        parcel.writeString(this.f55887h);
        parcel.writeString(this.f55888i);
        parcel.writeParcelable(this.f55889j, i2);
        parcel.writeString(this.f55890k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.o);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        parcel.writeString(this.r);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateVisionnaireUiModel(String str, String str2, String str3, String str4, String str5, CertificateStatusUiModel certificateStatusUiModel, String str6, String str7, ContributionLinkUiModel contributionLinkUiModel, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        pq0.z(str, str2, str3, str4, str5);
        certificateStatusUiModel.getClass();
        str6.getClass();
        str7.getClass();
        this.f55883b = str;
        this.f55884c = str2;
        this.d = str3;
        this.f55885e = str4;
        this.f55886f = str5;
        this.g = certificateStatusUiModel;
        this.f55887h = str6;
        this.f55888i = str7;
        this.f55889j = contributionLinkUiModel;
        this.f55890k = str8;
        this.l = str9;
        this.m = str10;
        this.n = str11;
        this.o = str12;
        this.p = str13;
        this.q = str14;
        this.r = str15;
    }
}
