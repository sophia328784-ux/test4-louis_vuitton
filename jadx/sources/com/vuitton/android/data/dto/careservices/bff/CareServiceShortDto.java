package com.vuitton.android.data.dto.careservices.bff;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u009b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016B§\u0001\b\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u0015\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseDto;", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "", "displayableId", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;", "transactionId", "type", "category", "stepTitle", "action", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;", "product", "trackingURL", "creationDate", "deliveryDate", "updatedDeliveryDate", "restitutionHistoryDate", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;", "hotContent", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceShortDto implements CareServiceBaseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44949c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44951f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CareServiceProductDto f44952h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44953i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44954j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44955k;
    public final String l;
    public final String m;
    public final CareServiceHotContentDto n;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceShortDto> serializer() {
            return CareServiceShortDto$$serializer.f44956a;
        }
    }

    public /* synthetic */ CareServiceShortDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, CareServiceProductDto careServiceProductDto, String str8, String str9, String str10, String str11, String str12, CareServiceHotContentDto careServiceHotContentDto, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (569 != (i2 & 569)) {
            PluginExceptionsKt.b(i2, 569, CareServiceShortDto$$serializer.f44956a.getF19838b());
            throw null;
        }
        this.f44947a = str;
        if ((i2 & 2) == 0) {
            this.f44948b = null;
        } else {
            this.f44948b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44949c = null;
        } else {
            this.f44949c = str3;
        }
        this.d = str4;
        this.f44950e = str5;
        this.f44951f = str6;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f44952h = null;
        } else {
            this.f44952h = careServiceProductDto;
        }
        if ((i2 & 256) == 0) {
            this.f44953i = null;
        } else {
            this.f44953i = str8;
        }
        this.f44954j = str9;
        if ((i2 & 1024) == 0) {
            this.f44955k = null;
        } else {
            this.f44955k = str10;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str11;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = str12;
        }
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = careServiceHotContentDto;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002e  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceShortDto)) {
            return false;
        }
        CareServiceShortDto careServiceShortDto = (CareServiceShortDto) obj;
        String str = careServiceShortDto.f44947a;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        if (!Intrinsics.c(this.f44947a, str) || !Intrinsics.c(this.f44948b, careServiceShortDto.f44948b)) {
            return false;
        }
        String str2 = careServiceShortDto.f44949c;
        String str3 = this.f44949c;
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
        return zC && Intrinsics.c(this.d, careServiceShortDto.d) && Intrinsics.c(this.f44950e, careServiceShortDto.f44950e) && Intrinsics.c(this.f44951f, careServiceShortDto.f44951f) && Intrinsics.c(this.g, careServiceShortDto.g) && Intrinsics.c(this.f44952h, careServiceShortDto.f44952h) && Intrinsics.c(this.f44953i, careServiceShortDto.f44953i) && Intrinsics.c(this.f44954j, careServiceShortDto.f44954j) && Intrinsics.c(this.f44955k, careServiceShortDto.f44955k) && Intrinsics.c(this.l, careServiceShortDto.l) && Intrinsics.c(this.m, careServiceShortDto.m) && Intrinsics.c(this.n, careServiceShortDto.n);
    }

    public final int hashCode() {
        int iHashCode;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        int iHashCode2 = this.f44947a.hashCode() * 31;
        String str = this.f44948b;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44949c;
        if (str2 == null) {
            iHashCode = 0;
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
            iHashCode = str2.hashCode();
        }
        int iB = fc.b(fc.b(fc.b((iHashCode3 + iHashCode) * 31, 31, this.d), 31, this.f44950e), 31, this.f44951f);
        String str3 = this.g;
        int iHashCode4 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        CareServiceProductDto careServiceProductDto = this.f44952h;
        int iHashCode5 = (iHashCode4 + (careServiceProductDto == null ? 0 : careServiceProductDto.hashCode())) * 31;
        String str4 = this.f44953i;
        int iB2 = fc.b((iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f44954j);
        String str5 = this.f44955k;
        int iHashCode6 = (iB2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.l;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.m;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        CareServiceHotContentDto careServiceHotContentDto = this.n;
        return iHashCode8 + (careServiceHotContentDto != null ? careServiceHotContentDto.hashCode() : 0);
    }

    public final String toString() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        String str = this.f44949c;
        if (str == null) {
            str = "null";
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
        }
        StringBuilder sbS = fc.s("CareServiceShortDto(id=", this.f44947a, ", displayableId=", this.f44948b, ", transactionId=");
        cj.C(sbS, str, ", type=", this.d, ", category=");
        cj.C(sbS, this.f44950e, ", stepTitle=", this.f44951f, ", action=");
        sbS.append(this.g);
        sbS.append(", product=");
        sbS.append(this.f44952h);
        sbS.append(", trackingURL=");
        cj.C(sbS, this.f44953i, ", creationDate=", this.f44954j, ", deliveryDate=");
        cj.C(sbS, this.f44955k, ", updatedDeliveryDate=", this.l, ", restitutionHistoryDate=");
        sbS.append(this.m);
        sbS.append(", hotContent=");
        sbS.append(this.n);
        sbS.append(")");
        return sbS.toString();
    }

    public CareServiceShortDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, CareServiceProductDto careServiceProductDto, String str8, String str9, String str10, String str11, String str12, CareServiceHotContentDto careServiceHotContentDto, DefaultConstructorMarker defaultConstructorMarker) {
        pq0.z(str, str4, str5, str6, str9);
        this.f44947a = str;
        this.f44948b = str2;
        this.f44949c = str3;
        this.d = str4;
        this.f44950e = str5;
        this.f44951f = str6;
        this.g = str7;
        this.f44952h = careServiceProductDto;
        this.f44953i = str8;
        this.f44954j = str9;
        this.f44955k = str10;
        this.l = str11;
        this.m = str12;
        this.n = careServiceHotContentDto;
    }

    public /* synthetic */ CareServiceShortDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, CareServiceProductDto careServiceProductDto, String str8, String str9, String str10, String str11, String str12, CareServiceHotContentDto careServiceHotContentDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, str4, str5, str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : careServiceProductDto, (i2 & 256) != 0 ? null : str8, str9, (i2 & 1024) != 0 ? null : str10, (i2 & 2048) != 0 ? null : str11, (i2 & 4096) != 0 ? null : str12, (i2 & 8192) != 0 ? null : careServiceHotContentDto, null);
    }
}
