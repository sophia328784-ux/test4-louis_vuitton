package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzgx;
import com.sightcall.universal.permission.PermissionsActivity;
import defpackage.fc;
import defpackage.r81;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class zzh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzh> CREATOR = new zzi();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f29510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzgx f29511c;

    public zzh(boolean z, zzgx zzgxVar) {
        this.f29510b = z;
        this.f29511c = zzgxVar;
    }

    public final JSONObject W1() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.f29510b) {
                jSONObject.put("enabled", true);
            }
            zzgx zzgxVar = this.f29511c;
            byte[] bArrQ = zzgxVar == null ? null : zzgxVar.q();
            if (bArrQ != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("first", Base64.encodeToString(Arrays.copyOf(bArrQ, 32), 11));
                if (bArrQ.length == 64) {
                    jSONObject2.put("second", Base64.encodeToString(Arrays.copyOfRange(bArrQ, 32, 64), 11));
                }
                jSONObject.put(PermissionsActivity.EXTRA_RESULTS, jSONObject2);
            }
            return jSONObject;
        } catch (JSONException e2) {
            r81.g("Error encoding AuthenticationExtensionsPrfOutputs to JSON object", e2);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzh)) {
            return false;
        }
        zzh zzhVar = (zzh) obj;
        return this.f29510b == zzhVar.f29510b && Objects.a(this.f29511c, zzhVar.f29511c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f29510b), this.f29511c});
    }

    public final String toString() {
        return fc.h("AuthenticationExtensionsPrfOutputs{", W1().toString(), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29510b ? 1 : 0);
        zzgx zzgxVar = this.f29511c;
        SafeParcelWriter.b(parcel, 2, zzgxVar == null ? null : zzgxVar.q(), false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
