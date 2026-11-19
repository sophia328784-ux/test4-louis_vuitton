package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzdp extends zzeo {
    final /* synthetic */ Context zza;
    final /* synthetic */ Bundle zzb;
    final /* synthetic */ zzez zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdp(zzez zzezVar, Context context, Bundle bundle) {
        super(zzezVar, true);
        this.zza = context;
        this.zzb = bundle;
        Objects.requireNonNull(zzezVar);
        this.zzc = zzezVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzeo
    public final void zza() {
        Boolean boolValueOf;
        try {
            Context context = this.zza;
            Preconditions.h(context);
            String strA = com.google.android.gms.measurement.internal.zzhu.a(context);
            Resources resources = context.getResources();
            if (TextUtils.isEmpty(strA)) {
                strA = com.google.android.gms.measurement.internal.zzhu.a(context);
            }
            int identifier = resources.getIdentifier("google_analytics_force_disable_updates", "bool", strA);
            zzcp zzcpVarAsInterface = null;
            if (identifier == 0) {
                boolValueOf = null;
            } else {
                try {
                    boolValueOf = Boolean.valueOf(resources.getBoolean(identifier));
                } catch (Resources.NotFoundException unused) {
                    boolValueOf = null;
                }
            }
            zzez zzezVar = this.zzc;
            boolean z = boolValueOf == null || !boolValueOf.booleanValue();
            zzezVar.getClass();
            try {
                zzcpVarAsInterface = zzco.asInterface(DynamiteModule.c(context, z ? DynamiteModule.d : DynamiteModule.f29388c, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
            } catch (DynamiteModule.LoadingException e2) {
                zzezVar.k(e2, true, false);
            }
            zzezVar.f30620f = zzcpVarAsInterface;
            if (zzezVar.f30620f == null) {
                return;
            }
            int iA = DynamiteModule.a(context, ModuleDescriptor.MODULE_ID);
            int iD = DynamiteModule.d(context, ModuleDescriptor.MODULE_ID, false);
            int iMax = Math.max(iA, iD);
            boolean z2 = Boolean.TRUE.equals(boolValueOf) || iD < iA;
            long j2 = iMax;
            zzezVar.g = j2;
            zzdb zzdbVar = new zzdb(161000L, j2, z2, this.zzb, com.google.android.gms.measurement.internal.zzhu.a(context));
            boolean z3 = zzezVar.g >= 169;
            zzcp zzcpVar = zzezVar.f30620f;
            if (z3) {
                Preconditions.h(zzcpVar);
                zzcpVar.initializeWithElapsedTime(new ObjectWrapper(context), zzdbVar, this.zzi, this.zzj);
            } else {
                Preconditions.h(zzcpVar);
                zzcpVar.initialize(new ObjectWrapper(context), zzdbVar, this.zzi);
            }
        } catch (Exception e3) {
            this.zzc.k(e3, true, false);
        }
    }
}
