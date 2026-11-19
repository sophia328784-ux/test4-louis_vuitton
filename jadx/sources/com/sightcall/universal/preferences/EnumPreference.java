package com.sightcall.universal.preferences;

import android.content.SharedPreferences;
import java.lang.Enum;

/* JADX INFO: loaded from: classes3.dex */
public class EnumPreference<T extends Enum<T>> extends BasePreference {
    private final T defaultValue;
    private final Class<T> enumType;

    public EnumPreference(SharedPreferences sharedPreferences, Class<T> cls, String str, T t) {
        super(sharedPreferences, str);
        this.defaultValue = t;
        this.enumType = cls;
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public T get() {
        T t;
        try {
            t = (T) Enum.valueOf(this.enumType, this.preferences.getString(this.key, ""));
        } catch (Exception unused) {
            t = null;
        }
        return t != null ? t : this.defaultValue;
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public boolean isSet() {
        return this.preferences.contains(this.key);
    }

    public void set(T t) {
        this.preferences.edit().putString(this.key, t != null ? t.name() : null).apply();
    }

    public EnumPreference(SharedPreferences sharedPreferences, Class<T> cls, String str) {
        this(sharedPreferences, cls, str, null);
    }
}
