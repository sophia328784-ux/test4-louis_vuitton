package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.batch.android.s.b;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzbl;
import defpackage.cj;
import defpackage.fc;
import defpackage.lc0;
import defpackage.tr;
import io.jsonwebtoken.JwsHeader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PublicKeyCredentialCreationOptions extends RequestOptions {
    public static final Parcelable.Creator<PublicKeyCredentialCreationOptions> CREATOR = new zzan();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PublicKeyCredentialRpEntity f29461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PublicKeyCredentialUserEntity f29462c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f29463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Double f29464f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AuthenticatorSelectionCriteria f29465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Integer f29466i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TokenBinding f29467j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AttestationConveyancePreference f29468k;
    public final AuthenticationExtensions l;
    public final String m;
    public final ResultReceiver n;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public PublicKeyCredentialRpEntity f29469a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public PublicKeyCredentialUserEntity f29470b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f29471c;
        public ArrayList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Double f29472e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ArrayList f29473f;
        public AuthenticatorSelectionCriteria g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public AttestationConveyancePreference f29474h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public AuthenticationExtensions f29475i;

        public final PublicKeyCredentialCreationOptions a() {
            PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = this.f29469a;
            PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = this.f29470b;
            byte[] bArr = this.f29471c;
            ArrayList arrayList = this.d;
            Double d = this.f29472e;
            ArrayList arrayList2 = this.f29473f;
            AuthenticatorSelectionCriteria authenticatorSelectionCriteria = this.g;
            AttestationConveyancePreference attestationConveyancePreference = this.f29474h;
            return new PublicKeyCredentialCreationOptions(publicKeyCredentialRpEntity, publicKeyCredentialUserEntity, bArr, arrayList, d, arrayList2, authenticatorSelectionCriteria, null, null, attestationConveyancePreference == null ? null : attestationConveyancePreference.toString(), this.f29475i, null, null);
        }
    }

    public PublicKeyCredentialCreationOptions(PublicKeyCredentialRpEntity publicKeyCredentialRpEntity, PublicKeyCredentialUserEntity publicKeyCredentialUserEntity, byte[] bArr, ArrayList arrayList, Double d, ArrayList arrayList2, AuthenticatorSelectionCriteria authenticatorSelectionCriteria, Integer num, TokenBinding tokenBinding, String str, AuthenticationExtensions authenticationExtensions, String str2, ResultReceiver resultReceiver) {
        this.n = resultReceiver;
        if (str2 != null) {
            try {
                PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptionsW1 = W1(new JSONObject(str2));
                this.f29461b = publicKeyCredentialCreationOptionsW1.f29461b;
                this.f29462c = publicKeyCredentialCreationOptionsW1.f29462c;
                this.d = publicKeyCredentialCreationOptionsW1.d;
                this.f29463e = publicKeyCredentialCreationOptionsW1.f29463e;
                this.f29464f = publicKeyCredentialCreationOptionsW1.f29464f;
                this.g = publicKeyCredentialCreationOptionsW1.g;
                this.f29465h = publicKeyCredentialCreationOptionsW1.f29465h;
                this.f29466i = publicKeyCredentialCreationOptionsW1.f29466i;
                this.f29467j = publicKeyCredentialCreationOptionsW1.f29467j;
                this.f29468k = publicKeyCredentialCreationOptionsW1.f29468k;
                this.l = publicKeyCredentialCreationOptionsW1.l;
                this.m = str2;
                return;
            } catch (JSONException e2) {
                lc0.u(e2);
                throw null;
            }
        }
        Preconditions.h(publicKeyCredentialRpEntity);
        this.f29461b = publicKeyCredentialRpEntity;
        Preconditions.h(publicKeyCredentialUserEntity);
        this.f29462c = publicKeyCredentialUserEntity;
        Preconditions.h(bArr);
        this.d = bArr;
        Preconditions.h(arrayList);
        this.f29463e = arrayList;
        this.f29464f = d;
        this.g = arrayList2;
        this.f29465h = authenticatorSelectionCriteria;
        this.f29466i = num;
        this.f29467j = tokenBinding;
        if (str != null) {
            try {
                this.f29468k = AttestationConveyancePreference.a(str);
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException e3) {
                lc0.u(e3);
                throw null;
            }
        } else {
            this.f29468k = null;
        }
        this.l = authenticationExtensions;
        this.m = null;
    }

    public static PublicKeyCredentialCreationOptions W1(JSONObject jSONObject) throws JSONException {
        zzbl zzblVarC;
        Builder builder = new Builder();
        JSONObject jSONObject2 = jSONObject.getJSONObject("rp");
        Parcelable.Creator<PublicKeyCredentialRpEntity> creator = PublicKeyCredentialRpEntity.CREATOR;
        builder.f29469a = new PublicKeyCredentialRpEntity(jSONObject2.getString(b.a.f24015b), jSONObject2.getString("name"), jSONObject2.has("icon") ? jSONObject2.optString("icon") : null);
        JSONObject jSONObject3 = jSONObject.getJSONObject("user");
        Parcelable.Creator<PublicKeyCredentialUserEntity> creator2 = PublicKeyCredentialUserEntity.CREATOR;
        builder.f29470b = new PublicKeyCredentialUserEntity(Base64Utils.a(jSONObject3.getString(b.a.f24015b)), jSONObject3.getString("name"), jSONObject3.has("icon") ? jSONObject3.optString("icon") : null, jSONObject3.optString("displayName"));
        byte[] bArrA = Base64Utils.a(jSONObject.getString("challenge"));
        Preconditions.h(bArrA);
        builder.f29471c = bArrA;
        JSONArray jSONArray = jSONObject.getJSONArray("pubKeyCredParams");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject4 = jSONArray.getJSONObject(i2);
            try {
                zzblVarC = zzbl.d(new PublicKeyCredentialParameters(jSONObject4.getString("type"), jSONObject4.getInt(JwsHeader.ALGORITHM)));
            } catch (IllegalArgumentException unused) {
                zzblVarC = zzbl.c();
            }
            if (zzblVarC.b()) {
                arrayList.add(zzblVarC.a());
            }
        }
        builder.d = arrayList;
        if (jSONObject.has("timeout")) {
            builder.f29472e = Double.valueOf(jSONObject.getDouble("timeout") / 1000.0d);
        }
        if (jSONObject.has("excludeCredentials")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("excludeCredentials");
            ArrayList arrayList2 = new ArrayList();
            for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                arrayList2.add(PublicKeyCredentialDescriptor.W1(jSONArray2.getJSONObject(i3)));
            }
            builder.f29473f = arrayList2;
        }
        if (jSONObject.has("authenticatorSelection")) {
            JSONObject jSONObject5 = jSONObject.getJSONObject("authenticatorSelection");
            Parcelable.Creator<AuthenticatorSelectionCriteria> creator3 = AuthenticatorSelectionCriteria.CREATOR;
            builder.g = new AuthenticatorSelectionCriteria(jSONObject5.has("authenticatorAttachment") ? jSONObject5.optString("authenticatorAttachment") : null, jSONObject5.has("userVerification") ? jSONObject5.optString("userVerification") : null, jSONObject5.has("residentKey") ? jSONObject5.optString("residentKey") : null, jSONObject5.has("requireResidentKey") ? Boolean.valueOf(jSONObject5.optBoolean("requireResidentKey")) : null);
        }
        if (jSONObject.has("extensions")) {
            builder.f29475i = AuthenticationExtensions.W1(jSONObject.getJSONObject("extensions"));
        }
        if (jSONObject.has("attestation")) {
            try {
                builder.f29474h = AttestationConveyancePreference.a(jSONObject.getString("attestation"));
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException unused2) {
                builder.f29474h = AttestationConveyancePreference.NONE;
            }
        }
        return builder.a();
    }

    public final boolean equals(Object obj) {
        List list;
        if (!(obj instanceof PublicKeyCredentialCreationOptions)) {
            return false;
        }
        PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) obj;
        List list2 = publicKeyCredentialCreationOptions.f29463e;
        List list3 = publicKeyCredentialCreationOptions.g;
        if (Objects.a(this.f29461b, publicKeyCredentialCreationOptions.f29461b) && Objects.a(this.f29462c, publicKeyCredentialCreationOptions.f29462c) && Arrays.equals(this.d, publicKeyCredentialCreationOptions.d) && Objects.a(this.f29464f, publicKeyCredentialCreationOptions.f29464f)) {
            List list4 = this.f29463e;
            if (list4.containsAll(list2) && list2.containsAll(list4) && ((((list = this.g) == null && list3 == null) || (list != null && list3 != null && list.containsAll(list3) && list3.containsAll(list))) && Objects.a(this.f29465h, publicKeyCredentialCreationOptions.f29465h) && Objects.a(this.f29466i, publicKeyCredentialCreationOptions.f29466i) && Objects.a(this.f29467j, publicKeyCredentialCreationOptions.f29467j) && Objects.a(this.f29468k, publicKeyCredentialCreationOptions.f29468k) && Objects.a(this.l, publicKeyCredentialCreationOptions.l) && Objects.a(this.m, publicKeyCredentialCreationOptions.m))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29461b, this.f29462c, Integer.valueOf(Arrays.hashCode(this.d)), this.f29463e, this.f29464f, this.g, this.f29465h, this.f29466i, this.f29467j, this.f29468k, this.l, this.m});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f29461b);
        String strValueOf2 = String.valueOf(this.f29462c);
        String strB = Base64Utils.b(this.d);
        String strValueOf3 = String.valueOf(this.f29463e);
        String strValueOf4 = String.valueOf(this.g);
        String strValueOf5 = String.valueOf(this.f29465h);
        String strValueOf6 = String.valueOf(this.f29467j);
        String strValueOf7 = String.valueOf(this.f29468k);
        String strValueOf8 = String.valueOf(this.l);
        StringBuilder sbS = fc.s("PublicKeyCredentialCreationOptions{\n rp=", strValueOf, ", \n user=", strValueOf2, ", \n challenge=");
        cj.C(sbS, strB, ", \n parameters=", strValueOf3, ", \n timeoutSeconds=");
        sbS.append(this.f29464f);
        sbS.append(", \n excludeList=");
        sbS.append(strValueOf4);
        sbS.append(", \n authenticatorSelection=");
        sbS.append(strValueOf5);
        sbS.append(", \n requestId=");
        sbS.append(this.f29466i);
        sbS.append(", \n tokenBinding=");
        sbS.append(strValueOf6);
        sbS.append(", \n attestationConveyancePreference=");
        return tr.l(sbS, strValueOf7, ", \n authenticationExtensions=", strValueOf8, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f29461b, i2, false);
        SafeParcelWriter.j(parcel, 3, this.f29462c, i2, false);
        SafeParcelWriter.b(parcel, 4, this.d, false);
        SafeParcelWriter.o(parcel, 5, this.f29463e, false);
        SafeParcelWriter.d(parcel, 6, this.f29464f);
        SafeParcelWriter.o(parcel, 7, this.g, false);
        SafeParcelWriter.j(parcel, 8, this.f29465h, i2, false);
        SafeParcelWriter.h(parcel, 9, this.f29466i);
        SafeParcelWriter.j(parcel, 10, this.f29467j, i2, false);
        AttestationConveyancePreference attestationConveyancePreference = this.f29468k;
        SafeParcelWriter.k(parcel, 11, attestationConveyancePreference == null ? null : attestationConveyancePreference.toString(), false);
        SafeParcelWriter.j(parcel, 12, this.l, i2, false);
        SafeParcelWriter.k(parcel, 13, this.m, false);
        SafeParcelWriter.j(parcel, 14, this.n, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public PublicKeyCredentialCreationOptions(String str) {
        try {
            PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptionsW1 = W1(new JSONObject(str));
            this.f29461b = publicKeyCredentialCreationOptionsW1.f29461b;
            this.f29462c = publicKeyCredentialCreationOptionsW1.f29462c;
            this.d = publicKeyCredentialCreationOptionsW1.d;
            this.f29463e = publicKeyCredentialCreationOptionsW1.f29463e;
            this.f29464f = publicKeyCredentialCreationOptionsW1.f29464f;
            this.g = publicKeyCredentialCreationOptionsW1.g;
            this.f29465h = publicKeyCredentialCreationOptionsW1.f29465h;
            this.f29466i = publicKeyCredentialCreationOptionsW1.f29466i;
            this.f29467j = publicKeyCredentialCreationOptionsW1.f29467j;
            this.f29468k = publicKeyCredentialCreationOptionsW1.f29468k;
            this.l = publicKeyCredentialCreationOptionsW1.l;
            this.m = str;
        } catch (JSONException e2) {
            lc0.u(e2);
            throw null;
        }
    }
}
