package com.sightcall.universal.preferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class StringPreference extends BasePreference {
    private final String defaultValue;

    public StringPreference(SharedPreferences sharedPreferences, String str, String str2) {
        super(sharedPreferences, str);
        this.defaultValue = str2;
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public String get() {
        return this.preferences.getString(this.key, this.defaultValue);
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public boolean isSet() {
        return this.preferences.contains(this.key);
    }

    public void set(String str) {
        this.preferences.edit().putString(this.key, str).apply();
    }

    public StringPreference(SharedPreferences sharedPreferences, String str) {
        this(sharedPreferences, str, null);
    }
}
