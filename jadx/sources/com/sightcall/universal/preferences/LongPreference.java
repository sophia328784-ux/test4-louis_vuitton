package com.sightcall.universal.preferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class LongPreference extends BasePreference {
    private final long defaultValue;

    public LongPreference(SharedPreferences sharedPreferences, String str) {
        this(sharedPreferences, str, 0L);
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public long get() {
        return this.preferences.getLong(this.key, this.defaultValue);
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public boolean isSet() {
        return this.preferences.contains(this.key);
    }

    public void set(long j2) {
        this.preferences.edit().putLong(this.key, j2).apply();
    }

    public LongPreference(SharedPreferences sharedPreferences, String str, long j2) {
        super(sharedPreferences, str);
        this.defaultValue = j2;
    }
}
