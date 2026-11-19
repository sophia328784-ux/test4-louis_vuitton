package com.sightcall.universal.preferences;

import android.content.SharedPreferences;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public class BasePreference {
    protected final String key;
    protected final SharedPreferences preferences;

    public BasePreference(SharedPreferences sharedPreferences, String str) {
        this.preferences = sharedPreferences;
        this.key = str;
    }

    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public boolean isSet() {
        return this.preferences.contains(this.key);
    }
}
