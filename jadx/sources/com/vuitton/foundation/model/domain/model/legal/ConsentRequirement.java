package com.vuitton.foundation.model.domain.model.legal;

import com.batch.android.s.b;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;", "", "", b.a.f24015b, "title", "", "isMandatory", "Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;", "feature", "isChecked", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConsentRequirement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f67761c;
    public final ConsentFeature d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f67762e;

    public ConsentRequirement(String str, String str2, boolean z, ConsentFeature consentFeature, boolean z2) {
        str.getClass();
        str2.getClass();
        this.f67759a = str;
        this.f67760b = str2;
        this.f67761c = z;
        this.d = consentFeature;
        this.f67762e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConsentRequirement)) {
            return false;
        }
        ConsentRequirement consentRequirement = (ConsentRequirement) obj;
        return Intrinsics.c(this.f67759a, consentRequirement.f67759a) && Intrinsics.c(this.f67760b, consentRequirement.f67760b) && this.f67761c == consentRequirement.f67761c && this.d == consentRequirement.d && this.f67762e == consentRequirement.f67762e;
    }

    public final int hashCode() {
        int iB = o60.b(fc.b(this.f67759a.hashCode() * 31, 31, this.f67760b), 31, this.f67761c);
        ConsentFeature consentFeature = this.d;
        return Boolean.hashCode(this.f67762e) + ((iB + (consentFeature == null ? 0 : consentFeature.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ConsentRequirement(id=", this.f67759a, ", title=", this.f67760b, ", isMandatory=");
        sbS.append(this.f67761c);
        sbS.append(", feature=");
        sbS.append(this.d);
        sbS.append(", isChecked=");
        return a.p(sbS, this.f67762e, ")");
    }

    public /* synthetic */ ConsentRequirement(String str, String str2, boolean z, ConsentFeature consentFeature, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z, consentFeature, (i2 & 16) != 0 ? false : z2);
    }
}
