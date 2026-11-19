package com.google.android.gms.internal.vision;

import defpackage.bm;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzma {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f31288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f31289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzd f31290c;
    public static final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f31291e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f31292f;
    public static final boolean g;

    public static final class zza extends zzd {
        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final byte a(long j2, Object obj) {
            return zzma.g ? zzma.o(j2, obj) : zzma.p(j2, obj);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void c(Object obj, long j2, byte b2) {
            if (zzma.g) {
                zzma.j(obj, j2, b2);
            } else {
                zzma.k(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void d(Object obj, long j2, double d) {
            b(j2, obj, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void e(Object obj, long j2, float f2) {
            f(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void g(Object obj, long j2, boolean z) {
            if (zzma.g) {
                zzma.j(obj, j2, z ? (byte) 1 : (byte) 0);
            } else {
                zzma.k(obj, j2, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final boolean h(long j2, Object obj) {
            if (zzma.g) {
                return zzma.o(j2, obj) != 0;
            }
            return zzma.p(j2, obj) != 0;
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final float i(long j2, Object obj) {
            return Float.intBitsToFloat(k(j2, obj));
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final double j(long j2, Object obj) {
            return Double.longBitsToDouble(l(j2, obj));
        }
    }

    public static final class zzb extends zzd {
        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final byte a(long j2, Object obj) {
            return this.f31293a.getByte(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void c(Object obj, long j2, byte b2) {
            this.f31293a.putByte(obj, j2, b2);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void d(Object obj, long j2, double d) {
            this.f31293a.putDouble(obj, j2, d);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void e(Object obj, long j2, float f2) {
            this.f31293a.putFloat(obj, j2, f2);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void g(Object obj, long j2, boolean z) {
            this.f31293a.putBoolean(obj, j2, z);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final boolean h(long j2, Object obj) {
            return this.f31293a.getBoolean(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final float i(long j2, Object obj) {
            return this.f31293a.getFloat(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final double j(long j2, Object obj) {
            return this.f31293a.getDouble(obj, j2);
        }
    }

    public static final class zzc extends zzd {
        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final byte a(long j2, Object obj) {
            return zzma.g ? zzma.o(j2, obj) : zzma.p(j2, obj);
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void c(Object obj, long j2, byte b2) {
            if (zzma.g) {
                zzma.j(obj, j2, b2);
            } else {
                zzma.k(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void d(Object obj, long j2, double d) {
            b(j2, obj, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void e(Object obj, long j2, float f2) {
            f(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final void g(Object obj, long j2, boolean z) {
            if (zzma.g) {
                zzma.j(obj, j2, z ? (byte) 1 : (byte) 0);
            } else {
                zzma.k(obj, j2, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final boolean h(long j2, Object obj) {
            if (zzma.g) {
                return zzma.o(j2, obj) != 0;
            }
            return zzma.p(j2, obj) != 0;
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final float i(long j2, Object obj) {
            return Float.intBitsToFloat(k(j2, obj));
        }

        @Override // com.google.android.gms.internal.vision.zzma.zzd
        public final double j(long j2, Object obj) {
            return Double.longBitsToDouble(l(j2, obj));
        }
    }

    public static abstract class zzd {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Unsafe f31293a;

        public zzd(Unsafe unsafe) {
            this.f31293a = unsafe;
        }

        public abstract byte a(long j2, Object obj);

        public final void b(long j2, Object obj, long j3) {
            this.f31293a.putLong(obj, j2, j3);
        }

        public abstract void c(Object obj, long j2, byte b2);

        public abstract void d(Object obj, long j2, double d);

        public abstract void e(Object obj, long j2, float f2);

        public final void f(Object obj, long j2, int i2) {
            this.f31293a.putInt(obj, j2, i2);
        }

        public abstract void g(Object obj, long j2, boolean z);

        public abstract boolean h(long j2, Object obj);

        public abstract float i(long j2, Object obj);

        public abstract double j(long j2, Object obj);

        public final int k(long j2, Object obj) {
            return this.f31293a.getInt(obj, j2);
        }

        public final long l(long j2, Object obj) {
            return this.f31293a.getLong(obj, j2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0105  */
    /* JADX WARN: Code duplicated, block: B:37:0x015e A[Catch: all -> 0x01ad, TRY_LEAVE, TryCatch #2 {all -> 0x01ad, blocks: (B:34:0x0109, B:37:0x015e), top: B:56:0x0109 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x022b  */
    /* JADX WARN: Code duplicated, block: B:56:0x0109 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        Class cls;
        boolean z;
        Unsafe unsafe;
        Class<?> cls2;
        boolean z2;
        Field fieldN;
        zzd zzdVar;
        Unsafe unsafeH = h();
        f31288a = unsafeH;
        f31289b = zzhi.f31180a;
        Class cls3 = Long.TYPE;
        boolean zL = l(cls3);
        Class cls4 = Integer.TYPE;
        boolean zL2 = l(cls4);
        zzd zzbVar = null;
        if (unsafeH != null) {
            if (!zzhi.a()) {
                zzbVar = new zzb(unsafeH);
            } else if (zL) {
                zzbVar = new zzc(unsafeH);
            } else if (zL2) {
                zzbVar = new zza(unsafeH);
            }
        }
        f31290c = zzbVar;
        Class cls5 = Byte.TYPE;
        String str = "putByte";
        if (unsafeH != null) {
            try {
                Class<?> cls6 = unsafeH.getClass();
                cls = Field.class;
                try {
                    cls6.getMethod("objectFieldOffset", cls);
                    cls6.getMethod("getLong", Object.class, cls3);
                    if (n() != null) {
                        if (!zzhi.a()) {
                            cls6.getMethod("getByte", cls3);
                            cls6.getMethod("putByte", cls3, cls5);
                            cls6.getMethod("getInt", cls3);
                            cls6.getMethod("putInt", cls3, cls4);
                            cls6.getMethod("getLong", cls3);
                            cls6.getMethod("putLong", cls3, cls3);
                            cls6.getMethod("copyMemory", cls3, cls3, cls3);
                            cls6.getMethod("copyMemory", Object.class, cls3, Object.class, cls3, cls3);
                        }
                        cls5 = cls5;
                        str = "putByte";
                        z = true;
                    }
                } catch (Throwable th) {
                    th = th;
                    Logger logger = Logger.getLogger(zzma.class.getName());
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(th);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
                    sb.append("platform method missing - proto runtime falling back to safer methods: ");
                    sb.append(strValueOf);
                    logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
                }
            } catch (Throwable th2) {
                th = th2;
                cls = Field.class;
            }
            d = z;
            unsafe = f31288a;
            if (unsafe == null) {
                z2 = false;
            } else {
                try {
                    cls2 = unsafe.getClass();
                    cls2.getMethod("objectFieldOffset", cls);
                    cls2.getMethod("arrayBaseOffset", Class.class);
                    cls2.getMethod("arrayIndexScale", Class.class);
                    cls2.getMethod("getInt", Object.class, cls3);
                    cls2.getMethod("putInt", Object.class, cls3, cls4);
                    cls2.getMethod("getLong", Object.class, cls3);
                    cls2.getMethod("putLong", Object.class, cls3, cls3);
                    cls2.getMethod("getObject", Object.class, cls3);
                    cls2.getMethod("putObject", Object.class, cls3, Object.class);
                    if (!zzhi.a()) {
                        cls2.getMethod("getByte", Object.class, cls3);
                        cls2.getMethod(str, Object.class, cls3, cls5);
                        cls2.getMethod("getBoolean", Object.class, cls3);
                        cls2.getMethod("putBoolean", Object.class, cls3, Boolean.TYPE);
                        cls2.getMethod("getFloat", Object.class, cls3);
                        cls2.getMethod("putFloat", Object.class, cls3, Float.TYPE);
                        cls2.getMethod("getDouble", Object.class, cls3);
                        cls2.getMethod("putDouble", Object.class, cls3, Double.TYPE);
                    }
                    z2 = true;
                } catch (Throwable th3) {
                    Logger logger2 = Logger.getLogger(zzma.class.getName());
                    Level level2 = Level.WARNING;
                    String strValueOf2 = String.valueOf(th3);
                    StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 71);
                    sb2.append("platform method missing - proto runtime falling back to safer methods: ");
                    sb2.append(strValueOf2);
                    logger2.logp(level2, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb2.toString());
                    z2 = false;
                }
            }
            f31291e = z2;
            f31292f = g(byte[].class);
            g(boolean[].class);
            i(boolean[].class);
            g(int[].class);
            i(int[].class);
            g(long[].class);
            i(long[].class);
            g(float[].class);
            i(float[].class);
            g(double[].class);
            i(double[].class);
            g(Object[].class);
            i(Object[].class);
            fieldN = n();
            if (fieldN != null && (zzdVar = f31290c) != null) {
                zzdVar.f31293a.objectFieldOffset(fieldN);
            }
            g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        }
        cls = Field.class;
        z = false;
        d = z;
        unsafe = f31288a;
        if (unsafe == null) {
            z2 = false;
        } else {
            cls2 = unsafe.getClass();
            cls2.getMethod("objectFieldOffset", cls);
            cls2.getMethod("arrayBaseOffset", Class.class);
            cls2.getMethod("arrayIndexScale", Class.class);
            cls2.getMethod("getInt", Object.class, cls3);
            cls2.getMethod("putInt", Object.class, cls3, cls4);
            cls2.getMethod("getLong", Object.class, cls3);
            cls2.getMethod("putLong", Object.class, cls3, cls3);
            cls2.getMethod("getObject", Object.class, cls3);
            cls2.getMethod("putObject", Object.class, cls3, Object.class);
            if (!zzhi.a()) {
                cls2.getMethod("getByte", Object.class, cls3);
                cls2.getMethod(str, Object.class, cls3, cls5);
                cls2.getMethod("getBoolean", Object.class, cls3);
                cls2.getMethod("putBoolean", Object.class, cls3, Boolean.TYPE);
                cls2.getMethod("getFloat", Object.class, cls3);
                cls2.getMethod("putFloat", Object.class, cls3, Float.TYPE);
                cls2.getMethod("getDouble", Object.class, cls3);
                cls2.getMethod("putDouble", Object.class, cls3, Double.TYPE);
            }
            z2 = true;
        }
        f31291e = z2;
        f31292f = g(byte[].class);
        g(boolean[].class);
        i(boolean[].class);
        g(int[].class);
        i(int[].class);
        g(long[].class);
        i(long[].class);
        g(float[].class);
        i(float[].class);
        g(double[].class);
        i(double[].class);
        g(Object[].class);
        i(Object[].class);
        fieldN = n();
        if (fieldN != null) {
            zzdVar.f31293a.objectFieldOffset(fieldN);
        }
        g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static byte a(long j2, byte[] bArr) {
        return f31290c.a(f31292f + j2, bArr);
    }

    public static Object b(Class cls) {
        try {
            return f31288a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            bm.i(e2);
            return null;
        }
    }

    public static void c(long j2, Object obj, long j3) {
        f31290c.b(j2, obj, j3);
    }

    public static void d(long j2, Object obj, Object obj2) {
        f31290c.f31293a.putObject(obj, j2, obj2);
    }

    public static void e(Object obj, long j2, int i2) {
        f31290c.f(obj, j2, i2);
    }

    public static void f(byte[] bArr, byte b2, long j2) {
        f31290c.c(bArr, f31292f + j2, b2);
    }

    public static int g(Class cls) {
        if (f31291e) {
            return f31290c.f31293a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static Unsafe h() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzmc());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void i(Class cls) {
        if (f31291e) {
            f31290c.f31293a.arrayIndexScale(cls);
        }
    }

    public static void j(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int iK = f31290c.k(j3, obj);
        int i2 = ((~((int) j2)) & 3) << 3;
        e(obj, j3, ((255 & b2) << i2) | (iK & (~(255 << i2))));
    }

    public static void k(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        e(obj, j3, ((255 & b2) << i2) | (f31290c.k(j3, obj) & (~(255 << i2))));
    }

    public static boolean l(Class cls) {
        if (!zzhi.a()) {
            return false;
        }
        try {
            Class cls2 = f31289b;
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

    public static Object m(long j2, Object obj) {
        return f31290c.f31293a.getObject(obj, j2);
    }

    public static Field n() {
        Field declaredField;
        Field declaredField2;
        if (zzhi.a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    public static byte o(long j2, Object obj) {
        return (byte) (f31290c.k((-4) & j2, obj) >>> ((int) (((~j2) & 3) << 3)));
    }

    public static byte p(long j2, Object obj) {
        return (byte) (f31290c.k((-4) & j2, obj) >>> ((int) ((j2 & 3) << 3)));
    }
}
