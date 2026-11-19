package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012Bg\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fBk\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto;", "", "", "newsletterPersonalData", "storeAppointmentPersonalData", "lvTermsAndUse", "mainPersonalData", "additionalPersonalData", "thirdPartiesPersonalData", "promotionPersonalData", "requiredAge", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class KisaConsentsPatchDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f46717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f46718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f46719c;
    public final Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f46720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f46721f;
    public final Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Boolean f46722h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<KisaConsentsPatchDto> serializer() {
            return KisaConsentsPatchDto$$serializer.f46723a;
        }
    }

    public /* synthetic */ KisaConsentsPatchDto(int i2, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46717a = null;
        } else {
            this.f46717a = bool;
        }
        if ((i2 & 2) == 0) {
            this.f46718b = null;
        } else {
            this.f46718b = bool2;
        }
        if ((i2 & 4) == 0) {
            this.f46719c = null;
        } else {
            this.f46719c = bool3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = bool4;
        }
        if ((i2 & 16) == 0) {
            this.f46720e = null;
        } else {
            this.f46720e = bool5;
        }
        if ((i2 & 32) == 0) {
            this.f46721f = null;
        } else {
            this.f46721f = bool6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = bool7;
        }
        if ((i2 & 128) == 0) {
            this.f46722h = null;
        } else {
            this.f46722h = bool8;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KisaConsentsPatchDto)) {
            return false;
        }
        KisaConsentsPatchDto kisaConsentsPatchDto = (KisaConsentsPatchDto) obj;
        return Intrinsics.c(this.f46717a, kisaConsentsPatchDto.f46717a) && Intrinsics.c(this.f46718b, kisaConsentsPatchDto.f46718b) && Intrinsics.c(this.f46719c, kisaConsentsPatchDto.f46719c) && Intrinsics.c(this.d, kisaConsentsPatchDto.d) && Intrinsics.c(this.f46720e, kisaConsentsPatchDto.f46720e) && Intrinsics.c(this.f46721f, kisaConsentsPatchDto.f46721f) && Intrinsics.c(this.g, kisaConsentsPatchDto.g) && Intrinsics.c(this.f46722h, kisaConsentsPatchDto.f46722h);
    }

    public final int hashCode() {
        Boolean bool = this.f46717a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f46718b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f46719c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.f46720e;
        int iHashCode5 = (iHashCode4 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.f46721f;
        int iHashCode6 = (iHashCode5 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.g;
        int iHashCode7 = (iHashCode6 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
        Boolean bool8 = this.f46722h;
        return iHashCode7 + (bool8 != null ? bool8.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KisaConsentsPatchDto(newsletterPersonalData=");
        sb.append(this.f46717a);
        sb.append(", storeAppointmentPersonalData=");
        sb.append(this.f46718b);
        sb.append(", lvTermsAndUse=");
        d21.B(sb, this.f46719c, ", mainPersonalData=", this.d, ", additionalPersonalData=");
        d21.B(sb, this.f46720e, ", thirdPartiesPersonalData=", this.f46721f, ", promotionPersonalData=");
        sb.append(this.g);
        sb.append(", requiredAge=");
        sb.append(this.f46722h);
        sb.append(")");
        return sb.toString();
    }

    public KisaConsentsPatchDto() {
        this((Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, 255, (DefaultConstructorMarker) null);
    }

    public KisaConsentsPatchDto(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8) {
        this.f46717a = bool;
        this.f46718b = bool2;
        this.f46719c = bool3;
        this.d = bool4;
        this.f46720e = bool5;
        this.f46721f = bool6;
        this.g = bool7;
        this.f46722h = bool8;
    }

    public /* synthetic */ KisaConsentsPatchDto(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : bool3, (i2 & 8) != 0 ? null : bool4, (i2 & 16) != 0 ? null : bool5, (i2 & 32) != 0 ? null : bool6, (i2 & 64) != 0 ? null : bool7, (i2 & 128) != 0 ? null : bool8);
    }
}
