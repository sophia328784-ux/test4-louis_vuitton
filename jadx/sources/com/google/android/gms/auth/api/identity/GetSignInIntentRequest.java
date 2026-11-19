package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class GetSignInIntentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new zbl();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28767c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f28769f;
    public final int g;

    /* JADX INFO: loaded from: classes.dex */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f28770a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f28771b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f28772c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f28773e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f28774f;
    }

    public GetSignInIntentRequest(int i2, String str, boolean z, String str2, String str3, String str4) {
        Preconditions.h(str);
        this.f28766b = str;
        this.f28767c = str2;
        this.d = str3;
        this.f28768e = str4;
        this.f28769f = z;
        this.g = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        return Objects.a(this.f28766b, getSignInIntentRequest.f28766b) && Objects.a(this.f28768e, getSignInIntentRequest.f28768e) && Objects.a(this.f28767c, getSignInIntentRequest.f28767c) && Objects.a(Boolean.valueOf(this.f28769f), Boolean.valueOf(getSignInIntentRequest.f28769f)) && this.g == getSignInIntentRequest.g;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28766b, this.f28767c, this.f28768e, Boolean.valueOf(this.f28769f), Integer.valueOf(this.g)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f28766b, false);
        SafeParcelWriter.k(parcel, 2, this.f28767c, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f28768e, false);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f28769f ? 1 : 0);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g);
        SafeParcelWriter.r(iQ, parcel);
    }
}
