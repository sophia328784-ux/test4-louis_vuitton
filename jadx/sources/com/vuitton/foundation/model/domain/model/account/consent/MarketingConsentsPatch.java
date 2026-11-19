package com.vuitton.foundation.model.domain.model.account.consent;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;", "", "", "callConsent", "mailsConsent", "newsletterEmailsConsent", "smsConsent", "marketingSmsConsent", "partnerEmailsConsent", "emailTrackingConsent", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MarketingConsentsPatch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f66287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f66288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f66289c;
    public final Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f66290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f66291f;
    public final Boolean g;

    public /* synthetic */ MarketingConsentsPatch(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : bool3, (i2 & 8) != 0 ? null : bool4, (i2 & 16) != 0 ? null : bool5, (i2 & 32) != 0 ? null : bool6, (i2 & 64) != 0 ? null : bool7);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MarketingConsentsPatch)) {
            return false;
        }
        MarketingConsentsPatch marketingConsentsPatch = (MarketingConsentsPatch) obj;
        return Intrinsics.c(this.f66287a, marketingConsentsPatch.f66287a) && Intrinsics.c(this.f66288b, marketingConsentsPatch.f66288b) && Intrinsics.c(this.f66289c, marketingConsentsPatch.f66289c) && Intrinsics.c(this.d, marketingConsentsPatch.d) && Intrinsics.c(this.f66290e, marketingConsentsPatch.f66290e) && Intrinsics.c(this.f66291f, marketingConsentsPatch.f66291f) && Intrinsics.c(this.g, marketingConsentsPatch.g);
    }

    public final int hashCode() {
        Boolean bool = this.f66287a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f66288b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f66289c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.f66290e;
        int iHashCode5 = (iHashCode4 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.f66291f;
        int iHashCode6 = (iHashCode5 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.g;
        return iHashCode6 + (bool7 != null ? bool7.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MarketingConsentsPatch(callConsent=");
        sb.append(this.f66287a);
        sb.append(", mailsConsent=");
        sb.append(this.f66288b);
        sb.append(", newsletterEmailsConsent=");
        d21.B(sb, this.f66289c, ", smsConsent=", this.d, ", marketingSmsConsent=");
        d21.B(sb, this.f66290e, ", partnerEmailsConsent=", this.f66291f, ", emailTrackingConsent=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }

    public MarketingConsentsPatch(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7) {
        this.f66287a = bool;
        this.f66288b = bool2;
        this.f66289c = bool3;
        this.d = bool4;
        this.f66290e = bool5;
        this.f66291f = bool6;
        this.g = bool7;
    }

    public MarketingConsentsPatch() {
        this(null, null, null, null, null, null, null, CertificateBody.profileType, null);
    }
}
