package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bBY\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;", "", "", "callConsent", "mailsConsent", "newsletterEmailsConsent", "smsConsent", "marketingSmsConsent", "partnerEmailsConsent", "emailTrackingConsent", "<init>", "(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class MarketingConsentsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f46724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f46725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f46726c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f46727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f46728f;
    public final Boolean g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<MarketingConsentsDto> serializer() {
            return MarketingConsentsDto$$serializer.f46729a;
        }
    }

    public /* synthetic */ MarketingConsentsDto(int i2, boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, Boolean bool2, Boolean bool3, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, MarketingConsentsDto$$serializer.f46729a.a());
            throw null;
        }
        this.f46724a = z;
        this.f46725b = z2;
        this.f46726c = z3;
        this.d = z4;
        if ((i2 & 16) == 0) {
            this.f46727e = null;
        } else {
            this.f46727e = bool;
        }
        if ((i2 & 32) == 0) {
            this.f46728f = null;
        } else {
            this.f46728f = bool2;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = bool3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MarketingConsentsDto)) {
            return false;
        }
        MarketingConsentsDto marketingConsentsDto = (MarketingConsentsDto) obj;
        return this.f46724a == marketingConsentsDto.f46724a && this.f46725b == marketingConsentsDto.f46725b && this.f46726c == marketingConsentsDto.f46726c && this.d == marketingConsentsDto.d && Intrinsics.c(this.f46727e, marketingConsentsDto.f46727e) && Intrinsics.c(this.f46728f, marketingConsentsDto.f46728f) && Intrinsics.c(this.g, marketingConsentsDto.g);
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(o60.b(Boolean.hashCode(this.f46724a) * 31, 31, this.f46725b), 31, this.f46726c), 31, this.d);
        Boolean bool = this.f46727e;
        int iHashCode = (iB + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f46728f;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.g;
        return iHashCode2 + (bool3 != null ? bool3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("MarketingConsentsDto(callConsent=", ", mailsConsent=", ", newsletterEmailsConsent=", this.f46724a, this.f46725b);
        fc.y(sbM, this.f46726c, ", smsConsent=", this.d, ", marketingSmsConsent=");
        d21.B(sbM, this.f46727e, ", partnerEmailsConsent=", this.f46728f, ", emailTrackingConsent=");
        sbM.append(this.g);
        sbM.append(")");
        return sbM.toString();
    }

    public MarketingConsentsDto(boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, Boolean bool2, Boolean bool3) {
        this.f46724a = z;
        this.f46725b = z2;
        this.f46726c = z3;
        this.d = z4;
        this.f46727e = bool;
        this.f46728f = bool2;
        this.g = bool3;
    }

    public /* synthetic */ MarketingConsentsDto(boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, Boolean bool2, Boolean bool3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, z3, z4, (i2 & 16) != 0 ? null : bool, (i2 & 32) != 0 ? null : bool2, (i2 & 64) != 0 ? null : bool3);
    }
}
