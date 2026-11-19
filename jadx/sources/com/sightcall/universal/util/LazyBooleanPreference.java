package com.sightcall.universal.util;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class LazyBooleanPreference extends LazyPreference<Boolean> {
    public LazyBooleanPreference(SharedPreferences sharedPreferences, String str, Boolean bool) {
        super(sharedPreferences, str, bool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.universal.util.LazyPreference, com.sightcall.universal.util.Lazy
    public Boolean init() {
        if (!this.prefs.contains(this.key)) {
            return (Boolean) this.defaultValue;
        }
        SharedPreferences sharedPreferences = this.prefs;
        String str = this.key;
        T t = this.defaultValue;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, t != 0 ? ((Boolean) t).booleanValue() : false));
    }

    @Override // com.sightcall.universal.util.LazyPreference
    public SharedPreferences.Editor put(SharedPreferences.Editor editor, Boolean bool) {
        String str = this.key;
        return bool == null ? editor.remove(str) : editor.putBoolean(str, bool.booleanValue());
    }
}
