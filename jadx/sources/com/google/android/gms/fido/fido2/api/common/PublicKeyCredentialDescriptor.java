package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.batch.android.s.b;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.internal.fido.zzcf;
import com.google.android.gms.internal.fido.zzgx;
import defpackage.fc;
import defpackage.lc0;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PublicKeyCredentialDescriptor extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialDescriptor> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PublicKeyCredentialType f29476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzgx f29477c;
    public final List d;

    static {
        zzcf.n(2, com.google.android.gms.internal.fido.zzh.f29903a, com.google.android.gms.internal.fido.zzh.f29904b);
        CREATOR = new zzap();
    }

    public PublicKeyCredentialDescriptor(String str, zzgx zzgxVar, List<Transport> list) {
        Preconditions.h(str);
        try {
            this.f29476b = PublicKeyCredentialType.a(str);
            Preconditions.h(zzgxVar);
            this.f29477c = zzgxVar;
            this.d = list;
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e2) {
            lc0.u(e2);
            throw null;
        }
    }

    public static PublicKeyCredentialDescriptor W1(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray;
        String string = jSONObject.getString("type");
        byte[] bArrDecode = Base64.decode(jSONObject.getString(b.a.f24015b), 11);
        ArrayList arrayList = null;
        if (jSONObject.has("transports") && (jSONArray = jSONObject.getJSONArray("transports")) != null) {
            HashSet hashSet = new HashSet(jSONArray.length());
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                String string2 = jSONArray.getString(i2);
                if (string2 != null && !string2.isEmpty()) {
                    try {
                        hashSet.add(Transport.a(string2));
                    } catch (Transport.UnsupportedTransportException unused) {
                        "Ignoring unrecognized transport ".concat(string2);
                    }
                }
            }
            arrayList = new ArrayList(hashSet);
        }
        return new PublicKeyCredentialDescriptor(string, bArrDecode, arrayList);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialDescriptor)) {
            return false;
        }
        PublicKeyCredentialDescriptor publicKeyCredentialDescriptor = (PublicKeyCredentialDescriptor) obj;
        List list = publicKeyCredentialDescriptor.d;
        if (!this.f29476b.equals(publicKeyCredentialDescriptor.f29476b) || !Objects.a(this.f29477c, publicKeyCredentialDescriptor.f29477c)) {
            return false;
        }
        List list2 = this.d;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29476b, this.f29477c, this.d});
    }

    public final String toString() {
        return n00.r(String.valueOf(this.d), "}", fc.s("PublicKeyCredentialDescriptor{\n type=", String.valueOf(this.f29476b), ", \n id=", Base64Utils.b(this.f29477c.q()), ", \n transports="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f29476b.toString(), false);
        SafeParcelWriter.b(parcel, 3, this.f29477c.q(), false);
        SafeParcelWriter.o(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public static class UnsupportedPubKeyCredDescriptorException extends Exception {
        public UnsupportedPubKeyCredDescriptorException(String str) {
            super(str);
        }

        public UnsupportedPubKeyCredDescriptorException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublicKeyCredentialDescriptor(String str, byte[] bArr, List<Transport> list) {
        this(str, zzgx.p(bArr.length, bArr), list);
        zzgx zzgxVar = zzgx.f29900c;
    }
}
