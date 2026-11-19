package com.vuitton.android.data.dto.profile.legacy;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014Bq\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000fBs\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u000e\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto;", "", "", "lastName", "firstName", "", "wishListSize", "identifier", "cartSize", "", "userIsLogged", "invoiceRegionCodeIso31661Alpha2", "deviceType", "email", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ShortUserAccountDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f46698c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f46699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f46700f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f46701h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f46702i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ShortUserAccountDto> serializer() {
            return ShortUserAccountDto$$serializer.f46703a;
        }
    }

    public /* synthetic */ ShortUserAccountDto(int i2, String str, String str2, Integer num, String str3, Integer num2, boolean z, String str4, String str5, String str6, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46696a = null;
        } else {
            this.f46696a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46697b = null;
        } else {
            this.f46697b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46698c = null;
        } else {
            this.f46698c = num;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f46699e = null;
        } else {
            this.f46699e = num2;
        }
        if ((i2 & 32) == 0) {
            this.f46700f = false;
        } else {
            this.f46700f = z;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str4;
        }
        if ((i2 & 128) == 0) {
            this.f46701h = null;
        } else {
            this.f46701h = str5;
        }
        if ((i2 & 256) == 0) {
            this.f46702i = null;
        } else {
            this.f46702i = str6;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShortUserAccountDto)) {
            return false;
        }
        ShortUserAccountDto shortUserAccountDto = (ShortUserAccountDto) obj;
        return Intrinsics.c(this.f46696a, shortUserAccountDto.f46696a) && Intrinsics.c(this.f46697b, shortUserAccountDto.f46697b) && Intrinsics.c(this.f46698c, shortUserAccountDto.f46698c) && Intrinsics.c(this.d, shortUserAccountDto.d) && Intrinsics.c(this.f46699e, shortUserAccountDto.f46699e) && this.f46700f == shortUserAccountDto.f46700f && Intrinsics.c(this.g, shortUserAccountDto.g) && Intrinsics.c(this.f46701h, shortUserAccountDto.f46701h) && Intrinsics.c(this.f46702i, shortUserAccountDto.f46702i);
    }

    public final int hashCode() {
        String str = this.f46696a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46697b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.f46698c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num2 = this.f46699e;
        int iB = o60.b((iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31, 31, this.f46700f);
        String str4 = this.g;
        int iHashCode5 = (iB + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f46701h;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f46702i;
        return iHashCode6 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ShortUserAccountDto(lastName=", this.f46696a, ", firstName=", this.f46697b, ", wishListSize=");
        sbS.append(this.f46698c);
        sbS.append(", identifier=");
        sbS.append(this.d);
        sbS.append(", cartSize=");
        sbS.append(this.f46699e);
        sbS.append(", userIsLogged=");
        sbS.append(this.f46700f);
        sbS.append(", invoiceRegionCodeIso31661Alpha2=");
        cj.C(sbS, this.g, ", deviceType=", this.f46701h, ", email=");
        return n00.r(this.f46702i, ")", sbS);
    }

    public ShortUserAccountDto() {
        this((String) null, (String) null, (Integer) null, (String) null, (Integer) null, false, (String) null, (String) null, (String) null, 511, (DefaultConstructorMarker) null);
    }

    public ShortUserAccountDto(String str, String str2, Integer num, String str3, Integer num2, boolean z, String str4, String str5, String str6) {
        this.f46696a = str;
        this.f46697b = str2;
        this.f46698c = num;
        this.d = str3;
        this.f46699e = num2;
        this.f46700f = z;
        this.g = str4;
        this.f46701h = str5;
        this.f46702i = str6;
    }

    public /* synthetic */ ShortUserAccountDto(String str, String str2, Integer num, String str3, Integer num2, boolean z, String str4, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : num, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : num2, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? null : str4, (i2 & 128) != 0 ? null : str5, (i2 & 256) != 0 ? null : str6);
    }
}
