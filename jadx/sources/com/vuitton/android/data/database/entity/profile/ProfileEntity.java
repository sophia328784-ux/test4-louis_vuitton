package com.vuitton.android.data.database.entity.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.database.entity.address.AddressEntity;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import defpackage.yp0;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0002\"!BÇ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bBß\u0001\b\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u001a\u0010 ¨\u0006#"}, d2 = {"Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;", "", "", "identifier", "identifierType", "login", "firstName", "firstName2", "lastName", "lastName2", "email", "civilityCode", "", "Lcom/vuitton/android/data/database/entity/address/AddressEntity;", "addressList", "taxId", "branchId", "contactId", "batchAuthKey", "accountId", "", "kisaStoreAppointmentPersonalData", "Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;", "mobilePhoneNumber", "initials", "displayName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProfileEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] t = {null, null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(24)), null, null, null, null, null, null, null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f43595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f43596c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f43597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f43598f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f43599h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f43600i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f43601j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f43602k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final Boolean p;
    public final PhoneNumberEntity q;
    public final String r;
    public final String s;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProfileEntity> serializer() {
            return ProfileEntity$$serializer.f43603a;
        }
    }

    public ProfileEntity(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, List list, String str10, String str11, String str12, String str13, String str14, Boolean bool, PhoneNumberEntity phoneNumberEntity, String str15, String str16, SerializationConstructorMarker serializationConstructorMarker) {
        if (127407 != (i2 & 127407)) {
            PluginExceptionsKt.b(i2, 127407, ProfileEntity$$serializer.f43603a.getF19838b());
            throw null;
        }
        this.f43594a = str;
        this.f43595b = str2;
        this.f43596c = str3;
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f43597e = null;
        } else {
            this.f43597e = str5;
        }
        this.f43598f = str6;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        this.f43599h = str8;
        this.f43600i = str9;
        if ((i2 & 512) == 0) {
            this.f43601j = EmptyList.f71768b;
        } else {
            this.f43601j = list;
        }
        if ((i2 & 1024) == 0) {
            this.f43602k = null;
        } else {
            this.f43602k = str10;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str11;
        }
        this.m = str12;
        this.n = str13;
        this.o = str14;
        this.p = bool;
        this.q = phoneNumberEntity;
        if ((131072 & i2) == 0) {
            this.r = null;
        } else {
            this.r = str15;
        }
        this.s = (i2 & 262144) == 0 ? "" : str16;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileEntity)) {
            return false;
        }
        ProfileEntity profileEntity = (ProfileEntity) obj;
        return Intrinsics.c(this.f43594a, profileEntity.f43594a) && Intrinsics.c(this.f43595b, profileEntity.f43595b) && Intrinsics.c(this.f43596c, profileEntity.f43596c) && Intrinsics.c(this.d, profileEntity.d) && Intrinsics.c(this.f43597e, profileEntity.f43597e) && Intrinsics.c(this.f43598f, profileEntity.f43598f) && Intrinsics.c(this.g, profileEntity.g) && Intrinsics.c(this.f43599h, profileEntity.f43599h) && Intrinsics.c(this.f43600i, profileEntity.f43600i) && Intrinsics.c(this.f43601j, profileEntity.f43601j) && Intrinsics.c(this.f43602k, profileEntity.f43602k) && Intrinsics.c(this.l, profileEntity.l) && Intrinsics.c(this.m, profileEntity.m) && Intrinsics.c(this.n, profileEntity.n) && Intrinsics.c(this.o, profileEntity.o) && Intrinsics.c(this.p, profileEntity.p) && Intrinsics.c(this.q, profileEntity.q) && Intrinsics.c(this.r, profileEntity.r) && Intrinsics.c(this.s, profileEntity.s);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(this.f43594a.hashCode() * 31, 31, this.f43595b), 31, this.f43596c), 31, this.d);
        String str = this.f43597e;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f43598f);
        String str2 = this.g;
        int iA = n00.a(fc.b(fc.b((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f43599h), 31, this.f43600i), 31, this.f43601j);
        String str3 = this.f43602k;
        int iHashCode = (iA + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.l;
        int iHashCode2 = (iHashCode + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.m;
        int iHashCode3 = (iHashCode2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.n;
        int iHashCode4 = (iHashCode3 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.o;
        int iHashCode5 = (iHashCode4 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool = this.p;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        PhoneNumberEntity phoneNumberEntity = this.q;
        int iHashCode7 = (iHashCode6 + (phoneNumberEntity == null ? 0 : phoneNumberEntity.hashCode())) * 31;
        String str8 = this.r;
        return this.s.hashCode() + ((iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProfileEntity(identifier=", this.f43594a, ", identifierType=", this.f43595b, ", login=");
        cj.C(sbS, this.f43596c, ", firstName=", this.d, ", firstName2=");
        cj.C(sbS, this.f43597e, ", lastName=", this.f43598f, ", lastName2=");
        cj.C(sbS, this.g, ", email=", this.f43599h, ", civilityCode=");
        d21.z(this.f43600i, ", addressList=", ", taxId=", sbS, this.f43601j);
        cj.C(sbS, this.f43602k, ", branchId=", this.l, ", contactId=");
        cj.C(sbS, this.m, ", batchAuthKey=", this.n, ", accountId=");
        sbS.append(this.o);
        sbS.append(", kisaStoreAppointmentPersonalData=");
        sbS.append(this.p);
        sbS.append(", mobilePhoneNumber=");
        sbS.append(this.q);
        sbS.append(", initials=");
        sbS.append(this.r);
        sbS.append(", displayName=");
        return n00.r(this.s, ")", sbS);
    }

    public ProfileEntity(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, List<AddressEntity> list, String str10, String str11, String str12, String str13, String str14, Boolean bool, PhoneNumberEntity phoneNumberEntity, String str15, String str16) {
        pq0.z(str, str2, str3, str4, str6);
        str8.getClass();
        str9.getClass();
        list.getClass();
        str16.getClass();
        this.f43594a = str;
        this.f43595b = str2;
        this.f43596c = str3;
        this.d = str4;
        this.f43597e = str5;
        this.f43598f = str6;
        this.g = str7;
        this.f43599h = str8;
        this.f43600i = str9;
        this.f43601j = list;
        this.f43602k = str10;
        this.l = str11;
        this.m = str12;
        this.n = str13;
        this.o = str14;
        this.p = bool;
        this.q = phoneNumberEntity;
        this.r = str15;
        this.s = str16;
    }

    public ProfileEntity(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, List list, String str10, String str11, String str12, String str13, String str14, Boolean bool, PhoneNumberEntity phoneNumberEntity, String str15, String str16, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i2 & 16) != 0 ? null : str5, str6, (i2 & 64) != 0 ? null : str7, str8, str9, (i2 & 512) != 0 ? EmptyList.f71768b : list, (i2 & 1024) != 0 ? null : str10, (i2 & 2048) != 0 ? null : str11, str12, str13, str14, bool, phoneNumberEntity, (131072 & i2) != 0 ? null : str15, (i2 & 262144) != 0 ? "" : str16);
    }
}
