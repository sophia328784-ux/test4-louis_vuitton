package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f31791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31792c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhh f31793e;

    public zzhc(zzhh zzhhVar, String str, boolean z) {
        Objects.requireNonNull(zzhhVar);
        this.f31793e = zzhhVar;
        Preconditions.e(str);
        this.f31790a = str;
        this.f31791b = z;
    }

    public final boolean a() {
        if (!this.f31792c) {
            this.f31792c = true;
            this.d = this.f31793e.k().getBoolean(this.f31790a, this.f31791b);
        }
        return this.d;
    }

    public final void b(boolean z) {
        SharedPreferences.Editor editorEdit = this.f31793e.k().edit();
        editorEdit.putBoolean(this.f31790a, z);
        editorEdit.apply();
        this.d = z;
    }
}
