package com.google.android.gms.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.clearcut.zzaa;
import com.google.android.gms.internal.clearcut.zzge$zzv$zzb;
import com.google.android.gms.internal.clearcut.zzha;
import com.google.android.gms.internal.clearcut.zzp;
import com.google.android.gms.internal.clearcut.zzr;
import defpackage.md;
import java.util.TimeZone;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class ClearcutLogger {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Api f28876k = new Api("ClearcutLogger.API", new com.google.android.gms.clearcut.zza(), new Api.ClientKey());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f28877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28879c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f28881f;
    public final zzge$zzv$zzb g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.google.android.gms.internal.clearcut.zze f28882h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DefaultClock f28883i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzp f28884j;

    public class LogEventBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f28885a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f28886b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f28887c;
        public final zzge$zzv$zzb d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final zzha f28888e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f28889f;

        /* JADX WARN: Code duplicated, block: B:24:0x0055  */
        public LogEventBuilder(byte[] bArr) {
            this.f28885a = ClearcutLogger.this.f28880e;
            this.f28886b = ClearcutLogger.this.d;
            this.f28887c = ClearcutLogger.this.f28881f;
            this.d = ClearcutLogger.this.g;
            zzha zzhaVar = new zzha();
            this.f28888e = zzhaVar;
            this.f28889f = false;
            this.f28887c = ClearcutLogger.this.f28881f;
            Context context = ClearcutLogger.this.f28877a;
            boolean zIsUserUnlocked = zzaa.f29623b;
            if (!zIsUserUnlocked) {
                UserManager userManager = zzaa.f29622a;
                if (userManager == null) {
                    synchronized (zzaa.class) {
                        try {
                            userManager = zzaa.f29622a;
                            if (userManager == null) {
                                UserManager userManager2 = (UserManager) context.getSystemService(UserManager.class);
                                zzaa.f29622a = userManager2;
                                if (userManager2 == null) {
                                    zzaa.f29623b = true;
                                    zIsUserUnlocked = true;
                                } else {
                                    userManager = userManager2;
                                }
                            }
                            zIsUserUnlocked = userManager.isUserUnlocked();
                            zzaa.f29623b = zIsUserUnlocked;
                            if (zIsUserUnlocked) {
                                zzaa.f29622a = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else {
                    zIsUserUnlocked = userManager.isUserUnlocked();
                    zzaa.f29623b = zIsUserUnlocked;
                    if (zIsUserUnlocked) {
                        zzaa.f29622a = null;
                    }
                }
            }
            zzhaVar.t = !zIsUserUnlocked;
            ClearcutLogger.this.f28883i.getClass();
            zzhaVar.f29766c = System.currentTimeMillis();
            ClearcutLogger.this.f28883i.getClass();
            zzhaVar.d = SystemClock.elapsedRealtime();
            zzhaVar.o = TimeZone.getDefault().getOffset(zzhaVar.f29766c) / 1000;
            zzhaVar.f29771j = bArr;
        }

        public final void a() {
            if (this.f28889f) {
                md.k("do not reuse LogEventBuilder");
                return;
            }
            this.f28889f = true;
            ClearcutLogger clearcutLogger = ClearcutLogger.this;
            zzr zzrVar = new zzr(clearcutLogger.f28878b, clearcutLogger.f28879c, this.f28885a, this.f28886b, this.f28887c, null, false, this.d);
            Api api = ClearcutLogger.f28876k;
            zze zzeVar = new zze(zzrVar, this.f28888e, null, null, null, null, null, null, null, true);
            if (clearcutLogger.f28884j.b(zzeVar)) {
                clearcutLogger.f28882h.j(zzeVar);
                return;
            }
            Status status = Status.f29004f;
            Preconditions.i(status, "Result must not be null");
            new StatusPendingResult((GoogleApiClient) null).f(status);
        }
    }

    public interface zza {
    }

    public interface zzb {
        byte[] d0();
    }

    public static class zzc {
    }

    public ClearcutLogger(Context context, String str, @Nullable String str2) {
        com.google.android.gms.internal.clearcut.zze zzeVar = new com.google.android.gms.internal.clearcut.zze(context, f28876k, null, new ApiExceptionMapper());
        zzp zzpVar = new zzp(context);
        this.f28880e = -1;
        this.g = zzge$zzv$zzb.DEFAULT;
        this.f28877a = context;
        this.f28878b = context.getPackageName();
        int i2 = 0;
        try {
            i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.wtf("ClearcutLogger", "This can't happen.", e2);
        }
        this.f28879c = i2;
        this.f28880e = -1;
        this.d = str;
        this.f28881f = str2;
        this.f28882h = zzeVar;
        this.f28883i = DefaultClock.f29336a;
        new zzc();
        this.g = zzge$zzv$zzb.DEFAULT;
        this.f28884j = zzpVar;
    }
}
