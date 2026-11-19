package com.google.android.gms.internal.gtm;

import android.content.SharedPreferences;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zziw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzjf f30108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzjb f30109c;
    public final Clock d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzam f30110e;

    public zziw(int i2, zzjf zzjfVar, zzjb zzjbVar, zzam zzamVar, Clock clock) {
        Preconditions.h(zzjfVar);
        this.f30108b = zzjfVar;
        Preconditions.h(zzjfVar.f30123a);
        this.f30107a = i2;
        Preconditions.h(zzjbVar);
        this.f30109c = zzjbVar;
        Preconditions.h(clock);
        this.d = clock;
        this.f30110e = zzamVar;
    }

    public abstract void a(zzjh zzjhVar);

    public final void b(int i2, int i3) {
        zzam zzamVar = this.f30110e;
        if (zzamVar != null && i3 == 0 && i2 == 3) {
            SharedPreferences sharedPreferencesB = zzamVar.b();
            long j2 = sharedPreferencesB.getLong("FORBIDDEN_COUNT", 0L);
            long j3 = sharedPreferencesB.getLong("SUCCESSFUL_COUNT", 0L);
            SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            long jMin = j2 == 0 ? 3L : Math.min(10L, j2 + 1);
            long jMax = Math.max(0L, Math.min(j3, 10 - jMin));
            editorEdit.putLong("FORBIDDEN_COUNT", jMin);
            editorEdit.putLong("SUCCESSFUL_COUNT", jMax);
            editorEdit.apply();
        }
        String str = this.f30108b.f30123a.f30102a;
        zzao.a(2);
        a(new zzjh(Status.f29005h, i3, null, null));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x006a  */
    public final void c(byte[] bArr) {
        zzjh zzjhVarA;
        zzjh zzjhVar;
        try {
            zzjhVarA = this.f30109c.a(bArr);
        } catch (zziu unused) {
            zzao.a(4);
            zzjhVarA = null;
        }
        int i2 = this.f30107a;
        zzam zzamVar = this.f30110e;
        if (zzamVar != null && i2 == 0) {
            SharedPreferences sharedPreferencesB = zzamVar.b();
            long j2 = sharedPreferencesB.getLong("SUCCESSFUL_COUNT", 0L);
            long j3 = sharedPreferencesB.getLong("FORBIDDEN_COUNT", 0L);
            long jMin = Math.min(10L, j2 + 1);
            long jMax = Math.max(0L, Math.min(j3, 10 - jMin));
            SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            editorEdit.putLong("SUCCESSFUL_COUNT", jMin);
            editorEdit.putLong("FORBIDDEN_COUNT", jMax);
            editorEdit.apply();
        }
        if (zzjhVarA != null) {
            Status status = zzjhVarA.f30127b;
            Status status2 = Status.f29004f;
            if (status == status2) {
                zzjhVar = new zzjh(status2, i2, new zzjg(this.f30108b.f30123a, bArr, zzjhVarA.d.d, this.d.a()), zzjhVarA.f30129e);
            } else {
                zzjhVar = new zzjh(Status.f29005h, i2, null, null);
            }
        } else {
            zzjhVar = new zzjh(Status.f29005h, i2, null, null);
        }
        a(zzjhVar);
    }
}
