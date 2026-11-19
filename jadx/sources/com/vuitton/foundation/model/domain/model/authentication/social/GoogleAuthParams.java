package com.vuitton.foundation.model.domain.model.authentication.social;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/social/GoogleAuthParams;", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;", "", "token", "rawNonce", "email", "firstName", "lastName", "civility", "locale", "firstName2", "lastName2", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GoogleAuthParams extends SocialAuthParams {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66645j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66646k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleAuthParams(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        super(str, str2, str3, str4, str5, str6, str7, SocialAuthMode.GOOGLE, str8, str9, null);
        pq0.z(str, str2, str3, str4, str5);
        str7.getClass();
        this.f66645j = str;
        this.f66646k = str2;
        this.l = str3;
        this.m = str4;
        this.n = str5;
        this.o = str6;
        this.p = str7;
        this.q = str8;
        this.r = str9;
    }

    @Override // com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getO() {
        return this.o;
    }

    @Override // com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getM() {
        return this.m;
    }

    @Override // com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getQ() {
        return this.q;
    }

    @Override // com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams
    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getN() {
        return this.n;
    }

    @Override // com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams
    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getR() {
        return this.r;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GoogleAuthParams)) {
            return false;
        }
        GoogleAuthParams googleAuthParams = (GoogleAuthParams) obj;
        return Intrinsics.c(this.f66645j, googleAuthParams.f66645j) && Intrinsics.c(this.f66646k, googleAuthParams.f66646k) && Intrinsics.c(this.l, googleAuthParams.l) && Intrinsics.c(this.m, googleAuthParams.m) && Intrinsics.c(this.n, googleAuthParams.n) && Intrinsics.c(this.o, googleAuthParams.o) && Intrinsics.c(this.p, googleAuthParams.p) && Intrinsics.c(this.q, googleAuthParams.q) && Intrinsics.c(this.r, googleAuthParams.r);
    }

    @Override // com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams
    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getP() {
        return this.p;
    }

    @Override // com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams
    /* JADX INFO: renamed from: g, reason: from getter */
    public final String getF66646k() {
        return this.f66646k;
    }

    @Override // com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams
    /* JADX INFO: renamed from: h, reason: from getter */
    public final String getF66645j() {
        return this.f66645j;
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(fc.b(this.f66645j.hashCode() * 31, 31, this.f66646k), 31, this.l), 31, this.m), 31, this.n);
        String str = this.o;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.p);
        String str2 = this.q;
        int iHashCode = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.r;
        return iHashCode + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("GoogleAuthParams(token=", this.f66645j, ", rawNonce=", this.f66646k, ", email=");
        cj.C(sbS, this.l, ", firstName=", this.m, ", lastName=");
        cj.C(sbS, this.n, ", civility=", this.o, ", locale=");
        cj.C(sbS, this.p, ", firstName2=", this.q, ", lastName2=");
        return n00.r(this.r, ")", sbS);
    }

    public /* synthetic */ GoogleAuthParams(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, (i2 & 32) != 0 ? null : str6, str7, (i2 & 128) != 0 ? null : str8, (i2 & 256) != 0 ? null : str9);
    }
}
