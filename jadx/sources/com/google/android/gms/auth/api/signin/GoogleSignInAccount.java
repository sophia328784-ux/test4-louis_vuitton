package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.batch.android.s.b;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.x1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28804c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Uri f28806f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f28807h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f28808i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f28809j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f28810k;
    public final String l;
    public final HashSet m = new HashSet();

    public GoogleSignInAccount(String str, String str2, String str3, String str4, Uri uri, String str5, long j2, String str6, ArrayList arrayList, String str7, String str8) {
        this.f28803b = str;
        this.f28804c = str2;
        this.d = str3;
        this.f28805e = str4;
        this.f28806f = uri;
        this.g = str5;
        this.f28807h = j2;
        this.f28808i = str6;
        this.f28809j = arrayList;
        this.f28810k = str7;
        this.l = str8;
    }

    public static GoogleSignInAccount X1(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl");
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j2 = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(jSONArray.getString(i2)));
        }
        String strOptString2 = jSONObject.optString(b.a.f24015b);
        String strOptString3 = jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null;
        String strOptString4 = jSONObject.has("email") ? jSONObject.optString("email") : null;
        String strOptString5 = jSONObject.has("displayName") ? jSONObject.optString("displayName") : null;
        String strOptString6 = jSONObject.has("givenName") ? jSONObject.optString("givenName") : null;
        String strOptString7 = jSONObject.has("familyName") ? jSONObject.optString("familyName") : null;
        String string = jSONObject.getString("obfuscatedIdentifier");
        Preconditions.e(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(strOptString2, strOptString3, strOptString4, strOptString5, uri, null, j2, string, new ArrayList(hashSet), strOptString6, strOptString7);
        googleSignInAccount.g = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccount;
    }

    public final HashSet W1() {
        HashSet hashSet = new HashSet(this.f28809j);
        hashSet.addAll(this.m);
        return hashSet;
    }

    public final String Y1() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.f28803b;
            if (str != null) {
                jSONObject.put(b.a.f24015b, str);
            }
            String str2 = this.f28804c;
            if (str2 != null) {
                jSONObject.put("tokenId", str2);
            }
            String str3 = this.d;
            if (str3 != null) {
                jSONObject.put("email", str3);
            }
            String str4 = this.f28805e;
            if (str4 != null) {
                jSONObject.put("displayName", str4);
            }
            String str5 = this.f28810k;
            if (str5 != null) {
                jSONObject.put("givenName", str5);
            }
            String str6 = this.l;
            if (str6 != null) {
                jSONObject.put("familyName", str6);
            }
            Uri uri = this.f28806f;
            if (uri != null) {
                jSONObject.put("photoUrl", uri.toString());
            }
            String str7 = this.g;
            if (str7 != null) {
                jSONObject.put("serverAuthCode", str7);
            }
            jSONObject.put("expirationTime", this.f28807h);
            jSONObject.put("obfuscatedIdentifier", this.f28808i);
            JSONArray jSONArray = new JSONArray();
            List list = this.f28809j;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, zaa.f28849b);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.f29003c);
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e2) {
            x1.m(e2);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f28808i.equals(this.f28808i) && googleSignInAccount.W1().equals(W1());
    }

    public final int hashCode() {
        return ((this.f28808i.hashCode() + 527) * 31) + W1().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f28803b, false);
        SafeParcelWriter.k(parcel, 3, this.f28804c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.k(parcel, 5, this.f28805e, false);
        SafeParcelWriter.j(parcel, 6, this.f28806f, i2, false);
        SafeParcelWriter.k(parcel, 7, this.g, false);
        SafeParcelWriter.p(parcel, 8, 8);
        parcel.writeLong(this.f28807h);
        SafeParcelWriter.k(parcel, 9, this.f28808i, false);
        SafeParcelWriter.o(parcel, 10, this.f28809j, false);
        SafeParcelWriter.k(parcel, 11, this.f28810k, false);
        SafeParcelWriter.k(parcel, 12, this.l, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
