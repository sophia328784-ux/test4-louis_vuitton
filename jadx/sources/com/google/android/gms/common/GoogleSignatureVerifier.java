package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.common.zzad;
import com.google.android.gms.internal.common.zzah;
import com.google.android.gms.internal.common.zzal;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleSignatureVerifier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static GoogleSignatureVerifier f28969c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f28970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile String f28971b;

    public GoogleSignatureVerifier(Context context) {
        this.f28970a = context.getApplicationContext();
    }

    public static GoogleSignatureVerifier a(Context context) {
        Preconditions.h(context);
        synchronized (GoogleSignatureVerifier.class) {
            if (f28969c == null) {
                zzh zzhVar = zzo.f29366a;
                synchronized (zzo.class) {
                    try {
                        if (zzo.f29369e == null) {
                            zzo.f29369e = context.getApplicationContext();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                f28969c = new GoogleSignatureVerifier(context);
            }
        }
        return f28969c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean c(PackageInfo packageInfo, boolean z) {
        zzah zzahVarO;
        if (packageInfo != null) {
            if (z && ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName))) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
            }
            try {
                zzah zzahVar = z ? zzn.f29365c : zzn.f29364b;
                SigningInfo signingInfo = packageInfo.signingInfo;
                if (signingInfo == null || signingInfo.hasMultipleSigners() || signingInfo.getSigningCertificateHistory() == null) {
                    zzahVarO = zzah.o();
                } else {
                    zzal zzalVar = zzah.f29815c;
                    zzad zzadVar = new zzad();
                    for (Signature signature : signingInfo.getSigningCertificateHistory()) {
                        zzadVar.a(signature.toByteArray());
                    }
                    zzahVarO = zzadVar.b();
                }
                if (zzahVarO.isEmpty()) {
                    throw new IllegalArgumentException("Unable to obtain package certificate history.");
                }
                zzah zzahVarM = zzahVarO.m();
                int size = zzahVarM.size();
                int i2 = 0;
                while (i2 < size) {
                    byte[] bArr = (byte[]) zzahVarM.get(i2);
                    zzal zzalVarQ = zzahVar.listIterator(0);
                    do {
                        int i3 = i2 + 1;
                        if (!zzalVarQ.hasNext()) {
                            i2 = i3;
                        }
                    } while (!Arrays.equals(bArr, (byte[]) zzalVarQ.next()));
                    return true;
                }
            } catch (IllegalArgumentException unused) {
                if ((z ? d(packageInfo, zzn.f29363a) : d(packageInfo, zzn.f29363a[0])) == null) {
                    return false;
                }
            }
        }
        return false;
    }

    public static zzj d(PackageInfo packageInfo, zzj... zzjVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1) {
            return null;
        }
        zzk zzkVar = new zzk(packageInfo.signatures[0].toByteArray());
        for (int i2 = 0; i2 < zzjVarArr.length; i2++) {
            if (zzjVarArr[i2].equals(zzkVar)) {
                return zzjVarArr[i2];
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0145  */
    public final boolean b(int i2) {
        zzy zzyVarB;
        int length;
        ApplicationInfo applicationInfo;
        String[] packagesForUid = this.f28970a.getPackageManager().getPackagesForUid(i2);
        if (packagesForUid == null || (length = packagesForUid.length) == 0) {
            zzyVarB = zzy.b("no pkgs");
        } else {
            zzyVarB = null;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    Preconditions.h(zzyVarB);
                    break;
                }
                String str = packagesForUid[i3];
                if (str == null) {
                    zzyVarB = zzy.b("null pkg");
                } else if (str.equals(this.f28971b)) {
                    zzyVarB = zzy.f29383c;
                } else {
                    zzh zzhVar = zzo.f29366a;
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        zzo.a();
                        boolean zB = zzo.f29368c.b();
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        if (zB) {
                            zzv zzvVar = new zzv();
                            zzvVar.f29382a = str;
                            boolean zA = GooglePlayServicesUtilLight.a(this.f28970a);
                            String str2 = zzvVar.f29382a;
                            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads2 = StrictMode.allowThreadDiskReads();
                            try {
                                Preconditions.h(zzo.f29369e);
                                try {
                                    zzo.a();
                                    Preconditions.h(zzo.f29369e);
                                    try {
                                        zzr zzrVarZ1 = zzo.f29368c.Z1(new zzp(str2, zA, false, new ObjectWrapper(zzo.f29369e), false, true, false));
                                        if (zzrVarZ1.f29375b) {
                                            zzc.a(zzrVarZ1.f29377e);
                                            zzyVarB = new zzy(true, null, null);
                                        } else {
                                            String str3 = zzrVarZ1.f29376c;
                                            PackageManager.NameNotFoundException nameNotFoundException = zzz.a(zzrVarZ1.d) == 4 ? new PackageManager.NameNotFoundException() : null;
                                            if (str3 == null) {
                                                str3 = "error checking package certificate";
                                            }
                                            zzc.a(zzrVarZ1.f29377e);
                                            zzz.a(zzrVarZ1.d);
                                            zzyVarB = new zzy(false, str3, nameNotFoundException);
                                        }
                                    } catch (RemoteException e2) {
                                        zzyVarB = zzy.c("module call", e2);
                                    }
                                } catch (DynamiteModule.LoadingException e3) {
                                    zzyVarB = zzy.c("module init: ".concat(String.valueOf(e3.getMessage())), e3);
                                }
                                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads2);
                            } catch (Throwable th) {
                                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads2);
                                throw th;
                            }
                        } else {
                            try {
                                PackageInfo packageInfo = this.f28970a.getPackageManager().getPackageInfo(str, 134217792);
                                boolean zA2 = GooglePlayServicesUtilLight.a(this.f28970a);
                                if (packageInfo == null) {
                                    zzyVarB = zzy.b("null pkg");
                                } else {
                                    Signature[] signatureArr = packageInfo.signatures;
                                    if (signatureArr == null || signatureArr.length != 1) {
                                        zzyVarB = zzy.b("single cert required");
                                    } else {
                                        zzk zzkVar = new zzk(packageInfo.signatures[0].toByteArray());
                                        String str4 = packageInfo.packageName;
                                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads3 = StrictMode.allowThreadDiskReads();
                                        try {
                                            zzy zzyVarB2 = zzo.b(str4, zzkVar, zA2, false);
                                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads3);
                                            if (!zzyVarB2.f29384a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0) {
                                                zzyVarB = zzyVarB2;
                                            } else {
                                                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads4 = StrictMode.allowThreadDiskReads();
                                                try {
                                                    zzy zzyVarB3 = zzo.b(str4, zzkVar, false, true);
                                                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads4);
                                                    if (zzyVarB3.f29384a) {
                                                        zzyVarB = zzy.b("debuggable release cert app rejected");
                                                    } else {
                                                        zzyVarB = zzyVarB2;
                                                    }
                                                } catch (Throwable th2) {
                                                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads4);
                                                    throw th2;
                                                }
                                            }
                                        } catch (Throwable th3) {
                                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads3);
                                            throw th3;
                                        }
                                    }
                                }
                            } catch (PackageManager.NameNotFoundException e4) {
                                zzyVarB = zzy.c("no pkg ".concat(str), e4);
                            }
                        }
                    } catch (RemoteException | DynamiteModule.LoadingException unused) {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    } catch (Throwable th4) {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        throw th4;
                    }
                    if (zzyVarB.f29384a) {
                        this.f28971b = str;
                    }
                }
                if (zzyVarB.f29384a) {
                    break;
                }
                i3++;
            }
        }
        if (!zzyVarB.f29384a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (zzyVarB.f29385b != null) {
                zzyVarB.a();
            } else {
                zzyVarB.a();
            }
        }
        return zzyVarB.f29384a;
    }
}
