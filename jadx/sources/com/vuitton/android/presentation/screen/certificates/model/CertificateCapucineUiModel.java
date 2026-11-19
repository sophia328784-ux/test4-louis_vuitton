package com.vuitton.android.presentation.screen.certificates.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "Landroid/os/Parcelable;", "", "identifier", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "productName", "productImageUrl", "engravingIdentifier", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;", "status", "ttNumber", "acquiredDateWithLongFormatStyle", "artist", "material", "", "slideshowImages", "videoUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateCapucineUiModel extends CertificateUiModel implements Parcelable {
    public static final Parcelable.Creator<CertificateCapucineUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55818c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55819e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f55820f;
    public final CertificateStatusUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f55821h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f55822i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f55823j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f55824k;
    public final List l;
    public final String m;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CertificateCapucineUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CertificateCapucineUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CertificateCapucineUiModel(parcel.readString(), SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b, parcel.readString(), parcel.readString(), parcel.readString(), CertificateStatusUiModel.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArrayList(), parcel.readString(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final CertificateCapucineUiModel[] newArray(int i2) {
            return new CertificateCapucineUiModel[i2];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateCapucineUiModel(String str, String str2, String str3, String str4, String str5, CertificateStatusUiModel certificateStatusUiModel, String str6, String str7, String str8, String str9, List list, String str10, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        pq0.z(str, str2, str3, str4, str5);
        certificateStatusUiModel.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        str9.getClass();
        list.getClass();
        str10.getClass();
        this.f55817b = str;
        this.f55818c = str2;
        this.d = str3;
        this.f55819e = str4;
        this.f55820f = str5;
        this.g = certificateStatusUiModel;
        this.f55821h = str6;
        this.f55822i = str7;
        this.f55823j = str8;
        this.f55824k = str9;
        this.l = list;
        this.m = str10;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF55820f() {
        return this.f55820f;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF55817b() {
        return this.f55817b;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getF55819e() {
        return this.f55819e;
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
        return this.f55818c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateCapucineUiModel)) {
            return false;
        }
        CertificateCapucineUiModel certificateCapucineUiModel = (CertificateCapucineUiModel) obj;
        if (!Intrinsics.c(this.f55817b, certificateCapucineUiModel.f55817b)) {
            return false;
        }
        String str = certificateCapucineUiModel.f55818c;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f55818c, str) && Intrinsics.c(this.d, certificateCapucineUiModel.d) && Intrinsics.c(this.f55819e, certificateCapucineUiModel.f55819e) && Intrinsics.c(this.f55820f, certificateCapucineUiModel.f55820f) && this.g == certificateCapucineUiModel.g && Intrinsics.c(this.f55821h, certificateCapucineUiModel.f55821h) && Intrinsics.c(this.f55822i, certificateCapucineUiModel.f55822i) && Intrinsics.c(this.f55823j, certificateCapucineUiModel.f55823j) && Intrinsics.c(this.f55824k, certificateCapucineUiModel.f55824k) && Intrinsics.c(this.l, certificateCapucineUiModel.l) && Intrinsics.c(this.m, certificateCapucineUiModel.m);
    }

    public final int hashCode() {
        int iHashCode = this.f55817b.hashCode() * 31;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.m.hashCode() + n00.a(fc.b(fc.b(fc.b(fc.b((this.g.hashCode() + fc.b(fc.b(fc.b(fc.b(iHashCode, 31, this.f55818c), 31, this.d), 31, this.f55819e), 31, this.f55820f)) * 31, 31, this.f55821h), 31, this.f55822i), 31, this.f55823j), 31, this.f55824k), 31, this.l);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("CertificateCapucineUiModel(identifier=", this.f55817b, ", sku=", this.f55818c, ", productName=");
        cj.C(sbS, this.d, ", productImageUrl=", this.f55819e, ", engravingIdentifier=");
        sbS.append(this.f55820f);
        sbS.append(", status=");
        sbS.append(this.g);
        sbS.append(", ttNumber=");
        cj.C(sbS, this.f55821h, ", acquiredDateWithLongFormatStyle=", this.f55822i, ", artist=");
        cj.C(sbS, this.f55823j, ", material=", this.f55824k, ", slideshowImages=");
        sbS.append(this.l);
        sbS.append(", videoUrl=");
        sbS.append(this.m);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f55817b);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f55818c);
        parcel.writeString(this.d);
        parcel.writeString(this.f55819e);
        parcel.writeString(this.f55820f);
        this.g.writeToParcel(parcel, i2);
        parcel.writeString(this.f55821h);
        parcel.writeString(this.f55822i);
        parcel.writeString(this.f55823j);
        parcel.writeString(this.f55824k);
        parcel.writeStringList(this.l);
        parcel.writeString(this.m);
    }

    public /* synthetic */ CertificateCapucineUiModel(String str, String str2, String str3, String str4, String str5, CertificateStatusUiModel certificateStatusUiModel, String str6, String str7, String str8, String str9, List list, String str10, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, str2, str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? "" : str5, (i2 & 32) != 0 ? CertificateStatusUiModel.UNLOCKED : certificateStatusUiModel, str6, str7, str8, str9, list, str10, null);
    }
}
