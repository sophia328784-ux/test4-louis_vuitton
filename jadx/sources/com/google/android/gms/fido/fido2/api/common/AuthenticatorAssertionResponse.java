package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import com.google.android.gms.internal.fido.zzgx;
import defpackage.r81;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticatorAssertionResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorAssertionResponse> CREATOR = new zzj();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzgx f29426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzgx f29427c;
    public final zzgx d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzgx f29428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzgx f29429f;

    public AuthenticatorAssertionResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        Preconditions.h(bArr);
        zzgx zzgxVarP = zzgx.p(bArr.length, bArr);
        Preconditions.h(bArr2);
        zzgx zzgxVarP2 = zzgx.p(bArr2.length, bArr2);
        Preconditions.h(bArr3);
        zzgx zzgxVarP3 = zzgx.p(bArr3.length, bArr3);
        Preconditions.h(bArr4);
        zzgx zzgxVarP4 = zzgx.p(bArr4.length, bArr4);
        zzgx zzgxVarP5 = bArr5 == null ? null : zzgx.p(bArr5.length, bArr5);
        this.f29426b = zzgxVarP;
        this.f29427c = zzgxVarP2;
        this.d = zzgxVarP3;
        this.f29428e = zzgxVarP4;
        this.f29429f = zzgxVarP5;
    }

    public final JSONObject W1() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("clientDataJSON", Base64Utils.b(this.f29427c.q()));
            jSONObject.put("authenticatorData", Base64Utils.b(this.d.q()));
            jSONObject.put("signature", Base64Utils.b(this.f29428e.q()));
            zzgx zzgxVar = this.f29429f;
            if (zzgxVar == null) {
                return jSONObject;
            }
            jSONObject.put("userHandle", Base64Utils.b(zzgxVar == null ? null : zzgxVar.q()));
            return jSONObject;
        } catch (JSONException e2) {
            r81.g("Error encoding AuthenticatorAssertionResponse to JSON object", e2);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorAssertionResponse)) {
            return false;
        }
        AuthenticatorAssertionResponse authenticatorAssertionResponse = (AuthenticatorAssertionResponse) obj;
        return Objects.a(this.f29426b, authenticatorAssertionResponse.f29426b) && Objects.a(this.f29427c, authenticatorAssertionResponse.f29427c) && Objects.a(this.d, authenticatorAssertionResponse.d) && Objects.a(this.f29428e, authenticatorAssertionResponse.f29428e) && Objects.a(this.f29429f, authenticatorAssertionResponse.f29429f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(new Object[]{this.f29426b})), Integer.valueOf(Arrays.hashCode(new Object[]{this.f29427c})), Integer.valueOf(Arrays.hashCode(new Object[]{this.d})), Integer.valueOf(Arrays.hashCode(new Object[]{this.f29428e})), Integer.valueOf(Arrays.hashCode(new Object[]{this.f29429f}))});
    }

    public final String toString() {
        zzbi zzbiVarA = zzbj.a(this);
        zzgf zzgfVar = zzgf.f29892a;
        byte[] bArrQ = this.f29426b.q();
        zzbiVarA.b(zzgfVar.b(bArrQ.length, bArrQ), "keyHandle");
        byte[] bArrQ2 = this.f29427c.q();
        zzbiVarA.b(zzgfVar.b(bArrQ2.length, bArrQ2), "clientDataJSON");
        byte[] bArrQ3 = this.d.q();
        zzbiVarA.b(zzgfVar.b(bArrQ3.length, bArrQ3), "authenticatorData");
        byte[] bArrQ4 = this.f29428e.q();
        zzbiVarA.b(zzgfVar.b(bArrQ4.length, bArrQ4), "signature");
        zzgx zzgxVar = this.f29429f;
        byte[] bArrQ5 = zzgxVar == null ? null : zzgxVar.q();
        if (bArrQ5 != null) {
            zzbiVarA.b(zzgfVar.b(bArrQ5.length, bArrQ5), "userHandle");
        }
        return zzbiVarA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.b(parcel, 2, this.f29426b.q(), false);
        SafeParcelWriter.b(parcel, 3, this.f29427c.q(), false);
        SafeParcelWriter.b(parcel, 4, this.d.q(), false);
        SafeParcelWriter.b(parcel, 5, this.f29428e.q(), false);
        zzgx zzgxVar = this.f29429f;
        SafeParcelWriter.b(parcel, 6, zzgxVar == null ? null : zzgxVar.q(), false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
