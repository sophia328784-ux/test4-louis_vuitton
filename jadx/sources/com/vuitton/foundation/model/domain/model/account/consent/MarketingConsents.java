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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BO\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bBa\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;", "", "", "callConsent", "mailsConsent", "newsletterEmailsConsent", "smsConsent", "marketingSmsConsent", "partnerEmailsConsent", "emailTrackingConsent", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class MarketingConsents {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f66281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f66282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f66283c;
    public final Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f66284e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f66285f;
    public final Boolean g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<MarketingConsents> serializer() {
            return MarketingConsents$$serializer.f66286a;
        }
    }

    public /* synthetic */ MarketingConsents(int i2, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i2 & 63)) {
            PluginExceptionsKt.b(i2, 63, MarketingConsents$$serializer.f66286a.a());
            throw null;
        }
        this.f66281a = bool;
        this.f66282b = bool2;
        this.f66283c = bool3;
        this.d = bool4;
        this.f66284e = bool5;
        this.f66285f = bool6;
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
        if (!(obj instanceof MarketingConsents)) {
            return false;
        }
        MarketingConsents marketingConsents = (MarketingConsents) obj;
        return Intrinsics.c(this.f66281a, marketingConsents.f66281a) && Intrinsics.c(this.f66282b, marketingConsents.f66282b) && Intrinsics.c(this.f66283c, marketingConsents.f66283c) && Intrinsics.c(this.d, marketingConsents.d) && Intrinsics.c(this.f66284e, marketingConsents.f66284e) && Intrinsics.c(this.f66285f, marketingConsents.f66285f) && Intrinsics.c(this.g, marketingConsents.g);
    }

    public final int hashCode() {
        Boolean bool = this.f66281a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f66282b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f66283c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.f66284e;
        int iHashCode5 = (iHashCode4 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.f66285f;
        int iHashCode6 = (iHashCode5 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.g;
        return iHashCode6 + (bool7 != null ? bool7.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MarketingConsents(callConsent=");
        sb.append(this.f66281a);
        sb.append(", mailsConsent=");
        sb.append(this.f66282b);
        sb.append(", newsletterEmailsConsent=");
        d21.B(sb, this.f66283c, ", smsConsent=", this.d, ", marketingSmsConsent=");
        d21.B(sb, this.f66284e, ", partnerEmailsConsent=", this.f66285f, ", emailTrackingConsent=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }

    public MarketingConsents(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7) {
        this.f66281a = bool;
        this.f66282b = bool2;
        this.f66283c = bool3;
        this.d = bool4;
        this.f66284e = bool5;
        this.f66285f = bool6;
        this.g = bool7;
    }

    public /* synthetic */ MarketingConsents(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bool, bool2, bool3, bool4, bool5, bool6, (i2 & 64) != 0 ? null : bool7);
    }
}
