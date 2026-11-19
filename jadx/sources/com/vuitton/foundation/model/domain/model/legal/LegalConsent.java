package com.vuitton.foundation.model.domain.model.legal;

import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;", "", "", "description", "", "Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;", "requirements", "timeStamp", "Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LegalConsent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67765c;
    public final LegalConsentContext d;

    public LegalConsent(String str, List list, String str2, LegalConsentContext legalConsentContext, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : legalConsentContext);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LegalConsent)) {
            return false;
        }
        LegalConsent legalConsent = (LegalConsent) obj;
        return Intrinsics.c(this.f67763a, legalConsent.f67763a) && Intrinsics.c(this.f67764b, legalConsent.f67764b) && Intrinsics.c(this.f67765c, legalConsent.f67765c) && this.d == legalConsent.d;
    }

    public final int hashCode() {
        int iA = n00.a(this.f67763a.hashCode() * 31, 31, this.f67764b);
        String str = this.f67765c;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        LegalConsentContext legalConsentContext = this.d;
        return iHashCode + (legalConsentContext != null ? legalConsentContext.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("LegalConsent(description=", this.f67763a, ", requirements=", this.f67764b, ", timeStamp=");
        sbT.append(this.f67765c);
        sbT.append(", context=");
        sbT.append(this.d);
        sbT.append(")");
        return sbT.toString();
    }

    public LegalConsent(String str, List<ConsentRequirement> list, String str2, LegalConsentContext legalConsentContext) {
        str.getClass();
        list.getClass();
        this.f67763a = str;
        this.f67764b = list;
        this.f67765c = str2;
        this.d = legalConsentContext;
    }
}
