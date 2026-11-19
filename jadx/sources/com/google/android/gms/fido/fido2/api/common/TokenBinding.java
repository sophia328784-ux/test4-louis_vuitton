package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzbk;
import defpackage.fc;
import defpackage.lc0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TokenBinding extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TokenBinding> CREATOR = new zzaz();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TokenBindingStatus f29493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29494c;

    public enum TokenBindingStatus implements Parcelable {
        PRESENT("present"),
        SUPPORTED("supported"),
        NOT_SUPPORTED("not-supported");

        public static final Parcelable.Creator<TokenBindingStatus> CREATOR = new zzay();
        private final String zzb;

        TokenBindingStatus(String str) {
            this.zzb = str;
        }

        public static TokenBindingStatus a(String str) throws UnsupportedTokenBindingStatusException {
            for (TokenBindingStatus tokenBindingStatus : values()) {
                if (str.equals(tokenBindingStatus.zzb)) {
                    return tokenBindingStatus;
                }
            }
            throw new UnsupportedTokenBindingStatusException(str);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.zzb;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.zzb);
        }
    }

    public static class UnsupportedTokenBindingStatusException extends Exception {
        public UnsupportedTokenBindingStatusException(String str) {
            super(fc.h("TokenBindingStatus ", str, " not supported"));
        }
    }

    static {
        new TokenBinding(TokenBindingStatus.SUPPORTED.toString(), null);
        new TokenBinding(TokenBindingStatus.NOT_SUPPORTED.toString(), null);
    }

    public TokenBinding(String str, String str2) {
        Preconditions.h(str);
        try {
            this.f29493b = TokenBindingStatus.a(str);
            this.f29494c = str2;
        } catch (UnsupportedTokenBindingStatusException e2) {
            lc0.u(e2);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TokenBinding)) {
            return false;
        }
        TokenBinding tokenBinding = (TokenBinding) obj;
        return zzbk.a(this.f29493b, tokenBinding.f29493b) && zzbk.a(this.f29494c, tokenBinding.f29494c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29493b, this.f29494c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f29493b.toString(), false);
        SafeParcelWriter.k(parcel, 3, this.f29494c, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TokenBinding(String str) {
        String string = TokenBindingStatus.PRESENT.toString();
        Preconditions.h(str);
        this(string, str);
    }
}
