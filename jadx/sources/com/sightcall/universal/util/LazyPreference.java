package com.sightcall.universal.util;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LazyPreference<T> extends Lazy<T> {
    protected final T defaultValue;
    protected final String key;
    protected final SharedPreferences prefs;

    public LazyPreference(SharedPreferences sharedPreferences, String str, T t) {
        this.prefs = sharedPreferences;
        this.key = str;
        this.defaultValue = t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <P extends LazyPreference<T>> P apply() {
        set(get());
        return this;
    }

    @Override // com.sightcall.universal.util.Lazy
    public abstract T init();

    public abstract SharedPreferences.Editor put(SharedPreferences.Editor editor, T t);

    @Override // com.sightcall.universal.util.Lazy
    public void set(T t) {
        super.set(t);
        put(this.prefs.edit(), t).apply();
    }
}
