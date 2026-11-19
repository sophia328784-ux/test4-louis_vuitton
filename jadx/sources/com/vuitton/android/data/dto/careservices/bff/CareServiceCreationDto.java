package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import defpackage.cj;
import defpackage.fc;
import defpackage.lg;
import defpackage.n00;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u000e\u0010\u000fBg\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;", "", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;", "appointment", "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;", "phone", "", "email", "issueDescription", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;", "contactMethod", "", "imageList", "postalCode", "<init>", "(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceCreationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f44878h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CareServiceAppointmentDto f44879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PhoneNumberDto f44880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44881c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CareServiceContactMethodDto f44882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f44883f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceCreationDto> serializer() {
            return CareServiceCreationDto$$serializer.f44884a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f44878h = new Lazy[]{null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new lg(15)), LazyKt.a(lazyThreadSafetyMode, new lg(16)), null};
    }

    public CareServiceCreationDto(int i2, CareServiceAppointmentDto careServiceAppointmentDto, PhoneNumberDto phoneNumberDto, String str, String str2, CareServiceContactMethodDto careServiceContactMethodDto, List list, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (30 != (i2 & 30)) {
            PluginExceptionsKt.b(i2, 30, CareServiceCreationDto$$serializer.f44884a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44879a = null;
        } else {
            this.f44879a = careServiceAppointmentDto;
        }
        this.f44880b = phoneNumberDto;
        this.f44881c = str;
        this.d = str2;
        this.f44882e = careServiceContactMethodDto;
        if ((i2 & 32) == 0) {
            this.f44883f = EmptyList.f71768b;
        } else {
            this.f44883f = list;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceCreationDto)) {
            return false;
        }
        CareServiceCreationDto careServiceCreationDto = (CareServiceCreationDto) obj;
        return Intrinsics.c(this.f44879a, careServiceCreationDto.f44879a) && Intrinsics.c(this.f44880b, careServiceCreationDto.f44880b) && Intrinsics.c(this.f44881c, careServiceCreationDto.f44881c) && Intrinsics.c(this.d, careServiceCreationDto.d) && this.f44882e == careServiceCreationDto.f44882e && Intrinsics.c(this.f44883f, careServiceCreationDto.f44883f) && Intrinsics.c(this.g, careServiceCreationDto.g);
    }

    public final int hashCode() {
        CareServiceAppointmentDto careServiceAppointmentDto = this.f44879a;
        int iA = n00.a((this.f44882e.hashCode() + fc.b(fc.b((this.f44880b.hashCode() + ((careServiceAppointmentDto == null ? 0 : careServiceAppointmentDto.hashCode()) * 31)) * 31, 31, this.f44881c), 31, this.d)) * 31, 31, this.f44883f);
        String str = this.g;
        return iA + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CareServiceCreationDto(appointment=");
        sb.append(this.f44879a);
        sb.append(", phone=");
        sb.append(this.f44880b);
        sb.append(", email=");
        cj.C(sb, this.f44881c, ", issueDescription=", this.d, ", contactMethod=");
        sb.append(this.f44882e);
        sb.append(", imageList=");
        sb.append(this.f44883f);
        sb.append(", postalCode=");
        return n00.r(this.g, ")", sb);
    }

    public CareServiceCreationDto(CareServiceAppointmentDto careServiceAppointmentDto, PhoneNumberDto phoneNumberDto, String str, String str2, CareServiceContactMethodDto careServiceContactMethodDto, List<String> list, String str3) {
        phoneNumberDto.getClass();
        str.getClass();
        str2.getClass();
        careServiceContactMethodDto.getClass();
        list.getClass();
        this.f44879a = careServiceAppointmentDto;
        this.f44880b = phoneNumberDto;
        this.f44881c = str;
        this.d = str2;
        this.f44882e = careServiceContactMethodDto;
        this.f44883f = list;
        this.g = str3;
    }

    public CareServiceCreationDto(CareServiceAppointmentDto careServiceAppointmentDto, PhoneNumberDto phoneNumberDto, String str, String str2, CareServiceContactMethodDto careServiceContactMethodDto, List list, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : careServiceAppointmentDto, phoneNumberDto, str, str2, careServiceContactMethodDto, (i2 & 32) != 0 ? EmptyList.f71768b : list, (i2 & 64) != 0 ? null : str3);
    }
}
