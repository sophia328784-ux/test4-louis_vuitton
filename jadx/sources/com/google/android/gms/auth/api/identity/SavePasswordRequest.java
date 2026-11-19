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
public class SavePasswordRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new zbs();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SignInPassword f28780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28781c;
    public final int d;

    /* JADX INFO: loaded from: classes.dex */
    @Deprecated
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SignInPassword f28782a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f28783b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f28784c;
    }

    public SavePasswordRequest(SignInPassword signInPassword, String str, int i2) {
        Preconditions.h(signInPassword);
        this.f28780b = signInPassword;
        this.f28781c = str;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        return Objects.a(this.f28780b, savePasswordRequest.f28780b) && Objects.a(this.f28781c, savePasswordRequest.f28781c) && this.d == savePasswordRequest.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28780b, this.f28781c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f28780b, i2, false);
        SafeParcelWriter.k(parcel, 2, this.f28781c, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
