package com.vuitton.foundation.model.domain.model.config;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;", "", "", "contactEmail", "contactSmsNumber", "contactNumber", "contactWhatsappNumber", "repairsApiUrl", "processPageUrl", "trackingUrl", "storeCode", "storeName", "zipCodeExclusionRegex", "careServicePromotionKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DistantRepairsConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67244c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67246f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f67249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f67250k;

    public DistantRepairsConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        str5.getClass();
        str8.getClass();
        this.f67242a = str;
        this.f67243b = str2;
        this.f67244c = str3;
        this.d = str4;
        this.f67245e = str5;
        this.f67246f = str6;
        this.g = str7;
        this.f67247h = str8;
        this.f67248i = str9;
        this.f67249j = str10;
        this.f67250k = str11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DistantRepairsConfig)) {
            return false;
        }
        DistantRepairsConfig distantRepairsConfig = (DistantRepairsConfig) obj;
        return Intrinsics.c(this.f67242a, distantRepairsConfig.f67242a) && Intrinsics.c(this.f67243b, distantRepairsConfig.f67243b) && Intrinsics.c(this.f67244c, distantRepairsConfig.f67244c) && Intrinsics.c(this.d, distantRepairsConfig.d) && Intrinsics.c(this.f67245e, distantRepairsConfig.f67245e) && Intrinsics.c(this.f67246f, distantRepairsConfig.f67246f) && Intrinsics.c(this.g, distantRepairsConfig.g) && Intrinsics.c(this.f67247h, distantRepairsConfig.f67247h) && Intrinsics.c(this.f67248i, distantRepairsConfig.f67248i) && Intrinsics.c(this.f67249j, distantRepairsConfig.f67249j) && Intrinsics.c(this.f67250k, distantRepairsConfig.f67250k);
    }

    public final int hashCode() {
        String str = this.f67242a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67243b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67244c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iB = fc.b((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f67245e);
        String str5 = this.f67246f;
        int iHashCode4 = (iB + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.g;
        int iB2 = fc.b((iHashCode4 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.f67247h);
        String str7 = this.f67248i;
        int iHashCode5 = (iB2 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f67249j;
        int iHashCode6 = (iHashCode5 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f67250k;
        return iHashCode6 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DistantRepairsConfig(contactEmail=", this.f67242a, ", contactSmsNumber=", this.f67243b, ", contactNumber=");
        cj.C(sbS, this.f67244c, ", contactWhatsappNumber=", this.d, ", repairsApiUrl=");
        cj.C(sbS, this.f67245e, ", processPageUrl=", this.f67246f, ", trackingUrl=");
        cj.C(sbS, this.g, ", storeCode=", this.f67247h, ", storeName=");
        cj.C(sbS, this.f67248i, ", zipCodeExclusionRegex=", this.f67249j, ", careServicePromotionKey=");
        return n00.r(this.f67250k, ")", sbS);
    }
}
