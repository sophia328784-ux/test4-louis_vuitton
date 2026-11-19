package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticationExtensions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticationExtensions> CREATOR = new zzd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FidoAppIdExtension f29404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzs f29405c;
    public final UserVerificationMethodExtension d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzz f29406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzab f29407f;
    public final zzad g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzu f29408h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzag f29409i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GoogleThirdPartyPaymentExtension f29410j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzak f29411k;
    public final zzaw l;
    public final zzai m;

    public AuthenticationExtensions(FidoAppIdExtension fidoAppIdExtension, zzs zzsVar, UserVerificationMethodExtension userVerificationMethodExtension, zzz zzzVar, zzab zzabVar, zzad zzadVar, zzu zzuVar, zzag zzagVar, GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension, zzak zzakVar, zzaw zzawVar, zzai zzaiVar) {
        this.f29404b = fidoAppIdExtension;
        this.d = userVerificationMethodExtension;
        this.f29405c = zzsVar;
        this.f29406e = zzzVar;
        this.f29407f = zzabVar;
        this.g = zzadVar;
        this.f29408h = zzuVar;
        this.f29409i = zzagVar;
        this.f29410j = googleThirdPartyPaymentExtension;
        this.f29411k = zzakVar;
        this.l = zzawVar;
        this.m = zzaiVar;
    }

    public static AuthenticationExtensions W1(JSONObject jSONObject) throws JSONException {
        Builder builder = new Builder();
        if (jSONObject.has("fidoAppIdExtension")) {
            builder.f29412a = new FidoAppIdExtension(jSONObject.getJSONObject("fidoAppIdExtension").getString("appid"));
        }
        if (jSONObject.has("appid")) {
            builder.f29412a = new FidoAppIdExtension(jSONObject.getString("appid"));
        }
        if (jSONObject.has("prf")) {
            if (jSONObject.has("prfAlreadyHashed")) {
                throw new JSONException("both prf and prfAlreadyHashed extensions found");
            }
            builder.f29419j = zzak.W1(jSONObject.getJSONObject("prf"), false);
        } else if (jSONObject.has("prfAlreadyHashed")) {
            builder.f29419j = zzak.W1(jSONObject.getJSONObject("prfAlreadyHashed"), true);
        }
        if (jSONObject.has("cableAuthenticationExtension")) {
            JSONArray jSONArray = jSONObject.getJSONArray("cableAuthenticationExtension");
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                arrayList.add(new zzq(jSONObject2.getLong("version"), Base64.decode(jSONObject2.getString("clientEid"), 11), Base64.decode(jSONObject2.getString("authenticatorEid"), 11), Base64.decode(jSONObject2.getString("sessionPreKey"), 11)));
            }
            builder.f29414c = new zzs(arrayList);
        }
        if (jSONObject.has("userVerificationMethodExtension")) {
            builder.f29413b = new UserVerificationMethodExtension(jSONObject.getJSONObject("userVerificationMethodExtension").getBoolean("uvm"));
        }
        if (jSONObject.has("google_multiAssertionExtension")) {
            builder.d = new zzz(jSONObject.getJSONObject("google_multiAssertionExtension").getBoolean("requestForMultiAssertion"));
        }
        if (jSONObject.has("google_sessionIdExtension")) {
            builder.f29415e = new zzab(jSONObject.getJSONObject("google_sessionIdExtension").getInt("sessionId"));
        }
        if (jSONObject.has("google_silentVerificationExtension")) {
            builder.f29416f = new zzad(jSONObject.getJSONObject("google_silentVerificationExtension").getBoolean("silentVerification"));
        }
        if (jSONObject.has("devicePublicKeyExtension")) {
            builder.g = new zzu(jSONObject.getJSONObject("devicePublicKeyExtension").getBoolean("devicePublicKey"));
        }
        if (jSONObject.has("google_tunnelServerIdExtension")) {
            builder.f29417h = new zzag(jSONObject.getJSONObject("google_tunnelServerIdExtension").getString("tunnelServerId"));
        }
        if (jSONObject.has("google_thirdPartyPaymentExtension")) {
            builder.f29418i = new GoogleThirdPartyPaymentExtension(jSONObject.getJSONObject("google_thirdPartyPaymentExtension").getBoolean("thirdPartyPayment"));
        }
        if (jSONObject.has("txAuthSimple")) {
            builder.f29420k = new zzaw(jSONObject.getString("txAuthSimple"));
        }
        return builder.a();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticationExtensions)) {
            return false;
        }
        AuthenticationExtensions authenticationExtensions = (AuthenticationExtensions) obj;
        return Objects.a(this.f29404b, authenticationExtensions.f29404b) && Objects.a(this.f29405c, authenticationExtensions.f29405c) && Objects.a(this.d, authenticationExtensions.d) && Objects.a(this.f29406e, authenticationExtensions.f29406e) && Objects.a(this.f29407f, authenticationExtensions.f29407f) && Objects.a(this.g, authenticationExtensions.g) && Objects.a(this.f29408h, authenticationExtensions.f29408h) && Objects.a(this.f29409i, authenticationExtensions.f29409i) && Objects.a(this.f29410j, authenticationExtensions.f29410j) && Objects.a(this.f29411k, authenticationExtensions.f29411k) && Objects.a(this.l, authenticationExtensions.l) && Objects.a(this.m, authenticationExtensions.m);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29404b, this.f29405c, this.d, this.f29406e, this.f29407f, this.g, this.f29408h, this.f29409i, this.f29410j, this.f29411k, this.l, this.m});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f29404b);
        String strValueOf2 = String.valueOf(this.f29405c);
        String strValueOf3 = String.valueOf(this.d);
        String strValueOf4 = String.valueOf(this.f29406e);
        String strValueOf5 = String.valueOf(this.f29407f);
        String strValueOf6 = String.valueOf(this.g);
        String strValueOf7 = String.valueOf(this.f29408h);
        String strValueOf8 = String.valueOf(this.f29409i);
        String strValueOf9 = String.valueOf(this.f29410j);
        String strValueOf10 = String.valueOf(this.f29411k);
        String strValueOf11 = String.valueOf(this.l);
        StringBuilder sbS = fc.s("AuthenticationExtensions{\n fidoAppIdExtension=", strValueOf, ", \n cableAuthenticationExtension=", strValueOf2, ", \n userVerificationMethodExtension=");
        cj.C(sbS, strValueOf3, ", \n googleMultiAssertionExtension=", strValueOf4, ", \n googleSessionIdExtension=");
        cj.C(sbS, strValueOf5, ", \n googleSilentVerificationExtension=", strValueOf6, ", \n devicePublicKeyExtension=");
        cj.C(sbS, strValueOf7, ", \n googleTunnelServerIdExtension=", strValueOf8, ", \n googleThirdPartyPaymentExtension=");
        cj.C(sbS, strValueOf9, ", \n prfExtension=", strValueOf10, ", \n simpleTransactionAuthorizationExtension=");
        return n00.r(strValueOf11, "}", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f29404b, i2, false);
        SafeParcelWriter.j(parcel, 3, this.f29405c, i2, false);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.j(parcel, 5, this.f29406e, i2, false);
        SafeParcelWriter.j(parcel, 6, this.f29407f, i2, false);
        SafeParcelWriter.j(parcel, 7, this.g, i2, false);
        SafeParcelWriter.j(parcel, 8, this.f29408h, i2, false);
        SafeParcelWriter.j(parcel, 9, this.f29409i, i2, false);
        SafeParcelWriter.j(parcel, 10, this.f29410j, i2, false);
        SafeParcelWriter.j(parcel, 11, this.f29411k, i2, false);
        SafeParcelWriter.j(parcel, 12, this.l, i2, false);
        SafeParcelWriter.j(parcel, 13, this.m, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public FidoAppIdExtension f29412a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public UserVerificationMethodExtension f29413b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public zzs f29414c;
        public zzz d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public zzab f29415e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public zzad f29416f;
        public zzu g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public zzag f29417h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public GoogleThirdPartyPaymentExtension f29418i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public zzak f29419j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public zzaw f29420k;
        public final zzai l;

        public Builder(AuthenticationExtensions authenticationExtensions) {
            if (authenticationExtensions != null) {
                this.f29412a = authenticationExtensions.f29404b;
                this.f29413b = authenticationExtensions.d;
                this.f29414c = authenticationExtensions.f29405c;
                this.d = authenticationExtensions.f29406e;
                this.f29415e = authenticationExtensions.f29407f;
                this.f29416f = authenticationExtensions.g;
                this.g = authenticationExtensions.f29408h;
                this.f29417h = authenticationExtensions.f29409i;
                this.f29418i = authenticationExtensions.f29410j;
                this.f29419j = authenticationExtensions.f29411k;
                this.f29420k = authenticationExtensions.l;
                this.l = authenticationExtensions.m;
            }
        }

        public final AuthenticationExtensions a() {
            return new AuthenticationExtensions(this.f29412a, this.f29414c, this.f29413b, this.d, this.f29415e, this.f29416f, this.g, this.f29417h, this.f29418i, this.f29419j, this.f29420k, this.l);
        }

        public Builder() {
        }
    }
}
