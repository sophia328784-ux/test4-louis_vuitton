package com.vuitton.android.data.dto.careservices.bff;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.PriceDto;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.lg;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0087\b\u0018\u0000 .2\u00020\u0001:\f/0123456789.B§\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\r\u0012\u000e\b\u0002\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\r\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%¢\u0006\u0004\b'\u0010(B§\u0002\b\u0010\u0012\u0006\u0010*\u001a\u00020)\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\r\u0012\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\r\u0012\b\u0010$\u001a\u0004\u0018\u00010#\u0012\b\u0010&\u001a\u0004\u0018\u00010%\u0012\b\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b'\u0010-¨\u0006:"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseDto;", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "", "displayableId", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;", "transactionId", "description", "email", "phone", "type", "category", "", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;", "steps", "action", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;", Payload.TYPE_STORE, "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;", "product", "trackingURL", "creationDate", "deliveryDate", "updatedDeliveryDate", "restitutionHistoryDate", "appointmentId", "payByLinkURL", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;", "preliminaryAssessmentInformation", "contactMethod", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason;", "cancellationReasons", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$InformationSection;", "inStoreInformation", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;", "appointmentInformation", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;", "shippingInformation", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "Step", "Store", "Assessment", "AssessmentItem", "CancellationReason", "InformationSection", "AppointmentInformation", "AppointmentDetail", "ContactInformation", "ShippingInformation", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceDetailDto implements CareServiceBaseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44889c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44891f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f44893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44894j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Store f44895k;
    public final CareServiceProductDto l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final Assessment t;
    public final String u;
    public final List v;
    public final List w;
    public final AppointmentInformation x;
    public final ShippingInformation y;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceDetailDto> serializer() {
            return CareServiceDetailDto$$serializer.f44896a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        z = new Lazy[]{null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new lg(17)), null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new lg(19)), LazyKt.a(lazyThreadSafetyMode, new lg(21)), null, null};
    }

    public CareServiceDetailDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, String str9, Store store, CareServiceProductDto careServiceProductDto, String str10, String str11, String str12, String str13, String str14, String str15, String str16, Assessment assessment, String str17, List list2, List list3, AppointmentInformation appointmentInformation, ShippingInformation shippingInformation, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (8435 != (i2 & 8435)) {
            PluginExceptionsKt.b(i2, 8435, CareServiceDetailDto$$serializer.f44896a.getF19838b());
            throw null;
        }
        this.f44887a = str;
        this.f44888b = str2;
        if ((i2 & 4) == 0) {
            this.f44889c = null;
        } else {
            this.f44889c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.f44890e = str5;
        this.f44891f = str6;
        this.g = str7;
        this.f44892h = str8;
        if ((i2 & 256) == 0) {
            this.f44893i = EmptyList.f71768b;
        } else {
            this.f44893i = list;
        }
        if ((i2 & 512) == 0) {
            this.f44894j = null;
        } else {
            this.f44894j = str9;
        }
        if ((i2 & 1024) == 0) {
            this.f44895k = null;
        } else {
            this.f44895k = store;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = careServiceProductDto;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = str10;
        }
        this.n = str11;
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = str12;
        }
        if ((32768 & i2) == 0) {
            this.p = null;
        } else {
            this.p = str13;
        }
        if ((65536 & i2) == 0) {
            this.q = null;
        } else {
            this.q = str14;
        }
        if ((131072 & i2) == 0) {
            this.r = null;
        } else {
            this.r = str15;
        }
        if ((262144 & i2) == 0) {
            this.s = null;
        } else {
            this.s = str16;
        }
        if ((524288 & i2) == 0) {
            this.t = null;
        } else {
            this.t = assessment;
        }
        if ((1048576 & i2) == 0) {
            this.u = null;
        } else {
            this.u = str17;
        }
        this.v = (2097152 & i2) == 0 ? EmptyList.f71768b : list2;
        this.w = (4194304 & i2) == 0 ? EmptyList.f71768b : list3;
        if ((8388608 & i2) == 0) {
            this.x = null;
        } else {
            this.x = appointmentInformation;
        }
        if ((i2 & 16777216) == 0) {
            this.y = null;
        } else {
            this.y = shippingInformation;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002e  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceDetailDto)) {
            return false;
        }
        CareServiceDetailDto careServiceDetailDto = (CareServiceDetailDto) obj;
        String str = careServiceDetailDto.f44887a;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        if (!Intrinsics.c(this.f44887a, str) || !Intrinsics.c(this.f44888b, careServiceDetailDto.f44888b)) {
            return false;
        }
        String str2 = careServiceDetailDto.f44889c;
        String str3 = this.f44889c;
        if (str3 == null) {
            if (str2 == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str2 == null) {
            zC = false;
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
            zC = Intrinsics.c(str3, str2);
        }
        return zC && Intrinsics.c(this.d, careServiceDetailDto.d) && Intrinsics.c(this.f44890e, careServiceDetailDto.f44890e) && Intrinsics.c(this.f44891f, careServiceDetailDto.f44891f) && Intrinsics.c(this.g, careServiceDetailDto.g) && Intrinsics.c(this.f44892h, careServiceDetailDto.f44892h) && Intrinsics.c(this.f44893i, careServiceDetailDto.f44893i) && Intrinsics.c(this.f44894j, careServiceDetailDto.f44894j) && Intrinsics.c(this.f44895k, careServiceDetailDto.f44895k) && Intrinsics.c(this.l, careServiceDetailDto.l) && Intrinsics.c(this.m, careServiceDetailDto.m) && Intrinsics.c(this.n, careServiceDetailDto.n) && Intrinsics.c(this.o, careServiceDetailDto.o) && Intrinsics.c(this.p, careServiceDetailDto.p) && Intrinsics.c(this.q, careServiceDetailDto.q) && Intrinsics.c(this.r, careServiceDetailDto.r) && Intrinsics.c(this.s, careServiceDetailDto.s) && Intrinsics.c(this.t, careServiceDetailDto.t) && Intrinsics.c(this.u, careServiceDetailDto.u) && Intrinsics.c(this.v, careServiceDetailDto.v) && Intrinsics.c(this.w, careServiceDetailDto.w) && Intrinsics.c(this.x, careServiceDetailDto.x) && Intrinsics.c(this.y, careServiceDetailDto.y);
    }

    public final int hashCode() {
        int iHashCode;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        int iB = fc.b(this.f44887a.hashCode() * 31, 31, this.f44888b);
        String str = this.f44889c;
        if (str == null) {
            iHashCode = 0;
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int i2 = (iB + iHashCode) * 31;
        String str2 = this.d;
        int iHashCode2 = (i2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44890e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f44891f;
        int iA = n00.a(fc.b(fc.b((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.g), 31, this.f44892h), 31, this.f44893i);
        String str5 = this.f44894j;
        int iHashCode4 = (iA + (str5 == null ? 0 : str5.hashCode())) * 31;
        Store store = this.f44895k;
        int iHashCode5 = (iHashCode4 + (store == null ? 0 : store.hashCode())) * 31;
        CareServiceProductDto careServiceProductDto = this.l;
        int iHashCode6 = (iHashCode5 + (careServiceProductDto == null ? 0 : careServiceProductDto.hashCode())) * 31;
        String str6 = this.m;
        int iB2 = fc.b((iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.n);
        String str7 = this.o;
        int iHashCode7 = (iB2 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.p;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.q;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.r;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.s;
        int iHashCode11 = (iHashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Assessment assessment = this.t;
        int iHashCode12 = (iHashCode11 + (assessment == null ? 0 : assessment.hashCode())) * 31;
        String str12 = this.u;
        int iA2 = n00.a(n00.a((iHashCode12 + (str12 == null ? 0 : str12.hashCode())) * 31, 31, this.v), 31, this.w);
        AppointmentInformation appointmentInformation = this.x;
        int iHashCode13 = (iA2 + (appointmentInformation == null ? 0 : appointmentInformation.hashCode())) * 31;
        ShippingInformation shippingInformation = this.y;
        return iHashCode13 + (shippingInformation != null ? shippingInformation.hashCode() : 0);
    }

    public final String toString() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        String str = this.f44889c;
        if (str == null) {
            str = "null";
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
        }
        StringBuilder sbS = fc.s("CareServiceDetailDto(id=", this.f44887a, ", displayableId=", this.f44888b, ", transactionId=");
        cj.C(sbS, str, ", description=", this.d, ", email=");
        cj.C(sbS, this.f44890e, ", phone=", this.f44891f, ", type=");
        cj.C(sbS, this.g, ", category=", this.f44892h, ", steps=");
        o60.B(", action=", this.f44894j, ", store=", sbS, this.f44893i);
        sbS.append(this.f44895k);
        sbS.append(", product=");
        sbS.append(this.l);
        sbS.append(", trackingURL=");
        cj.C(sbS, this.m, ", creationDate=", this.n, ", deliveryDate=");
        cj.C(sbS, this.o, ", updatedDeliveryDate=", this.p, ", restitutionHistoryDate=");
        cj.C(sbS, this.q, ", appointmentId=", this.r, ", payByLinkURL=");
        sbS.append(this.s);
        sbS.append(", preliminaryAssessmentInformation=");
        sbS.append(this.t);
        sbS.append(", contactMethod=");
        d21.z(this.u, ", cancellationReasons=", ", inStoreInformation=", sbS, this.v);
        sbS.append(this.w);
        sbS.append(", appointmentInformation=");
        sbS.append(this.x);
        sbS.append(", shippingInformation=");
        sbS.append(this.y);
        sbS.append(")");
        return sbS.toString();
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;", "", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;", "contactInformation", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;", "detail", "<init>", "(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AppointmentInformation {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContactInformation f44900a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AppointmentDetail f44901b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AppointmentInformation> serializer() {
                return CareServiceDetailDto$AppointmentInformation$$serializer.f44902a;
            }
        }

        public /* synthetic */ AppointmentInformation(int i2, ContactInformation contactInformation, AppointmentDetail appointmentDetail, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i2 & 1) == 0) {
                this.f44900a = null;
            } else {
                this.f44900a = contactInformation;
            }
            if ((i2 & 2) == 0) {
                this.f44901b = null;
            } else {
                this.f44901b = appointmentDetail;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AppointmentInformation)) {
                return false;
            }
            AppointmentInformation appointmentInformation = (AppointmentInformation) obj;
            return Intrinsics.c(this.f44900a, appointmentInformation.f44900a) && Intrinsics.c(this.f44901b, appointmentInformation.f44901b);
        }

        public final int hashCode() {
            ContactInformation contactInformation = this.f44900a;
            int iHashCode = (contactInformation == null ? 0 : contactInformation.hashCode()) * 31;
            AppointmentDetail appointmentDetail = this.f44901b;
            return iHashCode + (appointmentDetail != null ? appointmentDetail.hashCode() : 0);
        }

        public final String toString() {
            return "AppointmentInformation(contactInformation=" + this.f44900a + ", detail=" + this.f44901b + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AppointmentInformation() {
            this((ContactInformation) null, (AppointmentDetail) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        public AppointmentInformation(ContactInformation contactInformation, AppointmentDetail appointmentDetail) {
            this.f44900a = contactInformation;
            this.f44901b = appointmentDetail;
        }

        public /* synthetic */ AppointmentInformation(ContactInformation contactInformation, AppointmentDetail appointmentDetail, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : contactInformation, (i2 & 2) != 0 ? null : appointmentDetail);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;", "", "", "date", "title", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AppointmentDetail {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44897a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44898b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AppointmentDetail> serializer() {
                return CareServiceDetailDto$AppointmentDetail$$serializer.f44899a;
            }
        }

        public /* synthetic */ AppointmentDetail(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, CareServiceDetailDto$AppointmentDetail$$serializer.f44899a.getF19838b());
                throw null;
            }
            this.f44897a = str;
            this.f44898b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AppointmentDetail)) {
                return false;
            }
            AppointmentDetail appointmentDetail = (AppointmentDetail) obj;
            return Intrinsics.c(this.f44897a, appointmentDetail.f44897a) && Intrinsics.c(this.f44898b, appointmentDetail.f44898b);
        }

        public final int hashCode() {
            return this.f44898b.hashCode() + (this.f44897a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("AppointmentDetail(date=", this.f44897a, ", title=", this.f44898b, ")");
        }

        public AppointmentDetail(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f44897a = str;
            this.f44898b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason;", "", "", b.a.f24015b, "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CancellationReason {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44915a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44916b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CancellationReason> serializer() {
                return CareServiceDetailDto$CancellationReason$$serializer.f44917a;
            }
        }

        public /* synthetic */ CancellationReason(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, CareServiceDetailDto$CancellationReason$$serializer.f44917a.getF19838b());
                throw null;
            }
            this.f44915a = str;
            this.f44916b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CancellationReason)) {
                return false;
            }
            CancellationReason cancellationReason = (CancellationReason) obj;
            return Intrinsics.c(this.f44915a, cancellationReason.f44915a) && Intrinsics.c(this.f44916b, cancellationReason.f44916b);
        }

        public final int hashCode() {
            return this.f44916b.hashCode() + (this.f44915a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("CancellationReason(id=", this.f44915a, ", description=", this.f44916b, ")");
        }

        public CancellationReason(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f44915a = str;
            this.f44916b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;", "", "", "identifier", "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Store {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44935a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44936b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Store> serializer() {
                return CareServiceDetailDto$Store$$serializer.f44937a;
            }
        }

        public /* synthetic */ Store(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, CareServiceDetailDto$Store$$serializer.f44937a.getF19838b());
                throw null;
            }
            this.f44935a = str;
            this.f44936b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Store)) {
                return false;
            }
            Store store = (Store) obj;
            return Intrinsics.c(this.f44935a, store.f44935a) && Intrinsics.c(this.f44936b, store.f44936b);
        }

        public final int hashCode() {
            return this.f44936b.hashCode() + (this.f44935a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Store(identifier=", this.f44935a, ", name=", this.f44936b, ")");
        }

        public Store(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f44935a = str;
            this.f44936b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;", "", "", "identifier", "description", "status", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Step {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44931a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44932b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f44933c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Step> serializer() {
                return CareServiceDetailDto$Step$$serializer.f44934a;
            }
        }

        public /* synthetic */ Step(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
            if (7 != (i2 & 7)) {
                PluginExceptionsKt.b(i2, 7, CareServiceDetailDto$Step$$serializer.f44934a.getF19838b());
                throw null;
            }
            this.f44931a = str;
            this.f44932b = str2;
            this.f44933c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Step)) {
                return false;
            }
            Step step = (Step) obj;
            return Intrinsics.c(this.f44931a, step.f44931a) && Intrinsics.c(this.f44932b, step.f44932b) && Intrinsics.c(this.f44933c, step.f44933c);
        }

        public final int hashCode() {
            return this.f44933c.hashCode() + fc.b(this.f44931a.hashCode() * 31, 31, this.f44932b);
        }

        public final String toString() {
            return n00.r(this.f44933c, ")", fc.s("Step(identifier=", this.f44931a, ", description=", this.f44932b, ", status="));
        }

        public Step(String str, String str2, String str3) {
            cj.z(str, str2, str3);
            this.f44931a = str;
            this.f44932b = str2;
            this.f44933c = str3;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;", "", "", "instruction", "Lcom/vuitton/android/data/dto/pdp/PriceDto;", "price", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AssessmentItem {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44912a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PriceDto f44913b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AssessmentItem> serializer() {
                return CareServiceDetailDto$AssessmentItem$$serializer.f44914a;
            }
        }

        public /* synthetic */ AssessmentItem(int i2, String str, PriceDto priceDto, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, CareServiceDetailDto$AssessmentItem$$serializer.f44914a.getF19838b());
                throw null;
            }
            this.f44912a = str;
            if ((i2 & 2) == 0) {
                this.f44913b = null;
            } else {
                this.f44913b = priceDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AssessmentItem)) {
                return false;
            }
            AssessmentItem assessmentItem = (AssessmentItem) obj;
            return Intrinsics.c(this.f44912a, assessmentItem.f44912a) && Intrinsics.c(this.f44913b, assessmentItem.f44913b);
        }

        public final int hashCode() {
            int iHashCode = this.f44912a.hashCode() * 31;
            PriceDto priceDto = this.f44913b;
            return iHashCode + (priceDto == null ? 0 : priceDto.hashCode());
        }

        public final String toString() {
            return "AssessmentItem(instruction=" + this.f44912a + ", price=" + this.f44913b + ")";
        }

        public AssessmentItem(String str, PriceDto priceDto) {
            str.getClass();
            this.f44912a = str;
            this.f44913b = priceDto;
        }

        public /* synthetic */ AssessmentItem(String str, PriceDto priceDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : priceDto);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$InformationSection;", "", "", "title", "description", "mainAction", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class InformationSection {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44922a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44923b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f44924c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$InformationSection$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$InformationSection;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<InformationSection> serializer() {
                return CareServiceDetailDto$InformationSection$$serializer.f44925a;
            }
        }

        public /* synthetic */ InformationSection(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, CareServiceDetailDto$InformationSection$$serializer.f44925a.getF19838b());
                throw null;
            }
            this.f44922a = str;
            this.f44923b = str2;
            if ((i2 & 4) == 0) {
                this.f44924c = null;
            } else {
                this.f44924c = str3;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InformationSection)) {
                return false;
            }
            InformationSection informationSection = (InformationSection) obj;
            return Intrinsics.c(this.f44922a, informationSection.f44922a) && Intrinsics.c(this.f44923b, informationSection.f44923b) && Intrinsics.c(this.f44924c, informationSection.f44924c);
        }

        public final int hashCode() {
            int iB = fc.b(this.f44922a.hashCode() * 31, 31, this.f44923b);
            String str = this.f44924c;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n00.r(this.f44924c, ")", fc.s("InformationSection(title=", this.f44922a, ", description=", this.f44923b, ", mainAction="));
        }

        public InformationSection(String str, String str2, String str3) {
            str.getClass();
            str2.getClass();
            this.f44922a = str;
            this.f44923b = str2;
            this.f44924c = str3;
        }

        public /* synthetic */ InformationSection(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i2 & 4) != 0 ? null : str3);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;", "", "", "title", "phone", "email", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ContactInformation {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44918a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44919b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f44920c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ContactInformation> serializer() {
                return CareServiceDetailDto$ContactInformation$$serializer.f44921a;
            }
        }

        public /* synthetic */ ContactInformation(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, CareServiceDetailDto$ContactInformation$$serializer.f44921a.getF19838b());
                throw null;
            }
            this.f44918a = str;
            if ((i2 & 2) == 0) {
                this.f44919b = null;
            } else {
                this.f44919b = str2;
            }
            if ((i2 & 4) == 0) {
                this.f44920c = null;
            } else {
                this.f44920c = str3;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ContactInformation)) {
                return false;
            }
            ContactInformation contactInformation = (ContactInformation) obj;
            return Intrinsics.c(this.f44918a, contactInformation.f44918a) && Intrinsics.c(this.f44919b, contactInformation.f44919b) && Intrinsics.c(this.f44920c, contactInformation.f44920c);
        }

        public final int hashCode() {
            int iHashCode = this.f44918a.hashCode() * 31;
            String str = this.f44919b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f44920c;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return n00.r(this.f44920c, ")", fc.s("ContactInformation(title=", this.f44918a, ", phone=", this.f44919b, ", email="));
        }

        public ContactInformation(String str, String str2, String str3) {
            str.getClass();
            this.f44918a = str;
            this.f44919b = str2;
            this.f44920c = str3;
        }

        public /* synthetic */ ContactInformation(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B3\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nBG\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;", "", "", "", "address", "disclaimer", "", "isEditable", "title", "<init>", "(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ShippingInformation {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f44926e = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lg(25)), null, null, null};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f44927a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f44929c;
        public final String d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ShippingInformation> serializer() {
                return CareServiceDetailDto$ShippingInformation$$serializer.f44930a;
            }
        }

        public ShippingInformation(int i2, List list, String str, boolean z, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (12 != (i2 & 12)) {
                PluginExceptionsKt.b(i2, 12, CareServiceDetailDto$ShippingInformation$$serializer.f44930a.getF19838b());
                throw null;
            }
            this.f44927a = (i2 & 1) == 0 ? EmptyList.f71768b : list;
            if ((i2 & 2) == 0) {
                this.f44928b = null;
            } else {
                this.f44928b = str;
            }
            this.f44929c = z;
            this.d = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShippingInformation)) {
                return false;
            }
            ShippingInformation shippingInformation = (ShippingInformation) obj;
            return Intrinsics.c(this.f44927a, shippingInformation.f44927a) && Intrinsics.c(this.f44928b, shippingInformation.f44928b) && this.f44929c == shippingInformation.f44929c && Intrinsics.c(this.d, shippingInformation.d);
        }

        public final int hashCode() {
            int iHashCode = this.f44927a.hashCode() * 31;
            String str = this.f44928b;
            return this.d.hashCode() + o60.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f44929c);
        }

        public final String toString() {
            return "ShippingInformation(address=" + this.f44927a + ", disclaimer=" + this.f44928b + ", isEditable=" + this.f44929c + ", title=" + this.d + ")";
        }

        public ShippingInformation(List list, String str, boolean z, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? EmptyList.f71768b : list, (i2 & 2) != 0 ? null : str, z, str2);
        }

        public ShippingInformation(List<String> list, String str, boolean z, String str2) {
            list.getClass();
            str2.getClass();
            this.f44927a = list;
            this.f44928b = str;
            this.f44929c = z;
            this.d = str2;
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00182\u00020\u0001:\u0002\u0019\u0018Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012Bw\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0011\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;", "", "", "title", "careExpertNote", "confirmAddressExpDate", "Lcom/vuitton/android/data/dto/pdp/PriceDto;", "price", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;", "shippingAddress", "", "isShippingAddressEditable", "", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;", "items", "showOnCareDetail", "disclaimer", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;ZLjava/util/List;ZLjava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;ZLjava/util/List;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Assessment {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Lazy[] f44903j = {null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lg(24)), null, null};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44904a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44905b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f44906c;
        public final PriceDto d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CareServiceAddressDto f44907e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f44908f;
        public final List g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f44909h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f44910i;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Assessment> serializer() {
                return CareServiceDetailDto$Assessment$$serializer.f44911a;
            }
        }

        public Assessment(int i2, String str, String str2, String str3, PriceDto priceDto, CareServiceAddressDto careServiceAddressDto, boolean z, List list, boolean z2, String str4, SerializationConstructorMarker serializationConstructorMarker) {
            if (169 != (i2 & 169)) {
                PluginExceptionsKt.b(i2, 169, CareServiceDetailDto$Assessment$$serializer.f44911a.getF19838b());
                throw null;
            }
            this.f44904a = str;
            if ((i2 & 2) == 0) {
                this.f44905b = null;
            } else {
                this.f44905b = str2;
            }
            if ((i2 & 4) == 0) {
                this.f44906c = null;
            } else {
                this.f44906c = str3;
            }
            this.d = priceDto;
            if ((i2 & 16) == 0) {
                this.f44907e = null;
            } else {
                this.f44907e = careServiceAddressDto;
            }
            this.f44908f = z;
            if ((i2 & 64) == 0) {
                this.g = EmptyList.f71768b;
            } else {
                this.g = list;
            }
            this.f44909h = z2;
            if ((i2 & 256) == 0) {
                this.f44910i = null;
            } else {
                this.f44910i = str4;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Assessment)) {
                return false;
            }
            Assessment assessment = (Assessment) obj;
            return Intrinsics.c(this.f44904a, assessment.f44904a) && Intrinsics.c(this.f44905b, assessment.f44905b) && Intrinsics.c(this.f44906c, assessment.f44906c) && Intrinsics.c(this.d, assessment.d) && Intrinsics.c(this.f44907e, assessment.f44907e) && this.f44908f == assessment.f44908f && Intrinsics.c(this.g, assessment.g) && this.f44909h == assessment.f44909h && Intrinsics.c(this.f44910i, assessment.f44910i);
        }

        public final int hashCode() {
            int iHashCode = this.f44904a.hashCode() * 31;
            String str = this.f44905b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f44906c;
            int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            CareServiceAddressDto careServiceAddressDto = this.f44907e;
            int iB = o60.b(n00.a(o60.b((iHashCode3 + (careServiceAddressDto == null ? 0 : careServiceAddressDto.hashCode())) * 31, 31, this.f44908f), 31, this.g), 31, this.f44909h);
            String str3 = this.f44910i;
            return iB + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Assessment(title=", this.f44904a, ", careExpertNote=", this.f44905b, ", confirmAddressExpDate=");
            sbS.append(this.f44906c);
            sbS.append(", price=");
            sbS.append(this.d);
            sbS.append(", shippingAddress=");
            sbS.append(this.f44907e);
            sbS.append(", isShippingAddressEditable=");
            sbS.append(this.f44908f);
            sbS.append(", items=");
            sbS.append(this.g);
            sbS.append(", showOnCareDetail=");
            sbS.append(this.f44909h);
            sbS.append(", disclaimer=");
            return n00.r(this.f44910i, ")", sbS);
        }

        public Assessment(String str, String str2, String str3, PriceDto priceDto, CareServiceAddressDto careServiceAddressDto, boolean z, List list, boolean z2, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, priceDto, (i2 & 16) != 0 ? null : careServiceAddressDto, z, (i2 & 64) != 0 ? EmptyList.f71768b : list, z2, (i2 & 256) != 0 ? null : str4);
        }

        public Assessment(String str, String str2, String str3, PriceDto priceDto, CareServiceAddressDto careServiceAddressDto, boolean z, List<AssessmentItem> list, boolean z2, String str4) {
            str.getClass();
            priceDto.getClass();
            list.getClass();
            this.f44904a = str;
            this.f44905b = str2;
            this.f44906c = str3;
            this.d = priceDto;
            this.f44907e = careServiceAddressDto;
            this.f44908f = z;
            this.g = list;
            this.f44909h = z2;
            this.f44910i = str4;
        }
    }

    public CareServiceDetailDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, String str9, Store store, CareServiceProductDto careServiceProductDto, String str10, String str11, String str12, String str13, String str14, String str15, String str16, Assessment assessment, String str17, List list2, List list3, AppointmentInformation appointmentInformation, ShippingInformation shippingInformation, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str7.getClass();
        str8.getClass();
        list.getClass();
        str11.getClass();
        list2.getClass();
        list3.getClass();
        this.f44887a = str;
        this.f44888b = str2;
        this.f44889c = str3;
        this.d = str4;
        this.f44890e = str5;
        this.f44891f = str6;
        this.g = str7;
        this.f44892h = str8;
        this.f44893i = list;
        this.f44894j = str9;
        this.f44895k = store;
        this.l = careServiceProductDto;
        this.m = str10;
        this.n = str11;
        this.o = str12;
        this.p = str13;
        this.q = str14;
        this.r = str15;
        this.s = str16;
        this.t = assessment;
        this.u = str17;
        this.v = list2;
        this.w = list3;
        this.x = appointmentInformation;
        this.y = shippingInformation;
    }

    public CareServiceDetailDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, String str9, Store store, CareServiceProductDto careServiceProductDto, String str10, String str11, String str12, String str13, String str14, String str15, String str16, Assessment assessment, String str17, List list2, List list3, AppointmentInformation appointmentInformation, ShippingInformation shippingInformation, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, str5, str6, str7, str8, (i2 & 256) != 0 ? EmptyList.f71768b : list, (i2 & 512) != 0 ? null : str9, (i2 & 1024) != 0 ? null : store, (i2 & 2048) != 0 ? null : careServiceProductDto, (i2 & 4096) != 0 ? null : str10, str11, (i2 & 16384) != 0 ? null : str12, (32768 & i2) != 0 ? null : str13, (65536 & i2) != 0 ? null : str14, (131072 & i2) != 0 ? null : str15, (262144 & i2) != 0 ? null : str16, (524288 & i2) != 0 ? null : assessment, (1048576 & i2) != 0 ? null : str17, (2097152 & i2) != 0 ? EmptyList.f71768b : list2, (4194304 & i2) != 0 ? EmptyList.f71768b : list3, (8388608 & i2) != 0 ? null : appointmentInformation, (i2 & 16777216) != 0 ? null : shippingInformation, null);
    }
}
