package com.google.android.gms.internal.gtm;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.tagmanager.zzq;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.fc;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcv {
    public static final Pattern o = Pattern.compile("(gtm-[a-z0-9]{1,10})\\.json", 2);
    public static volatile zzcv p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzq f30037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzde f30038c;
    public final ExecutorService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ScheduledExecutorService f30039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzbn f30040f;
    public final zzcr g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f30042i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f30043j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f30041h = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f30044k = 1;
    public final LinkedList l = new LinkedList();
    public volatile boolean m = false;
    public volatile boolean n = false;

    public zzcv(Context context, zzq zzqVar, zzde zzdeVar, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService, zzbn zzbnVar, zzcr zzcrVar) {
        Preconditions.h(context);
        Preconditions.h(zzqVar);
        this.f30036a = context;
        this.f30037b = zzqVar;
        this.f30038c = zzdeVar;
        this.d = executorService;
        this.f30039e = scheduledExecutorService;
        this.f30040f = zzbnVar;
        this.g = zzcrVar;
    }

    public static zzcv a(Context context, zzq zzqVar) {
        zzcv zzcvVar;
        Preconditions.h(context);
        zzcv zzcvVar2 = p;
        if (zzcvVar2 != null) {
            return zzcvVar2;
        }
        synchronized (zzcv.class) {
            try {
                zzcvVar = p;
                if (zzcvVar == null) {
                    zzcv zzcvVar3 = new zzcv(context, zzqVar, new zzde(context, ConnectionTracker.b()), zzdb.a(context), zzdd.f30049a, zzbn.a(), new zzcr(context));
                    p = zzcvVar3;
                    zzcvVar = zzcvVar3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcvVar;
    }

    public final void b() {
        zzao.a(2);
        System.currentTimeMillis();
        synchronized (this.f30041h) {
            if (this.m) {
                return;
            }
            try {
                Context context = this.f30036a;
                try {
                    ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context.getPackageName(), "com.google.android.gms.tagmanager.TagManagerService"), 0);
                    if (serviceInfo != null && serviceInfo.enabled) {
                        Pair pairC = c();
                        String str = (String) pairC.first;
                        String str2 = (String) pairC.second;
                        if (str == null || str2 == null) {
                            zzao.a(5);
                        } else {
                            zzao.a(4);
                            this.d.execute(new zzcl(this, str, str2, null));
                            this.f30039e.schedule(new zzcn(this), LiveTranslationEntity.DefaultSentenceTimeOut, TimeUnit.MILLISECONDS);
                            if (!this.n) {
                                zzao.a(4);
                                this.n = true;
                                try {
                                    this.f30037b.K1(new zzci(this));
                                } catch (RemoteException e2) {
                                    zzan.b(e2, this.f30036a);
                                }
                                try {
                                    this.f30037b.k2(new zzck(this));
                                } catch (RemoteException e3) {
                                    zzan.b(e3, this.f30036a);
                                }
                                this.f30036a.registerComponentCallbacks(new zzcp(this));
                                zzao.a(4);
                            }
                        }
                        this.m = true;
                        System.currentTimeMillis();
                        zzao.a(4);
                        return;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
                zzao.a(5);
                this.m = true;
            } catch (Throwable th) {
                this.m = true;
                throw th;
            }
        }
    }

    public final Pair c() {
        Pattern pattern;
        String str;
        zzcr zzcrVar = this.g;
        zzao.a(2);
        String str2 = this.f30042i;
        if (str2 != null && (str = this.f30043j) != null) {
            return Pair.create(str2, str);
        }
        try {
            String[] list = zzcrVar.f30034a.getAssets().list("containers");
            int i2 = 0;
            boolean z = false;
            while (true) {
                int length = list.length;
                pattern = o;
                if (i2 >= length) {
                    break;
                }
                Matcher matcher = pattern.matcher(list[i2]);
                if (matcher.matches()) {
                    if (z) {
                        "Extra container asset found, will not be loaded: ".concat(String.valueOf(list[i2]));
                        zzao.a(5);
                    } else {
                        this.f30042i = matcher.group(1);
                        this.f30043j = fc.h("containers", File.separator, list[i2]);
                        "Asset found for container ".concat(String.valueOf(this.f30042i));
                        zzao.a(2);
                    }
                    z = true;
                } else {
                    String str3 = list[i2];
                    pattern.pattern();
                    zzao.a(5);
                }
                i2++;
            }
            if (!z) {
                zzao.a(5);
                try {
                    String[] list2 = zzcrVar.f30034a.getAssets().list("");
                    boolean z2 = false;
                    for (int i3 = 0; i3 < list2.length; i3++) {
                        Matcher matcher2 = pattern.matcher(list2[i3]);
                        if (matcher2.matches()) {
                            if (z2) {
                                "Extra container asset found, will not be loaded: ".concat(String.valueOf(list2[i3]));
                                zzao.a(5);
                            } else {
                                String strGroup = matcher2.group(1);
                                this.f30042i = strGroup;
                                this.f30043j = list2[i3];
                                "Asset found for container ".concat(String.valueOf(strGroup));
                                zzao.a(2);
                                zzao.a(5);
                                z2 = true;
                            }
                        }
                    }
                } catch (IOException unused) {
                    zzbg.b();
                    return Pair.create(null, null);
                }
            }
            return Pair.create(this.f30042i, this.f30043j);
        } catch (IOException unused2) {
            zzbg.b();
            return Pair.create(null, null);
        }
    }
}
