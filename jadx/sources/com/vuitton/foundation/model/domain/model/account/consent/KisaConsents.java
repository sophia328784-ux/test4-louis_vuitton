package com.vuitton.foundation.model.domain.model.account.consent;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BW\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fBk\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;", "", "", "newsletterPersonalData", "storeAppointmentPersonalData", "lvTermsAndUse", "mainPersonalData", "additionalPersonalData", "thirdPartiesPersonalData", "promotionPersonalData", "requiredAge", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class KisaConsents {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f66268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f66269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f66270c;
    public final Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f66271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f66272f;
    public final Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Boolean f66273h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<KisaConsents> serializer() {
            return KisaConsents$$serializer.f66274a;
        }
    }

    public /* synthetic */ KisaConsents(int i2, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i2 & 255)) {
            PluginExceptionsKt.b(i2, 255, KisaConsents$$serializer.f66274a.a());
            throw null;
        }
        this.f66268a = bool;
        this.f66269b = bool2;
        this.f66270c = bool3;
        this.d = bool4;
        this.f66271e = bool5;
        this.f66272f = bool6;
        this.g = bool7;
        this.f66273h = bool8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KisaConsents)) {
            return false;
        }
        KisaConsents kisaConsents = (KisaConsents) obj;
        return Intrinsics.c(this.f66268a, kisaConsents.f66268a) && Intrinsics.c(this.f66269b, kisaConsents.f66269b) && Intrinsics.c(this.f66270c, kisaConsents.f66270c) && Intrinsics.c(this.d, kisaConsents.d) && Intrinsics.c(this.f66271e, kisaConsents.f66271e) && Intrinsics.c(this.f66272f, kisaConsents.f66272f) && Intrinsics.c(this.g, kisaConsents.g) && Intrinsics.c(this.f66273h, kisaConsents.f66273h);
    }

    public final int hashCode() {
        Boolean bool = this.f66268a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f66269b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f66270c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.f66271e;
        int iHashCode5 = (iHashCode4 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.f66272f;
        int iHashCode6 = (iHashCode5 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.g;
        int iHashCode7 = (iHashCode6 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
        Boolean bool8 = this.f66273h;
        return iHashCode7 + (bool8 != null ? bool8.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KisaConsents(newsletterPersonalData=");
        sb.append(this.f66268a);
        sb.append(", storeAppointmentPersonalData=");
        sb.append(this.f66269b);
        sb.append(", lvTermsAndUse=");
        d21.B(sb, this.f66270c, ", mainPersonalData=", this.d, ", additionalPersonalData=");
        d21.B(sb, this.f66271e, ", thirdPartiesPersonalData=", this.f66272f, ", promotionPersonalData=");
        sb.append(this.g);
        sb.append(", requiredAge=");
        sb.append(this.f66273h);
        sb.append(")");
        return sb.toString();
    }

    public KisaConsents(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8) {
        this.f66268a = bool;
        this.f66269b = bool2;
        this.f66270c = bool3;
        this.d = bool4;
        this.f66271e = bool5;
        this.f66272f = bool6;
        this.g = bool7;
        this.f66273h = bool8;
    }
}
