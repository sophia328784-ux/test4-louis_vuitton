package com.sightcall.universal.preferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GenericPreference<T> extends BasePreference {
    protected final T defaultValue;

    public GenericPreference(SharedPreferences sharedPreferences, String str, T t) {
        super(sharedPreferences, str);
        this.defaultValue = t;
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public abstract T get();

    @Override // com.sightcall.universal.preferences.BasePreference
    public boolean isSet() {
        return this.preferences.contains(this.key);
    }

    public abstract void set(T t);

    public GenericPreference(SharedPreferences sharedPreferences, String str) {
        this(sharedPreferences, str, null);
    }
}
