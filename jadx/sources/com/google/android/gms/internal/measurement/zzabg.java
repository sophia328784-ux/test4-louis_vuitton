package com.google.android.gms.internal.measurement;

import com.sightcall.advancedannotations.domain.parser.TextParser;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class zzabg extends zzabh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzabf f30341c;

    public zzabg(zzza zzzaVar, int i2, zzabf zzabfVar) {
        super(zzzaVar, i2);
        this.f30341c = zzabfVar;
        StringBuilder sb = new StringBuilder("%");
        zzzaVar.d(sb);
        sb.append(true != zzzaVar.c() ? 't' : TextParser.TextInstruction);
        sb.append(zzabfVar.b());
    }

    @Override // com.google.android.gms.internal.measurement.zzabh
    public final void a(zzyy zzyyVar, Object obj) {
        StringBuilder sb = zzyyVar.f31105e;
        boolean z = obj instanceof Date;
        zzabf zzabfVar = this.f30341c;
        if (!z && !(obj instanceof Calendar) && !(obj instanceof Long)) {
            char cB = zzabfVar.b();
            StringBuilder sb2 = new StringBuilder(String.valueOf(cB).length() + 2);
            sb2.append("%t");
            sb2.append(cB);
            zzyy.b(sb, obj, sb2.toString());
            return;
        }
        StringBuilder sb3 = new StringBuilder("%");
        zzza zzzaVar = this.f30343b;
        zzzaVar.d(sb3);
        sb3.append(true != zzzaVar.c() ? 't' : TextParser.TextInstruction);
        sb3.append(zzabfVar.b());
        sb.append(String.format(zzzh.f31116a, sb3.toString(), obj));
    }
}
