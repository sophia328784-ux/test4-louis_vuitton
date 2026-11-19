package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzadp;
import com.google.android.gms.internal.measurement.zzadu;
import defpackage.az;
import defpackage.md;
import defpackage.n00;
import defpackage.n91;
import defpackage.r81;
import defpackage.z81;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzadu<MessageType extends zzadu<MessageType, BuilderType>, BuilderType extends zzadp<MessageType, BuilderType>> extends zzacb<MessageType, BuilderType> {
    public static final /* synthetic */ int zzd = 0;
    private static final Map zze = new ConcurrentHashMap();
    private int zzb = -1;
    protected zzaga zzc = zzaga.f30470f;

    public static zzadu l(zzadu zzaduVar, byte[] bArr, zzadf zzadfVar) throws zzaeh {
        int length = bArr.length;
        if (length != 0) {
            zzadu zzaduVarO = zzaduVar.o();
            try {
                zzafp zzafpVarA = zzafl.f30448c.a(zzaduVarO.getClass());
                zzafpVarA.b(zzaduVarO, bArr, 0, length, new zzacg(zzadfVar));
                zzafpVarA.g(zzaduVarO);
                zzaduVar = zzaduVarO;
            } catch (zzaeh e2) {
                if (e2.f30416b) {
                    throw new zzaeh(e2);
                }
                throw e2;
            } catch (zzafy e3) {
                throw e3.a();
            } catch (IOException e4) {
                if (e4.getCause() instanceof zzaeh) {
                    throw ((zzaeh) e4.getCause());
                }
                throw new zzaeh(e4);
            } catch (IndexOutOfBoundsException unused) {
                n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return null;
            }
        }
        y(zzaduVar);
        return zzaduVar;
    }

    public static zzadu u(Class cls) {
        Map map = zze;
        zzadu zzaduVar = (zzadu) map.get(cls);
        if (zzaduVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzaduVar = (zzadu) map.get(cls);
            } catch (ClassNotFoundException e2) {
                az.s("Class initialization cannot fail.", e2);
                return null;
            }
        }
        if (zzaduVar != null) {
            return zzaduVar;
        }
        zzadu zzaduVar2 = (zzadu) ((zzadu) zzagg.d(cls)).z(6);
        if (zzaduVar2 != null) {
            map.put(cls, zzaduVar2);
            return zzaduVar2;
        }
        r81.b();
        return null;
    }

    public static void v(Class cls, zzadu zzaduVar) {
        zzaduVar.n();
        zze.put(cls, zzaduVar);
    }

    public static Object w(Method method, zzadu zzaduVar, Object... objArr) {
        try {
            return method.invoke(zzaduVar, objArr);
        } catch (IllegalAccessException e2) {
            r81.g("Couldn't use Java reflection to implement protocol message reflection.", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            r81.g("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static final boolean x(zzadu zzaduVar, boolean z) {
        byte bByteValue = ((Byte) zzaduVar.z(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zF = zzafl.f30448c.a(zzaduVar.getClass()).f(zzaduVar);
        if (z) {
            zzaduVar.z(2);
        }
        return zF;
    }

    public static void y(zzadu zzaduVar) throws zzaeh {
        if (zzaduVar != null && !x(zzaduVar, true)) {
            throw new zzafy(zzaduVar).a();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafd
    public final /* synthetic */ zzadu a() {
        return (zzadu) z(6);
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final /* synthetic */ zzafb b() {
        return (zzadp) z(5);
    }

    @Override // com.google.android.gms.internal.measurement.zzafd
    public final boolean c() {
        return x(this, true);
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final int e() {
        if (m()) {
            int iE = zzafl.f30448c.a(getClass()).e(this);
            if (iE >= 0) {
                return iE;
            }
            md.k(z81.f(String.valueOf(iE).length() + 42, iE, "serialized size must be non-negative, was "));
            return 0;
        }
        int i2 = this.zzb & Integer.MAX_VALUE;
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        int iE2 = zzafl.f30448c.a(getClass()).e(this);
        if (iE2 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | iE2;
            return iE2;
        }
        md.k(z81.f(String.valueOf(iE2).length() + 42, iE2, "serialized size must be non-negative, was "));
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzafl.f30448c.a(getClass()).h(this, (zzadu) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final void f(zzada zzadaVar) {
        zzafp zzafpVarA = zzafl.f30448c.a(getClass());
        Object obj = zzadaVar.f30393a;
        zzafpVarA.a(this, obj != null ? (zzadb) obj : new zzadb(zzadaVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final zzafj h() {
        return (zzafj) z(7);
    }

    public final int hashCode() {
        if (m()) {
            return zzafl.f30448c.a(getClass()).c(this);
        }
        int i2 = this.zza;
        if (i2 != 0) {
            return i2;
        }
        int iC = zzafl.f30448c.a(getClass()).c(this);
        this.zza = iC;
        return iC;
    }

    @Override // com.google.android.gms.internal.measurement.zzacb
    public final int j(zzafp zzafpVar) {
        if (m()) {
            int iE = zzafpVar.e(this);
            if (iE >= 0) {
                return iE;
            }
            md.k(z81.f(String.valueOf(iE).length() + 42, iE, "serialized size must be non-negative, was "));
            return 0;
        }
        int i2 = this.zzb & Integer.MAX_VALUE;
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        int iE2 = zzafpVar.e(this);
        if (iE2 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | iE2;
            return iE2;
        }
        md.k(z81.f(String.valueOf(iE2).length() + 42, iE2, "serialized size must be non-negative, was "));
        return 0;
    }

    public final boolean m() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final void n() {
        this.zzb &= Integer.MAX_VALUE;
    }

    public final zzadu o() {
        return (zzadu) z(4);
    }

    public final void p() {
        zzafl.f30448c.a(getClass()).g(this);
        n();
    }

    public final zzadp q() {
        return (zzadp) z(5);
    }

    public final zzadp r() {
        zzadp zzadpVar = (zzadp) z(5);
        zzadpVar.w(this);
        return zzadpVar;
    }

    public final void s() {
        this.zzb = (this.zzb & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = zzafe.f30434a;
        StringBuilder sbU = n00.u("# ", string);
        zzafe.b(this, sbU, 0);
        return sbU.toString();
    }

    public abstract Object z(int i2);
}
