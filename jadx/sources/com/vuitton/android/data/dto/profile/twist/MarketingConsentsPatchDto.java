package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B[\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bBa\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;", "", "", "callConsent", "mailsConsent", "newsletterEmailsConsent", "smsConsent", "marketingSmsConsent", "partnerEmailsConsent", "emailTrackingConsent", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class MarketingConsentsPatchDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f46730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f46731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f46732c;
    public final Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f46733e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f46734f;
    public final Boolean g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<MarketingConsentsPatchDto> serializer() {
            return MarketingConsentsPatchDto$$serializer.f46735a;
        }
    }

    public /* synthetic */ MarketingConsentsPatchDto(int i2, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46730a = null;
        } else {
            this.f46730a = bool;
        }
        if ((i2 & 2) == 0) {
            this.f46731b = null;
        } else {
            this.f46731b = bool2;
        }
        if ((i2 & 4) == 0) {
            this.f46732c = null;
        } else {
            this.f46732c = bool3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = bool4;
        }
        if ((i2 & 16) == 0) {
            this.f46733e = null;
        } else {
            this.f46733e = bool5;
        }
        if ((i2 & 32) == 0) {
            this.f46734f = null;
        } else {
            this.f46734f = bool6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = bool7;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MarketingConsentsPatchDto)) {
            return false;
        }
        MarketingConsentsPatchDto marketingConsentsPatchDto = (MarketingConsentsPatchDto) obj;
        return Intrinsics.c(this.f46730a, marketingConsentsPatchDto.f46730a) && Intrinsics.c(this.f46731b, marketingConsentsPatchDto.f46731b) && Intrinsics.c(this.f46732c, marketingConsentsPatchDto.f46732c) && Intrinsics.c(this.d, marketingConsentsPatchDto.d) && Intrinsics.c(this.f46733e, marketingConsentsPatchDto.f46733e) && Intrinsics.c(this.f46734f, marketingConsentsPatchDto.f46734f) && Intrinsics.c(this.g, marketingConsentsPatchDto.g);
    }

    public final int hashCode() {
        Boolean bool = this.f46730a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f46731b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f46732c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.f46733e;
        int iHashCode5 = (iHashCode4 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.f46734f;
        int iHashCode6 = (iHashCode5 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.g;
        return iHashCode6 + (bool7 != null ? bool7.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MarketingConsentsPatchDto(callConsent=");
        sb.append(this.f46730a);
        sb.append(", mailsConsent=");
        sb.append(this.f46731b);
        sb.append(", newsletterEmailsConsent=");
        d21.B(sb, this.f46732c, ", smsConsent=", this.d, ", marketingSmsConsent=");
        d21.B(sb, this.f46733e, ", partnerEmailsConsent=", this.f46734f, ", emailTrackingConsent=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }

    public MarketingConsentsPatchDto() {
        this((Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, (Boolean) null, CertificateBody.profileType, (DefaultConstructorMarker) null);
    }

    public MarketingConsentsPatchDto(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7) {
        this.f46730a = bool;
        this.f46731b = bool2;
        this.f46732c = bool3;
        this.d = bool4;
        this.f46733e = bool5;
        this.f46734f = bool6;
        this.g = bool7;
    }

    public /* synthetic */ MarketingConsentsPatchDto(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : bool3, (i2 & 8) != 0 ? null : bool4, (i2 & 16) != 0 ? null : bool5, (i2 & 32) != 0 ? null : bool6, (i2 & 64) != 0 ? null : bool7);
    }
}
