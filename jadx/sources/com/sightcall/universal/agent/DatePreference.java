package com.sightcall.universal.agent;

import android.content.SharedPreferences;
import com.sightcall.universal.preferences.GenericPreference;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class DatePreference extends GenericPreference<Date> {
    public DatePreference(SharedPreferences sharedPreferences, String str) {
        super(sharedPreferences, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.universal.preferences.GenericPreference
    public Date get() {
        return !this.preferences.contains(this.key) ? (Date) this.defaultValue : new Date(this.preferences.getLong(this.key, 0L));
    }

    @Override // com.sightcall.universal.preferences.GenericPreference
    public void set(Date date) {
        if (date == null) {
            delete();
        } else {
            this.preferences.edit().putLong(this.key, date.getTime()).apply();
        }
    }
}
