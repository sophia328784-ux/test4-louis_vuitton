package com.vuitton.android.data.dto.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015B\u0081\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000fB\u0089\u0001\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;", "", "", "contactEmail", "contactNumber", "contactSmsNumber", "contactWhatsappNumber", "unformattedRepairsApiUrl", "processPageUrl", "trackingUrl", "storeCode", "storeName", "zipCodeExclusionRegex", "careServicePromotionKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class DistantRepairsConfigDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45396c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45398f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45399h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f45400i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f45401j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f45402k;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DistantRepairsConfigDto> serializer() {
            return DistantRepairsConfigDto$$serializer.f45403a;
        }
    }

    public /* synthetic */ DistantRepairsConfigDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, SerializationConstructorMarker serializationConstructorMarker) {
        if (1168 != (i2 & 1168)) {
            PluginExceptionsKt.b(i2, 1168, DistantRepairsConfigDto$$serializer.f45403a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45394a = null;
        } else {
            this.f45394a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45395b = null;
        } else {
            this.f45395b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45396c = null;
        } else {
            this.f45396c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.f45397e = str5;
        if ((i2 & 32) == 0) {
            this.f45398f = null;
        } else {
            this.f45398f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        this.f45399h = str8;
        if ((i2 & 256) == 0) {
            this.f45400i = null;
        } else {
            this.f45400i = str9;
        }
        if ((i2 & 512) == 0) {
            this.f45401j = null;
        } else {
            this.f45401j = str10;
        }
        this.f45402k = str11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DistantRepairsConfigDto)) {
            return false;
        }
        DistantRepairsConfigDto distantRepairsConfigDto = (DistantRepairsConfigDto) obj;
        return Intrinsics.c(this.f45394a, distantRepairsConfigDto.f45394a) && Intrinsics.c(this.f45395b, distantRepairsConfigDto.f45395b) && Intrinsics.c(this.f45396c, distantRepairsConfigDto.f45396c) && Intrinsics.c(this.d, distantRepairsConfigDto.d) && Intrinsics.c(this.f45397e, distantRepairsConfigDto.f45397e) && Intrinsics.c(this.f45398f, distantRepairsConfigDto.f45398f) && Intrinsics.c(this.g, distantRepairsConfigDto.g) && Intrinsics.c(this.f45399h, distantRepairsConfigDto.f45399h) && Intrinsics.c(this.f45400i, distantRepairsConfigDto.f45400i) && Intrinsics.c(this.f45401j, distantRepairsConfigDto.f45401j) && Intrinsics.c(this.f45402k, distantRepairsConfigDto.f45402k);
    }

    public final int hashCode() {
        String str = this.f45394a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45395b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45396c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iB = fc.b((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f45397e);
        String str5 = this.f45398f;
        int iHashCode4 = (iB + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.g;
        int iB2 = fc.b((iHashCode4 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.f45399h);
        String str7 = this.f45400i;
        int iHashCode5 = (iB2 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f45401j;
        int iHashCode6 = (iHashCode5 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f45402k;
        return iHashCode6 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DistantRepairsConfigDto(contactEmail=", this.f45394a, ", contactNumber=", this.f45395b, ", contactSmsNumber=");
        cj.C(sbS, this.f45396c, ", contactWhatsappNumber=", this.d, ", unformattedRepairsApiUrl=");
        cj.C(sbS, this.f45397e, ", processPageUrl=", this.f45398f, ", trackingUrl=");
        cj.C(sbS, this.g, ", storeCode=", this.f45399h, ", storeName=");
        cj.C(sbS, this.f45400i, ", zipCodeExclusionRegex=", this.f45401j, ", careServicePromotionKey=");
        return n00.r(this.f45402k, ")", sbS);
    }

    public DistantRepairsConfigDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        str5.getClass();
        str8.getClass();
        this.f45394a = str;
        this.f45395b = str2;
        this.f45396c = str3;
        this.d = str4;
        this.f45397e = str5;
        this.f45398f = str6;
        this.g = str7;
        this.f45399h = str8;
        this.f45400i = str9;
        this.f45401j = str10;
        this.f45402k = str11;
    }

    public /* synthetic */ DistantRepairsConfigDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, str5, (i2 & 32) != 0 ? null : str6, (i2 & 64) != 0 ? null : str7, str8, (i2 & 256) != 0 ? null : str9, (i2 & 512) != 0 ? null : str10, str11);
    }
}
