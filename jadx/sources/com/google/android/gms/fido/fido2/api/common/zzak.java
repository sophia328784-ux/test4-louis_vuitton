package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzfv;
import com.google.android.gms.internal.fido.zzfx;
import com.google.android.gms.internal.fido.zzgj;
import defpackage.fc;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class zzak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzak> CREATOR = new zzal();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f29505c = "WebAuthn PRF\u0000".getBytes(StandardCharsets.UTF_8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[][] f29506b;

    public zzak(byte[][] bArr) {
        Preconditions.a(bArr != null);
        Preconditions.a(1 == ((bArr.length & 1) ^ 1));
        int i2 = 0;
        while (i2 < bArr.length) {
            Preconditions.a(i2 == 0 || bArr[i2] != null);
            int i3 = i2 + 1;
            Preconditions.a(bArr[i3] != null);
            int length = bArr[i3].length;
            Preconditions.a(length == 32 || length == 64);
            i2 += 2;
        }
        this.f29506b = bArr;
    }

    public static zzak W1(JSONObject jSONObject, boolean z) throws JSONException {
        ArrayList arrayList = new ArrayList();
        try {
            if (jSONObject.has("eval")) {
                arrayList.add(null);
                if (z) {
                    arrayList.add(Y1(jSONObject.getJSONObject("eval")));
                } else {
                    arrayList.add(Z1(jSONObject.getJSONObject("eval")));
                }
            }
            if (jSONObject.has("evalByCredential")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("evalByCredential");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    arrayList.add(Base64Utils.a(next));
                    if (z) {
                        arrayList.add(Y1(jSONObject2.getJSONObject(next)));
                    } else {
                        arrayList.add(Z1(jSONObject2.getJSONObject(next)));
                    }
                }
            }
            return new zzak((byte[][]) arrayList.toArray(new byte[0][]));
        } catch (IllegalArgumentException unused) {
            throw new JSONException("invalid base64url value");
        }
    }

    public static JSONObject X1(byte[] bArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bArr.length == 32) {
            jSONObject.put("first", Base64.encodeToString(bArr, 11));
            return jSONObject;
        }
        jSONObject.put("first", Base64.encodeToString(bArr, 0, 32, 11));
        jSONObject.put("second", Base64.encodeToString(bArr, 32, 32, 11));
        return jSONObject;
    }

    public static byte[] Y1(JSONObject jSONObject) throws JSONException {
        byte[] bArrA = Base64Utils.a(jSONObject.getString("first"));
        if (bArrA.length != 32) {
            throw new JSONException("hashed PRF value with wrong length");
        }
        if (!jSONObject.has("second")) {
            return bArrA;
        }
        byte[] bArrA2 = Base64Utils.a(jSONObject.getString("second"));
        if (bArrA2.length == 32) {
            return zzgj.a(bArrA, bArrA2);
        }
        throw new JSONException("hashed PRF value with wrong length");
    }

    public static byte[] Z1(JSONObject jSONObject) {
        byte[] bArrA = Base64Utils.a(jSONObject.getString("first"));
        zzfv zzfvVarD0 = zzfx.a().d0();
        byte[] bArr = f29505c;
        zzfvVarD0.a(bArr);
        zzfvVarD0.a(bArrA);
        byte[] bArrA2 = zzfvVarD0.f0().a();
        if (!jSONObject.has("second")) {
            return bArrA2;
        }
        byte[] bArrA3 = Base64Utils.a(jSONObject.getString("second"));
        zzfv zzfvVarD1 = zzfx.a().d0();
        zzfvVarD1.a(bArr);
        zzfvVarD1.a(bArrA3);
        return zzgj.a(bArrA2, zzfvVarD1.f0().a());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzak) {
            return Arrays.deepEquals(this.f29506b, ((zzak) obj).f29506b);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 0;
        for (byte[] bArr : this.f29506b) {
            if (bArr != null) {
                iHashCode ^= Arrays.hashCode(new Object[]{bArr});
            }
        }
        return iHashCode;
    }

    public final String toString() {
        byte[][] bArr = this.f29506b;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = null;
            for (int i2 = 0; i2 < bArr.length; i2 += 2) {
                if (bArr[i2] == null) {
                    jSONObject.put("eval", X1(bArr[i2 + 1]));
                } else {
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                        jSONObject.put("evalByCredential", jSONObject2);
                    }
                    jSONObject2.put(Base64Utils.b(bArr[i2]), X1(bArr[i2 + 1]));
                }
            }
            return "PrfExtension{" + jSONObject.toString() + "}";
        } catch (JSONException e2) {
            return fc.h("PrfExtension{Exception:", e2.getMessage(), "}");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.c(parcel, 1, this.f29506b);
        SafeParcelWriter.r(iQ, parcel);
    }
}
