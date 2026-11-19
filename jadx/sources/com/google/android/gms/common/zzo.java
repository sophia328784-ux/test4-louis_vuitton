package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzh f29366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzi f29367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile zzad f29368c;
    public static final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Context f29369e;

    static {
        new zzd(zzj.G2("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u007f¢fú§p\u0085xb±"));
        new zze(zzj.G2("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014QÕÛ\u0004÷XçB\u0086<"));
        new zzf(zzj.G2("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
        new zzg(zzj.G2("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
        f29366a = new zzh(zzj.G2("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));
        f29367b = new zzi(zzj.G2("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));
        d = new Object();
    }

    public static void a() {
        zzad zzabVar;
        if (f29368c != null) {
            return;
        }
        Preconditions.h(f29369e);
        synchronized (d) {
            try {
                if (f29368c == null) {
                    IBinder iBinderB = DynamiteModule.c(f29369e, DynamiteModule.f29389e, "com.google.android.gms.googlecertificates").b("com.google.android.gms.common.GoogleCertificatesImpl");
                    int i2 = zzac.f29247a;
                    if (iBinderB == null) {
                        zzabVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                        zzabVar = iInterfaceQueryLocalInterface instanceof zzad ? (zzad) iInterfaceQueryLocalInterface : new zzab(iBinderB, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    }
                    f29368c = zzabVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zzy b(final String str, final zzj zzjVar, final boolean z, boolean z2) {
        try {
            a();
            Preconditions.h(f29369e);
            try {
                return f29368c.u(new zzt(str, zzjVar, z, z2), new ObjectWrapper(f29369e.getPackageManager())) ? zzy.f29383c : new zzx(new Callable() { // from class: com.google.android.gms.common.zzl
                    /* JADX WARN: Code duplicated, block: B:19:0x003c A[LOOP:1: B:17:0x0039->B:19:0x003c, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:23:0x001f A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:25:0x0028 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:26:0x0029 A[EDGE_INSN: B:26:0x0029->B:16:0x0029 BREAK  A[LOOP:0: B:10:0x001c->B:14:0x0025], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:27:0x0025 A[SYNTHETIC] */
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        int i2;
                        MessageDigest messageDigest;
                        byte[] bArrDigest;
                        char[] cArr;
                        int i3;
                        boolean z3 = z;
                        String str2 = str;
                        zzj zzjVar2 = zzjVar;
                        if (!z3) {
                            String str3 = zzo.b(str2, zzjVar2, true, false).f29384a ? "debug cert rejected" : "not allowed";
                            i2 = 0;
                            while (true) {
                                if (i2 < 2) {
                                    messageDigest = null;
                                    break;
                                }
                                try {
                                    messageDigest = MessageDigest.getInstance("SHA-256");
                                    if (messageDigest == null) {
                                        break;
                                    }
                                    i2++;
                                } catch (NoSuchAlgorithmException unused) {
                                }
                            }
                            Preconditions.h(messageDigest);
                            bArrDigest = messageDigest.digest(zzjVar2.F2());
                            int length = bArrDigest.length;
                            cArr = new char[length + length];
                            i3 = 0;
                            for (byte b2 : bArrDigest) {
                                char[] cArr2 = Hex.f29341b;
                                cArr[i3] = cArr2[(b2 & 255) >>> 4];
                                cArr[i3 + 1] = cArr2[b2 & 15];
                                i3 += 2;
                            }
                            return str3 + ": pkg=" + str2 + ", sha256=" + new String(cArr) + ", atk=" + z3 + ", ver=12451000.false";
                        }
                        zzh zzhVar = zzo.f29366a;
                        i2 = 0;
                        while (true) {
                            if (i2 < 2) {
                                messageDigest = null;
                                break;
                            }
                            messageDigest = MessageDigest.getInstance("SHA-256");
                            if (messageDigest == null) {
                                break;
                                break;
                            }
                            i2++;
                        }
                        Preconditions.h(messageDigest);
                        bArrDigest = messageDigest.digest(zzjVar2.F2());
                        int length2 = bArrDigest.length;
                        cArr = new char[length2 + length2];
                        i3 = 0;
                        while (i < bArrDigest.length) {
                            char[] cArr3 = Hex.f29341b;
                            cArr[i3] = cArr3[(b2 & 255) >>> 4];
                            cArr[i3 + 1] = cArr3[b2 & 15];
                            i3 += 2;
                        }
                        return str3 + ": pkg=" + str2 + ", sha256=" + new String(cArr) + ", atk=" + z3 + ", ver=12451000.false";
                    }
                });
            } catch (RemoteException e2) {
                return zzy.c("module call", e2);
            }
        } catch (DynamiteModule.LoadingException e3) {
            return zzy.c("module init: ".concat(String.valueOf(e3.getMessage())), e3);
        }
    }
}
