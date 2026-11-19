package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AuthorizationResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthorizationResult> CREATOR = new zbf();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28728c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f28729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GoogleSignInAccount f28730f;
    public final PendingIntent g;

    public AuthorizationResult(String str, String str2, String str3, List<String> list, GoogleSignInAccount googleSignInAccount, PendingIntent pendingIntent) {
        this.f28727b = str;
        this.f28728c = str2;
        this.d = str3;
        Preconditions.h(list);
        this.f28729e = list;
        this.g = pendingIntent;
        this.f28730f = googleSignInAccount;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthorizationResult)) {
            return false;
        }
        AuthorizationResult authorizationResult = (AuthorizationResult) obj;
        return Objects.a(this.f28727b, authorizationResult.f28727b) && Objects.a(this.f28728c, authorizationResult.f28728c) && Objects.a(this.d, authorizationResult.d) && Objects.a(this.f28729e, authorizationResult.f28729e) && Objects.a(this.g, authorizationResult.g) && Objects.a(this.f28730f, authorizationResult.f28730f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28727b, this.f28728c, this.d, this.f28729e, this.g, this.f28730f});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f28727b, false);
        SafeParcelWriter.k(parcel, 2, this.f28728c, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.m(parcel, 4, this.f28729e);
        SafeParcelWriter.j(parcel, 5, this.f28730f, i2, false);
        SafeParcelWriter.j(parcel, 6, this.g, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
