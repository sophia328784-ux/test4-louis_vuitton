package com.google.android.gms.internal.measurement;

import android.os.Build;
import dalvik.system.VMStack;
import io.jsonwebtoken.JwtParser;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaaj extends zzaad {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzaac f30304b;

    /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzaaj$1, reason: invalid class name */
    public class AnonymousClass1 extends zzaac {
    }

    abstract class zza {
    }

    static {
        try {
            Class.forName("dalvik.system.VMStack").getMethod("getStackClass2", null);
            zza.class.getName().equals(d());
        } catch (Throwable unused) {
        }
        String str = Build.FINGERPRINT;
        if (str != null) {
            "robolectric".equals(str);
        }
        f30304b = new AnonymousClass1();
    }

    public static String d() {
        try {
            return VMStack.getStackClass2().getName();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaad
    public final zzaac a() {
        return f30304b;
    }

    @Override // com.google.android.gms.internal.measurement.zzaad
    public final zzzf b() {
        zzzf zzzfVarA;
        AtomicReference atomicReference = zzaao.f30311f;
        String strReplace = "Phlogger";
        if (atomicReference.get() != null) {
            return ((zzaai) atomicReference.get()).a("Phlogger");
        }
        for (int i2 = 7; i2 >= 0; i2--) {
            char cCharAt = "Phlogger".charAt(i2);
            if (cCharAt == '$') {
                strReplace = "Phlogger".replace('$', JwtParser.SEPARATOR_CHAR);
                break;
            }
            if (cCharAt == '.') {
                break;
            }
        }
        zzaao zzaaoVar = new zzaao(strReplace);
        if (zzaao.f30309c || zzaao.d) {
            new zzaah();
            zzaaoVar.f30313b = new zzaar(zzaaoVar.f30303a);
        } else {
            if (zzaao.f30310e) {
                zzaaq zzaaqVar = zzaas.f30322h;
                zzzfVarA = new zzaaq(Level.OFF, zzaaqVar.f30317b, zzaaqVar.f30318c).a(zzaaoVar.f30303a);
            } else {
                zzzfVarA = null;
            }
            zzaaoVar.f30313b = zzzfVarA;
        }
        ConcurrentLinkedQueue concurrentLinkedQueue = zzaam.f30306a;
        concurrentLinkedQueue.offer(zzaaoVar);
        if (atomicReference.get() != null) {
            while (true) {
                zzaao zzaaoVar2 = (zzaao) concurrentLinkedQueue.poll();
                if (zzaaoVar2 == null) {
                    break;
                }
                zzaaoVar2.f30313b = ((zzaai) atomicReference.get()).a(zzaaoVar2.f30303a);
            }
            zzaao.e();
        }
        return zzaaoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaad
    public final zzaat c() {
        return zzaap.f30314b;
    }
}
