package com.google.android.gms.internal.clearcut;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzfd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f29744a = Logger.getLogger(zzfd.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Unsafe f29745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f29746c;
    public static final zzd d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f29747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final boolean f29748f;
    public static final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f29749h;

    public static final class zza extends zzd {
        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void c(Object obj, long j2, double d) {
            b(j2, obj, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void d(Object obj, long j2, float f2) {
            e(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void f(Object obj, long j2, boolean z) {
            if (zzfd.f29749h) {
                zzfd.c(obj, j2, z ? (byte) 1 : (byte) 0);
            } else {
                zzfd.e(obj, j2, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final boolean i(long j2, Object obj) {
            if (zzfd.f29749h) {
                return zzfd.l(j2, obj) != 0;
            }
            return zzfd.m(j2, obj) != 0;
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final float j(long j2, Object obj) {
            return Float.intBitsToFloat(g(j2, obj));
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final double k(long j2, Object obj) {
            return Double.longBitsToDouble(h(j2, obj));
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final byte l(long j2, Object obj) {
            return zzfd.f29749h ? zzfd.l(j2, obj) : zzfd.m(j2, obj);
        }
    }

    public static final class zzb extends zzd {
        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void c(Object obj, long j2, double d) {
            b(j2, obj, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void d(Object obj, long j2, float f2) {
            e(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void f(Object obj, long j2, boolean z) {
            if (zzfd.f29749h) {
                zzfd.c(obj, j2, z ? (byte) 1 : (byte) 0);
            } else {
                zzfd.e(obj, j2, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final boolean i(long j2, Object obj) {
            if (zzfd.f29749h) {
                return zzfd.l(j2, obj) != 0;
            }
            return zzfd.m(j2, obj) != 0;
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final float j(long j2, Object obj) {
            return Float.intBitsToFloat(g(j2, obj));
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final double k(long j2, Object obj) {
            return Double.longBitsToDouble(h(j2, obj));
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final byte l(long j2, Object obj) {
            return zzfd.f29749h ? zzfd.l(j2, obj) : zzfd.m(j2, obj);
        }
    }

    public static final class zzc extends zzd {
        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void c(Object obj, long j2, double d) {
            this.f29750a.putDouble(obj, j2, d);
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void d(Object obj, long j2, float f2) {
            this.f29750a.putFloat(obj, j2, f2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final void f(Object obj, long j2, boolean z) {
            this.f29750a.putBoolean(obj, j2, z);
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final boolean i(long j2, Object obj) {
            return this.f29750a.getBoolean(obj, j2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final float j(long j2, Object obj) {
            return this.f29750a.getFloat(obj, j2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final double k(long j2, Object obj) {
            return this.f29750a.getDouble(obj, j2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzfd.zzd
        public final byte l(long j2, Object obj) {
            return this.f29750a.getByte(obj, j2);
        }
    }

    public static abstract class zzd {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Unsafe f29750a;

        public zzd(Unsafe unsafe) {
            this.f29750a = unsafe;
        }

        public final long a(Field field) {
            return this.f29750a.objectFieldOffset(field);
        }

        public final void b(long j2, Object obj, long j3) {
            this.f29750a.putLong(obj, j2, j3);
        }

        public abstract void c(Object obj, long j2, double d);

        public abstract void d(Object obj, long j2, float f2);

        public final void e(Object obj, long j2, int i2) {
            this.f29750a.putInt(obj, j2, i2);
        }

        public abstract void f(Object obj, long j2, boolean z);

        public final int g(long j2, Object obj) {
            return this.f29750a.getInt(obj, j2);
        }

        public final long h(long j2, Object obj) {
            return this.f29750a.getLong(obj, j2);
        }

        public abstract boolean i(long j2, Object obj);

        public abstract float j(long j2, Object obj);

        public abstract double k(long j2, Object obj);

        public abstract byte l(long j2, Object obj);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0024  */
    static {
        zzd zzcVar;
        boolean z;
        boolean z2;
        boolean z3;
        Field declaredField;
        zzd zzdVar;
        zzd zzdVar2;
        Unsafe unsafeF = f();
        f29745b = unsafeF;
        f29746c = zzaw.f29649a;
        Class cls = Long.TYPE;
        boolean zJ = j(cls);
        Class cls2 = Integer.TYPE;
        boolean zJ2 = j(cls2);
        if (unsafeF == null) {
            zzcVar = null;
        } else if (!zzaw.a()) {
            zzcVar = new zzc(unsafeF);
        } else if (zJ) {
            zzcVar = new zzb(unsafeF);
        } else if (zJ2) {
            zzcVar = new zza(unsafeF);
        } else {
            zzcVar = null;
        }
        d = zzcVar;
        Class cls3 = Byte.TYPE;
        String str = "putByte";
        if (unsafeF == null) {
            z = false;
        } else {
            try {
                Class<?> cls4 = unsafeF.getClass();
                cls4.getMethod("objectFieldOffset", Field.class);
                cls4.getMethod("getLong", Object.class, cls);
                if (g() == null) {
                    z = false;
                } else {
                    if (!zzaw.a()) {
                        cls4.getMethod("getByte", cls);
                        cls4.getMethod("putByte", cls, cls3);
                        cls4.getMethod("getInt", cls);
                        cls4.getMethod("putInt", cls, cls2);
                        cls4.getMethod("getLong", cls);
                        cls4.getMethod("putLong", cls, cls);
                        cls4.getMethod("copyMemory", cls, cls, cls);
                        cls4.getMethod("copyMemory", Object.class, cls, Object.class, cls, cls);
                    }
                    cls3 = cls3;
                    str = "putByte";
                    z = true;
                }
            } catch (Throwable th) {
                Logger logger = f29744a;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(th);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
                sb.append("platform method missing - proto runtime falling back to safer methods: ");
                sb.append(strValueOf);
                logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            }
        }
        f29747e = z;
        Unsafe unsafe = f29745b;
        if (unsafe == null) {
            z2 = false;
        } else {
            try {
                Class<?> cls5 = unsafe.getClass();
                cls5.getMethod("objectFieldOffset", Field.class);
                cls5.getMethod("arrayBaseOffset", Class.class);
                cls5.getMethod("arrayIndexScale", Class.class);
                cls5.getMethod("getInt", Object.class, cls);
                cls5.getMethod("putInt", Object.class, cls, cls2);
                cls5.getMethod("getLong", Object.class, cls);
                cls5.getMethod("putLong", Object.class, cls, cls);
                cls5.getMethod("getObject", Object.class, cls);
                cls5.getMethod("putObject", Object.class, cls, Object.class);
                if (!zzaw.a()) {
                    cls5.getMethod("getByte", Object.class, cls);
                    cls5.getMethod(str, Object.class, cls, cls3);
                    cls5.getMethod("getBoolean", Object.class, cls);
                    cls5.getMethod("putBoolean", Object.class, cls, Boolean.TYPE);
                    cls5.getMethod("getFloat", Object.class, cls);
                    cls5.getMethod("putFloat", Object.class, cls, Float.TYPE);
                    cls5.getMethod("getDouble", Object.class, cls);
                    cls5.getMethod("putDouble", Object.class, cls, Double.TYPE);
                }
                z2 = true;
            } catch (Throwable th2) {
                Logger logger2 = f29744a;
                Level level2 = Level.WARNING;
                String strValueOf2 = String.valueOf(th2);
                StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 71);
                sb2.append("platform method missing - proto runtime falling back to safer methods: ");
                sb2.append(strValueOf2);
                logger2.logp(level2, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb2.toString());
                z2 = false;
            }
        }
        f29748f = z2;
        g = h(byte[].class);
        h(boolean[].class);
        i(boolean[].class);
        h(int[].class);
        i(int[].class);
        h(long[].class);
        i(long[].class);
        h(float[].class);
        i(float[].class);
        h(double[].class);
        i(double[].class);
        h(Object[].class);
        i(Object[].class);
        Field fieldG = g();
        if (fieldG != null && (zzdVar2 = d) != null) {
            zzdVar2.a(fieldG);
        }
        try {
            declaredField = String.class.getDeclaredField("value");
            z3 = true;
            try {
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                declaredField = null;
            }
        } catch (Throwable unused2) {
            z3 = true;
        }
        Field field = (declaredField == null || declaredField.getType() != char[].class) ? null : declaredField;
        if (field != null && (zzdVar = d) != null) {
            zzdVar.a(field);
        }
        f29749h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN ? z3 : false;
    }

    public static byte a(long j2, byte[] bArr) {
        return d.l(g + j2, bArr);
    }

    public static void b(long j2, Object obj, Object obj2) {
        d.f29750a.putObject(obj, j2, obj2);
    }

    public static void c(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int iG = d.g(j3, obj);
        int i2 = ((~((int) j2)) & 3) << 3;
        d(obj, j3, ((255 & b2) << i2) | (iG & (~(255 << i2))));
    }

    public static void d(Object obj, long j2, int i2) {
        d.e(obj, j2, i2);
    }

    public static void e(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        d(obj, j3, ((255 & b2) << i2) | (d.g(j3, obj) & (~(255 << i2))));
    }

    public static Unsafe f() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzfe());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Field g() {
        Field declaredField;
        Field declaredField2;
        if (zzaw.a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
                declaredField2.setAccessible(true);
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField("address");
            declaredField.setAccessible(true);
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    public static int h(Class cls) {
        if (f29748f) {
            return d.f29750a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void i(Class cls) {
        if (f29748f) {
            d.f29750a.arrayIndexScale(cls);
        }
    }

    public static boolean j(Class cls) {
        if (!zzaw.a()) {
            return false;
        }
        try {
            Class cls2 = f29746c;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Object k(long j2, Object obj) {
        return d.f29750a.getObject(obj, j2);
    }

    public static byte l(long j2, Object obj) {
        return (byte) (d.g((-4) & j2, obj) >>> ((int) (((~j2) & 3) << 3)));
    }

    public static byte m(long j2, Object obj) {
        return (byte) (d.g((-4) & j2, obj) >>> ((int) ((j2 & 3) << 3)));
    }
}
