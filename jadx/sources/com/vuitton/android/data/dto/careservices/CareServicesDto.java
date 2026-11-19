package com.vuitton.android.data.dto.careservices;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fj;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.Date;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 *2\u00020\u0001:\u0002+*B«\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010 \u001a\u00020\u001a\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b#\u0010$B\u0091\u0002\b\u0010\u0012\u0006\u0010&\u001a\u00020%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010 \u001a\u00020\u001a\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010(\u001a\u0004\u0018\u00010'¢\u0006\u0004\b#\u0010)¨\u0006,"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServicesDto;", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "Lcom/vuitton/android/data/dto/repair/RepairTypeDto;", "recordType", "", "transactionId", "Lcom/vuitton/android/data/dto/repair/RepairStatusDto;", "myLVCareStatus", "storeName", "storeRetailCode", "Ljava/util/Date;", "createdDate", "myRepairCreatedDate", "lastModifiedDate", "lastMyRepairStatusChangedDate", "currencyCode", "typeOfRepair", "", "totalAmount", "totalAmountUpdated", "deliveryDate", "updatedDeliveryDate", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "isGenericSKU", "productName", "productSkuUnknown", "productFamily", "productImage", "isNotRepaired", "appointementDateTime", "origin", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServicesDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RepairTypeDto f44840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44841c;
    public final RepairStatusDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44843f;
    public final Date g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44844h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44845i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44846j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44847k;
    public final String l;
    public final Float m;
    public final Float n;
    public final String o;
    public final String p;
    public final String q;
    public final boolean r;
    public final String s;
    public final String t;
    public final String u;
    public final String v;
    public final boolean w;
    public final String x;
    public final String y;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServicesDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServicesDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServicesDto> serializer() {
            return CareServicesDto$$serializer.f44848a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        z = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new fj(0)), null, LazyKt.a(lazyThreadSafetyMode, new fj(1)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null};
    }

    public /* synthetic */ CareServicesDto(int i2, String str, RepairTypeDto repairTypeDto, String str2, RepairStatusDto repairStatusDto, String str3, String str4, Date date, String str5, String str6, String str7, String str8, String str9, Float f2, Float f3, String str10, String str11, String str12, boolean z2, String str13, String str14, String str15, String str16, boolean z3, String str17, String str18, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (4325376 != (i2 & 4325376)) {
            PluginExceptionsKt.b(i2, 4325376, CareServicesDto$$serializer.f44848a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44839a = null;
        } else {
            this.f44839a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44840b = null;
        } else {
            this.f44840b = repairTypeDto;
        }
        if ((i2 & 4) == 0) {
            this.f44841c = null;
        } else {
            this.f44841c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = repairStatusDto;
        }
        if ((i2 & 16) == 0) {
            this.f44842e = null;
        } else {
            this.f44842e = str3;
        }
        if ((i2 & 32) == 0) {
            this.f44843f = null;
        } else {
            this.f44843f = str4;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = date;
        }
        if ((i2 & 128) == 0) {
            this.f44844h = null;
        } else {
            this.f44844h = str5;
        }
        if ((i2 & 256) == 0) {
            this.f44845i = null;
        } else {
            this.f44845i = str6;
        }
        if ((i2 & 512) == 0) {
            this.f44846j = null;
        } else {
            this.f44846j = str7;
        }
        if ((i2 & 1024) == 0) {
            this.f44847k = null;
        } else {
            this.f44847k = str8;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str9;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = f2;
        }
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = f3;
        }
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = str10;
        }
        if ((32768 & i2) == 0) {
            this.p = null;
        } else {
            this.p = str11;
        }
        if ((65536 & i2) == 0) {
            this.q = null;
        } else {
            this.q = str12;
        }
        this.r = z2;
        if ((262144 & i2) == 0) {
            this.s = null;
        } else {
            this.s = str13;
        }
        if ((524288 & i2) == 0) {
            this.t = null;
        } else {
            this.t = str14;
        }
        if ((1048576 & i2) == 0) {
            this.u = null;
        } else {
            this.u = str15;
        }
        if ((2097152 & i2) == 0) {
            this.v = null;
        } else {
            this.v = str16;
        }
        this.w = z3;
        if ((8388608 & i2) == 0) {
            this.x = null;
        } else {
            this.x = str17;
        }
        if ((i2 & 16777216) == 0) {
            this.y = null;
        } else {
            this.y = str18;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    /* JADX WARN: Code duplicated, block: B:67:0x00cb  */
    public final boolean equals(Object obj) {
        boolean zC;
        boolean zC2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServicesDto)) {
            return false;
        }
        CareServicesDto careServicesDto = (CareServicesDto) obj;
        String str = careServicesDto.f44839a;
        String str2 = this.f44839a;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        if (!zC || this.f44840b != careServicesDto.f44840b || !Intrinsics.c(this.f44841c, careServicesDto.f44841c) || this.d != careServicesDto.d || !Intrinsics.c(this.f44842e, careServicesDto.f44842e) || !Intrinsics.c(this.f44843f, careServicesDto.f44843f) || !Intrinsics.c(this.g, careServicesDto.g) || !Intrinsics.c(this.f44844h, careServicesDto.f44844h) || !Intrinsics.c(this.f44845i, careServicesDto.f44845i) || !Intrinsics.c(this.f44846j, careServicesDto.f44846j) || !Intrinsics.c(this.f44847k, careServicesDto.f44847k) || !Intrinsics.c(this.l, careServicesDto.l) || !Intrinsics.c(this.m, careServicesDto.m) || !Intrinsics.c(this.n, careServicesDto.n) || !Intrinsics.c(this.o, careServicesDto.o) || !Intrinsics.c(this.p, careServicesDto.p)) {
            return false;
        }
        String str3 = careServicesDto.q;
        String str4 = this.q;
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
        return zC2 && this.r == careServicesDto.r && Intrinsics.c(this.s, careServicesDto.s) && Intrinsics.c(this.t, careServicesDto.t) && Intrinsics.c(this.u, careServicesDto.u) && Intrinsics.c(this.v, careServicesDto.v) && this.w == careServicesDto.w && Intrinsics.c(this.x, careServicesDto.x) && Intrinsics.c(this.y, careServicesDto.y);
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2;
        String str = this.f44839a;
        if (str == null) {
            iHashCode = 0;
        } else {
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int i2 = iHashCode * 31;
        RepairTypeDto repairTypeDto = this.f44840b;
        int iHashCode3 = (i2 + (repairTypeDto == null ? 0 : repairTypeDto.hashCode())) * 31;
        String str2 = this.f44841c;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        RepairStatusDto repairStatusDto = this.d;
        int iHashCode5 = (iHashCode4 + (repairStatusDto == null ? 0 : repairStatusDto.hashCode())) * 31;
        String str3 = this.f44842e;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f44843f;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Date date = this.g;
        int iHashCode8 = (iHashCode7 + (date == null ? 0 : date.hashCode())) * 31;
        String str5 = this.f44844h;
        int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f44845i;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f44846j;
        int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f44847k;
        int iHashCode12 = (iHashCode11 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.l;
        int iHashCode13 = (iHashCode12 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Float f2 = this.m;
        int iHashCode14 = (iHashCode13 + (f2 == null ? 0 : f2.hashCode())) * 31;
        Float f3 = this.n;
        int iHashCode15 = (iHashCode14 + (f3 == null ? 0 : f3.hashCode())) * 31;
        String str10 = this.o;
        int iHashCode16 = (iHashCode15 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.p;
        int iHashCode17 = (iHashCode16 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.q;
        if (str12 == null) {
            iHashCode2 = 0;
        } else {
            SkuId.Companion companion2 = SkuId.INSTANCE;
            iHashCode2 = str12.hashCode();
        }
        int iB = o60.b((iHashCode17 + iHashCode2) * 31, 31, this.r);
        String str13 = this.s;
        int iHashCode18 = (iB + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.t;
        int iHashCode19 = (iHashCode18 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.u;
        int iHashCode20 = (iHashCode19 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.v;
        int iB2 = o60.b((iHashCode20 + (str16 == null ? 0 : str16.hashCode())) * 31, 31, this.w);
        String str17 = this.x;
        int iHashCode21 = (iB2 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.y;
        return iHashCode21 + (str18 != null ? str18.hashCode() : 0);
    }

    public final String toString() {
        String str = "null";
        String str2 = this.f44839a;
        if (str2 == null) {
            str2 = "null";
        } else {
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
        }
        String str3 = this.q;
        if (str3 != null) {
            SkuId.Companion companion2 = SkuId.INSTANCE;
            str = str3;
        }
        StringBuilder sb = new StringBuilder("CareServicesDto(id=");
        sb.append(str2);
        sb.append(", recordType=");
        sb.append(this.f44840b);
        sb.append(", transactionId=");
        sb.append(this.f44841c);
        sb.append(", myLVCareStatus=");
        sb.append(this.d);
        sb.append(", storeName=");
        cj.C(sb, this.f44842e, ", storeRetailCode=", this.f44843f, ", createdDate=");
        sb.append(this.g);
        sb.append(", myRepairCreatedDate=");
        sb.append(this.f44844h);
        sb.append(", lastModifiedDate=");
        cj.C(sb, this.f44845i, ", lastMyRepairStatusChangedDate=", this.f44846j, ", currencyCode=");
        cj.C(sb, this.f44847k, ", typeOfRepair=", this.l, ", totalAmount=");
        sb.append(this.m);
        sb.append(", totalAmountUpdated=");
        sb.append(this.n);
        sb.append(", deliveryDate=");
        cj.C(sb, this.o, ", updatedDeliveryDate=", this.p, ", sku=");
        pq0.A(str, ", isGenericSKU=", ", productName=", sb, this.r);
        cj.C(sb, this.s, ", productSkuUnknown=", this.t, ", productFamily=");
        cj.C(sb, this.u, ", productImage=", this.v, ", isNotRepaired=");
        cj.A(", appointementDateTime=", this.x, ", origin=", sb, this.w);
        return n00.r(this.y, ")", sb);
    }

    public CareServicesDto(String str, RepairTypeDto repairTypeDto, String str2, RepairStatusDto repairStatusDto, String str3, String str4, Date date, String str5, String str6, String str7, String str8, String str9, Float f2, Float f3, String str10, String str11, String str12, boolean z2, String str13, String str14, String str15, String str16, boolean z3, String str17, String str18, DefaultConstructorMarker defaultConstructorMarker) {
        this.f44839a = str;
        this.f44840b = repairTypeDto;
        this.f44841c = str2;
        this.d = repairStatusDto;
        this.f44842e = str3;
        this.f44843f = str4;
        this.g = date;
        this.f44844h = str5;
        this.f44845i = str6;
        this.f44846j = str7;
        this.f44847k = str8;
        this.l = str9;
        this.m = f2;
        this.n = f3;
        this.o = str10;
        this.p = str11;
        this.q = str12;
        this.r = z2;
        this.s = str13;
        this.t = str14;
        this.u = str15;
        this.v = str16;
        this.w = z3;
        this.x = str17;
        this.y = str18;
    }

    public /* synthetic */ CareServicesDto(String str, RepairTypeDto repairTypeDto, String str2, RepairStatusDto repairStatusDto, String str3, String str4, Date date, String str5, String str6, String str7, String str8, String str9, Float f2, Float f3, String str10, String str11, String str12, boolean z2, String str13, String str14, String str15, String str16, boolean z3, String str17, String str18, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : repairTypeDto, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : repairStatusDto, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4, (i2 & 64) != 0 ? null : date, (i2 & 128) != 0 ? null : str5, (i2 & 256) != 0 ? null : str6, (i2 & 512) != 0 ? null : str7, (i2 & 1024) != 0 ? null : str8, (i2 & 2048) != 0 ? null : str9, (i2 & 4096) != 0 ? null : f2, (i2 & 8192) != 0 ? null : f3, (i2 & 16384) != 0 ? null : str10, (32768 & i2) != 0 ? null : str11, (65536 & i2) != 0 ? null : str12, z2, (262144 & i2) != 0 ? null : str13, (524288 & i2) != 0 ? null : str14, (1048576 & i2) != 0 ? null : str15, (2097152 & i2) != 0 ? null : str16, z3, (8388608 & i2) != 0 ? null : str17, (i2 & 16777216) != 0 ? null : str18, null);
    }
}
