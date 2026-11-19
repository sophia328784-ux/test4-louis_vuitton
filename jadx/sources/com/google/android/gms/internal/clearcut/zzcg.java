package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.gms.internal.clearcut.zzcg.zza;
import defpackage.az;
import defpackage.n00;
import defpackage.r81;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcg<MessageType extends zzcg<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzas<MessageType, BuilderType> {
    private static Map<Object, zzcg<?, ?>> zzjr = new ConcurrentHashMap();
    protected zzey zzjp = zzey.f29737e;
    private int zzjq = -1;

    public static abstract class zza<MessageType extends zzcg<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzat<MessageType, BuilderType> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final zzcg f29674b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public zzcg f29675c;
        public boolean d = false;

        public zza(zzcg zzcgVar) {
            this.f29674b = zzcgVar;
            this.f29675c = (zzcg) zzcgVar.e(4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzat
        public final /* synthetic */ Object clone() {
            zza zzaVar = (zza) this.f29674b.e(5);
            zzaVar.f(h());
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.clearcut.zzat
        /* JADX INFO: renamed from: e */
        public final /* synthetic */ zza clone() {
            return (zza) clone();
        }

        public final void f(zzcg zzcgVar) {
            g();
            zzcg zzcgVar2 = this.f29675c;
            zzea zzeaVar = zzea.f29704c;
            zzeaVar.getClass();
            zzeaVar.a(zzcgVar2.getClass()).f(zzcgVar2, zzcgVar);
        }

        public final void g() {
            if (this.d) {
                zzcg zzcgVar = (zzcg) this.f29675c.e(4);
                zzcg zzcgVar2 = this.f29675c;
                zzea zzeaVar = zzea.f29704c;
                zzeaVar.getClass();
                zzeaVar.a(zzcgVar.getClass()).f(zzcgVar, zzcgVar2);
                this.f29675c = zzcgVar;
                this.d = false;
            }
        }

        public final zzcg h() {
            boolean z = this.d;
            zzcg zzcgVar = this.f29675c;
            if (z) {
                return zzcgVar;
            }
            zzea zzeaVar = zzea.f29704c;
            zzeaVar.getClass();
            zzeaVar.a(zzcgVar.getClass()).a(zzcgVar);
            this.d = true;
            return this.f29675c;
        }

        @Override // com.google.android.gms.internal.clearcut.zzdp
        public final zzcg m() {
            zzcg zzcgVarH = h();
            boolean zE = true;
            byte bByteValue = ((Byte) zzcgVarH.e(1)).byteValue();
            if (bByteValue != 1) {
                if (bByteValue == 0) {
                    zE = false;
                } else {
                    zzea zzeaVar = zzea.f29704c;
                    zzeaVar.getClass();
                    zE = zzeaVar.a(zzcgVarH.getClass()).e(zzcgVarH);
                    zzcgVarH.e(2);
                }
            }
            if (zE) {
                return zzcgVarH;
            }
            throw new zzew(zzcgVarH);
        }
    }

    public static class zzb<T extends zzcg<T, ?>> extends zzau<T> {
        public zzb(T t) {
        }
    }

    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzcg<MessageType, BuilderType> implements zzdq {
        protected zzby<Object> zzjv = zzby.f29665c;
    }

    public static final enum zzg {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f29676a = {1, 2, 3, 4, 5, 6, 7};
    }

    public static Object f(Method method, zzcg zzcgVar, Object... objArr) {
        Throwable e2;
        String str;
        try {
            return method.invoke(zzcgVar, objArr);
        } catch (IllegalAccessException e3) {
            e2 = e3;
            str = "Couldn't use Java reflection to implement protocol message reflection.";
            r81.g(str, e2);
            return null;
        } catch (InvocationTargetException e4) {
            e2 = e4.getCause();
            if (e2 instanceof RuntimeException) {
                throw ((RuntimeException) e2);
            }
            if (e2 instanceof Error) {
                throw ((Error) e2);
            }
            str = "Unexpected exception thrown by generated accessor method.";
            r81.g(str, e2);
            return null;
        }
    }

    public static void g(Class cls, zzcg zzcgVar) {
        zzjr.put(cls, zzcgVar);
    }

    public static zzcg h(Class cls) {
        zzcg<?, ?> zzcgVar = zzjr.get(cls);
        if (zzcgVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzcgVar = zzjr.get(cls);
            } catch (ClassNotFoundException e2) {
                az.s("Class initialization cannot fail.", e2);
                return null;
            }
        }
        if (zzcgVar != null) {
            return zzcgVar;
        }
        String name = cls.getName();
        throw new IllegalStateException(name.length() != 0 ? "Unable to get default instance for: ".concat(name) : new String("Unable to get default instance for: "));
    }

    @Override // com.google.android.gms.internal.clearcut.zzdq
    public final boolean a() {
        byte bByteValue = ((Byte) e(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        zzea zzeaVar = zzea.f29704c;
        zzeaVar.getClass();
        boolean zE = zzeaVar.a(getClass()).e(this);
        e(2);
        return zE;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdo
    public final /* synthetic */ zza b() {
        zza zzaVar = (zza) e(5);
        zzaVar.f(this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdo
    public final /* synthetic */ zza c() {
        return (zza) e(5);
    }

    @Override // com.google.android.gms.internal.clearcut.zzdq
    public final /* synthetic */ zzcg d() {
        return (zzcg) e(6);
    }

    public abstract Object e(int i2);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzcg) e(6)).getClass().isInstance(obj)) {
            return false;
        }
        zzea zzeaVar = zzea.f29704c;
        zzeaVar.getClass();
        return zzeaVar.a(getClass()).c(this, (zzcg) obj);
    }

    public final int hashCode() {
        int i2 = this.zzex;
        if (i2 != 0) {
            return i2;
        }
        zzea zzeaVar = zzea.f29704c;
        zzeaVar.getClass();
        int iD = zzeaVar.a(getClass()).d(this);
        this.zzex = iD;
        return iD;
    }

    public final String toString() {
        StringBuilder sbU = n00.u("# ", super.toString());
        zzdr.a(this, sbU, 0);
        return sbU.toString();
    }
}
