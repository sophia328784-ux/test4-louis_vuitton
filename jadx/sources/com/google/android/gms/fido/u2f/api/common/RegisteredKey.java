package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.x1;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class RegisteredKey extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RegisteredKey> CREATOR = new zzj();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KeyHandle f29536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29537c;
    public final String d;

    public RegisteredKey(KeyHandle keyHandle, String str, String str2) {
        Preconditions.h(keyHandle);
        this.f29536b = keyHandle;
        this.d = str;
        this.f29537c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisteredKey)) {
            return false;
        }
        RegisteredKey registeredKey = (RegisteredKey) obj;
        String str = registeredKey.d;
        String str2 = this.d;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (!this.f29536b.equals(registeredKey.f29536b)) {
            return false;
        }
        String str3 = registeredKey.f29537c;
        String str4 = this.f29537c;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.d;
        int iHashCode = this.f29536b.hashCode() + (((str == null ? 0 : str.hashCode()) + 31) * 31);
        String str2 = this.f29537c;
        return (iHashCode * 31) + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        KeyHandle keyHandle = this.f29536b;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("keyHandle", Base64.encodeToString(keyHandle.f29524c, 11));
            ProtocolVersion protocolVersion = keyHandle.d;
            if (protocolVersion != ProtocolVersion.UNKNOWN) {
                jSONObject.put("version", protocolVersion.toString());
            }
            List list = keyHandle.f29525e;
            if (list != null) {
                jSONObject.put("transports", list.toString());
            }
            String str = this.d;
            if (str != null) {
                jSONObject.put("challenge", str);
            }
            String str2 = this.f29537c;
            if (str2 != null) {
                jSONObject.put("appId", str2);
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            x1.m(e2);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f29536b, i2, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f29537c, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public RegisteredKey(KeyHandle keyHandle) {
        this(keyHandle, null, null);
    }
}
