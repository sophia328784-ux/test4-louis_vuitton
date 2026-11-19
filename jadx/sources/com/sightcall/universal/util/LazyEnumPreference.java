package com.sightcall.universal.util;

import android.content.SharedPreferences;
import java.lang.Enum;

/* JADX INFO: loaded from: classes3.dex */
public class LazyEnumPreference<T extends Enum<T>> extends LazyPreference<T> {
    private final Class<T> enumType;

    public LazyEnumPreference(SharedPreferences sharedPreferences, String str, Class<T> cls, T t) {
        super(sharedPreferences, str, t);
        this.enumType = cls;
    }

    @Override // com.sightcall.universal.util.LazyPreference, com.sightcall.universal.util.Lazy
    public T init() {
        if (!this.prefs.contains(this.key)) {
            return this.defaultValue;
        }
        try {
            return (T) Enum.valueOf(this.enumType, this.prefs.getString(this.key, String.valueOf(this.defaultValue)));
        } catch (Exception unused) {
            return this.defaultValue;
        }
    }

    @Override // com.sightcall.universal.util.LazyPreference
    public SharedPreferences.Editor put(SharedPreferences.Editor editor, T t) {
        return editor.putString(this.key, t != null ? t.name() : null);
    }
}
