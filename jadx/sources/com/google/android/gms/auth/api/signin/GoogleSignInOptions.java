package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
    public static final GoogleSignInOptions l;
    public static final Scope m;
    public static final Scope n;
    public static final Scope o;
    public static final Comparator p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f28812c;
    public final Account d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f28814f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f28815h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f28816i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f28817j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f28818k;

    static {
        Scope scope = new Scope("profile");
        new Scope("email");
        Scope scope2 = new Scope("openid");
        m = scope2;
        Scope scope3 = new Scope("https://www.googleapis.com/auth/games_lite");
        n = scope3;
        o = new Scope("https://www.googleapis.com/auth/games");
        Builder builder = new Builder();
        HashSet hashSet = builder.f28819a;
        hashSet.add(scope2);
        hashSet.add(scope);
        l = builder.a();
        Builder builder2 = new Builder();
        HashSet hashSet2 = builder2.f28819a;
        hashSet2.add(scope3);
        hashSet2.addAll(Arrays.asList(new Scope[0]));
        builder2.a();
        CREATOR = new zad();
        p = new zac();
    }

    public GoogleSignInOptions(int i2, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, HashMap map, String str3) {
        this.f28811b = i2;
        this.f28812c = arrayList;
        this.d = account;
        this.f28813e = z;
        this.f28814f = z2;
        this.g = z3;
        this.f28815h = str;
        this.f28816i = str2;
        this.f28817j = new ArrayList(map.values());
        this.f28818k = str3;
    }

    public static GoogleSignInOptions W1(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(jSONArray.getString(i2)));
        }
        String strOptString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), null);
    }

    public static HashMap X1(ArrayList arrayList) {
        HashMap map = new HashMap();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable = (GoogleSignInOptionsExtensionParcelable) it.next();
                map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.f28829c), googleSignInOptionsExtensionParcelable);
            }
        }
        return map;
    }

    public final boolean equals(Object obj) {
        String str = this.f28815h;
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            ArrayList arrayList = googleSignInOptions.f28812c;
            String str2 = googleSignInOptions.f28815h;
            if (this.f28817j.isEmpty() && googleSignInOptions.f28817j.isEmpty()) {
                ArrayList arrayList2 = this.f28812c;
                if (arrayList2.size() == new ArrayList(arrayList).size() && arrayList2.containsAll(new ArrayList(arrayList))) {
                    Account account = this.d;
                    Account account2 = googleSignInOptions.d;
                    if (account == null) {
                        if (account2 != null) {
                            return false;
                        }
                    } else if (!account.equals(account2)) {
                        return false;
                    }
                    if (TextUtils.isEmpty(str)) {
                        if (!TextUtils.isEmpty(str2)) {
                            return false;
                        }
                    } else if (!str.equals(str2)) {
                        return false;
                    }
                    return this.g == googleSignInOptions.g && this.f28813e == googleSignInOptions.f28813e && this.f28814f == googleSignInOptions.f28814f && TextUtils.equals(this.f28818k, googleSignInOptions.f28818k);
                }
                return false;
            }
            return false;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f28812c;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(((Scope) arrayList2.get(i2)).f29003c);
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.a(arrayList);
        hashAccumulator.a(this.d);
        hashAccumulator.a(this.f28815h);
        hashAccumulator.f28830a = (((((hashAccumulator.f28830a * 31) + (this.g ? 1 : 0)) * 31) + (this.f28813e ? 1 : 0)) * 31) + (this.f28814f ? 1 : 0);
        hashAccumulator.a(this.f28818k);
        return hashAccumulator.f28830a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28811b);
        SafeParcelWriter.o(parcel, 2, new ArrayList(this.f28812c), false);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f28813e ? 1 : 0);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f28814f ? 1 : 0);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g ? 1 : 0);
        SafeParcelWriter.k(parcel, 7, this.f28815h, false);
        SafeParcelWriter.k(parcel, 8, this.f28816i, false);
        SafeParcelWriter.o(parcel, 9, this.f28817j, false);
        SafeParcelWriter.k(parcel, 10, this.f28818k, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    @Deprecated
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashSet f28819a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f28820b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f28821c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f28822e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Account f28823f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final HashMap f28824h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f28825i;

        public Builder(GoogleSignInOptions googleSignInOptions) {
            this.f28819a = new HashSet();
            this.f28824h = new HashMap();
            Preconditions.h(googleSignInOptions);
            this.f28819a = new HashSet(googleSignInOptions.f28812c);
            this.f28820b = googleSignInOptions.f28814f;
            this.f28821c = googleSignInOptions.g;
            this.d = googleSignInOptions.f28813e;
            this.f28822e = googleSignInOptions.f28815h;
            this.f28823f = googleSignInOptions.d;
            this.g = googleSignInOptions.f28816i;
            this.f28824h = GoogleSignInOptions.X1(googleSignInOptions.f28817j);
            this.f28825i = googleSignInOptions.f28818k;
        }

        public final GoogleSignInOptions a() {
            Scope scope = GoogleSignInOptions.o;
            HashSet hashSet = this.f28819a;
            if (hashSet.contains(scope)) {
                Scope scope2 = GoogleSignInOptions.n;
                if (hashSet.contains(scope2)) {
                    hashSet.remove(scope2);
                }
            }
            if (this.d && (this.f28823f == null || !hashSet.isEmpty())) {
                hashSet.add(GoogleSignInOptions.m);
            }
            return new GoogleSignInOptions(3, new ArrayList(hashSet), this.f28823f, this.d, this.f28820b, this.f28821c, this.f28822e, this.g, this.f28824h, this.f28825i);
        }

        public Builder() {
            this.f28819a = new HashSet();
            this.f28824h = new HashMap();
        }
    }
}
