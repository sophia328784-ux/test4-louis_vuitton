package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.fc;
import defpackage.r81;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticationExtensionsClientOutputs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticationExtensionsClientOutputs> CREATOR = new zzc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UvmEntries f29421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzf f29422c;
    public final AuthenticationExtensionsCredPropsOutputs d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzh f29423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f29424f;

    public AuthenticationExtensionsClientOutputs(UvmEntries uvmEntries, zzf zzfVar, AuthenticationExtensionsCredPropsOutputs authenticationExtensionsCredPropsOutputs, zzh zzhVar, String str) {
        this.f29421b = uvmEntries;
        this.f29422c = zzfVar;
        this.d = authenticationExtensionsCredPropsOutputs;
        this.f29423e = zzhVar;
        this.f29424f = str;
    }

    public final JSONObject W1() {
        try {
            JSONObject jSONObject = new JSONObject();
            AuthenticationExtensionsCredPropsOutputs authenticationExtensionsCredPropsOutputs = this.d;
            if (authenticationExtensionsCredPropsOutputs != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("rk", authenticationExtensionsCredPropsOutputs.f29425b);
                    jSONObject.put("credProps", jSONObject2);
                } catch (JSONException e2) {
                    throw new RuntimeException("Error encoding AuthenticationExtensionsCredPropsOutputs to JSON object", e2);
                }
            }
            UvmEntries uvmEntries = this.f29421b;
            if (uvmEntries != null) {
                jSONObject.put("uvm", uvmEntries.W1());
            }
            zzh zzhVar = this.f29423e;
            if (zzhVar != null) {
                jSONObject.put("prf", zzhVar.W1());
            }
            String str = this.f29424f;
            if (str != null) {
                jSONObject.put("txAuthSimple", str);
            }
            return jSONObject;
        } catch (JSONException e3) {
            r81.g("Error encoding AuthenticationExtensionsClientOutputs to JSON object", e3);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticationExtensionsClientOutputs)) {
            return false;
        }
        AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs = (AuthenticationExtensionsClientOutputs) obj;
        return Objects.a(this.f29421b, authenticationExtensionsClientOutputs.f29421b) && Objects.a(this.f29422c, authenticationExtensionsClientOutputs.f29422c) && Objects.a(this.d, authenticationExtensionsClientOutputs.d) && Objects.a(this.f29423e, authenticationExtensionsClientOutputs.f29423e) && Objects.a(this.f29424f, authenticationExtensionsClientOutputs.f29424f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29421b, this.f29422c, this.d, this.f29423e, this.f29424f});
    }

    public final String toString() {
        return fc.h("AuthenticationExtensionsClientOutputs{", W1().toString(), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f29421b, i2, false);
        SafeParcelWriter.j(parcel, 2, this.f29422c, i2, false);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.j(parcel, 4, this.f29423e, i2, false);
        SafeParcelWriter.k(parcel, 5, this.f29424f, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
