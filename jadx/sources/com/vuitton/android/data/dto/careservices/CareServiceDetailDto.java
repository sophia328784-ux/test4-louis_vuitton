package com.vuitton.android.data.dto.careservices;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.lg;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
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
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 F2\u00020\u0001:\u0002GFBÍ\u0004\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010#\u001a\u00020\u001d\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0002\u0012\f\u00105\u001a\b\u0012\u0004\u0012\u00020403\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b>\u0010?B\u008f\u0004\b\u0010\u0012\u0006\u0010A\u001a\u00020@\u0012\u0006\u0010B\u001a\u00020@\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010#\u001a\u00020\u001d\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010'\u001a\u0004\u0018\u00010&\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\b\u00100\u001a\u0004\u0018\u00010\u0002\u0012\b\u00101\u001a\u0004\u0018\u00010\u0002\u0012\b\u00102\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u00105\u001a\n\u0012\u0004\u0012\u000204\u0018\u000103\u0012\b\u00106\u001a\u0004\u0018\u00010\u0002\u0012\b\u00107\u001a\u0004\u0018\u00010\u0002\u0012\b\u00108\u001a\u0004\u0018\u00010\u0002\u0012\b\u00109\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010=\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010D\u001a\u0004\u0018\u00010C¢\u0006\u0004\b>\u0010E¨\u0006H"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;", "", "", "status", "responseId", "transactionDate", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "Lcom/vuitton/android/data/dto/repair/RepairTypeDto;", "recordType", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;", "transactionId", "Lcom/vuitton/android/data/dto/repair/RepairStatusDto;", "myLVCareStatus", "storeName", "storeRetailCode", "createdDate", "myRepairCreatedDate", "lastModifiedDate", "lastMyRepairStatusChangedDate", "currencyCode", "typeOfRepair", "", "totalAmount", "totalAmountUpdated", "deliveryDate", "updatedDeliveryDate", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "isGenericSKU", "productName", "productSkuUnknown", "productFamily", "productImage", "isNotRepaired", "appointementDateTime", "appointmentId", "Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;", "origin", "careExpertNote", "shippingAddressId", "shippingAddressLine1", "shippingAddressLine2", "shippingAddressLine3", "shippingCity", "shippingZipPostalCode", "shippingStateProvince", "shippingCountry", "trackingNumber", "carrier", "", "Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;", "careServiceLineItem", "email", "phoneNumber", "productDescription", "addressTitle", "addressFirstName", "addressLastName", "confirmAddressExpirationDate", "payByLinkUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "seen1", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceDetailDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] X;
    public final String A;
    public final String B;
    public final CareServiceOriginDto C;
    public final String D;
    public final String E;
    public final String F;
    public final String G;
    public final String H;
    public final String I;
    public final String J;
    public final String K;
    public final String L;
    public final String M;
    public final String N;
    public final List O;
    public final String P;
    public final String Q;
    public final String R;
    public final String S;
    public final String T;
    public final String U;
    public final String V;
    public final String W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44798c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RepairTypeDto f44799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44800f;
    public final RepairStatusDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44801h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44802i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44803j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44804k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final Double p;
    public final Double q;
    public final String r;
    public final String s;
    public final String t;
    public final boolean u;
    public final String v;
    public final String w;
    public final String x;
    public final String y;
    public final boolean z;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceDetailDto> serializer() {
            return CareServiceDetailDto$$serializer.f44805a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        X = new Lazy[]{null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new lg(18)), null, LazyKt.a(lazyThreadSafetyMode, new lg(20)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new lg(22)), null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new lg(23)), null, null, null, null, null, null, null, null};
    }

    public /* synthetic */ CareServiceDetailDto(int i2, int i3, String str, String str2, String str3, String str4, RepairTypeDto repairTypeDto, String str5, RepairStatusDto repairStatusDto, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Double d, Double d2, String str14, String str15, String str16, boolean z, String str17, String str18, String str19, String str20, boolean z2, String str21, String str22, CareServiceOriginDto careServiceOriginDto, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, List list, String str34, String str35, String str36, String str37, String str38, String str39, String str40, String str41, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if ((34603008 != (i2 & 34603008)) || (256 != (i3 & 256))) {
            PluginExceptionsKt.a(new int[]{i2, i3}, new int[]{34603008, 256}, CareServiceDetailDto$$serializer.f44805a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44796a = null;
        } else {
            this.f44796a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44797b = null;
        } else {
            this.f44797b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44798c = null;
        } else {
            this.f44798c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44799e = null;
        } else {
            this.f44799e = repairTypeDto;
        }
        if ((i2 & 32) == 0) {
            this.f44800f = null;
        } else {
            this.f44800f = str5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = repairStatusDto;
        }
        if ((i2 & 128) == 0) {
            this.f44801h = null;
        } else {
            this.f44801h = str6;
        }
        if ((i2 & 256) == 0) {
            this.f44802i = null;
        } else {
            this.f44802i = str7;
        }
        if ((i2 & 512) == 0) {
            this.f44803j = null;
        } else {
            this.f44803j = str8;
        }
        if ((i2 & 1024) == 0) {
            this.f44804k = null;
        } else {
            this.f44804k = str9;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str10;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = str11;
        }
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = str12;
        }
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = str13;
        }
        if ((i2 & 32768) == 0) {
            this.p = null;
        } else {
            this.p = d;
        }
        if ((i2 & 65536) == 0) {
            this.q = null;
        } else {
            this.q = d2;
        }
        if ((131072 & i2) == 0) {
            this.r = null;
        } else {
            this.r = str14;
        }
        if ((262144 & i2) == 0) {
            this.s = null;
        } else {
            this.s = str15;
        }
        if ((524288 & i2) == 0) {
            this.t = null;
        } else {
            this.t = str16;
        }
        this.u = z;
        if ((2097152 & i2) == 0) {
            this.v = null;
        } else {
            this.v = str17;
        }
        if ((4194304 & i2) == 0) {
            this.w = null;
        } else {
            this.w = str18;
        }
        if ((8388608 & i2) == 0) {
            this.x = null;
        } else {
            this.x = str19;
        }
        if ((16777216 & i2) == 0) {
            this.y = null;
        } else {
            this.y = str20;
        }
        this.z = z2;
        if ((67108864 & i2) == 0) {
            this.A = null;
        } else {
            this.A = str21;
        }
        if ((134217728 & i2) == 0) {
            this.B = null;
        } else {
            this.B = str22;
        }
        if ((268435456 & i2) == 0) {
            this.C = null;
        } else {
            this.C = careServiceOriginDto;
        }
        if ((536870912 & i2) == 0) {
            this.D = null;
        } else {
            this.D = str23;
        }
        if ((1073741824 & i2) == 0) {
            this.E = null;
        } else {
            this.E = str24;
        }
        if ((i2 & Integer.MIN_VALUE) == 0) {
            this.F = null;
        } else {
            this.F = str25;
        }
        if ((i3 & 1) == 0) {
            this.G = null;
        } else {
            this.G = str26;
        }
        if ((i3 & 2) == 0) {
            this.H = null;
        } else {
            this.H = str27;
        }
        if ((i3 & 4) == 0) {
            this.I = null;
        } else {
            this.I = str28;
        }
        if ((i3 & 8) == 0) {
            this.J = null;
        } else {
            this.J = str29;
        }
        if ((i3 & 16) == 0) {
            this.K = null;
        } else {
            this.K = str30;
        }
        if ((i3 & 32) == 0) {
            this.L = null;
        } else {
            this.L = str31;
        }
        if ((i3 & 64) == 0) {
            this.M = null;
        } else {
            this.M = str32;
        }
        if ((i3 & 128) == 0) {
            this.N = null;
        } else {
            this.N = str33;
        }
        this.O = list;
        if ((i3 & 512) == 0) {
            this.P = null;
        } else {
            this.P = str34;
        }
        if ((i3 & 1024) == 0) {
            this.Q = null;
        } else {
            this.Q = str35;
        }
        if ((i3 & 2048) == 0) {
            this.R = null;
        } else {
            this.R = str36;
        }
        if ((i3 & 4096) == 0) {
            this.S = null;
        } else {
            this.S = str37;
        }
        if ((i3 & 8192) == 0) {
            this.T = null;
        } else {
            this.T = str38;
        }
        if ((i3 & 16384) == 0) {
            this.U = null;
        } else {
            this.U = str39;
        }
        if ((i3 & 32768) == 0) {
            this.V = null;
        } else {
            this.V = str40;
        }
        if ((i3 & 65536) == 0) {
            this.W = null;
        } else {
            this.W = str41;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0037  */
    /* JADX WARN: Code duplicated, block: B:34:0x0056  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f9  */
    public final boolean equals(Object obj) {
        boolean zC;
        boolean zC2;
        boolean zC3;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceDetailDto)) {
            return false;
        }
        CareServiceDetailDto careServiceDetailDto = (CareServiceDetailDto) obj;
        if (!Intrinsics.c(this.f44796a, careServiceDetailDto.f44796a) || !Intrinsics.c(this.f44797b, careServiceDetailDto.f44797b) || !Intrinsics.c(this.f44798c, careServiceDetailDto.f44798c)) {
            return false;
        }
        String str = careServiceDetailDto.d;
        String str2 = this.d;
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
        if (!zC || this.f44799e != careServiceDetailDto.f44799e) {
            return false;
        }
        String str3 = careServiceDetailDto.f44800f;
        String str4 = this.f44800f;
        if (str4 == null) {
            if (str3 == null) {
                zC2 = true;
            } else {
                zC2 = false;
            }
        } else if (str3 == null) {
            zC2 = false;
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
            zC2 = Intrinsics.c(str4, str3);
        }
        if (!zC2 || this.g != careServiceDetailDto.g || !Intrinsics.c(this.f44801h, careServiceDetailDto.f44801h) || !Intrinsics.c(this.f44802i, careServiceDetailDto.f44802i) || !Intrinsics.c(this.f44803j, careServiceDetailDto.f44803j) || !Intrinsics.c(this.f44804k, careServiceDetailDto.f44804k) || !Intrinsics.c(this.l, careServiceDetailDto.l) || !Intrinsics.c(this.m, careServiceDetailDto.m) || !Intrinsics.c(this.n, careServiceDetailDto.n) || !Intrinsics.c(this.o, careServiceDetailDto.o) || !Intrinsics.c(this.p, careServiceDetailDto.p) || !Intrinsics.c(this.q, careServiceDetailDto.q) || !Intrinsics.c(this.r, careServiceDetailDto.r) || !Intrinsics.c(this.s, careServiceDetailDto.s)) {
            return false;
        }
        String str5 = careServiceDetailDto.t;
        String str6 = this.t;
        if (str6 == null) {
            if (str5 == null) {
                zC3 = true;
            } else {
                zC3 = false;
            }
        } else if (str5 == null) {
            zC3 = false;
        } else {
            SkuId.Companion companion3 = SkuId.INSTANCE;
            zC3 = Intrinsics.c(str6, str5);
        }
        return zC3 && this.u == careServiceDetailDto.u && Intrinsics.c(this.v, careServiceDetailDto.v) && Intrinsics.c(this.w, careServiceDetailDto.w) && Intrinsics.c(this.x, careServiceDetailDto.x) && Intrinsics.c(this.y, careServiceDetailDto.y) && this.z == careServiceDetailDto.z && Intrinsics.c(this.A, careServiceDetailDto.A) && Intrinsics.c(this.B, careServiceDetailDto.B) && this.C == careServiceDetailDto.C && Intrinsics.c(this.D, careServiceDetailDto.D) && Intrinsics.c(this.E, careServiceDetailDto.E) && Intrinsics.c(this.F, careServiceDetailDto.F) && Intrinsics.c(this.G, careServiceDetailDto.G) && Intrinsics.c(this.H, careServiceDetailDto.H) && Intrinsics.c(this.I, careServiceDetailDto.I) && Intrinsics.c(this.J, careServiceDetailDto.J) && Intrinsics.c(this.K, careServiceDetailDto.K) && Intrinsics.c(this.L, careServiceDetailDto.L) && Intrinsics.c(this.M, careServiceDetailDto.M) && Intrinsics.c(this.N, careServiceDetailDto.N) && Intrinsics.c(this.O, careServiceDetailDto.O) && Intrinsics.c(this.P, careServiceDetailDto.P) && Intrinsics.c(this.Q, careServiceDetailDto.Q) && Intrinsics.c(this.R, careServiceDetailDto.R) && Intrinsics.c(this.S, careServiceDetailDto.S) && Intrinsics.c(this.T, careServiceDetailDto.T) && Intrinsics.c(this.U, careServiceDetailDto.U) && Intrinsics.c(this.V, careServiceDetailDto.V) && Intrinsics.c(this.W, careServiceDetailDto.W);
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2;
        int iHashCode3;
        String str = this.f44796a;
        int iHashCode4 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44797b;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44798c;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        if (str4 == null) {
            iHashCode = 0;
        } else {
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
            iHashCode = str4.hashCode();
        }
        int i2 = (iHashCode6 + iHashCode) * 31;
        RepairTypeDto repairTypeDto = this.f44799e;
        int iHashCode7 = (i2 + (repairTypeDto == null ? 0 : repairTypeDto.hashCode())) * 31;
        String str5 = this.f44800f;
        if (str5 == null) {
            iHashCode2 = 0;
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
            iHashCode2 = str5.hashCode();
        }
        int i3 = (iHashCode7 + iHashCode2) * 31;
        RepairStatusDto repairStatusDto = this.g;
        int iHashCode8 = (i3 + (repairStatusDto == null ? 0 : repairStatusDto.hashCode())) * 31;
        String str6 = this.f44801h;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f44802i;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f44803j;
        int iHashCode11 = (iHashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f44804k;
        int iHashCode12 = (iHashCode11 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.l;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.m;
        int iHashCode14 = (iHashCode13 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.n;
        int iHashCode15 = (iHashCode14 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.o;
        int iHashCode16 = (iHashCode15 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Double d = this.p;
        int iHashCode17 = (iHashCode16 + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.q;
        int iHashCode18 = (iHashCode17 + (d2 == null ? 0 : d2.hashCode())) * 31;
        String str14 = this.r;
        int iHashCode19 = (iHashCode18 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.s;
        int iHashCode20 = (iHashCode19 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.t;
        if (str16 == null) {
            iHashCode3 = 0;
        } else {
            SkuId.Companion companion3 = SkuId.INSTANCE;
            iHashCode3 = str16.hashCode();
        }
        int iB = o60.b((iHashCode20 + iHashCode3) * 31, 31, this.u);
        String str17 = this.v;
        int iHashCode21 = (iB + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.w;
        int iHashCode22 = (iHashCode21 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.x;
        int iHashCode23 = (iHashCode22 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.y;
        int iB2 = o60.b((iHashCode23 + (str20 == null ? 0 : str20.hashCode())) * 31, 31, this.z);
        String str21 = this.A;
        int iHashCode24 = (iB2 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.B;
        int iHashCode25 = (iHashCode24 + (str22 == null ? 0 : str22.hashCode())) * 31;
        CareServiceOriginDto careServiceOriginDto = this.C;
        int iHashCode26 = (iHashCode25 + (careServiceOriginDto == null ? 0 : careServiceOriginDto.hashCode())) * 31;
        String str23 = this.D;
        int iHashCode27 = (iHashCode26 + (str23 == null ? 0 : str23.hashCode())) * 31;
        String str24 = this.E;
        int iHashCode28 = (iHashCode27 + (str24 == null ? 0 : str24.hashCode())) * 31;
        String str25 = this.F;
        int iHashCode29 = (iHashCode28 + (str25 == null ? 0 : str25.hashCode())) * 31;
        String str26 = this.G;
        int iHashCode30 = (iHashCode29 + (str26 == null ? 0 : str26.hashCode())) * 31;
        String str27 = this.H;
        int iHashCode31 = (iHashCode30 + (str27 == null ? 0 : str27.hashCode())) * 31;
        String str28 = this.I;
        int iHashCode32 = (iHashCode31 + (str28 == null ? 0 : str28.hashCode())) * 31;
        String str29 = this.J;
        int iHashCode33 = (iHashCode32 + (str29 == null ? 0 : str29.hashCode())) * 31;
        String str30 = this.K;
        int iHashCode34 = (iHashCode33 + (str30 == null ? 0 : str30.hashCode())) * 31;
        String str31 = this.L;
        int iHashCode35 = (iHashCode34 + (str31 == null ? 0 : str31.hashCode())) * 31;
        String str32 = this.M;
        int iHashCode36 = (iHashCode35 + (str32 == null ? 0 : str32.hashCode())) * 31;
        String str33 = this.N;
        int iA = n00.a((iHashCode36 + (str33 == null ? 0 : str33.hashCode())) * 31, 31, this.O);
        String str34 = this.P;
        int iHashCode37 = (iA + (str34 == null ? 0 : str34.hashCode())) * 31;
        String str35 = this.Q;
        int iHashCode38 = (iHashCode37 + (str35 == null ? 0 : str35.hashCode())) * 31;
        String str36 = this.R;
        int iHashCode39 = (iHashCode38 + (str36 == null ? 0 : str36.hashCode())) * 31;
        String str37 = this.S;
        int iHashCode40 = (iHashCode39 + (str37 == null ? 0 : str37.hashCode())) * 31;
        String str38 = this.T;
        int iHashCode41 = (iHashCode40 + (str38 == null ? 0 : str38.hashCode())) * 31;
        String str39 = this.U;
        int iHashCode42 = (iHashCode41 + (str39 == null ? 0 : str39.hashCode())) * 31;
        String str40 = this.V;
        int iHashCode43 = (iHashCode42 + (str40 == null ? 0 : str40.hashCode())) * 31;
        String str41 = this.W;
        return iHashCode43 + (str41 != null ? str41.hashCode() : 0);
    }

    public final String toString() {
        String str = "null";
        String str2 = this.d;
        if (str2 == null) {
            str2 = "null";
        } else {
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
        }
        String str3 = this.f44800f;
        if (str3 == null) {
            str3 = "null";
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
        }
        String str4 = this.t;
        if (str4 != null) {
            SkuId.Companion companion3 = SkuId.INSTANCE;
            str = str4;
        }
        StringBuilder sbS = fc.s("CareServiceDetailDto(status=", this.f44796a, ", responseId=", this.f44797b, ", transactionDate=");
        cj.C(sbS, this.f44798c, ", id=", str2, ", recordType=");
        sbS.append(this.f44799e);
        sbS.append(", transactionId=");
        sbS.append(str3);
        sbS.append(", myLVCareStatus=");
        sbS.append(this.g);
        sbS.append(", storeName=");
        sbS.append(this.f44801h);
        sbS.append(", storeRetailCode=");
        cj.C(sbS, this.f44802i, ", createdDate=", this.f44803j, ", myRepairCreatedDate=");
        cj.C(sbS, this.f44804k, ", lastModifiedDate=", this.l, ", lastMyRepairStatusChangedDate=");
        cj.C(sbS, this.m, ", currencyCode=", this.n, ", typeOfRepair=");
        sbS.append(this.o);
        sbS.append(", totalAmount=");
        sbS.append(this.p);
        sbS.append(", totalAmountUpdated=");
        sbS.append(this.q);
        sbS.append(", deliveryDate=");
        sbS.append(this.r);
        sbS.append(", updatedDeliveryDate=");
        cj.C(sbS, this.s, ", sku=", str, ", isGenericSKU=");
        cj.A(", productName=", this.v, ", productSkuUnknown=", sbS, this.u);
        cj.C(sbS, this.w, ", productFamily=", this.x, ", productImage=");
        pq0.A(this.y, ", isNotRepaired=", ", appointementDateTime=", sbS, this.z);
        cj.C(sbS, this.A, ", appointmentId=", this.B, ", origin=");
        sbS.append(this.C);
        sbS.append(", careExpertNote=");
        sbS.append(this.D);
        sbS.append(", shippingAddressId=");
        cj.C(sbS, this.E, ", shippingAddressLine1=", this.F, ", shippingAddressLine2=");
        cj.C(sbS, this.G, ", shippingAddressLine3=", this.H, ", shippingCity=");
        cj.C(sbS, this.I, ", shippingZipPostalCode=", this.J, ", shippingStateProvince=");
        cj.C(sbS, this.K, ", shippingCountry=", this.L, ", trackingNumber=");
        cj.C(sbS, this.M, ", carrier=", this.N, ", careServiceLineItem=");
        o60.B(", email=", this.P, ", phoneNumber=", sbS, this.O);
        cj.C(sbS, this.Q, ", productDescription=", this.R, ", addressTitle=");
        cj.C(sbS, this.S, ", addressFirstName=", this.T, ", addressLastName=");
        cj.C(sbS, this.U, ", confirmAddressExpirationDate=", this.V, ", payByLinkUrl=");
        return n00.r(this.W, ")", sbS);
    }

    public CareServiceDetailDto(String str, String str2, String str3, String str4, RepairTypeDto repairTypeDto, String str5, RepairStatusDto repairStatusDto, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Double d, Double d2, String str14, String str15, String str16, boolean z, String str17, String str18, String str19, String str20, boolean z2, String str21, String str22, CareServiceOriginDto careServiceOriginDto, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, List list, String str34, String str35, String str36, String str37, String str38, String str39, String str40, String str41, DefaultConstructorMarker defaultConstructorMarker) {
        list.getClass();
        this.f44796a = str;
        this.f44797b = str2;
        this.f44798c = str3;
        this.d = str4;
        this.f44799e = repairTypeDto;
        this.f44800f = str5;
        this.g = repairStatusDto;
        this.f44801h = str6;
        this.f44802i = str7;
        this.f44803j = str8;
        this.f44804k = str9;
        this.l = str10;
        this.m = str11;
        this.n = str12;
        this.o = str13;
        this.p = d;
        this.q = d2;
        this.r = str14;
        this.s = str15;
        this.t = str16;
        this.u = z;
        this.v = str17;
        this.w = str18;
        this.x = str19;
        this.y = str20;
        this.z = z2;
        this.A = str21;
        this.B = str22;
        this.C = careServiceOriginDto;
        this.D = str23;
        this.E = str24;
        this.F = str25;
        this.G = str26;
        this.H = str27;
        this.I = str28;
        this.J = str29;
        this.K = str30;
        this.L = str31;
        this.M = str32;
        this.N = str33;
        this.O = list;
        this.P = str34;
        this.Q = str35;
        this.R = str36;
        this.S = str37;
        this.T = str38;
        this.U = str39;
        this.V = str40;
        this.W = str41;
    }

    public /* synthetic */ CareServiceDetailDto(String str, String str2, String str3, String str4, RepairTypeDto repairTypeDto, String str5, RepairStatusDto repairStatusDto, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Double d, Double d2, String str14, String str15, String str16, boolean z, String str17, String str18, String str19, String str20, boolean z2, String str21, String str22, CareServiceOriginDto careServiceOriginDto, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, List list, String str34, String str35, String str36, String str37, String str38, String str39, String str40, String str41, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : repairTypeDto, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? null : repairStatusDto, (i2 & 128) != 0 ? null : str6, (i2 & 256) != 0 ? null : str7, (i2 & 512) != 0 ? null : str8, (i2 & 1024) != 0 ? null : str9, (i2 & 2048) != 0 ? null : str10, (i2 & 4096) != 0 ? null : str11, (i2 & 8192) != 0 ? null : str12, (i2 & 16384) != 0 ? null : str13, (i2 & 32768) != 0 ? null : d, (i2 & 65536) != 0 ? null : d2, (i2 & 131072) != 0 ? null : str14, (i2 & 262144) != 0 ? null : str15, (i2 & 524288) != 0 ? null : str16, z, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? null : str17, (i2 & 4194304) != 0 ? null : str18, (i2 & 8388608) != 0 ? null : str19, (i2 & 16777216) != 0 ? null : str20, z2, (i2 & 67108864) != 0 ? null : str21, (i2 & 134217728) != 0 ? null : str22, (i2 & 268435456) != 0 ? null : careServiceOriginDto, (i2 & PKIFailureInfo.duplicateCertReq) != 0 ? null : str23, (i2 & 1073741824) != 0 ? null : str24, (i2 & Integer.MIN_VALUE) != 0 ? null : str25, (i3 & 1) != 0 ? null : str26, (i3 & 2) != 0 ? null : str27, (i3 & 4) != 0 ? null : str28, (i3 & 8) != 0 ? null : str29, (i3 & 16) != 0 ? null : str30, (i3 & 32) != 0 ? null : str31, (i3 & 64) != 0 ? null : str32, (i3 & 128) != 0 ? null : str33, list, (i3 & 512) != 0 ? null : str34, (i3 & 1024) != 0 ? null : str35, (i3 & 2048) != 0 ? null : str36, (i3 & 4096) != 0 ? null : str37, (i3 & 8192) != 0 ? null : str38, (i3 & 16384) != 0 ? null : str39, (i3 & 32768) != 0 ? null : str40, (i3 & 65536) != 0 ? null : str41, null);
    }
}
