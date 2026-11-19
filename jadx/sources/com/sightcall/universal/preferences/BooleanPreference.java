package com.sightcall.universal.preferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class BooleanPreference extends BasePreference {
    private final boolean defaultValue;

    public BooleanPreference(SharedPreferences sharedPreferences, String str, boolean z) {
        super(sharedPreferences, str);
        this.defaultValue = z;
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public boolean get() {
        return this.preferences.getBoolean(this.key, this.defaultValue);
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public boolean isSet() {
        return this.preferences.contains(this.key);
    }

    public void set(boolean z) {
        this.preferences.edit().putBoolean(this.key, z).apply();
    }

    public BooleanPreference(SharedPreferences sharedPreferences, String str) {
        this(sharedPreferences, str, false);
    }
}
