package com.vuitton.android.data.dto.error;

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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BQ\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eBg\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\r\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/error/ErrorDto;", "", "", "traceId", "date", "path", "", "statusCode", "error", "", "Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;", "errors", "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ErrorDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f45742h = {null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(9)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45745c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f45747f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/error/ErrorDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ErrorDto> serializer() {
            return ErrorDto$$serializer.f45748a;
        }
    }

    public /* synthetic */ ErrorDto(int i2, String str, String str2, String str3, Integer num, String str4, List list, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (127 != (i2 & CertificateBody.profileType)) {
            PluginExceptionsKt.b(i2, CertificateBody.profileType, ErrorDto$$serializer.f45748a.getF19838b());
            throw null;
        }
        this.f45743a = str;
        this.f45744b = str2;
        this.f45745c = str3;
        this.d = num;
        this.f45746e = str4;
        this.f45747f = list;
        this.g = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorDto)) {
            return false;
        }
        ErrorDto errorDto = (ErrorDto) obj;
        return Intrinsics.c(this.f45743a, errorDto.f45743a) && Intrinsics.c(this.f45744b, errorDto.f45744b) && Intrinsics.c(this.f45745c, errorDto.f45745c) && Intrinsics.c(this.d, errorDto.d) && Intrinsics.c(this.f45746e, errorDto.f45746e) && Intrinsics.c(this.f45747f, errorDto.f45747f) && Intrinsics.c(this.g, errorDto.g);
    }

    public final int hashCode() {
        String str = this.f45743a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45744b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45745c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.d;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.f45746e;
        int iA = n00.a((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f45747f);
        String str5 = this.g;
        return iA + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ErrorDto(traceId=", this.f45743a, ", date=", this.f45744b, ", path=");
        sbS.append(this.f45745c);
        sbS.append(", statusCode=");
        sbS.append(this.d);
        sbS.append(", error=");
        d21.z(this.f45746e, ", errors=", ", message=", sbS, this.f45747f);
        return n00.r(this.g, ")", sbS);
    }

    public ErrorDto(String str, String str2, String str3, Integer num, String str4, List<ErrorDetailsDto> list, String str5) {
        list.getClass();
        this.f45743a = str;
        this.f45744b = str2;
        this.f45745c = str3;
        this.d = num;
        this.f45746e = str4;
        this.f45747f = list;
        this.g = str5;
    }
}
