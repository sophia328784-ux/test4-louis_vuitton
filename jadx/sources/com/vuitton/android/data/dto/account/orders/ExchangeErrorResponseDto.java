package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.ew;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013Ba\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eBg\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\r\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto;", "", "", "traceId", "date", "path", "", "statusCode", "error", "", "Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;", "errors", "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExchangeErrorResponseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f44359h = {null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(14)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44362c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f44364f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExchangeErrorResponseDto> serializer() {
            return ExchangeErrorResponseDto$$serializer.f44365a;
        }
    }

    public /* synthetic */ ExchangeErrorResponseDto(int i2, String str, String str2, String str3, Integer num, String str4, List list, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44360a = null;
        } else {
            this.f44360a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44361b = null;
        } else {
            this.f44361b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44362c = null;
        } else {
            this.f44362c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = num;
        }
        if ((i2 & 16) == 0) {
            this.f44363e = null;
        } else {
            this.f44363e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f44364f = null;
        } else {
            this.f44364f = list;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeErrorResponseDto)) {
            return false;
        }
        ExchangeErrorResponseDto exchangeErrorResponseDto = (ExchangeErrorResponseDto) obj;
        return Intrinsics.c(this.f44360a, exchangeErrorResponseDto.f44360a) && Intrinsics.c(this.f44361b, exchangeErrorResponseDto.f44361b) && Intrinsics.c(this.f44362c, exchangeErrorResponseDto.f44362c) && Intrinsics.c(this.d, exchangeErrorResponseDto.d) && Intrinsics.c(this.f44363e, exchangeErrorResponseDto.f44363e) && Intrinsics.c(this.f44364f, exchangeErrorResponseDto.f44364f) && Intrinsics.c(this.g, exchangeErrorResponseDto.g);
    }

    public final int hashCode() {
        String str = this.f44360a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44361b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44362c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.d;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.f44363e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List list = this.f44364f;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        String str5 = this.g;
        return iHashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ExchangeErrorResponseDto(traceId=", this.f44360a, ", date=", this.f44361b, ", path=");
        sbS.append(this.f44362c);
        sbS.append(", statusCode=");
        sbS.append(this.d);
        sbS.append(", error=");
        d21.z(this.f44363e, ", errors=", ", message=", sbS, this.f44364f);
        return n00.r(this.g, ")", sbS);
    }

    public ExchangeErrorResponseDto() {
        this((String) null, (String) null, (String) null, (Integer) null, (String) null, (List) null, (String) null, CertificateBody.profileType, (DefaultConstructorMarker) null);
    }

    public ExchangeErrorResponseDto(String str, String str2, String str3, Integer num, String str4, List<ExchangeErrorDetailsDto> list, String str5) {
        this.f44360a = str;
        this.f44361b = str2;
        this.f44362c = str3;
        this.d = num;
        this.f44363e = str4;
        this.f44364f = list;
        this.g = str5;
    }

    public /* synthetic */ ExchangeErrorResponseDto(String str, String str2, String str3, Integer num, String str4, List list, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : list, (i2 & 64) != 0 ? null : str5);
    }
}
