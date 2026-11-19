package com.vuitton.android.data.dto.authentication.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rBk\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;", "", "", "civility", "firstName", "lastName", "firstName2", "lastName2", "countryCode", "birthDate", "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;", "mobilePhone", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class UserInformationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44547c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44548e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44549f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PhoneNumberDto f44550h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UserInformationDto> serializer() {
            return UserInformationDto$$serializer.f44551a;
        }
    }

    public /* synthetic */ UserInformationDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, PhoneNumberDto phoneNumberDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i2 & 255)) {
            PluginExceptionsKt.b(i2, 255, UserInformationDto$$serializer.f44551a.getF19850b());
            throw null;
        }
        this.f44545a = str;
        this.f44546b = str2;
        this.f44547c = str3;
        this.d = str4;
        this.f44548e = str5;
        this.f44549f = str6;
        this.g = str7;
        this.f44550h = phoneNumberDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserInformationDto)) {
            return false;
        }
        UserInformationDto userInformationDto = (UserInformationDto) obj;
        return Intrinsics.c(this.f44545a, userInformationDto.f44545a) && Intrinsics.c(this.f44546b, userInformationDto.f44546b) && Intrinsics.c(this.f44547c, userInformationDto.f44547c) && Intrinsics.c(this.d, userInformationDto.d) && Intrinsics.c(this.f44548e, userInformationDto.f44548e) && Intrinsics.c(this.f44549f, userInformationDto.f44549f) && Intrinsics.c(this.g, userInformationDto.g) && Intrinsics.c(this.f44550h, userInformationDto.f44550h);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f44545a.hashCode() * 31, 31, this.f44546b), 31, this.f44547c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44548e;
        int iB2 = fc.b((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f44549f);
        String str3 = this.g;
        int iHashCode2 = (iB2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        PhoneNumberDto phoneNumberDto = this.f44550h;
        return iHashCode2 + (phoneNumberDto != null ? phoneNumberDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("UserInformationDto(civility=", this.f44545a, ", firstName=", this.f44546b, ", lastName=");
        cj.C(sbS, this.f44547c, ", firstName2=", this.d, ", lastName2=");
        cj.C(sbS, this.f44548e, ", countryCode=", this.f44549f, ", birthDate=");
        sbS.append(this.g);
        sbS.append(", mobilePhone=");
        sbS.append(this.f44550h);
        sbS.append(")");
        return sbS.toString();
    }

    public UserInformationDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, PhoneNumberDto phoneNumberDto) {
        d21.y(str, str2, str3, str6);
        this.f44545a = str;
        this.f44546b = str2;
        this.f44547c = str3;
        this.d = str4;
        this.f44548e = str5;
        this.f44549f = str6;
        this.g = str7;
        this.f44550h = phoneNumberDto;
    }
}
