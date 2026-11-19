package com.google.crypto.tink.integration.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.crypto.tink.KeysetWriter;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class SharedPrefKeysetWriter implements KeysetWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences.Editor f33981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f33982b;

    public SharedPrefKeysetWriter(Context context, String str, String str2) {
        if (str == null) {
            md.n("keysetName cannot be null");
            throw null;
        }
        this.f33982b = str;
        Context applicationContext = context.getApplicationContext();
        if (str2 == null) {
            this.f33981a = PreferenceManager.getDefaultSharedPreferences(applicationContext).edit();
        } else {
            this.f33981a = applicationContext.getSharedPreferences(str2, 0).edit();
        }
    }
}
