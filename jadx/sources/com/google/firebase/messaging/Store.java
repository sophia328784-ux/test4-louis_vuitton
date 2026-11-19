package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public class Store {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f35284a;

    public static class Token {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f35285a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f35286b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f35287c;

        public Token(String str, String str2, long j2) {
            this.f35285a = str;
            this.f35286b = str2;
            this.f35287c = j2;
        }

        public static Token a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new Token(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new Token(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e2) {
                e2.toString();
                return null;
            }
        }
    }

    public Store(Context context) {
        boolean zIsEmpty;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f35284a = sharedPreferences;
        File file = new File(ContextCompat.getNoBackupFilesDir(context), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile()) {
                synchronized (this) {
                    zIsEmpty = sharedPreferences.getAll().isEmpty();
                }
                if (zIsEmpty) {
                    return;
                }
                synchronized (this) {
                    sharedPreferences.edit().clear().commit();
                }
            }
        } catch (IOException e2) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                e2.getMessage();
            }
        }
    }
}
