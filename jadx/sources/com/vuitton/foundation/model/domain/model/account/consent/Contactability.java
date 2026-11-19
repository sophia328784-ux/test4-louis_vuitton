package com.vuitton.foundation.model.domain.model.account.consent;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/Contactability;", "", "", "contactableByMail", "contactableByPhone", "contactableBySms", "subscribedInNewsletter", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Contactability {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f66265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f66266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f66267c;
    public final Boolean d;

    public /* synthetic */ Contactability(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : bool3, (i2 & 8) != 0 ? null : bool4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Contactability)) {
            return false;
        }
        Contactability contactability = (Contactability) obj;
        return Intrinsics.c(this.f66265a, contactability.f66265a) && Intrinsics.c(this.f66266b, contactability.f66266b) && Intrinsics.c(this.f66267c, contactability.f66267c) && Intrinsics.c(this.d, contactability.d);
    }

    public final int hashCode() {
        Boolean bool = this.f66265a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f66266b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f66267c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        return iHashCode3 + (bool4 != null ? bool4.hashCode() : 0);
    }

    public final String toString() {
        return "Contactability(contactableByMail=" + this.f66265a + ", contactableByPhone=" + this.f66266b + ", contactableBySms=" + this.f66267c + ", subscribedInNewsletter=" + this.d + ")";
    }

    public Contactability(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4) {
        this.f66265a = bool;
        this.f66266b = bool2;
        this.f66267c = bool3;
        this.d = bool4;
    }

    public Contactability() {
        this(null, null, null, null, 15, null);
    }
}
