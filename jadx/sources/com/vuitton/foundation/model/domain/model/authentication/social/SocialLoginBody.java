package com.vuitton.foundation.model.domain.model.authentication.social;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;", "", "", "identityToken", "authorizationCode", "rawNonce", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SocialLoginBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66660c;

    public SocialLoginBody(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f66658a = str;
        this.f66659b = str2;
        this.f66660c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialLoginBody)) {
            return false;
        }
        SocialLoginBody socialLoginBody = (SocialLoginBody) obj;
        return Intrinsics.c(this.f66658a, socialLoginBody.f66658a) && Intrinsics.c(this.f66659b, socialLoginBody.f66659b) && Intrinsics.c(this.f66660c, socialLoginBody.f66660c);
    }

    public final int hashCode() {
        return this.f66660c.hashCode() + fc.b(this.f66658a.hashCode() * 31, 31, this.f66659b);
    }

    public final String toString() {
        return n00.r(this.f66660c, ")", fc.s("SocialLoginBody(identityToken=", this.f66658a, ", authorizationCode=", this.f66659b, ", rawNonce="));
    }

    public /* synthetic */ SocialLoginBody(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? " " : str2, str3);
    }
}
