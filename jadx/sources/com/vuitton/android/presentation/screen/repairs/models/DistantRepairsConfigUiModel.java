package com.vuitton.android.presentation.screen.repairs.models;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001Bm\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;", "", "", "contactEmail", "contactNumber", "repairsApiUrl", "processPageUrl", "trackingUrl", "storeCode", "storeName", "zipCodeExclusionRegex", "careServicePromotionKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DistantRepairsConfigUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64004c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f64005e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f64006f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f64007h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f64008i;

    public /* synthetic */ DistantRepairsConfigUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? new String() : str2, (i2 & 4) != 0 ? new String() : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? new String() : str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : str8, (i2 & 256) != 0 ? null : str9);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DistantRepairsConfigUiModel)) {
            return false;
        }
        DistantRepairsConfigUiModel distantRepairsConfigUiModel = (DistantRepairsConfigUiModel) obj;
        return Intrinsics.c(this.f64002a, distantRepairsConfigUiModel.f64002a) && Intrinsics.c(this.f64003b, distantRepairsConfigUiModel.f64003b) && Intrinsics.c(this.f64004c, distantRepairsConfigUiModel.f64004c) && Intrinsics.c(this.d, distantRepairsConfigUiModel.d) && Intrinsics.c(this.f64005e, distantRepairsConfigUiModel.f64005e) && Intrinsics.c(this.f64006f, distantRepairsConfigUiModel.f64006f) && Intrinsics.c(this.g, distantRepairsConfigUiModel.g) && Intrinsics.c(this.f64007h, distantRepairsConfigUiModel.f64007h) && Intrinsics.c(this.f64008i, distantRepairsConfigUiModel.f64008i);
    }

    public final int hashCode() {
        String str = this.f64002a;
        int iB = fc.b(fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f64003b), 31, this.f64004c);
        String str2 = this.d;
        int iHashCode = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f64005e;
        int iB2 = fc.b((iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.f64006f);
        String str4 = this.g;
        int iHashCode2 = (iB2 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f64007h;
        int iHashCode3 = (iHashCode2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f64008i;
        return iHashCode3 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DistantRepairsConfigUiModel(contactEmail=", this.f64002a, ", contactNumber=", this.f64003b, ", repairsApiUrl=");
        cj.C(sbS, this.f64004c, ", processPageUrl=", this.d, ", trackingUrl=");
        cj.C(sbS, this.f64005e, ", storeCode=", this.f64006f, ", storeName=");
        cj.C(sbS, this.g, ", zipCodeExclusionRegex=", this.f64007h, ", careServicePromotionKey=");
        return n00.r(this.f64008i, ")", sbS);
    }

    public DistantRepairsConfigUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        cj.z(str2, str3, str6);
        this.f64002a = str;
        this.f64003b = str2;
        this.f64004c = str3;
        this.d = str4;
        this.f64005e = str5;
        this.f64006f = str6;
        this.g = str7;
        this.f64007h = str8;
        this.f64008i = str9;
    }

    public DistantRepairsConfigUiModel() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }
}
