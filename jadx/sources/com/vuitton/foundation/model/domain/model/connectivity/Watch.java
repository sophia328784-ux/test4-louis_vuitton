package com.vuitton.foundation.model.domain.model.connectivity;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;", "Lcom/vuitton/foundation/model/domain/model/connectivity/ConnectedObject;", "", b.a.f24015b, "iotKey", "serialNumber", "desc", "name", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "imageUrl", "", "version", "skuToFetch", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Watch extends ConnectedObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67302c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67304f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f67305h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67306i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Watch(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, String str8, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        str3.getClass();
        this.f67300a = str;
        this.f67301b = str2;
        this.f67302c = str3;
        this.d = str4;
        this.f67303e = str5;
        this.f67304f = str6;
        this.g = str7;
        this.f67305h = i2;
        this.f67306i = str8;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x004d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0077  */
    public final boolean equals(Object obj) {
        boolean zC;
        boolean zC2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Watch)) {
            return false;
        }
        Watch watch = (Watch) obj;
        if (!Intrinsics.c(this.f67300a, watch.f67300a) || !Intrinsics.c(this.f67301b, watch.f67301b) || !Intrinsics.c(this.f67302c, watch.f67302c) || !Intrinsics.c(this.d, watch.d) || !Intrinsics.c(this.f67303e, watch.f67303e)) {
            return false;
        }
        String str = watch.f67304f;
        String str2 = this.f67304f;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        if (!zC || !Intrinsics.c(this.g, watch.g) || this.f67305h != watch.f67305h) {
            return false;
        }
        String str3 = watch.f67306i;
        String str4 = this.f67306i;
        if (str4 == null) {
            if (str3 == null) {
                zC2 = true;
            } else {
                zC2 = false;
            }
        } else if (str3 == null) {
            zC2 = false;
        } else {
            SkuId.Companion companion2 = SkuId.INSTANCE;
            zC2 = Intrinsics.c(str4, str3);
        }
        return zC2;
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2 = 0;
        String str = this.f67300a;
        int iHashCode3 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67301b;
        int iB = fc.b((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f67302c);
        String str3 = this.d;
        int iHashCode4 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f67303e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f67304f;
        if (str5 == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str5.hashCode();
        }
        int i2 = (iHashCode5 + iHashCode) * 31;
        String str6 = this.g;
        int iB2 = tr.b(this.f67305h, (i2 + (str6 == null ? 0 : str6.hashCode())) * 31, 31);
        String str7 = this.f67306i;
        if (str7 != null) {
            SkuId.Companion companion2 = SkuId.INSTANCE;
            iHashCode2 = str7.hashCode();
        }
        return iB2 + iHashCode2;
    }

    public final String toString() {
        String str = "null";
        String str2 = this.f67304f;
        if (str2 == null) {
            str2 = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        String str3 = this.f67306i;
        if (str3 != null) {
            SkuId.Companion companion2 = SkuId.INSTANCE;
            str = str3;
        }
        StringBuilder sbS = fc.s("Watch(id=", this.f67300a, ", iotKey=", this.f67301b, ", serialNumber=");
        cj.C(sbS, this.f67302c, ", desc=", this.d, ", name=");
        cj.C(sbS, this.f67303e, ", sku=", str2, ", imageUrl=");
        sbS.append(this.g);
        sbS.append(", version=");
        sbS.append(this.f67305h);
        sbS.append(", skuToFetch=");
        return n00.r(str, ")", sbS);
    }
}
