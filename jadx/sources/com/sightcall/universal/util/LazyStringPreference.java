package com.sightcall.universal.util;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class LazyStringPreference extends LazyPreference<String> {
    public LazyStringPreference(SharedPreferences sharedPreferences, String str, String str2) {
        super(sharedPreferences, str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.universal.util.LazyPreference, com.sightcall.universal.util.Lazy
    public String init() {
        return this.prefs.getString(this.key, (String) this.defaultValue);
    }

    @Override // com.sightcall.universal.util.LazyPreference
    public SharedPreferences.Editor put(SharedPreferences.Editor editor, String str) {
        return editor.putString(this.key, str);
    }
}
