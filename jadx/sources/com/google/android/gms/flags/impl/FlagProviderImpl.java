package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.flags.zzd;

/* JADX INFO: loaded from: classes2.dex */
public class FlagProviderImpl extends zzd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f29551a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SharedPreferences f29552b;

    @Override // com.google.android.gms.flags.zzc
    public boolean getBooleanFlagValue(String str, boolean z, int i2) {
        if (!this.f29551a) {
            return z;
        }
        SharedPreferences sharedPreferences = this.f29552b;
        Boolean boolValueOf = Boolean.valueOf(z);
        try {
            boolValueOf = (Boolean) com.google.android.gms.internal.flags.zze.a(new zzc(sharedPreferences, str, boolValueOf));
        } catch (Exception e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            if (strValueOf.length() != 0) {
                "Flag value not available, returning default: ".concat(strValueOf);
            }
        }
        return boolValueOf.booleanValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public int getIntFlagValue(String str, int i2, int i3) {
        if (!this.f29551a) {
            return i2;
        }
        SharedPreferences sharedPreferences = this.f29552b;
        Integer numValueOf = Integer.valueOf(i2);
        try {
            numValueOf = (Integer) com.google.android.gms.internal.flags.zze.a(new zze(sharedPreferences, str, numValueOf));
        } catch (Exception e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            if (strValueOf.length() != 0) {
                "Flag value not available, returning default: ".concat(strValueOf);
            }
        }
        return numValueOf.intValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public long getLongFlagValue(String str, long j2, int i2) {
        if (!this.f29551a) {
            return j2;
        }
        SharedPreferences sharedPreferences = this.f29552b;
        Long lValueOf = Long.valueOf(j2);
        try {
            lValueOf = (Long) com.google.android.gms.internal.flags.zze.a(new zzg(sharedPreferences, str, lValueOf));
        } catch (Exception e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            if (strValueOf.length() != 0) {
                "Flag value not available, returning default: ".concat(strValueOf);
            }
        }
        return lValueOf.longValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public String getStringFlagValue(String str, String str2, int i2) {
        if (this.f29551a) {
            try {
                return (String) com.google.android.gms.internal.flags.zze.a(new zzi(this.f29552b, str, str2));
            } catch (Exception e2) {
                String strValueOf = String.valueOf(e2.getMessage());
                if (strValueOf.length() != 0) {
                    "Flag value not available, returning default: ".concat(strValueOf);
                }
            }
        }
        return str2;
    }

    @Override // com.google.android.gms.flags.zzc
    public void init(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.G2(iObjectWrapper);
        if (this.f29551a) {
            return;
        }
        try {
            this.f29552b = zzj.a(context.createPackageContext("com.google.android.gms", 0));
            this.f29551a = true;
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            if (strValueOf.length() != 0) {
                "Could not retrieve sdk flags, continuing with defaults: ".concat(strValueOf);
            }
        }
    }
}
