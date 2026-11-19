package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class BeginSignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new zbg();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PasswordRequestOptions f28731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GoogleIdTokenRequestOptions f28732c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28733e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f28734f;
    public final PasskeysRequestOptions g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PasskeyJsonRequestOptions f28735h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f28736i;

    /* JADX INFO: loaded from: classes.dex */
    @Deprecated
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public PasswordRequestOptions f28737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public GoogleIdTokenRequestOptions f28738b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public PasskeysRequestOptions f28739c;
        public PasskeyJsonRequestOptions d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f28740e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f28741f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f28742h;

        public Builder() {
            Parcelable.Creator<PasswordRequestOptions> creator = PasswordRequestOptions.CREATOR;
            PasswordRequestOptions.Builder builder = new PasswordRequestOptions.Builder();
            builder.f28763a = false;
            this.f28737a = new PasswordRequestOptions(builder.f28763a);
            Parcelable.Creator<GoogleIdTokenRequestOptions> creator2 = GoogleIdTokenRequestOptions.CREATOR;
            GoogleIdTokenRequestOptions.Builder builder2 = new GoogleIdTokenRequestOptions.Builder();
            builder2.f28748a = false;
            boolean z = builder2.f28748a;
            this.f28738b = new GoogleIdTokenRequestOptions(builder2.f28749b, builder2.f28750c, z, builder2.f28751e, builder2.f28752f, builder2.d, builder2.g);
            Parcelable.Creator<PasskeysRequestOptions> creator3 = PasskeysRequestOptions.CREATOR;
            PasskeysRequestOptions.Builder builder3 = new PasskeysRequestOptions.Builder();
            builder3.f28759a = false;
            this.f28739c = new PasskeysRequestOptions(builder3.f28761c, builder3.f28759a, builder3.f28760b);
            Parcelable.Creator<PasskeyJsonRequestOptions> creator4 = PasskeyJsonRequestOptions.CREATOR;
            PasskeyJsonRequestOptions.Builder builder4 = new PasskeyJsonRequestOptions.Builder();
            builder4.f28755a = false;
            this.d = new PasskeyJsonRequestOptions(builder4.f28755a, builder4.f28756b);
        }
    }

    @Deprecated
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new zbm();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f28743b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f28744c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f28745e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f28746f;
        public final ArrayList g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f28747h;

        /* JADX INFO: loaded from: classes.dex */
        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f28748a = false;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f28749b = null;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f28750c = null;
            public boolean d = true;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f28751e = null;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public List f28752f = null;
            public boolean g = false;
        }

        public GoogleIdTokenRequestOptions(String str, String str2, boolean z, String str3, List list, boolean z2, boolean z3) {
            boolean z4 = true;
            if (z2 && z3) {
                z4 = false;
            }
            Preconditions.b(z4, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.");
            this.f28743b = z;
            if (z) {
                Preconditions.i(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.f28744c = str;
            this.d = str2;
            this.f28745e = z2;
            Parcelable.Creator<BeginSignInRequest> creator = BeginSignInRequest.CREATOR;
            ArrayList arrayList = null;
            if (list != null && !list.isEmpty()) {
                arrayList = new ArrayList(list);
                Collections.sort(arrayList);
            }
            this.g = arrayList;
            this.f28746f = str3;
            this.f28747h = z3;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.f28743b == googleIdTokenRequestOptions.f28743b && Objects.a(this.f28744c, googleIdTokenRequestOptions.f28744c) && Objects.a(this.d, googleIdTokenRequestOptions.d) && this.f28745e == googleIdTokenRequestOptions.f28745e && Objects.a(this.f28746f, googleIdTokenRequestOptions.f28746f) && Objects.a(this.g, googleIdTokenRequestOptions.g) && this.f28747h == googleIdTokenRequestOptions.f28747h;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f28743b), this.f28744c, this.d, Boolean.valueOf(this.f28745e), this.f28746f, this.g, Boolean.valueOf(this.f28747h)});
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 1, 4);
            parcel.writeInt(this.f28743b ? 1 : 0);
            SafeParcelWriter.k(parcel, 2, this.f28744c, false);
            SafeParcelWriter.k(parcel, 3, this.d, false);
            SafeParcelWriter.p(parcel, 4, 4);
            parcel.writeInt(this.f28745e ? 1 : 0);
            SafeParcelWriter.k(parcel, 5, this.f28746f, false);
            SafeParcelWriter.m(parcel, 6, this.g);
            SafeParcelWriter.p(parcel, 7, 4);
            parcel.writeInt(this.f28747h ? 1 : 0);
            SafeParcelWriter.r(iQ, parcel);
        }
    }

    @Deprecated
    public static final class PasskeyJsonRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasskeyJsonRequestOptions> CREATOR = new zbn();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f28753b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f28754c;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f28755a = false;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f28756b;
        }

        public PasskeyJsonRequestOptions(boolean z, String str) {
            if (z) {
                Preconditions.h(str);
            }
            this.f28753b = z;
            this.f28754c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PasskeyJsonRequestOptions)) {
                return false;
            }
            PasskeyJsonRequestOptions passkeyJsonRequestOptions = (PasskeyJsonRequestOptions) obj;
            return this.f28753b == passkeyJsonRequestOptions.f28753b && Objects.a(this.f28754c, passkeyJsonRequestOptions.f28754c);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f28753b), this.f28754c});
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 1, 4);
            parcel.writeInt(this.f28753b ? 1 : 0);
            SafeParcelWriter.k(parcel, 2, this.f28754c, false);
            SafeParcelWriter.r(iQ, parcel);
        }
    }

    @Deprecated
    public static final class PasskeysRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasskeysRequestOptions> CREATOR = new zbo();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f28757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f28758c;
        public final String d;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f28759a = false;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public byte[] f28760b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f28761c;
        }

        public PasskeysRequestOptions(String str, boolean z, byte[] bArr) {
            if (z) {
                Preconditions.h(bArr);
                Preconditions.h(str);
            }
            this.f28757b = z;
            this.f28758c = bArr;
            this.d = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PasskeysRequestOptions)) {
                return false;
            }
            PasskeysRequestOptions passkeysRequestOptions = (PasskeysRequestOptions) obj;
            return this.f28757b == passkeysRequestOptions.f28757b && Arrays.equals(this.f28758c, passkeysRequestOptions.f28758c) && java.util.Objects.equals(this.d, passkeysRequestOptions.d);
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f28758c) + (java.util.Objects.hash(Boolean.valueOf(this.f28757b), this.d) * 31);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 1, 4);
            parcel.writeInt(this.f28757b ? 1 : 0);
            SafeParcelWriter.b(parcel, 2, this.f28758c, false);
            SafeParcelWriter.k(parcel, 3, this.d, false);
            SafeParcelWriter.r(iQ, parcel);
        }
    }

    @Deprecated
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new zbp();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f28762b;

        /* JADX INFO: loaded from: classes.dex */
        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f28763a = false;
        }

        public PasswordRequestOptions(boolean z) {
            this.f28762b = z;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.f28762b == ((PasswordRequestOptions) obj).f28762b;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f28762b)});
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 1, 4);
            parcel.writeInt(this.f28762b ? 1 : 0);
            SafeParcelWriter.r(iQ, parcel);
        }
    }

    public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, String str, boolean z, int i2, PasskeysRequestOptions passkeysRequestOptions, PasskeyJsonRequestOptions passkeyJsonRequestOptions, boolean z2) {
        Preconditions.h(passwordRequestOptions);
        this.f28731b = passwordRequestOptions;
        Preconditions.h(googleIdTokenRequestOptions);
        this.f28732c = googleIdTokenRequestOptions;
        this.d = str;
        this.f28733e = z;
        this.f28734f = i2;
        if (passkeysRequestOptions == null) {
            Parcelable.Creator<PasskeysRequestOptions> creator = PasskeysRequestOptions.CREATOR;
            PasskeysRequestOptions.Builder builder = new PasskeysRequestOptions.Builder();
            builder.f28759a = false;
            passkeysRequestOptions = new PasskeysRequestOptions(builder.f28761c, builder.f28759a, builder.f28760b);
        }
        this.g = passkeysRequestOptions;
        if (passkeyJsonRequestOptions == null) {
            Parcelable.Creator<PasskeyJsonRequestOptions> creator2 = PasskeyJsonRequestOptions.CREATOR;
            PasskeyJsonRequestOptions.Builder builder2 = new PasskeyJsonRequestOptions.Builder();
            builder2.f28755a = false;
            passkeyJsonRequestOptions = new PasskeyJsonRequestOptions(builder2.f28755a, builder2.f28756b);
        }
        this.f28735h = passkeyJsonRequestOptions;
        this.f28736i = z2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        return Objects.a(this.f28731b, beginSignInRequest.f28731b) && Objects.a(this.f28732c, beginSignInRequest.f28732c) && Objects.a(this.g, beginSignInRequest.g) && Objects.a(this.f28735h, beginSignInRequest.f28735h) && Objects.a(this.d, beginSignInRequest.d) && this.f28733e == beginSignInRequest.f28733e && this.f28734f == beginSignInRequest.f28734f && this.f28736i == beginSignInRequest.f28736i;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28731b, this.f28732c, this.g, this.f28735h, this.d, Boolean.valueOf(this.f28733e), Integer.valueOf(this.f28734f), Boolean.valueOf(this.f28736i)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f28731b, i2, false);
        SafeParcelWriter.j(parcel, 2, this.f28732c, i2, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f28733e ? 1 : 0);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f28734f);
        SafeParcelWriter.j(parcel, 6, this.g, i2, false);
        SafeParcelWriter.j(parcel, 7, this.f28735h, i2, false);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f28736i ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
