package com.vuitton.android.data.dto.careservices;

import com.appsflyer.sdk_base.referrer.Payload;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.lg;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001e\u001dB\u0091\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017B»\u0001\b\u0010\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u0016\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceDto;", "", "", "phone", "email", "description", "Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;", "origin", "dateTime", "", "followupByCall", "followupByEmail", "followupByVideoCall", "storeCode", "languageLocaleKey", Payload.TYPE_STORE, "type", "", "images", "product", "appExternalId", "zipPostalCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44808c;
    public final CareServiceOriginDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f44810f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f44811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44812i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44813j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44814k;
    public final String l;
    public final List m;
    public final String n;
    public final String o;
    public final String p;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceDto> serializer() {
            return CareServiceDto$$serializer.f44815a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        q = new Lazy[]{null, null, null, LazyKt.a(lazyThreadSafetyMode, new lg(26)), null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new lg(27)), null, null, null};
    }

    public /* synthetic */ CareServiceDto(int i2, String str, String str2, String str3, CareServiceOriginDto careServiceOriginDto, String str4, boolean z, boolean z2, boolean z3, String str5, String str6, String str7, String str8, List list, String str9, String str10, String str11, SerializationConstructorMarker serializationConstructorMarker) {
        if (40959 != (i2 & 40959)) {
            PluginExceptionsKt.b(i2, 40959, CareServiceDto$$serializer.f44815a.getF19838b());
            throw null;
        }
        this.f44806a = str;
        this.f44807b = str2;
        this.f44808c = str3;
        this.d = careServiceOriginDto;
        this.f44809e = str4;
        this.f44810f = z;
        this.g = z2;
        this.f44811h = z3;
        this.f44812i = str5;
        this.f44813j = str6;
        this.f44814k = str7;
        this.l = str8;
        this.m = list;
        if ((i2 & 8192) == 0) {
            this.n = "";
        } else {
            this.n = str9;
        }
        if ((i2 & 16384) == 0) {
            this.o = "";
        } else {
            this.o = str10;
        }
        this.p = str11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceDto)) {
            return false;
        }
        CareServiceDto careServiceDto = (CareServiceDto) obj;
        return Intrinsics.c(this.f44806a, careServiceDto.f44806a) && Intrinsics.c(this.f44807b, careServiceDto.f44807b) && Intrinsics.c(this.f44808c, careServiceDto.f44808c) && this.d == careServiceDto.d && Intrinsics.c(this.f44809e, careServiceDto.f44809e) && this.f44810f == careServiceDto.f44810f && this.g == careServiceDto.g && this.f44811h == careServiceDto.f44811h && Intrinsics.c(this.f44812i, careServiceDto.f44812i) && Intrinsics.c(this.f44813j, careServiceDto.f44813j) && Intrinsics.c(this.f44814k, careServiceDto.f44814k) && Intrinsics.c(this.l, careServiceDto.l) && Intrinsics.c(this.m, careServiceDto.m) && Intrinsics.c(this.n, careServiceDto.n) && Intrinsics.c(this.o, careServiceDto.o) && Intrinsics.c(this.p, careServiceDto.p);
    }

    public final int hashCode() {
        return this.p.hashCode() + fc.b(fc.b(n00.a(fc.b(fc.b(fc.b(fc.b(o60.b(o60.b(o60.b(fc.b((this.d.hashCode() + fc.b(fc.b(this.f44806a.hashCode() * 31, 31, this.f44807b), 31, this.f44808c)) * 31, 31, this.f44809e), 31, this.f44810f), 31, this.g), 31, this.f44811h), 31, this.f44812i), 31, this.f44813j), 31, this.f44814k), 31, this.l), 31, this.m), 31, this.n), 31, this.o);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CareServiceDto(phone=", this.f44806a, ", email=", this.f44807b, ", description=");
        sbS.append(this.f44808c);
        sbS.append(", origin=");
        sbS.append(this.d);
        sbS.append(", dateTime=");
        pq0.A(this.f44809e, ", followupByCall=", ", followupByEmail=", sbS, this.f44810f);
        fc.y(sbS, this.g, ", followupByVideoCall=", this.f44811h, ", storeCode=");
        cj.C(sbS, this.f44812i, ", languageLocaleKey=", this.f44813j, ", store=");
        cj.C(sbS, this.f44814k, ", type=", this.l, ", images=");
        o60.B(", product=", this.n, ", appExternalId=", sbS, this.m);
        return tr.l(sbS, this.o, ", zipPostalCode=", this.p, ")");
    }

    public CareServiceDto(String str, String str2, String str3, CareServiceOriginDto careServiceOriginDto, String str4, boolean z, boolean z2, boolean z3, String str5, String str6, String str7, String str8, List<String> list, String str9, String str10, String str11) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        careServiceOriginDto.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        list.getClass();
        cj.z(str9, str10, str11);
        this.f44806a = str;
        this.f44807b = str2;
        this.f44808c = str3;
        this.d = careServiceOriginDto;
        this.f44809e = str4;
        this.f44810f = z;
        this.g = z2;
        this.f44811h = z3;
        this.f44812i = str5;
        this.f44813j = str6;
        this.f44814k = str7;
        this.l = str8;
        this.m = list;
        this.n = str9;
        this.o = str10;
        this.p = str11;
    }

    public /* synthetic */ CareServiceDto(String str, String str2, String str3, CareServiceOriginDto careServiceOriginDto, String str4, boolean z, boolean z2, boolean z3, String str5, String str6, String str7, String str8, List list, String str9, String str10, String str11, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, careServiceOriginDto, str4, z, z2, z3, str5, str6, str7, str8, list, (i2 & 8192) != 0 ? "" : str9, (i2 & 16384) != 0 ? "" : str10, str11);
    }
}
