package com.vuitton.foundation.model.domain.model.profile;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/ProfilePwdUpdate;", "", "", "oldPassword", "newPassword", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProfilePwdUpdate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68179b;

    public ProfilePwdUpdate(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f68178a = str;
        this.f68179b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfilePwdUpdate)) {
            return false;
        }
        ProfilePwdUpdate profilePwdUpdate = (ProfilePwdUpdate) obj;
        return Intrinsics.c(this.f68178a, profilePwdUpdate.f68178a) && Intrinsics.c(this.f68179b, profilePwdUpdate.f68179b);
    }

    public final int hashCode() {
        return this.f68179b.hashCode() + (this.f68178a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("ProfilePwdUpdate(oldPassword=", this.f68178a, ", newPassword=", this.f68179b, ")");
    }
}
