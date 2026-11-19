package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BK\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fB_\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;", "", "", "newsletterPersonalData", "storeAppointmentPersonalData", "lvTermsAndUseConsent", "mainPersonalDataConsent", "additionalPersonalDataConsent", "thirdPartiesPersonalDataConsent", "promotionPersonalDataConsent", "requiredAgeConsent", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZ)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class KisaConsentsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f46710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f46711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f46712c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f46713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f46714f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f46715h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<KisaConsentsDto> serializer() {
            return KisaConsentsDto$$serializer.f46716a;
        }
    }

    public /* synthetic */ KisaConsentsDto(int i2, Boolean bool, Boolean bool2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i2 & 255)) {
            PluginExceptionsKt.b(i2, 255, KisaConsentsDto$$serializer.f46716a.a());
            throw null;
        }
        this.f46710a = bool;
        this.f46711b = bool2;
        this.f46712c = z;
        this.d = z2;
        this.f46713e = z3;
        this.f46714f = z4;
        this.g = z5;
        this.f46715h = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KisaConsentsDto)) {
            return false;
        }
        KisaConsentsDto kisaConsentsDto = (KisaConsentsDto) obj;
        return Intrinsics.c(this.f46710a, kisaConsentsDto.f46710a) && Intrinsics.c(this.f46711b, kisaConsentsDto.f46711b) && this.f46712c == kisaConsentsDto.f46712c && this.d == kisaConsentsDto.d && this.f46713e == kisaConsentsDto.f46713e && this.f46714f == kisaConsentsDto.f46714f && this.g == kisaConsentsDto.g && this.f46715h == kisaConsentsDto.f46715h;
    }

    public final int hashCode() {
        Boolean bool = this.f46710a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f46711b;
        return Boolean.hashCode(this.f46715h) + o60.b(o60.b(o60.b(o60.b(o60.b((iHashCode + (bool2 != null ? bool2.hashCode() : 0)) * 31, 31, this.f46712c), 31, this.d), 31, this.f46713e), 31, this.f46714f), 31, this.g);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KisaConsentsDto(newsletterPersonalData=");
        sb.append(this.f46710a);
        sb.append(", storeAppointmentPersonalData=");
        sb.append(this.f46711b);
        sb.append(", lvTermsAndUseConsent=");
        fc.y(sb, this.f46712c, ", mainPersonalDataConsent=", this.d, ", additionalPersonalDataConsent=");
        fc.y(sb, this.f46713e, ", thirdPartiesPersonalDataConsent=", this.f46714f, ", promotionPersonalDataConsent=");
        return pq0.p(sb, this.g, ", requiredAgeConsent=", this.f46715h, ")");
    }

    public KisaConsentsDto(Boolean bool, Boolean bool2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f46710a = bool;
        this.f46711b = bool2;
        this.f46712c = z;
        this.d = z2;
        this.f46713e = z3;
        this.f46714f = z4;
        this.g = z5;
        this.f46715h = z6;
    }
}
