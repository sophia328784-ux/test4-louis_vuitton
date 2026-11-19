package com.vuitton.foundation.model.domain.model.authentication.oauth;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ForgetPasswordValidation;", "", "", "login", "newPassword", "verificationCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ForgetPasswordValidation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66628c;

    public ForgetPasswordValidation(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f66626a = str;
        this.f66627b = str2;
        this.f66628c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ForgetPasswordValidation)) {
            return false;
        }
        ForgetPasswordValidation forgetPasswordValidation = (ForgetPasswordValidation) obj;
        return Intrinsics.c(this.f66626a, forgetPasswordValidation.f66626a) && Intrinsics.c(this.f66627b, forgetPasswordValidation.f66627b) && Intrinsics.c(this.f66628c, forgetPasswordValidation.f66628c);
    }

    public final int hashCode() {
        return this.f66628c.hashCode() + fc.b(this.f66626a.hashCode() * 31, 31, this.f66627b);
    }

    public final String toString() {
        return n00.r(this.f66628c, ")", fc.s("ForgetPasswordValidation(login=", this.f66626a, ", newPassword=", this.f66627b, ", verificationCode="));
    }
}
