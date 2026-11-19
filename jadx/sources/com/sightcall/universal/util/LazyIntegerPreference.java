package com.sightcall.universal.util;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class LazyIntegerPreference extends LazyPreference<Integer> {
    public LazyIntegerPreference(SharedPreferences sharedPreferences, String str, Integer num) {
        super(sharedPreferences, str, num);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.universal.util.LazyPreference, com.sightcall.universal.util.Lazy
    public Integer init() {
        if (!this.prefs.contains(this.key)) {
            return (Integer) this.defaultValue;
        }
        SharedPreferences sharedPreferences = this.prefs;
        String str = this.key;
        T t = this.defaultValue;
        return Integer.valueOf(sharedPreferences.getInt(str, t != 0 ? ((Integer) t).intValue() : 0));
    }

    @Override // com.sightcall.universal.util.LazyPreference
    public SharedPreferences.Editor put(SharedPreferences.Editor editor, Integer num) {
        String str = this.key;
        return num == null ? editor.remove(str) : editor.putInt(str, num.intValue());
    }
}
