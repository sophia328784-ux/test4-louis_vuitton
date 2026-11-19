package com.google.crypto.tink.shaded.protobuf;

import defpackage.bm;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
abstract class UnsafeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f34265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f34266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MemoryAccessor f34267c;
    public static final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f34268e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f34269f;
    public static final boolean g;

    /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.UnsafeUtil$1, reason: invalid class name */
    class AnonymousClass1 implements PrivilegedExceptionAction<Unsafe> {
        public static Unsafe a() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }

        @Override // java.security.PrivilegedExceptionAction
        public final /* bridge */ /* synthetic */ Unsafe run() {
            return a();
        }
    }

    public static final class Android32MemoryAccessor extends MemoryAccessor {
        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean c(long j2, Object obj) {
            if (UnsafeUtil.g) {
                return UnsafeUtil.h(j2, obj) != 0;
            }
            return UnsafeUtil.i(j2, obj) != 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final byte d(long j2, Object obj) {
            return UnsafeUtil.g ? UnsafeUtil.h(j2, obj) : UnsafeUtil.i(j2, obj);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final double e(long j2, Object obj) {
            return Double.longBitsToDouble(h(j2, obj));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final float f(long j2, Object obj) {
            return Float.intBitsToFloat(g(j2, obj));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void k(Object obj, long j2, boolean z) {
            if (UnsafeUtil.g) {
                UnsafeUtil.l(obj, j2, z ? (byte) 1 : (byte) 0);
            } else {
                UnsafeUtil.m(obj, j2, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void l(Object obj, long j2, byte b2) {
            if (UnsafeUtil.g) {
                UnsafeUtil.l(obj, j2, b2);
            } else {
                UnsafeUtil.m(obj, j2, b2);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void m(Object obj, long j2, double d) {
            p(j2, obj, Double.doubleToLongBits(d));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void n(Object obj, long j2, float f2) {
            o(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean s() {
            return false;
        }
    }

    public static final class Android64MemoryAccessor extends MemoryAccessor {
        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean c(long j2, Object obj) {
            if (UnsafeUtil.g) {
                return UnsafeUtil.h(j2, obj) != 0;
            }
            return UnsafeUtil.i(j2, obj) != 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final byte d(long j2, Object obj) {
            return UnsafeUtil.g ? UnsafeUtil.h(j2, obj) : UnsafeUtil.i(j2, obj);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final double e(long j2, Object obj) {
            return Double.longBitsToDouble(h(j2, obj));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final float f(long j2, Object obj) {
            return Float.intBitsToFloat(g(j2, obj));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void k(Object obj, long j2, boolean z) {
            if (UnsafeUtil.g) {
                UnsafeUtil.l(obj, j2, z ? (byte) 1 : (byte) 0);
            } else {
                UnsafeUtil.m(obj, j2, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void l(Object obj, long j2, byte b2) {
            if (UnsafeUtil.g) {
                UnsafeUtil.l(obj, j2, b2);
            } else {
                UnsafeUtil.m(obj, j2, b2);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void m(Object obj, long j2, double d) {
            p(j2, obj, Double.doubleToLongBits(d));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void n(Object obj, long j2, float f2) {
            o(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean s() {
            return false;
        }
    }

    public static final class JvmMemoryAccessor extends MemoryAccessor {
        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean c(long j2, Object obj) {
            return this.f34270a.getBoolean(obj, j2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final byte d(long j2, Object obj) {
            return this.f34270a.getByte(obj, j2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final double e(long j2, Object obj) {
            return this.f34270a.getDouble(obj, j2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final float f(long j2, Object obj) {
            return this.f34270a.getFloat(obj, j2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void k(Object obj, long j2, boolean z) {
            this.f34270a.putBoolean(obj, j2, z);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void l(Object obj, long j2, byte b2) {
            this.f34270a.putByte(obj, j2, b2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void m(Object obj, long j2, double d) {
            this.f34270a.putDouble(obj, j2, d);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final void n(Object obj, long j2, float f2) {
            this.f34270a.putFloat(obj, j2, f2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean r() {
            if (!super.r()) {
                return false;
            }
            try {
                Class<?> cls = this.f34270a.getClass();
                Class cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th) {
                UnsafeUtil.a(th);
                return false;
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean s() {
            Unsafe unsafe = this.f34270a;
            if (unsafe != null) {
                try {
                    Class<?> cls = unsafe.getClass();
                    cls.getMethod("objectFieldOffset", Field.class);
                    Class cls2 = Long.TYPE;
                    cls.getMethod("getLong", Object.class, cls2);
                    if (UnsafeUtil.e() != null) {
                        try {
                            Class<?> cls3 = this.f34270a.getClass();
                            cls3.getMethod("getByte", cls2);
                            cls3.getMethod("putByte", cls2, Byte.TYPE);
                            cls3.getMethod("getInt", cls2);
                            cls3.getMethod("putInt", cls2, Integer.TYPE);
                            cls3.getMethod("getLong", cls2);
                            cls3.getMethod("putLong", cls2, cls2);
                            cls3.getMethod("copyMemory", cls2, cls2, cls2);
                            cls3.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                            return true;
                        } catch (Throwable th) {
                            UnsafeUtil.a(th);
                            return false;
                        }
                    }
                } catch (Throwable th2) {
                    UnsafeUtil.a(th2);
                }
            }
            return false;
        }
    }

    public static abstract class MemoryAccessor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Unsafe f34270a;

        public MemoryAccessor(Unsafe unsafe) {
            this.f34270a = unsafe;
        }

        public final int a(Class cls) {
            return this.f34270a.arrayBaseOffset(cls);
        }

        public final int b(Class cls) {
            return this.f34270a.arrayIndexScale(cls);
        }

        public abstract boolean c(long j2, Object obj);

        public abstract byte d(long j2, Object obj);

        public abstract double e(long j2, Object obj);

        public abstract float f(long j2, Object obj);

        public final int g(long j2, Object obj) {
            return this.f34270a.getInt(obj, j2);
        }

        public final long h(long j2, Object obj) {
            return this.f34270a.getLong(obj, j2);
        }

        public final Object i(long j2, Object obj) {
            return this.f34270a.getObject(obj, j2);
        }

        public final long j(Field field) {
            return this.f34270a.objectFieldOffset(field);
        }

        public abstract void k(Object obj, long j2, boolean z);

        public abstract void l(Object obj, long j2, byte b2);

        public abstract void m(Object obj, long j2, double d);

        public abstract void n(Object obj, long j2, float f2);

        public final void o(Object obj, long j2, int i2) {
            this.f34270a.putInt(obj, j2, i2);
        }

        public final void p(long j2, Object obj, long j3) {
            this.f34270a.putLong(obj, j2, j3);
        }

        public final void q(long j2, Object obj, Object obj2) {
            this.f34270a.putObject(obj, j2, obj2);
        }

        public boolean r() {
            Unsafe unsafe = this.f34270a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                UnsafeUtil.a(th);
                return false;
            }
        }

        public abstract boolean s();
    }

    static {
        Unsafe unsafeJ = j();
        f34265a = unsafeJ;
        f34266b = Android.f34136a;
        boolean zF = f(Long.TYPE);
        boolean zF2 = f(Integer.TYPE);
        MemoryAccessor jvmMemoryAccessor = null;
        if (unsafeJ != null) {
            if (!Android.a()) {
                jvmMemoryAccessor = new JvmMemoryAccessor(unsafeJ);
            } else if (zF) {
                jvmMemoryAccessor = new Android64MemoryAccessor(unsafeJ);
            } else if (zF2) {
                jvmMemoryAccessor = new Android32MemoryAccessor(unsafeJ);
            }
        }
        f34267c = jvmMemoryAccessor;
        d = jvmMemoryAccessor == null ? false : jvmMemoryAccessor.s();
        f34268e = jvmMemoryAccessor == null ? false : jvmMemoryAccessor.r();
        f34269f = c(byte[].class);
        c(boolean[].class);
        d(boolean[].class);
        c(int[].class);
        d(int[].class);
        c(long[].class);
        d(long[].class);
        c(float[].class);
        d(float[].class);
        c(double[].class);
        d(double[].class);
        c(Object[].class);
        d(Object[].class);
        Field fieldE = e();
        if (fieldE != null && jvmMemoryAccessor != null) {
            jvmMemoryAccessor.j(fieldE);
        }
        g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void a(Throwable th) {
        Logger.getLogger(UnsafeUtil.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    public static Object b(Class cls) {
        try {
            return f34265a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            bm.i(e2);
            return null;
        }
    }

    public static int c(Class cls) {
        if (f34268e) {
            return f34267c.a(cls);
        }
        return -1;
    }

    public static void d(Class cls) {
        if (f34268e) {
            f34267c.b(cls);
        }
    }

    public static Field e() {
        Field declaredField;
        Field declaredField2;
        if (Android.a()) {
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

    public static boolean f(Class cls) {
        if (!Android.a()) {
            return false;
        }
        try {
            Class cls2 = f34266b;
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

    public static byte g(long j2, byte[] bArr) {
        return f34267c.d(f34269f + j2, bArr);
    }

    public static byte h(long j2, Object obj) {
        return (byte) ((f34267c.g((-4) & j2, obj) >>> ((int) (((~j2) & 3) << 3))) & 255);
    }

    public static byte i(long j2, Object obj) {
        return (byte) ((f34267c.g((-4) & j2, obj) >>> ((int) ((j2 & 3) << 3))) & 255);
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new AnonymousClass1());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void k(byte[] bArr, byte b2, long j2) {
        f34267c.l(bArr, f34269f + j2, b2);
    }

    public static void l(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int iG = f34267c.g(j3, obj);
        int i2 = ((~((int) j2)) & 3) << 3;
        n(obj, j3, ((255 & b2) << i2) | (iG & (~(255 << i2))));
    }

    public static void m(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        n(obj, j3, ((255 & b2) << i2) | (f34267c.g(j3, obj) & (~(255 << i2))));
    }

    public static void n(Object obj, long j2, int i2) {
        f34267c.o(obj, j2, i2);
    }

    public static void o(long j2, Object obj, long j3) {
        f34267c.p(j2, obj, j3);
    }

    public static void p(long j2, Object obj, Object obj2) {
        f34267c.q(j2, obj, obj2);
    }
}
