package com.sightcall.universal.preferences;

import android.content.SharedPreferences;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class StringSetPreference extends BasePreference {
    private final Set<String> defaultValue;

    public StringSetPreference(SharedPreferences sharedPreferences, String str, Set<String> set) {
        super(sharedPreferences, str);
        this.defaultValue = set;
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public Set<String> get() {
        return this.preferences.getStringSet(this.key, this.defaultValue);
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public boolean isSet() {
        return this.preferences.contains(this.key);
    }

    public void set(Set<String> set) {
        this.preferences.edit().putStringSet(this.key, set).apply();
    }

    public StringSetPreference(SharedPreferences sharedPreferences, String str) {
        this(sharedPreferences, str, null);
    }
}
