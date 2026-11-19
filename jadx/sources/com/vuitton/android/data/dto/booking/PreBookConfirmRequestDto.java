package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010B\u0089\u0001\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u000f\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;", "", "", "email", "firstName", "firstName2", "lastName", "lastName2", "country", "phoneNumber", "phoneNumberCountry", "phoneNumberType", "civilityCode", "", "isOptInToReceiveNewsletterEmails", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PreBookConfirmRequestDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44740c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44742f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44744i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44745j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Boolean f44746k;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PreBookConfirmRequestDto> serializer() {
            return PreBookConfirmRequestDto$$serializer.f44747a;
        }
    }

    public /* synthetic */ PreBookConfirmRequestDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Boolean bool, SerializationConstructorMarker serializationConstructorMarker) {
        if (971 != (i2 & 971)) {
            PluginExceptionsKt.b(i2, 971, PreBookConfirmRequestDto$$serializer.f44747a.getF19838b());
            throw null;
        }
        this.f44738a = str;
        this.f44739b = str2;
        if ((i2 & 4) == 0) {
            this.f44740c = null;
        } else {
            this.f44740c = str3;
        }
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f44741e = null;
        } else {
            this.f44741e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f44742f = null;
        } else {
            this.f44742f = str6;
        }
        this.g = str7;
        this.f44743h = str8;
        this.f44744i = str9;
        this.f44745j = str10;
        if ((i2 & 1024) == 0) {
            this.f44746k = null;
        } else {
            this.f44746k = bool;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBookConfirmRequestDto)) {
            return false;
        }
        PreBookConfirmRequestDto preBookConfirmRequestDto = (PreBookConfirmRequestDto) obj;
        return Intrinsics.c(this.f44738a, preBookConfirmRequestDto.f44738a) && Intrinsics.c(this.f44739b, preBookConfirmRequestDto.f44739b) && Intrinsics.c(this.f44740c, preBookConfirmRequestDto.f44740c) && Intrinsics.c(this.d, preBookConfirmRequestDto.d) && Intrinsics.c(this.f44741e, preBookConfirmRequestDto.f44741e) && Intrinsics.c(this.f44742f, preBookConfirmRequestDto.f44742f) && Intrinsics.c(this.g, preBookConfirmRequestDto.g) && Intrinsics.c(this.f44743h, preBookConfirmRequestDto.f44743h) && Intrinsics.c(this.f44744i, preBookConfirmRequestDto.f44744i) && Intrinsics.c(this.f44745j, preBookConfirmRequestDto.f44745j) && Intrinsics.c(this.f44746k, preBookConfirmRequestDto.f44746k);
    }

    public final int hashCode() {
        int iB = fc.b(this.f44738a.hashCode() * 31, 31, this.f44739b);
        String str = this.f44740c;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        String str2 = this.f44741e;
        int iHashCode = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44742f;
        int iB3 = fc.b(fc.b(fc.b(fc.b((iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.g), 31, this.f44743h), 31, this.f44744i), 31, this.f44745j);
        Boolean bool = this.f44746k;
        return iB3 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PreBookConfirmRequestDto(email=", this.f44738a, ", firstName=", this.f44739b, ", firstName2=");
        cj.C(sbS, this.f44740c, ", lastName=", this.d, ", lastName2=");
        cj.C(sbS, this.f44741e, ", country=", this.f44742f, ", phoneNumber=");
        cj.C(sbS, this.g, ", phoneNumberCountry=", this.f44743h, ", phoneNumberType=");
        cj.C(sbS, this.f44744i, ", civilityCode=", this.f44745j, ", isOptInToReceiveNewsletterEmails=");
        sbS.append(this.f44746k);
        sbS.append(")");
        return sbS.toString();
    }

    public PreBookConfirmRequestDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Boolean bool) {
        pq0.z(str, str2, str4, str7, str8);
        str9.getClass();
        str10.getClass();
        this.f44738a = str;
        this.f44739b = str2;
        this.f44740c = str3;
        this.d = str4;
        this.f44741e = str5;
        this.f44742f = str6;
        this.g = str7;
        this.f44743h = str8;
        this.f44744i = str9;
        this.f44745j = str10;
        this.f44746k = bool;
    }

    public /* synthetic */ PreBookConfirmRequestDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, str7, str8, str9, str10, (i2 & 1024) != 0 ? null : bool);
    }
}
