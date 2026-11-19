package com.perfectcorp.common.utility;

import android.content.SharedPreferences;
import com.perfectcorp.thirdparty.com.google.common.collect.af;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class j extends af implements SharedPreferences {
    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        return ((BasicPreferences) this).n.contains(str);
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        return ((BasicPreferences) this).n.edit();
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() {
        return ((BasicPreferences) this).n.getAll();
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        Objects.requireNonNull(str, "key can't be null");
        return ((BasicPreferences) this).n.getBoolean(str, z);
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f2) {
        Objects.requireNonNull(str, "key can't be null");
        return ((BasicPreferences) this).n.getFloat(str, f2);
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i2) {
        Objects.requireNonNull(str, "key can't be null");
        return ((BasicPreferences) this).n.getInt(str, i2);
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j2) {
        Objects.requireNonNull(str, "key can't be null");
        return ((BasicPreferences) this).n.getLong(str, j2);
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) {
        Objects.requireNonNull(str, "key can't be null");
        return ((BasicPreferences) this).n.getString(str, str2);
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        Objects.requireNonNull(str, "key can't be null");
        Set<String> stringSet = ((BasicPreferences) this).n.getStringSet(str, set);
        if (stringSet == null) {
            return null;
        }
        return Collections.unmodifiableSet(stringSet);
    }

    public final void m() {
        edit().clear().commit();
    }

    public final void n(int i2, String str) {
        if (contains(str) && getInt(str, 0) == i2) {
            return;
        }
        edit().putInt(str, i2).apply();
    }

    public final void o(String str, String str2) {
        Objects.requireNonNull(str, "key can't be null");
        if (contains(str)) {
            String string = getString(str, null);
            if (string == null && str2 == null) {
                return;
            }
            if (string != null && string.equals(str2)) {
                return;
            }
        }
        edit().putString(str, str2).apply();
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        ((BasicPreferences) this).n.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        ((BasicPreferences) this).n.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }
}
