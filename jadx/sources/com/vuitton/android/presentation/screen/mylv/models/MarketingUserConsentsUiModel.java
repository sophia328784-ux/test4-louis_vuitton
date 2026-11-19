package com.vuitton.android.presentation.screen.mylv.models;

import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001BS\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;", "", "", "callConsent", "mailsConsent", "newsletterEmailsConsent", "smsConsent", "marketingSmsConsent", "partnerEmailsConsent", "emailTrackingConsent", "<init>", "(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MarketingUserConsentsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f59406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f59407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59408c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f59409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f59410f;
    public final Boolean g;

    public /* synthetic */ MarketingUserConsentsUiModel(boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, Boolean bool2, Boolean bool3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? null : bool, (i2 & 32) != 0 ? null : bool2, (i2 & 64) != 0 ? null : bool3);
    }

    public static MarketingUserConsentsUiModel a(MarketingUserConsentsUiModel marketingUserConsentsUiModel, boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, Boolean bool2, Boolean bool3, int i2) {
        if ((i2 & 1) != 0) {
            z = marketingUserConsentsUiModel.f59406a;
        }
        boolean z5 = z;
        if ((i2 & 2) != 0) {
            z2 = marketingUserConsentsUiModel.f59407b;
        }
        boolean z6 = z2;
        if ((i2 & 4) != 0) {
            z3 = marketingUserConsentsUiModel.f59408c;
        }
        boolean z7 = z3;
        if ((i2 & 8) != 0) {
            z4 = marketingUserConsentsUiModel.d;
        }
        boolean z8 = z4;
        if ((i2 & 16) != 0) {
            bool = marketingUserConsentsUiModel.f59409e;
        }
        Boolean bool4 = bool;
        if ((i2 & 32) != 0) {
            bool2 = marketingUserConsentsUiModel.f59410f;
        }
        Boolean bool5 = bool2;
        if ((i2 & 64) != 0) {
            bool3 = marketingUserConsentsUiModel.g;
        }
        marketingUserConsentsUiModel.getClass();
        return new MarketingUserConsentsUiModel(z5, z6, z7, z8, bool4, bool5, bool3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MarketingUserConsentsUiModel)) {
            return false;
        }
        MarketingUserConsentsUiModel marketingUserConsentsUiModel = (MarketingUserConsentsUiModel) obj;
        return this.f59406a == marketingUserConsentsUiModel.f59406a && this.f59407b == marketingUserConsentsUiModel.f59407b && this.f59408c == marketingUserConsentsUiModel.f59408c && this.d == marketingUserConsentsUiModel.d && Intrinsics.c(this.f59409e, marketingUserConsentsUiModel.f59409e) && Intrinsics.c(this.f59410f, marketingUserConsentsUiModel.f59410f) && Intrinsics.c(this.g, marketingUserConsentsUiModel.g);
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(o60.b(Boolean.hashCode(this.f59406a) * 31, 31, this.f59407b), 31, this.f59408c), 31, this.d);
        Boolean bool = this.f59409e;
        int iHashCode = (iB + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f59410f;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.g;
        return iHashCode2 + (bool3 != null ? bool3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("MarketingUserConsentsUiModel(callConsent=", ", mailsConsent=", ", newsletterEmailsConsent=", this.f59406a, this.f59407b);
        fc.y(sbM, this.f59408c, ", smsConsent=", this.d, ", marketingSmsConsent=");
        d21.B(sbM, this.f59409e, ", partnerEmailsConsent=", this.f59410f, ", emailTrackingConsent=");
        sbM.append(this.g);
        sbM.append(")");
        return sbM.toString();
    }

    public MarketingUserConsentsUiModel(boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, Boolean bool2, Boolean bool3) {
        this.f59406a = z;
        this.f59407b = z2;
        this.f59408c = z3;
        this.d = z4;
        this.f59409e = bool;
        this.f59410f = bool2;
        this.g = bool3;
    }

    public MarketingUserConsentsUiModel() {
        this(false, false, false, false, null, null, null, CertificateBody.profileType, null);
    }
}
