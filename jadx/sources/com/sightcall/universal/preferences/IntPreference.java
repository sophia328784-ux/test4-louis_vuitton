package com.sightcall.universal.preferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class IntPreference extends BasePreference {
    private final int defaultValue;

    public IntPreference(SharedPreferences sharedPreferences, String str, int i2) {
        super(sharedPreferences, str);
        this.defaultValue = i2;
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public int get() {
        return this.preferences.getInt(this.key, this.defaultValue);
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public boolean isSet() {
        return this.preferences.contains(this.key);
    }

    public void set(int i2) {
        this.preferences.edit().putInt(this.key, i2).apply();
    }

    public IntPreference(SharedPreferences sharedPreferences, String str) {
        this(sharedPreferences, str, 0);
    }
}
