package com.sightcall.universal.preferences;

import android.content.SharedPreferences;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class FloatPreference extends BasePreference {
    private final float defaultValue;

    public FloatPreference(SharedPreferences sharedPreferences, String str, float f2) {
        super(sharedPreferences, str);
        this.defaultValue = f2;
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public void delete() {
        this.preferences.edit().remove(this.key).apply();
    }

    public float get() {
        return this.preferences.getFloat(this.key, this.defaultValue);
    }

    @Override // com.sightcall.universal.preferences.BasePreference
    public boolean isSet() {
        return this.preferences.contains(this.key);
    }

    public void set(float f2) {
        this.preferences.edit().putFloat(this.key, f2).apply();
    }

    public FloatPreference(SharedPreferences sharedPreferences, String str) {
        this(sharedPreferences, str, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }
}
