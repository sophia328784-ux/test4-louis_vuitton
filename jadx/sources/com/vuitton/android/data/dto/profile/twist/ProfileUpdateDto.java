package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.yp0;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016B\u0085\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0010B\u0085\u0001\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u000f\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;", "", "", "login", "firstName", "lastName", "firstName2", "lastName2", "civilityCode", "email", "vatCode", "branchId", "", "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;", "phoneNumbers", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProfileUpdateDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Lazy[] f46739k = {null, null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(25))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46742c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46744f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f46745h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f46746i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f46747j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProfileUpdateDto> serializer() {
            return ProfileUpdateDto$$serializer.f46748a;
        }
    }

    public /* synthetic */ ProfileUpdateDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46740a = null;
        } else {
            this.f46740a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46741b = null;
        } else {
            this.f46741b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46742c = null;
        } else {
            this.f46742c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f46743e = null;
        } else {
            this.f46743e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f46744f = null;
        } else {
            this.f46744f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f46745h = null;
        } else {
            this.f46745h = str8;
        }
        if ((i2 & 256) == 0) {
            this.f46746i = null;
        } else {
            this.f46746i = str9;
        }
        if ((i2 & 512) == 0) {
            this.f46747j = null;
        } else {
            this.f46747j = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileUpdateDto)) {
            return false;
        }
        ProfileUpdateDto profileUpdateDto = (ProfileUpdateDto) obj;
        return Intrinsics.c(this.f46740a, profileUpdateDto.f46740a) && Intrinsics.c(this.f46741b, profileUpdateDto.f46741b) && Intrinsics.c(this.f46742c, profileUpdateDto.f46742c) && Intrinsics.c(this.d, profileUpdateDto.d) && Intrinsics.c(this.f46743e, profileUpdateDto.f46743e) && Intrinsics.c(this.f46744f, profileUpdateDto.f46744f) && Intrinsics.c(this.g, profileUpdateDto.g) && Intrinsics.c(this.f46745h, profileUpdateDto.f46745h) && Intrinsics.c(this.f46746i, profileUpdateDto.f46746i) && Intrinsics.c(this.f46747j, profileUpdateDto.f46747j);
    }

    public final int hashCode() {
        String str = this.f46740a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46741b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46742c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f46743e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f46744f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f46745h;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f46746i;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        List list = this.f46747j;
        return iHashCode9 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProfileUpdateDto(login=", this.f46740a, ", firstName=", this.f46741b, ", lastName=");
        cj.C(sbS, this.f46742c, ", firstName2=", this.d, ", lastName2=");
        cj.C(sbS, this.f46743e, ", civilityCode=", this.f46744f, ", email=");
        cj.C(sbS, this.g, ", vatCode=", this.f46745h, ", branchId=");
        return o60.o(this.f46746i, ", phoneNumbers=", ")", sbS, this.f46747j);
    }

    public ProfileUpdateDto() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (List) null, 1023, (DefaultConstructorMarker) null);
    }

    public ProfileUpdateDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, List<PhoneNumberDto> list) {
        this.f46740a = str;
        this.f46741b = str2;
        this.f46742c = str3;
        this.d = str4;
        this.f46743e = str5;
        this.f46744f = str6;
        this.g = str7;
        this.f46745h = str8;
        this.f46746i = str9;
        this.f46747j = list;
    }

    public /* synthetic */ ProfileUpdateDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : str8, (i2 & 256) != 0 ? null : str9, (i2 & 512) != 0 ? null : list);
    }
}
