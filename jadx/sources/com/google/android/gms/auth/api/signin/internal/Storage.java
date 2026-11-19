package com.google.android.gms.auth.api.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.d21;
import defpackage.x1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Storage {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ReentrantLock f28837c = new ReentrantLock();
    public static Storage d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantLock f28838a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f28839b;

    public Storage(Context context) {
        this.f28839b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static Storage a(Context context) {
        Preconditions.h(context);
        ReentrantLock reentrantLock = f28837c;
        reentrantLock.lock();
        try {
            if (d == null) {
                d = new Storage(context.getApplicationContext());
            }
            return d;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String f(String str, String str2) {
        return d21.p(new StringBuilder(str.length() + 1 + String.valueOf(str2).length()), str, ":", str2);
    }

    public final GoogleSignInAccount b() {
        String strE;
        String strE2 = e("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(strE2) && (strE = e(f("googleSignInAccount", strE2))) != null) {
            try {
                return GoogleSignInAccount.X1(strE);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public final void c(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        Preconditions.h(googleSignInAccount);
        Preconditions.h(googleSignInOptions);
        String str = googleSignInAccount.f28808i;
        d("defaultGoogleSignInAccount", str);
        d(f("googleSignInAccount", str), googleSignInAccount.Y1());
        String strF = f("googleSignInOptions", str);
        String str2 = googleSignInOptions.f28816i;
        String str3 = googleSignInOptions.f28815h;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            ArrayList arrayList = googleSignInOptions.f28812c;
            Collections.sort(arrayList, GoogleSignInOptions.p);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).f29003c);
            }
            jSONObject.put("scopes", jSONArray);
            Account account = googleSignInOptions.d;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", googleSignInOptions.f28813e);
            jSONObject.put("forceCodeForRefreshToken", googleSignInOptions.g);
            jSONObject.put("serverAuthRequested", googleSignInOptions.f28814f);
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("serverClientId", str3);
            }
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("hostedDomain", str2);
            }
            d(strF, jSONObject.toString());
        } catch (JSONException e2) {
            x1.m(e2);
        }
    }

    public final void d(String str, String str2) {
        ReentrantLock reentrantLock = this.f28838a;
        reentrantLock.lock();
        try {
            this.f28839b.edit().putString(str, str2).apply();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final String e(String str) {
        ReentrantLock reentrantLock = this.f28838a;
        reentrantLock.lock();
        try {
            return this.f28839b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }
}
