package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.internal.ListenerHolder;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzjz implements ListenerHolder.Notifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ byte[] f30679a;

    public zzjz(zzka zzkaVar, byte[] bArr) {
        this.f30679a = bArr;
        Objects.requireNonNull(zzkaVar);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void a(Object obj) {
        zzpm zzpmVar = (zzpm) obj;
        try {
            byte[] bArr = this.f30679a;
            zzadf zzadfVar = zzadf.f30397b;
            int i2 = zzacf.f30358a;
            zzpmVar.a(zzpl.B(bArr, zzadf.f30398c));
        } catch (zzaeh unused) {
            zzpmVar.getClass();
        }
    }
}
