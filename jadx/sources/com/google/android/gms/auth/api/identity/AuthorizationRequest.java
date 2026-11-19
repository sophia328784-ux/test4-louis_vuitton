package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AuthorizationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AuthorizationRequest> CREATOR = new zbe();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f28720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28721c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Account f28723f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f28724h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f28725i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Bundle f28726j;

    public AuthorizationRequest(ArrayList arrayList, String str, boolean z, boolean z2, Account account, String str2, String str3, boolean z3, Bundle bundle) {
        boolean z4 = false;
        if (arrayList != null && !arrayList.isEmpty()) {
            z4 = true;
        }
        Preconditions.b(z4, "requestedScopes cannot be null or empty");
        this.f28720b = arrayList;
        this.f28721c = str;
        this.d = z;
        this.f28722e = z2;
        this.f28723f = account;
        this.g = str2;
        this.f28724h = str3;
        this.f28725i = z3;
        this.f28726j = bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthorizationRequest)) {
            return false;
        }
        AuthorizationRequest authorizationRequest = (AuthorizationRequest) obj;
        List list = authorizationRequest.f28720b;
        List list2 = this.f28720b;
        if (list2.size() == list.size() && list2.containsAll(list)) {
            Bundle bundle = authorizationRequest.f28726j;
            Bundle bundle2 = this.f28726j;
            if (bundle2 == null) {
                if (bundle == null) {
                    bundle = null;
                }
                return false;
            }
            if (bundle2 == null || bundle != null) {
                if (bundle2 != null) {
                    if (bundle2.size() != bundle.size()) {
                        return false;
                    }
                    for (String str : bundle2.keySet()) {
                        if (!Objects.a(bundle2.getString(str), bundle.getString(str))) {
                            return false;
                        }
                    }
                }
                if (this.d == authorizationRequest.d && this.f28725i == authorizationRequest.f28725i && this.f28722e == authorizationRequest.f28722e && Objects.a(this.f28721c, authorizationRequest.f28721c) && Objects.a(this.f28723f, authorizationRequest.f28723f) && Objects.a(this.g, authorizationRequest.g) && Objects.a(this.f28724h, authorizationRequest.f28724h)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28720b, this.f28721c, Boolean.valueOf(this.d), Boolean.valueOf(this.f28725i), Boolean.valueOf(this.f28722e), this.f28723f, this.g, this.f28724h, this.f28726j});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f28720b, false);
        SafeParcelWriter.k(parcel, 2, this.f28721c, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f28722e ? 1 : 0);
        SafeParcelWriter.j(parcel, 5, this.f28723f, i2, false);
        SafeParcelWriter.k(parcel, 6, this.g, false);
        SafeParcelWriter.k(parcel, 7, this.f28724h, false);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f28725i ? 1 : 0);
        SafeParcelWriter.a(parcel, 9, this.f28726j);
        SafeParcelWriter.r(iQ, parcel);
    }
}
