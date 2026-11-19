package com.vuitton.android.presentation.screen.certificates.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002BO\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "Landroid/os/Parcelable;", "", "identifier", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "productName", "productImageUrl", "engravingIdentifier", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;", "status", "acquiredDate", "pdfUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateRubyUiModel extends CertificateUiModel implements Parcelable {
    public static final Parcelable.Creator<CertificateRubyUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55841c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f55843f;
    public final CertificateStatusUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f55844h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f55845i;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CertificateRubyUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CertificateRubyUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CertificateRubyUiModel(parcel.readString(), SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b, parcel.readString(), parcel.readString(), parcel.readString(), CertificateStatusUiModel.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final CertificateRubyUiModel[] newArray(int i2) {
            return new CertificateRubyUiModel[i2];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateRubyUiModel(String str, String str2, String str3, String str4, String str5, CertificateStatusUiModel certificateStatusUiModel, String str6, String str7, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        pq0.z(str, str2, str3, str4, str5);
        certificateStatusUiModel.getClass();
        str6.getClass();
        str7.getClass();
        this.f55840b = str;
        this.f55841c = str2;
        this.d = str3;
        this.f55842e = str4;
        this.f55843f = str5;
        this.g = certificateStatusUiModel;
        this.f55844h = str6;
        this.f55845i = str7;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF55843f() {
        return this.f55843f;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF55840b() {
        return this.f55840b;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getF55842e() {
        return this.f55842e;
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
    public final String getF55841c() {
        return this.f55841c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateRubyUiModel)) {
            return false;
        }
        CertificateRubyUiModel certificateRubyUiModel = (CertificateRubyUiModel) obj;
        if (!Intrinsics.c(this.f55840b, certificateRubyUiModel.f55840b)) {
            return false;
        }
        String str = certificateRubyUiModel.f55841c;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f55841c, str) && Intrinsics.c(this.d, certificateRubyUiModel.d) && Intrinsics.c(this.f55842e, certificateRubyUiModel.f55842e) && Intrinsics.c(this.f55843f, certificateRubyUiModel.f55843f) && this.g == certificateRubyUiModel.g && Intrinsics.c(this.f55844h, certificateRubyUiModel.f55844h) && Intrinsics.c(this.f55845i, certificateRubyUiModel.f55845i);
    }

    public final int hashCode() {
        int iHashCode = this.f55840b.hashCode() * 31;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f55845i.hashCode() + fc.b((this.g.hashCode() + fc.b(fc.b(fc.b(fc.b(iHashCode, 31, this.f55841c), 31, this.d), 31, this.f55842e), 31, this.f55843f)) * 31, 31, this.f55844h);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("CertificateRubyUiModel(identifier=", this.f55840b, ", sku=", this.f55841c, ", productName=");
        cj.C(sbS, this.d, ", productImageUrl=", this.f55842e, ", engravingIdentifier=");
        sbS.append(this.f55843f);
        sbS.append(", status=");
        sbS.append(this.g);
        sbS.append(", acquiredDate=");
        return tr.l(sbS, this.f55844h, ", pdfUrl=", this.f55845i, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f55840b);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f55841c);
        parcel.writeString(this.d);
        parcel.writeString(this.f55842e);
        parcel.writeString(this.f55843f);
        this.g.writeToParcel(parcel, i2);
        parcel.writeString(this.f55844h);
        parcel.writeString(this.f55845i);
    }

    public /* synthetic */ CertificateRubyUiModel(String str, String str2, String str3, String str4, String str5, CertificateStatusUiModel certificateStatusUiModel, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, str2, str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? "" : str5, (i2 & 32) != 0 ? CertificateStatusUiModel.UNLOCKED : certificateStatusUiModel, str6, str7, null);
    }
}
