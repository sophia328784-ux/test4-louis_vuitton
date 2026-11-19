package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.ads_identifier.zzd;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import com.linkplay.medialib.ContentTree;
import java.io.IOException;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
public class AdvertisingIdClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BlockingServiceConnection f28674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzf f28675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f28676c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public zzb f28677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f28678f;
    public final long g;

    public static final class Info {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f28679a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f28680b;

        @Deprecated
        public Info(String str, boolean z) {
            this.f28679a = str;
            this.f28680b = z;
        }

        public final String toString() {
            String str = this.f28679a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(this.f28680b);
            return sb.toString();
        }
    }

    public AdvertisingIdClient(Context context, long j2, boolean z, boolean z2) {
        Context applicationContext;
        this.d = new Object();
        Preconditions.h(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f28678f = context;
        this.f28676c = false;
        this.g = j2;
    }

    public static Info a(Context context) {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, true, false);
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.c();
            Info infoE = advertisingIdClient.e();
            advertisingIdClient.d(infoE, SystemClock.elapsedRealtime() - jElapsedRealtime, null);
            advertisingIdClient.b();
            return infoE;
        } catch (Throwable th) {
            try {
                advertisingIdClient.d(null, -1L, th);
                throw th;
            } catch (Throwable th2) {
                advertisingIdClient.b();
                throw th2;
            }
        }
    }

    public final void b() {
        Preconditions.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f28678f == null || this.f28674a == null) {
                    return;
                }
                try {
                    if (this.f28676c) {
                        ConnectionTracker.b().c(this.f28678f, this.f28674a);
                    }
                } catch (Throwable unused) {
                }
                this.f28676c = false;
                this.f28675b = null;
                this.f28674a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        Preconditions.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f28676c) {
                    b();
                }
                Context context = this.f28678f;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int iB = GoogleApiAvailabilityLight.f28964b.b(context, 12451000);
                    if (iB != 0 && iB != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!ConnectionTracker.b().a(context, intent, blockingServiceConnection, 1)) {
                            throw new IOException("Connection failure");
                        }
                        this.f28674a = blockingServiceConnection;
                        try {
                            IBinder iBinderA = blockingServiceConnection.a();
                            int i2 = zze.f29579a;
                            IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                            this.f28675b = iInterfaceQueryLocalInterface instanceof zzf ? (zzf) iInterfaceQueryLocalInterface : new zzd(iBinderA);
                            this.f28676c = true;
                        } catch (InterruptedException unused) {
                            throw new IOException("Interrupted exception");
                        } catch (Throwable th) {
                            throw new IOException(th);
                        }
                    } catch (Throwable th2) {
                        throw new IOException(th2);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new GooglePlayServicesNotAvailableException(9);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void d(Info info, long j2, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap map = new HashMap();
            map.put("app_context", "1");
            if (info != null) {
                map.put("limit_ad_tracking", true != info.f28680b ? ContentTree.ROOT_ID : "1");
                String str = info.f28679a;
                if (str != null) {
                    map.put("ad_id_size", Integer.toString(str.length()));
                }
            }
            if (th != null) {
                map.put("error", th.getClass().getName());
            }
            map.put("tag", "AdvertisingIdClient");
            map.put("time_spent", Long.toString(j2));
            new zza(this, map).start();
        }
    }

    public final Info e() {
        Info info;
        Preconditions.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.f28676c) {
                    synchronized (this.d) {
                        zzb zzbVar = this.f28677e;
                        if (zzbVar == null || !zzbVar.zzb) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        c();
                        if (!this.f28676c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e2) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                    }
                }
                Preconditions.h(this.f28674a);
                Preconditions.h(this.f28675b);
                try {
                    info = new Info(this.f28675b.f0(), this.f28675b.h0());
                } catch (RemoteException unused) {
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.d) {
            zzb zzbVar2 = this.f28677e;
            if (zzbVar2 != null) {
                zzbVar2.zza.countDown();
                try {
                    this.f28677e.join();
                } catch (InterruptedException unused2) {
                }
            }
            long j2 = this.g;
            if (j2 > 0) {
                this.f28677e = new zzb(this, j2);
            }
        }
        return info;
    }

    public final void finalize() throws Throwable {
        b();
        super.finalize();
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }
}
