package com.vuitton.android.presentation.screen.exclusivesales.models;

import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesCategoryUiModel;", "", "", "dimId", "imageUrl", "offerDisplayName", "offerDescription", "largeImageUrl", "offerId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExclusiveSalesCategoryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57565c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f57566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f57567f;

    public ExclusiveSalesCategoryUiModel(String str, String str2, String str3, String str4, String str5, String str6) {
        str.getClass();
        this.f57563a = str;
        this.f57564b = str2;
        this.f57565c = str3;
        this.d = str4;
        this.f57566e = str5;
        this.f57567f = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExclusiveSalesCategoryUiModel)) {
            return false;
        }
        ExclusiveSalesCategoryUiModel exclusiveSalesCategoryUiModel = (ExclusiveSalesCategoryUiModel) obj;
        return Intrinsics.c(this.f57563a, exclusiveSalesCategoryUiModel.f57563a) && Intrinsics.c(this.f57564b, exclusiveSalesCategoryUiModel.f57564b) && Intrinsics.c(this.f57565c, exclusiveSalesCategoryUiModel.f57565c) && Intrinsics.c(this.d, exclusiveSalesCategoryUiModel.d) && Intrinsics.c(this.f57566e, exclusiveSalesCategoryUiModel.f57566e) && Intrinsics.c(this.f57567f, exclusiveSalesCategoryUiModel.f57567f);
    }

    public final int hashCode() {
        int iHashCode = this.f57563a.hashCode() * 31;
        String str = this.f57564b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f57565c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f57566e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f57567f;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ExclusiveSalesCategoryUiModel(dimId=", this.f57563a, ", imageUrl=", this.f57564b, ", offerDisplayName=");
        cj.C(sbS, this.f57565c, ", offerDescription=", this.d, ", largeImageUrl=");
        return tr.l(sbS, this.f57566e, ", offerId=", this.f57567f, ")");
    }
}
