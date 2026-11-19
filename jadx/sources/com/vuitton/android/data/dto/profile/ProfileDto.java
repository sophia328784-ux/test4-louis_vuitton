package com.vuitton.android.data.dto.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.legacy.ContactabilityDto;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002 \u001fBå\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0018\u0010\u0019BÕ\u0001\b\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u0018\u0010\u001e¨\u0006!"}, d2 = {"Lcom/vuitton/android/data/dto/profile/ProfileDto;", "", "", "identifier", "identifierType", "login", "firstName", "lastName", "firstName2", "lastName2", "civilityCode", "email", "vatCode", "branchID", "batchAuthKey", "contactId", "accountId", "Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;", "contactability", "", "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;", "phoneNumbers", "initials", "displayName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProfileDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] s = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(23)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46684c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46686f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f46687h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f46688i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f46689j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f46690k;
    public final String l;
    public final String m;
    public final String n;
    public final ContactabilityDto o;
    public final List p;
    public final String q;
    public final String r;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/ProfileDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/ProfileDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProfileDto> serializer() {
            return ProfileDto$$serializer.f46691a;
        }
    }

    public /* synthetic */ ProfileDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, ContactabilityDto contactabilityDto, List list, String str15, String str16, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : str8, (i2 & 256) != 0 ? null : str9, (i2 & 512) != 0 ? null : str10, (i2 & 1024) != 0 ? null : str11, (i2 & 2048) != 0 ? null : str12, (i2 & 4096) != 0 ? null : str13, (i2 & 8192) != 0 ? null : str14, (i2 & 16384) != 0 ? null : contactabilityDto, (i2 & 32768) != 0 ? null : list, (i2 & 65536) != 0 ? null : str15, (i2 & 131072) != 0 ? null : str16);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileDto)) {
            return false;
        }
        ProfileDto profileDto = (ProfileDto) obj;
        return Intrinsics.c(this.f46682a, profileDto.f46682a) && Intrinsics.c(this.f46683b, profileDto.f46683b) && Intrinsics.c(this.f46684c, profileDto.f46684c) && Intrinsics.c(this.d, profileDto.d) && Intrinsics.c(this.f46685e, profileDto.f46685e) && Intrinsics.c(this.f46686f, profileDto.f46686f) && Intrinsics.c(this.g, profileDto.g) && Intrinsics.c(this.f46687h, profileDto.f46687h) && Intrinsics.c(this.f46688i, profileDto.f46688i) && Intrinsics.c(this.f46689j, profileDto.f46689j) && Intrinsics.c(this.f46690k, profileDto.f46690k) && Intrinsics.c(this.l, profileDto.l) && Intrinsics.c(this.m, profileDto.m) && Intrinsics.c(this.n, profileDto.n) && Intrinsics.c(this.o, profileDto.o) && Intrinsics.c(this.p, profileDto.p) && Intrinsics.c(this.q, profileDto.q) && Intrinsics.c(this.r, profileDto.r);
    }

    public final int hashCode() {
        String str = this.f46682a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46683b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46684c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f46685e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f46686f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f46687h;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f46688i;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.f46689j;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.f46690k;
        int iHashCode11 = (iHashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.l;
        int iHashCode12 = (iHashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.m;
        int iHashCode13 = (iHashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.n;
        int iHashCode14 = (iHashCode13 + (str14 == null ? 0 : str14.hashCode())) * 31;
        ContactabilityDto contactabilityDto = this.o;
        int iHashCode15 = (iHashCode14 + (contactabilityDto == null ? 0 : contactabilityDto.hashCode())) * 31;
        List list = this.p;
        int iHashCode16 = (iHashCode15 + (list == null ? 0 : list.hashCode())) * 31;
        String str15 = this.q;
        int iHashCode17 = (iHashCode16 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.r;
        return iHashCode17 + (str16 != null ? str16.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProfileDto(identifier=", this.f46682a, ", identifierType=", this.f46683b, ", login=");
        cj.C(sbS, this.f46684c, ", firstName=", this.d, ", lastName=");
        cj.C(sbS, this.f46685e, ", firstName2=", this.f46686f, ", lastName2=");
        cj.C(sbS, this.g, ", civilityCode=", this.f46687h, ", email=");
        cj.C(sbS, this.f46688i, ", vatCode=", this.f46689j, ", branchID=");
        cj.C(sbS, this.f46690k, ", batchAuthKey=", this.l, ", contactId=");
        cj.C(sbS, this.m, ", accountId=", this.n, ", contactability=");
        sbS.append(this.o);
        sbS.append(", phoneNumbers=");
        sbS.append(this.p);
        sbS.append(", initials=");
        return tr.l(sbS, this.q, ", displayName=", this.r, ")");
    }

    public /* synthetic */ ProfileDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, ContactabilityDto contactabilityDto, List list, String str15, String str16, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46682a = null;
        } else {
            this.f46682a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46683b = null;
        } else {
            this.f46683b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46684c = null;
        } else {
            this.f46684c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f46685e = null;
        } else {
            this.f46685e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f46686f = null;
        } else {
            this.f46686f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f46687h = null;
        } else {
            this.f46687h = str8;
        }
        if ((i2 & 256) == 0) {
            this.f46688i = null;
        } else {
            this.f46688i = str9;
        }
        if ((i2 & 512) == 0) {
            this.f46689j = null;
        } else {
            this.f46689j = str10;
        }
        if ((i2 & 1024) == 0) {
            this.f46690k = null;
        } else {
            this.f46690k = str11;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str12;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = str13;
        }
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = str14;
        }
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = contactabilityDto;
        }
        if ((32768 & i2) == 0) {
            this.p = null;
        } else {
            this.p = list;
        }
        if ((65536 & i2) == 0) {
            this.q = null;
        } else {
            this.q = str15;
        }
        if ((i2 & 131072) == 0) {
            this.r = null;
        } else {
            this.r = str16;
        }
    }

    public ProfileDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, ContactabilityDto contactabilityDto, List<PhoneNumberDto> list, String str15, String str16) {
        this.f46682a = str;
        this.f46683b = str2;
        this.f46684c = str3;
        this.d = str4;
        this.f46685e = str5;
        this.f46686f = str6;
        this.g = str7;
        this.f46687h = str8;
        this.f46688i = str9;
        this.f46689j = str10;
        this.f46690k = str11;
        this.l = str12;
        this.m = str13;
        this.n = str14;
        this.o = contactabilityDto;
        this.p = list;
        this.q = str15;
        this.r = str16;
    }

    public ProfileDto() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (ContactabilityDto) null, (List) null, (String) null, (String) null, 262143, (DefaultConstructorMarker) null);
    }
}
