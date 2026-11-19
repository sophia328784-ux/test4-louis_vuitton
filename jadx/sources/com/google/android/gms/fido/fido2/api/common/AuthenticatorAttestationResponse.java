package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzcj;
import com.google.android.gms.internal.fido.zzgf;
import com.google.android.gms.internal.fido.zzgj;
import com.google.android.gms.internal.fido.zzgx;
import com.google.android.gms.internal.fido.zzhi;
import com.google.android.gms.internal.fido.zzhj;
import com.google.android.gms.internal.fido.zzhk;
import com.google.android.gms.internal.fido.zzhm;
import com.google.android.gms.internal.fido.zzhn;
import com.google.android.gms.internal.fido.zzho;
import com.google.android.gms.internal.fido.zzhp;
import defpackage.r81;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticatorAttestationResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorAttestationResponse> CREATOR = new zzk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzgx f29430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzgx f29431c;
    public final zzgx d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f29432e;

    public AuthenticatorAttestationResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, String[] strArr) {
        Preconditions.h(bArr);
        zzgx zzgxVarP = zzgx.p(bArr.length, bArr);
        Preconditions.h(bArr2);
        zzgx zzgxVarP2 = zzgx.p(bArr2.length, bArr2);
        Preconditions.h(bArr3);
        zzgx zzgxVarP3 = zzgx.p(bArr3.length, bArr3);
        this.f29430b = zzgxVarP;
        this.f29431c = zzgxVarP2;
        this.d = zzgxVarP3;
        Preconditions.h(strArr);
        this.f29432e = strArr;
    }

    /* JADX WARN: Code duplicated, block: B:81:0x0204 A[Catch: JSONException -> 0x0195, TRY_LEAVE, TryCatch #4 {JSONException -> 0x0195, blocks: (B:79:0x01ee, B:81:0x0204, B:49:0x0145, B:52:0x0161, B:54:0x0177, B:56:0x017d, B:61:0x019b, B:62:0x01a0, B:63:0x01a1, B:64:0x01a6, B:92:0x0223, B:93:0x022a, B:69:0x01b1, B:71:0x01be, B:73:0x01cc, B:74:0x01e0, B:75:0x01e5, B:76:0x01e6, B:77:0x01eb, B:88:0x021a, B:89:0x021f, B:94:0x022b, B:95:0x0232, B:97:0x0234, B:98:0x023d, B:102:0x0244, B:103:0x024b, B:105:0x024d, B:106:0x0254, B:110:0x025b, B:111:0x0262, B:113:0x0264, B:114:0x026b, B:116:0x026d, B:117:0x0276, B:29:0x00bc, B:21:0x0065), top: B:127:0x0065, inners: #0, #7 }] */
    public final JSONObject W1() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        zzhp zzhpVar;
        byte[] bArrA;
        JSONObject jSONObject3;
        String[] strArr = this.f29432e;
        try {
            JSONObject jSONObject4 = new JSONObject();
            zzgx zzgxVar = this.f29431c;
            if (zzgxVar != null) {
                jSONObject4.put("clientDataJSON", Base64Utils.b(zzgxVar.q()));
            }
            zzgx zzgxVar2 = this.d;
            if (zzgxVar2 != null) {
                jSONObject4.put("attestationObject", Base64Utils.b(zzgxVar2.q()));
            }
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (strArr[i2].equals(Transport.HYBRID.toString())) {
                    jSONArray.put(i2, "hybrid");
                } else {
                    jSONArray.put(i2, strArr[i2]);
                }
            }
            jSONObject4.put("transports", jSONArray);
            try {
                try {
                    try {
                        zzhp zzhpVar2 = (zzhp) ((zzhm) zzhp.e(zzgxVar2.q()).b(zzhm.class)).f29914c.get(new zzhn("authData"));
                        if (zzhpVar2 != null) {
                            zzgx zzgxVar3 = ((zzhi) zzhpVar2.b(zzhi.class)).f29909b;
                            ByteBuffer byteBufferN = zzgxVar3.n();
                            try {
                                byteBufferN.position(byteBufferN.position() + 32);
                                if ((byteBufferN.get() & 64) != 0) {
                                    byteBufferN.position(byteBufferN.position() + 4);
                                    byteBufferN.position(byteBufferN.position() + 16);
                                    byteBufferN.position(byteBufferN.position() + byteBufferN.getShort());
                                    try {
                                        zzcj zzcjVar = ((zzhm) zzhp.f(zzgxVar3.l(byteBufferN.position(), zzgxVar3.h()).m()).b(zzhm.class)).f29914c;
                                        zzhp zzhpVar3 = (zzhp) zzcjVar.get(new zzhk(3L));
                                        zzhp zzhpVar4 = (zzhp) zzcjVar.get(new zzhk(1L));
                                        if (zzhpVar3 == null || zzhpVar4 == null) {
                                            throw new IllegalArgumentException("COSE key missing required fields");
                                        }
                                        try {
                                            long j2 = ((zzhk) zzhpVar3.b(zzhk.class)).f29910b;
                                            long j3 = ((zzhk) zzhpVar4.b(zzhk.class)).f29910b;
                                            try {
                                                try {
                                                    if (j3 != 1) {
                                                        if (j3 == 2) {
                                                            j3 = 2;
                                                        } else {
                                                            jSONObject2 = jSONObject4;
                                                            bArrA = null;
                                                        }
                                                        jSONObject3 = jSONObject2;
                                                        jSONObject3.put("authenticatorData", Base64Utils.b(zzgxVar3.q()));
                                                        jSONObject3.put("publicKeyAlgorithm", j2);
                                                        if (bArrA != null) {
                                                            jSONObject3.put("publicKey", Base64.encodeToString(bArrA, 11));
                                                        }
                                                        return jSONObject3;
                                                    }
                                                    if (zzhpVar == null) {
                                                        throw new IllegalArgumentException("COSE key missing required fields");
                                                    }
                                                    long j4 = ((zzhk) zzhpVar.b(zzhk.class)).f29910b;
                                                    if (j3 == 2 && j4 == 1) {
                                                        zzhp zzhpVar5 = (zzhp) zzcjVar.get(new zzhk(-2L));
                                                        zzhp zzhpVar6 = (zzhp) zzcjVar.get(new zzhk(-3L));
                                                        if (zzhpVar5 == null || zzhpVar6 == null) {
                                                            throw new IllegalArgumentException("COSE key missing required fields");
                                                        }
                                                        zzgx zzgxVar4 = ((zzhi) zzhpVar5.b(zzhi.class)).f29909b;
                                                        zzgx zzgxVar5 = ((zzhi) zzhpVar6.b(zzhi.class)).f29909b;
                                                        if (zzgxVar4.h() != 32 || zzgxVar5.h() != 32) {
                                                            throw new IllegalArgumentException("COSE coordinates are the wrong size");
                                                        }
                                                        bArrA = zzgj.a(Base64.decode("MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE", 0), zzgxVar4.q(), zzgxVar5.q());
                                                    } else if (j3 == 1 && j4 == 6) {
                                                        zzhp zzhpVar7 = (zzhp) zzcjVar.get(new zzhk(-2L));
                                                        if (zzhpVar7 == null) {
                                                            throw new IllegalArgumentException("COSE key missing required fields");
                                                        }
                                                        zzgx zzgxVar6 = ((zzhi) zzhpVar7.b(zzhi.class)).f29909b;
                                                        if (zzgxVar6.h() != 32) {
                                                            throw new IllegalArgumentException("COSE coordinates are the wrong size");
                                                        }
                                                        bArrA = zzgj.a(Base64.decode("MCowBQYDK2VwAyEA", 0), zzgxVar6.q());
                                                    } else {
                                                        bArrA = null;
                                                    }
                                                    jSONObject3 = jSONObject2;
                                                    jSONObject3.put("authenticatorData", Base64Utils.b(zzgxVar3.q()));
                                                    jSONObject3.put("publicKeyAlgorithm", j2);
                                                    if (bArrA != null) {
                                                        jSONObject3.put("publicKey", Base64.encodeToString(bArrA, 11));
                                                    }
                                                    return jSONObject3;
                                                } catch (zzho e2) {
                                                    e = e2;
                                                }
                                                zzhpVar = (zzhp) zzcjVar.get(new zzhk(-1L));
                                            } catch (zzho e3) {
                                                e = e3;
                                            } catch (JSONException e4) {
                                                e = e4;
                                                jSONObject = null;
                                            }
                                            jSONObject2 = jSONObject4;
                                        } catch (zzho e5) {
                                            e = e5;
                                        }
                                        throw new IllegalArgumentException("COSE key ill-formed", e);
                                    } catch (zzhj | zzho e6) {
                                        throw new IllegalArgumentException("failed to parse COSE key", e6);
                                    }
                                    r81.g("Error encoding AuthenticatorAttestationResponse to JSON object", e);
                                    return jSONObject;
                                }
                                try {
                                    throw new IllegalArgumentException("authData does not include credential data");
                                } catch (IllegalArgumentException e7) {
                                    e = e7;
                                }
                            } catch (IllegalArgumentException e8) {
                                e = e8;
                            }
                            throw new IllegalArgumentException("ill-formed authenticator data", e);
                        }
                        try {
                            throw new IllegalArgumentException("attestation object missing authData");
                        } catch (zzho e9) {
                            e = e9;
                        }
                    } catch (zzho e10) {
                        e = e10;
                    }
                    throw new IllegalArgumentException("authData value has wrong type", e);
                } catch (JSONException e11) {
                    e = e11;
                }
            } catch (zzhj | zzho e12) {
                throw new IllegalArgumentException("failed to parse attestation object", e12);
            }
        } catch (JSONException e13) {
            e = e13;
            jSONObject = null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorAttestationResponse)) {
            return false;
        }
        AuthenticatorAttestationResponse authenticatorAttestationResponse = (AuthenticatorAttestationResponse) obj;
        return Objects.a(this.f29430b, authenticatorAttestationResponse.f29430b) && Objects.a(this.f29431c, authenticatorAttestationResponse.f29431c) && Objects.a(this.d, authenticatorAttestationResponse.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(new Object[]{this.f29430b})), Integer.valueOf(Arrays.hashCode(new Object[]{this.f29431c})), Integer.valueOf(Arrays.hashCode(new Object[]{this.d}))});
    }

    public final String toString() {
        zzbi zzbiVarA = zzbj.a(this);
        zzgf zzgfVar = zzgf.f29892a;
        byte[] bArrQ = this.f29430b.q();
        zzbiVarA.b(zzgfVar.b(bArrQ.length, bArrQ), "keyHandle");
        byte[] bArrQ2 = this.f29431c.q();
        zzbiVarA.b(zzgfVar.b(bArrQ2.length, bArrQ2), "clientDataJSON");
        byte[] bArrQ3 = this.d.q();
        zzbiVarA.b(zzgfVar.b(bArrQ3.length, bArrQ3), "attestationObject");
        zzbiVarA.b(Arrays.toString(this.f29432e), "transports");
        return zzbiVarA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.b(parcel, 2, this.f29430b.q(), false);
        SafeParcelWriter.b(parcel, 3, this.f29431c.q(), false);
        SafeParcelWriter.b(parcel, 4, this.d.q(), false);
        SafeParcelWriter.l(parcel, 5, this.f29432e);
        SafeParcelWriter.r(iQ, parcel);
    }
}
