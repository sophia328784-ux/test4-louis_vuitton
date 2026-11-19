package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f31807c;
    public final /* synthetic */ zzhh d;

    public zzhg(zzhh zzhhVar, String str, String str2) {
        Objects.requireNonNull(zzhhVar);
        this.d = zzhhVar;
        Preconditions.e(str);
        this.f31805a = str;
    }

    public final String a() {
        if (!this.f31806b) {
            this.f31806b = true;
            this.f31807c = this.d.k().getString(this.f31805a, null);
        }
        return this.f31807c;
    }

    public final void b(String str) {
        SharedPreferences.Editor editorEdit = this.d.k().edit();
        editorEdit.putString(this.f31805a, str);
        editorEdit.apply();
        this.f31807c = str;
    }
}
