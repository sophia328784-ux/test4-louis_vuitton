package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;
import com.google.android.gms.internal.vision.zzjb.zzb;
import defpackage.az;
import defpackage.n00;
import defpackage.r81;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjb<MessageType extends zzjb<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzhf<MessageType, BuilderType> {
    private static Map<Object, zzjb<?, ?>> zzd = new ConcurrentHashMap();
    protected zzlx zzb = zzlx.f31280f;
    private int zzc = -1;

    public static class zza<T extends zzjb<T, ?>> extends zzhg<T> {
        public zza(T t) {
        }
    }

    public static abstract class zzb<MessageType extends zzjb<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzhe<MessageType, BuilderType> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final zzjb f31219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public zzjb f31220c;
        public boolean d = false;

        public zzb(zzjb zzjbVar) {
            this.f31219b = zzjbVar;
            this.f31220c = (zzjb) zzjbVar.j(4);
        }

        public static void h(zzjb zzjbVar, zzjb zzjbVar2) {
            zzky zzkyVar = zzky.f31256c;
            zzkyVar.getClass();
            zzkyVar.a(zzjbVar.getClass()).f(zzjbVar, zzjbVar2);
        }

        @Override // com.google.android.gms.internal.vision.zzkn
        public final zzjb I() {
            zzjb zzjbVarJ = j();
            if (zzjbVarJ.a()) {
                return zzjbVarJ;
            }
            throw new zzlv(zzjbVarJ);
        }

        @Override // com.google.android.gms.internal.vision.zzhe
        public final /* synthetic */ Object clone() {
            zzb zzbVar = (zzb) this.f31219b.j(5);
            zzbVar.g(j());
            return zzbVar;
        }

        @Override // com.google.android.gms.internal.vision.zzhe
        /* JADX INFO: renamed from: e */
        public final /* synthetic */ zzb clone() {
            return (zzb) clone();
        }

        public final zzb f(byte[] bArr, int i2, zzio zzioVar) throws zzjk {
            if (this.d) {
                i();
                this.d = false;
            }
            try {
                zzky zzkyVar = zzky.f31256c;
                zzjb zzjbVar = this.f31220c;
                zzkyVar.getClass();
                zzkyVar.a(zzjbVar.getClass()).h(this.f31220c, bArr, 0, i2, new zzhn(zzioVar));
                return this;
            } catch (zzjk e2) {
                throw e2;
            } catch (IOException e3) {
                r81.g("Reading from byte array should not throw IOException.", e3);
                return null;
            } catch (IndexOutOfBoundsException unused) {
                throw zzjk.a();
            }
        }

        public final void g(zzjb zzjbVar) {
            if (this.d) {
                i();
                this.d = false;
            }
            h(this.f31220c, zzjbVar);
        }

        public final void i() {
            zzjb zzjbVar = (zzjb) this.f31220c.j(4);
            h(zzjbVar, this.f31220c);
            this.f31220c = zzjbVar;
        }

        public final zzjb j() {
            boolean z = this.d;
            zzjb zzjbVar = this.f31220c;
            if (z) {
                return zzjbVar;
            }
            zzky zzkyVar = zzky.f31256c;
            zzkyVar.getClass();
            zzkyVar.a(zzjbVar.getClass()).a(zzjbVar);
            this.d = true;
            return this.f31220c;
        }
    }

    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType> extends zzjb<MessageType, BuilderType> implements zzkm {
        protected zziu<Object> zzc = zziu.f31212c;

        public final zziu n() {
            zziu<Object> zziuVar = this.zzc;
            if (zziuVar.f31214b) {
                this.zzc = (zziu) zziuVar.clone();
            }
            return this.zzc;
        }
    }

    public static final enum zzg {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f31221a = {1, 2, 3, 4, 5, 6, 7};
    }

    public static zzjb i(Class cls) {
        zzjb<?, ?> zzjbVar = zzd.get(cls);
        if (zzjbVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzjbVar = zzd.get(cls);
            } catch (ClassNotFoundException e2) {
                az.s("Class initialization cannot fail.", e2);
                return null;
            }
        }
        if (zzjbVar != null) {
            return zzjbVar;
        }
        zzjb<?, ?> zzjbVar2 = (zzjb) ((zzjb) zzma.b(cls)).j(6);
        if (zzjbVar2 != null) {
            zzd.put(cls, zzjbVar2);
            return zzjbVar2;
        }
        r81.b();
        return null;
    }

    public static Object k(Method method, zzjb zzjbVar, Object... objArr) {
        try {
            return method.invoke(zzjbVar, objArr);
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

    public static void l(Class cls, zzjb zzjbVar) {
        zzd.put(cls, zzjbVar);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.vision.zzjd, com.google.android.gms.internal.vision.zzjj] */
    public static zzjj m() {
        return zzjd.f31223e;
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final int L() {
        if (this.zzc == -1) {
            zzky zzkyVar = zzky.f31256c;
            zzkyVar.getClass();
            this.zzc = zzkyVar.a(getClass()).c(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final /* synthetic */ zzb N() {
        return (zzb) j(5);
    }

    @Override // com.google.android.gms.internal.vision.zzkm
    public final /* synthetic */ zzjb O() {
        return (zzjb) j(6);
    }

    @Override // com.google.android.gms.internal.vision.zzkm
    public final boolean a() {
        byte bByteValue = ((Byte) j(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        zzky zzkyVar = zzky.f31256c;
        zzkyVar.getClass();
        boolean zB = zzkyVar.a(getClass()).b(this);
        j(2);
        return zB;
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final void c(zzii zziiVar) {
        zzky zzkyVar = zzky.f31256c;
        zzkyVar.getClass();
        zzlc zzlcVarA = zzkyVar.a(getClass());
        zzil zzilVar = zziiVar.f31199a;
        if (zzilVar == null) {
            zzilVar = new zzil(zziiVar);
        }
        zzlcVarA.d(this, zzilVar);
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final /* synthetic */ zzb d() {
        zzb zzbVar = (zzb) j(5);
        zzbVar.g(this);
        return zzbVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzky zzkyVar = zzky.f31256c;
        zzkyVar.getClass();
        return zzkyVar.a(getClass()).g(this, (zzjb) obj);
    }

    @Override // com.google.android.gms.internal.vision.zzhf
    public final void f(int i2) {
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.vision.zzhf
    public final int h() {
        return this.zzc;
    }

    public final int hashCode() {
        int i2 = this.zza;
        if (i2 != 0) {
            return i2;
        }
        zzky zzkyVar = zzky.f31256c;
        zzkyVar.getClass();
        int iE = zzkyVar.a(getClass()).e(this);
        this.zza = iE;
        return iE;
    }

    public abstract Object j(int i2);

    public final String toString() {
        StringBuilder sbU = n00.u("# ", super.toString());
        zzkp.b(this, sbU, 0);
        return sbU.toString();
    }
}
