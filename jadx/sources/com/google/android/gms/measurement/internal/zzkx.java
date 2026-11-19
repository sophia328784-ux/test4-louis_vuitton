package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzkx implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ Uri zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzky zze;

    public zzkx(zzky zzkyVar, boolean z, Uri uri, String str, String str2) {
        this.zza = z;
        this.zzb = uri;
        this.zzc = str;
        this.zzd = str2;
        Objects.requireNonNull(zzkyVar);
        this.zze = zzkyVar;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a7 A[Catch: RuntimeException -> 0x0085, TRY_ENTER, TryCatch #0 {RuntimeException -> 0x0085, blocks: (B:35:0x00a7, B:37:0x00b2, B:40:0x00bf, B:42:0x00c5, B:44:0x00df, B:46:0x00e8, B:48:0x00ee, B:51:0x0107, B:53:0x0116, B:52:0x010e, B:55:0x0129, B:57:0x012f, B:59:0x0135, B:61:0x013b, B:63:0x0141, B:65:0x0149, B:67:0x0151, B:69:0x0157, B:71:0x0169, B:8:0x0036, B:10:0x003c, B:12:0x0046, B:14:0x004c, B:16:0x0052, B:18:0x0058, B:20:0x0060, B:22:0x0068, B:24:0x0070, B:26:0x0078, B:30:0x008c, B:32:0x009a), top: B:77:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00b2 A[Catch: RuntimeException -> 0x0085, TryCatch #0 {RuntimeException -> 0x0085, blocks: (B:35:0x00a7, B:37:0x00b2, B:40:0x00bf, B:42:0x00c5, B:44:0x00df, B:46:0x00e8, B:48:0x00ee, B:51:0x0107, B:53:0x0116, B:52:0x010e, B:55:0x0129, B:57:0x012f, B:59:0x0135, B:61:0x013b, B:63:0x0141, B:65:0x0149, B:67:0x0151, B:69:0x0157, B:71:0x0169, B:8:0x0036, B:10:0x003c, B:12:0x0046, B:14:0x004c, B:16:0x0052, B:18:0x0058, B:20:0x0060, B:22:0x0068, B:24:0x0070, B:26:0x0078, B:30:0x008c, B:32:0x009a), top: B:77:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00bd A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:43:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ee A[Catch: RuntimeException -> 0x0085, TryCatch #0 {RuntimeException -> 0x0085, blocks: (B:35:0x00a7, B:37:0x00b2, B:40:0x00bf, B:42:0x00c5, B:44:0x00df, B:46:0x00e8, B:48:0x00ee, B:51:0x0107, B:53:0x0116, B:52:0x010e, B:55:0x0129, B:57:0x012f, B:59:0x0135, B:61:0x013b, B:63:0x0141, B:65:0x0149, B:67:0x0151, B:69:0x0157, B:71:0x0169, B:8:0x0036, B:10:0x003c, B:12:0x0046, B:14:0x004c, B:16:0x0052, B:18:0x0058, B:20:0x0060, B:22:0x0068, B:24:0x0070, B:26:0x0078, B:30:0x008c, B:32:0x009a), top: B:77:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0105 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0107 A[Catch: RuntimeException -> 0x0085, TryCatch #0 {RuntimeException -> 0x0085, blocks: (B:35:0x00a7, B:37:0x00b2, B:40:0x00bf, B:42:0x00c5, B:44:0x00df, B:46:0x00e8, B:48:0x00ee, B:51:0x0107, B:53:0x0116, B:52:0x010e, B:55:0x0129, B:57:0x012f, B:59:0x0135, B:61:0x013b, B:63:0x0141, B:65:0x0149, B:67:0x0151, B:69:0x0157, B:71:0x0169, B:8:0x0036, B:10:0x003c, B:12:0x0046, B:14:0x004c, B:16:0x0052, B:18:0x0058, B:20:0x0060, B:22:0x0068, B:24:0x0070, B:26:0x0078, B:30:0x008c, B:32:0x009a), top: B:77:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x010e A[Catch: RuntimeException -> 0x0085, TryCatch #0 {RuntimeException -> 0x0085, blocks: (B:35:0x00a7, B:37:0x00b2, B:40:0x00bf, B:42:0x00c5, B:44:0x00df, B:46:0x00e8, B:48:0x00ee, B:51:0x0107, B:53:0x0116, B:52:0x010e, B:55:0x0129, B:57:0x012f, B:59:0x0135, B:61:0x013b, B:63:0x0141, B:65:0x0149, B:67:0x0151, B:69:0x0157, B:71:0x0169, B:8:0x0036, B:10:0x003c, B:12:0x0046, B:14:0x004c, B:16:0x0052, B:18:0x0058, B:20:0x0060, B:22:0x0068, B:24:0x0070, B:26:0x0078, B:30:0x008c, B:32:0x009a), top: B:77:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0129 A[Catch: RuntimeException -> 0x0085, TryCatch #0 {RuntimeException -> 0x0085, blocks: (B:35:0x00a7, B:37:0x00b2, B:40:0x00bf, B:42:0x00c5, B:44:0x00df, B:46:0x00e8, B:48:0x00ee, B:51:0x0107, B:53:0x0116, B:52:0x010e, B:55:0x0129, B:57:0x012f, B:59:0x0135, B:61:0x013b, B:63:0x0141, B:65:0x0149, B:67:0x0151, B:69:0x0157, B:71:0x0169, B:8:0x0036, B:10:0x003c, B:12:0x0046, B:14:0x004c, B:16:0x0052, B:18:0x0058, B:20:0x0060, B:22:0x0068, B:24:0x0070, B:26:0x0078, B:30:0x008c, B:32:0x009a), top: B:77:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x012f A[Catch: RuntimeException -> 0x0085, TryCatch #0 {RuntimeException -> 0x0085, blocks: (B:35:0x00a7, B:37:0x00b2, B:40:0x00bf, B:42:0x00c5, B:44:0x00df, B:46:0x00e8, B:48:0x00ee, B:51:0x0107, B:53:0x0116, B:52:0x010e, B:55:0x0129, B:57:0x012f, B:59:0x0135, B:61:0x013b, B:63:0x0141, B:65:0x0149, B:67:0x0151, B:69:0x0157, B:71:0x0169, B:8:0x0036, B:10:0x003c, B:12:0x0046, B:14:0x004c, B:16:0x0052, B:18:0x0058, B:20:0x0060, B:22:0x0068, B:24:0x0070, B:26:0x0078, B:30:0x008c, B:32:0x009a), top: B:77:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:80:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        zzgu zzguVar;
        Bundle bundleH0;
        String str;
        zzgu zzguVar2;
        zzgs zzgsVar;
        Bundle bundleH1;
        zzky zzkyVar = this.zze;
        zzlj zzljVar = zzkyVar.f31880b;
        zzljVar.g();
        zzic zzicVar = zzljVar.f31850a;
        zzx zzxVar = zzljVar.q;
        String str2 = this.zzd;
        Uri uri = this.zzb;
        try {
            zzpp zzppVar = zzicVar.f31844i;
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.k(zzppVar);
            String str3 = "Activity created with data 'referrer' without required params";
            if (!TextUtils.isEmpty(str2)) {
                try {
                    if (!str2.contains("gclid")) {
                        zzguVar = zzguVar3;
                        if (!str2.contains("gbraid") && !str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium") && !str2.contains("utm_id") && !str2.contains("dclid") && !str2.contains("srsltid") && !str2.contains("sfmc_id")) {
                            zzgu zzguVar4 = zzppVar.f31850a.f31842f;
                            zzic.m(zzguVar4);
                            zzguVar4.m.a("Activity created with data 'referrer' without required params");
                        }
                        str = this.zzc;
                        if (this.zza) {
                            zzpp zzppVar2 = zzicVar.f31844i;
                            zzic.k(zzppVar2);
                            bundleH1 = zzppVar2.h0(uri);
                            if (bundleH1 != null) {
                                bundleH1.putString("_cis", "intent");
                                if (bundleH1.containsKey("gclid") && bundleH0 != null && bundleH0.containsKey("gclid")) {
                                    bundleH1.putString("_cer", "gclid=" + bundleH0.getString("gclid"));
                                }
                                zzljVar.n(str, "_cmp", bundleH1);
                                zzxVar.a(str, bundleH1);
                            } else {
                                str3 = "Activity created with data 'referrer' without required params";
                            }
                        } else {
                            str3 = "Activity created with data 'referrer' without required params";
                        }
                        if (TextUtils.isEmpty(str2)) {
                        }
                        zzic.m(zzguVar);
                        zzguVar2 = zzguVar;
                        zzgsVar = zzguVar2.m;
                        zzgsVar.b(str2, "Activity created with referrer");
                        if (zzicVar.d.r(null, zzfy.G0)) {
                            if (bundleH0 != null) {
                                zzljVar.n(str, "_cmp", bundleH0);
                                zzxVar.a(str, bundleH0);
                            } else {
                                zzic.m(zzguVar2);
                                zzgsVar.b(str2, "Referrer does not contain valid parameters");
                            }
                            zzicVar.f31846k.getClass();
                            zzljVar.q("auto", "_ldl", null, true, System.currentTimeMillis());
                        }
                        if (str2.contains("gclid") || !(str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium") || str2.contains("utm_term") || str2.contains("utm_content"))) {
                            zzic.m(zzguVar2);
                            zzgsVar.a(str3);
                            return;
                        } else {
                            if (TextUtils.isEmpty(str2)) {
                                return;
                            }
                            zzicVar.f31846k.getClass();
                            zzljVar.q("auto", "_ldl", str2, true, System.currentTimeMillis());
                            return;
                        }
                    }
                    zzguVar = zzguVar3;
                    bundleH0 = zzppVar.h0(Uri.parse("https://google.com/search?".concat(str2)));
                    if (bundleH0 != null) {
                        bundleH0.putString("_cis", Payload.RFR);
                    }
                    str = this.zzc;
                    if (this.zza) {
                        zzpp zzppVar3 = zzicVar.f31844i;
                        zzic.k(zzppVar3);
                        bundleH1 = zzppVar3.h0(uri);
                        if (bundleH1 != null) {
                            bundleH1.putString("_cis", "intent");
                            if (bundleH1.containsKey("gclid")) {
                            }
                            zzljVar.n(str, "_cmp", bundleH1);
                            zzxVar.a(str, bundleH1);
                        } else {
                            str3 = "Activity created with data 'referrer' without required params";
                        }
                    } else {
                        str3 = "Activity created with data 'referrer' without required params";
                    }
                    if (TextUtils.isEmpty(str2)) {
                        zzic.m(zzguVar);
                        zzguVar2 = zzguVar;
                        zzgsVar = zzguVar2.m;
                        zzgsVar.b(str2, "Activity created with referrer");
                        if (zzicVar.d.r(null, zzfy.G0)) {
                            if (str2.contains("gclid")) {
                            }
                            zzic.m(zzguVar2);
                            zzgsVar.a(str3);
                            return;
                        }
                        if (bundleH0 != null) {
                            zzljVar.n(str, "_cmp", bundleH0);
                            zzxVar.a(str, bundleH0);
                        } else {
                            zzic.m(zzguVar2);
                            zzgsVar.b(str2, "Referrer does not contain valid parameters");
                        }
                        zzicVar.f31846k.getClass();
                        zzljVar.q("auto", "_ldl", null, true, System.currentTimeMillis());
                    }
                } catch (RuntimeException e2) {
                    e = e2;
                    zzgu zzguVar5 = zzkyVar.f31880b.f31850a.f31842f;
                    zzic.m(zzguVar5);
                    zzguVar5.f31769f.b(e, "Throwable caught in handleReferrerForOnActivityCreated");
                    return;
                }
            }
            zzguVar = zzguVar3;
            bundleH0 = null;
            str = this.zzc;
            if (this.zza) {
                zzpp zzppVar4 = zzicVar.f31844i;
                zzic.k(zzppVar4);
                bundleH1 = zzppVar4.h0(uri);
                if (bundleH1 != null) {
                    bundleH1.putString("_cis", "intent");
                    if (bundleH1.containsKey("gclid")) {
                    }
                    zzljVar.n(str, "_cmp", bundleH1);
                    zzxVar.a(str, bundleH1);
                } else {
                    str3 = "Activity created with data 'referrer' without required params";
                }
            } else {
                str3 = "Activity created with data 'referrer' without required params";
            }
            if (TextUtils.isEmpty(str2)) {
                zzic.m(zzguVar);
                zzguVar2 = zzguVar;
                zzgsVar = zzguVar2.m;
                zzgsVar.b(str2, "Activity created with referrer");
                if (zzicVar.d.r(null, zzfy.G0)) {
                    if (str2.contains("gclid")) {
                    }
                    zzic.m(zzguVar2);
                    zzgsVar.a(str3);
                    return;
                }
                if (bundleH0 != null) {
                    zzljVar.n(str, "_cmp", bundleH0);
                    zzxVar.a(str, bundleH0);
                } else {
                    zzic.m(zzguVar2);
                    zzgsVar.b(str2, "Referrer does not contain valid parameters");
                }
                zzicVar.f31846k.getClass();
                zzljVar.q("auto", "_ldl", null, true, System.currentTimeMillis());
            }
        } catch (RuntimeException e3) {
            e = e3;
        }
    }
}
