package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzgx;
import com.google.android.gms.internal.fido.zzia;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.cj;
import defpackage.fc;
import defpackage.r81;
import defpackage.tr;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PublicKeyCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredential> CREATOR = new zzao();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29456c;
    public final zzgx d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AuthenticatorAttestationResponse f29457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AuthenticatorAssertionResponse f29458f;
    public final AuthenticatorErrorResponse g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AuthenticationExtensionsClientOutputs f29459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f29460i;

    public PublicKeyCredential(String str, String str2, byte[] bArr, AuthenticatorAttestationResponse authenticatorAttestationResponse, AuthenticatorAssertionResponse authenticatorAssertionResponse, AuthenticatorErrorResponse authenticatorErrorResponse, AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs, String str3) {
        zzgx zzgxVarP = bArr == null ? null : zzgx.p(bArr.length, bArr);
        boolean z = false;
        Preconditions.b((authenticatorAttestationResponse != null && authenticatorAssertionResponse == null && authenticatorErrorResponse == null) || (authenticatorAttestationResponse == null && authenticatorAssertionResponse != null && authenticatorErrorResponse == null) || (authenticatorAttestationResponse == null && authenticatorAssertionResponse == null && authenticatorErrorResponse != null), "Must provide a response object.");
        if (authenticatorErrorResponse != null || (str != null && zzgxVarP != null)) {
            z = true;
        }
        Preconditions.b(z, "Must provide id and rawId if not an error response.");
        this.f29455b = str;
        this.f29456c = str2;
        this.d = zzgxVarP;
        this.f29457e = authenticatorAttestationResponse;
        this.f29458f = authenticatorAssertionResponse;
        this.g = authenticatorErrorResponse;
        this.f29459h = authenticationExtensionsClientOutputs;
        this.f29460i = str3;
    }

    public final JSONObject W1() {
        JSONObject jSONObjectW1;
        try {
            JSONObject jSONObject = new JSONObject();
            zzgx zzgxVar = this.d;
            if (zzgxVar != null && zzgxVar.q().length > 0) {
                jSONObject.put("rawId", Base64Utils.b(zzgxVar.q()));
            }
            String str = this.f29460i;
            if (str != null) {
                jSONObject.put("authenticatorAttachment", str);
            }
            String str2 = this.f29456c;
            AuthenticatorErrorResponse authenticatorErrorResponse = this.g;
            if (str2 != null && authenticatorErrorResponse == null) {
                jSONObject.put("type", str2);
            }
            String str3 = this.f29455b;
            if (str3 != null) {
                jSONObject.put(b.a.f24015b, str3);
            }
            String str4 = Payload.RESPONSE;
            AuthenticatorAssertionResponse authenticatorAssertionResponse = this.f29458f;
            boolean z = true;
            if (authenticatorAssertionResponse != null) {
                jSONObjectW1 = authenticatorAssertionResponse.W1();
            } else {
                AuthenticatorAttestationResponse authenticatorAttestationResponse = this.f29457e;
                if (authenticatorAttestationResponse != null) {
                    jSONObjectW1 = authenticatorAttestationResponse.W1();
                } else {
                    z = false;
                    if (authenticatorErrorResponse != null) {
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(m.v, authenticatorErrorResponse.f29433b.a());
                            String str5 = authenticatorErrorResponse.f29434c;
                            if (str5 != null) {
                                jSONObject2.put("message", str5);
                            }
                            jSONObjectW1 = jSONObject2;
                            str4 = "error";
                        } catch (JSONException e2) {
                            throw new RuntimeException("Error encoding AuthenticatorErrorResponse to JSON object", e2);
                        }
                    } else {
                        jSONObjectW1 = null;
                    }
                }
            }
            if (jSONObjectW1 != null) {
                jSONObject.put(str4, jSONObjectW1);
            }
            AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs = this.f29459h;
            if (authenticationExtensionsClientOutputs != null) {
                jSONObject.put("clientExtensionResults", authenticationExtensionsClientOutputs.W1());
                return jSONObject;
            }
            if (z) {
                jSONObject.put("clientExtensionResults", new JSONObject());
            }
            return jSONObject;
        } catch (JSONException e3) {
            r81.g("Error encoding PublicKeyCredential to JSON object", e3);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredential)) {
            return false;
        }
        PublicKeyCredential publicKeyCredential = (PublicKeyCredential) obj;
        return Objects.a(this.f29455b, publicKeyCredential.f29455b) && Objects.a(this.f29456c, publicKeyCredential.f29456c) && Objects.a(this.d, publicKeyCredential.d) && Objects.a(this.f29457e, publicKeyCredential.f29457e) && Objects.a(this.f29458f, publicKeyCredential.f29458f) && Objects.a(this.g, publicKeyCredential.g) && Objects.a(this.f29459h, publicKeyCredential.f29459h) && Objects.a(this.f29460i, publicKeyCredential.f29460i);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29455b, this.f29456c, this.d, this.f29458f, this.f29457e, this.g, this.f29459h, this.f29460i});
    }

    public final String toString() {
        zzgx zzgxVar = this.d;
        String strB = Base64Utils.b(zzgxVar == null ? null : zzgxVar.q());
        String strValueOf = String.valueOf(this.f29457e);
        String strValueOf2 = String.valueOf(this.f29458f);
        String strValueOf3 = String.valueOf(this.g);
        String strValueOf4 = String.valueOf(this.f29459h);
        StringBuilder sbS = fc.s("PublicKeyCredential{\n id='", this.f29455b, "', \n type='", this.f29456c, "', \n rawId=");
        cj.C(sbS, strB, ", \n registerResponse=", strValueOf, ", \n signResponse=");
        cj.C(sbS, strValueOf2, ", \n errorResponse=", strValueOf3, ", \n extensionsClientOutputs=");
        return tr.l(sbS, strValueOf4, ", \n authenticatorAttachment='", this.f29460i, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        zzia.a();
        throw null;
    }
}
