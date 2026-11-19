package com.vuitton.android.data.dto.dispatch;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011B{\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0010\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;", "", "", b.a.f24015b, "order", "", "displayName", "name", "localeKey", "", "eCommerce", "countryKey", "flagUrl", "group", "Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;", "androidLocalization", "<init>", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class InAppDispatchDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f45688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f45689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45690c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f45692f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45693h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f45694i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LocalizationDto f45695j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<InAppDispatchDto> serializer() {
            return InAppDispatchDto$$serializer.f45696a;
        }
    }

    public /* synthetic */ InAppDispatchDto(int i2, int i3, int i4, String str, String str2, String str3, Boolean bool, String str4, String str5, String str6, LocalizationDto localizationDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (83 != (i2 & 83)) {
            PluginExceptionsKt.b(i2, 83, InAppDispatchDto$$serializer.f45696a.getF19838b());
            throw null;
        }
        this.f45688a = i3;
        this.f45689b = i4;
        if ((i2 & 4) == 0) {
            this.f45690c = null;
        } else {
            this.f45690c = str;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str2;
        }
        this.f45691e = str3;
        if ((i2 & 32) == 0) {
            this.f45692f = null;
        } else {
            this.f45692f = bool;
        }
        this.g = str4;
        if ((i2 & 128) == 0) {
            this.f45693h = null;
        } else {
            this.f45693h = str5;
        }
        if ((i2 & 256) == 0) {
            this.f45694i = null;
        } else {
            this.f45694i = str6;
        }
        if ((i2 & 512) == 0) {
            this.f45695j = null;
        } else {
            this.f45695j = localizationDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InAppDispatchDto)) {
            return false;
        }
        InAppDispatchDto inAppDispatchDto = (InAppDispatchDto) obj;
        return this.f45688a == inAppDispatchDto.f45688a && this.f45689b == inAppDispatchDto.f45689b && Intrinsics.c(this.f45690c, inAppDispatchDto.f45690c) && Intrinsics.c(this.d, inAppDispatchDto.d) && Intrinsics.c(this.f45691e, inAppDispatchDto.f45691e) && Intrinsics.c(this.f45692f, inAppDispatchDto.f45692f) && Intrinsics.c(this.g, inAppDispatchDto.g) && Intrinsics.c(this.f45693h, inAppDispatchDto.f45693h) && Intrinsics.c(this.f45694i, inAppDispatchDto.f45694i) && Intrinsics.c(this.f45695j, inAppDispatchDto.f45695j);
    }

    public final int hashCode() {
        int iB = tr.b(this.f45689b, Integer.hashCode(this.f45688a) * 31, 31);
        String str = this.f45690c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iB2 = fc.b((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f45691e);
        Boolean bool = this.f45692f;
        int iB3 = fc.b((iB2 + (bool == null ? 0 : bool.hashCode())) * 31, 31, this.g);
        String str3 = this.f45693h;
        int iHashCode2 = (iB3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45694i;
        int iHashCode3 = (iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31;
        LocalizationDto localizationDto = this.f45695j;
        return iHashCode3 + (localizationDto != null ? localizationDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbP = fc.p(this.f45688a, this.f45689b, "InAppDispatchDto(id=", ", order=", ", displayName=");
        cj.C(sbP, this.f45690c, ", name=", this.d, ", localeKey=");
        sbP.append(this.f45691e);
        sbP.append(", eCommerce=");
        sbP.append(this.f45692f);
        sbP.append(", countryKey=");
        cj.C(sbP, this.g, ", flagUrl=", this.f45693h, ", group=");
        sbP.append(this.f45694i);
        sbP.append(", androidLocalization=");
        sbP.append(this.f45695j);
        sbP.append(")");
        return sbP.toString();
    }

    public InAppDispatchDto(int i2, int i3, String str, String str2, String str3, Boolean bool, String str4, String str5, String str6, LocalizationDto localizationDto) {
        str3.getClass();
        str4.getClass();
        this.f45688a = i2;
        this.f45689b = i3;
        this.f45690c = str;
        this.d = str2;
        this.f45691e = str3;
        this.f45692f = bool;
        this.g = str4;
        this.f45693h = str5;
        this.f45694i = str6;
        this.f45695j = localizationDto;
    }

    public /* synthetic */ InAppDispatchDto(int i2, int i3, String str, String str2, String str3, Boolean bool, String str4, String str5, String str6, LocalizationDto localizationDto, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i3, (i4 & 4) != 0 ? null : str, (i4 & 8) != 0 ? null : str2, str3, (i4 & 32) != 0 ? null : bool, str4, (i4 & 128) != 0 ? null : str5, (i4 & 256) != 0 ? null : str6, (i4 & 512) != 0 ? null : localizationDto);
    }
}
