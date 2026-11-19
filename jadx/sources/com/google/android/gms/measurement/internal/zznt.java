package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zznt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f31928a;

    public zznt(Context context) {
        Preconditions.h(context);
        this.f31928a = context;
    }

    public final void a(final int i2, final Intent intent) {
        if (intent == null) {
            return;
        }
        Context context = this.f31928a;
        final zzgu zzguVar = zzic.s(context, null, null, null).f31842f;
        zzic.m(zzguVar);
        String action = intent.getAction();
        zzguVar.n.c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.measurement.internal.zzns
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public final void run() {
                    zznt zzntVar = this.zza;
                    int i3 = i2;
                    zzgu zzguVar2 = zzguVar;
                    Intent intent2 = intent;
                    Context context2 = zzntVar.f31928a;
                    zznp zznpVar = (zznp) context2;
                    if (zznpVar.e(i3)) {
                        zzguVar2.n.b(Integer.valueOf(i3), "Local AppMeasurementService processed last upload request. StartId");
                        zzgu zzguVar3 = zzic.s(context2, null, null, null).f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.n.a("Completed wakeful intent.");
                        zznpVar.a(intent2);
                    }
                }
            };
            zzpg zzpgVarC = zzpg.C(context);
            zzpgVarC.c().p(new zzno(this, zzpgVarC, runnable));
        }
    }

    public final void b(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("action");
        "onStartJob received action: ".concat(String.valueOf(string));
        boolean zEquals = Objects.equals(string, "com.google.android.gms.measurement.UPLOAD");
        Context context = this.f31928a;
        if (zEquals) {
            Preconditions.h(string);
            zzpg zzpgVarC = zzpg.C(context);
            final zzgu zzguVarB = zzpgVarC.b();
            zzae zzaeVar = zzpgVarC.l.f31840c;
            zzguVarB.n.b(string, "Local AppMeasurementJobService called. action");
            zzpgVarC.c().p(new zzno(this, zzpgVarC, new Runnable() { // from class: com.google.android.gms.measurement.internal.zznq
                @Override // java.lang.Runnable
                public final void run() {
                    zznt zzntVar = this.zza;
                    zzgu zzguVar = zzguVarB;
                    JobParameters jobParameters2 = jobParameters;
                    zzntVar.getClass();
                    zzguVar.n.a("AppMeasurementJobService processed last upload request.");
                    ((zznp) zzntVar.f31928a).b(jobParameters2);
                }
            }));
        }
        if (Objects.equals(string, "com.google.android.gms.measurement.SCION_UPLOAD")) {
            Preconditions.h(string);
            com.google.android.gms.internal.measurement.zzez.m(context, null).z(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznr
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zznt zzntVar = this.zza;
                    ((zznp) zzntVar.f31928a).b(jobParameters);
                }
            });
        }
    }
}
