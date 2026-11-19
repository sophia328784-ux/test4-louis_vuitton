package androidx.datastore.preferences.protobuf;

import defpackage.bm;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
abstract class UnsafeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f13017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f13018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MemoryAccessor f13019c;
    public static final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f13020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f13021f;
    public static final boolean g;

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.UnsafeUtil$1, reason: invalid class name */
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
        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean c(long j2, Object obj) {
            return UnsafeUtil.g ? UnsafeUtil.b(j2, obj) : UnsafeUtil.c(j2, obj);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final double d(long j2, Object obj) {
            return Double.longBitsToDouble(g(j2, obj));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final float e(long j2, Object obj) {
            return Float.intBitsToFloat(f(j2, obj));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void j(Object obj, long j2, boolean z) {
            if (UnsafeUtil.g) {
                UnsafeUtil.k(obj, j2, z ? (byte) 1 : (byte) 0);
            } else {
                UnsafeUtil.l(obj, j2, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void k(Object obj, long j2, byte b2) {
            if (UnsafeUtil.g) {
                UnsafeUtil.k(obj, j2, b2);
            } else {
                UnsafeUtil.l(obj, j2, b2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void l(Object obj, long j2, double d) {
            o(j2, obj, Double.doubleToLongBits(d));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void m(Object obj, long j2, float f2) {
            n(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean r() {
            return false;
        }
    }

    public static final class Android64MemoryAccessor extends MemoryAccessor {
        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean c(long j2, Object obj) {
            return UnsafeUtil.g ? UnsafeUtil.b(j2, obj) : UnsafeUtil.c(j2, obj);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final double d(long j2, Object obj) {
            return Double.longBitsToDouble(g(j2, obj));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final float e(long j2, Object obj) {
            return Float.intBitsToFloat(f(j2, obj));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void j(Object obj, long j2, boolean z) {
            if (UnsafeUtil.g) {
                UnsafeUtil.k(obj, j2, z ? (byte) 1 : (byte) 0);
            } else {
                UnsafeUtil.l(obj, j2, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void k(Object obj, long j2, byte b2) {
            if (UnsafeUtil.g) {
                UnsafeUtil.k(obj, j2, b2);
            } else {
                UnsafeUtil.l(obj, j2, b2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void l(Object obj, long j2, double d) {
            o(j2, obj, Double.doubleToLongBits(d));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void m(Object obj, long j2, float f2) {
            n(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean r() {
            return false;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class JvmMemoryAccessor extends MemoryAccessor {
        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean c(long j2, Object obj) {
            return this.f13022a.getBoolean(obj, j2);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final double d(long j2, Object obj) {
            return this.f13022a.getDouble(obj, j2);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final float e(long j2, Object obj) {
            return this.f13022a.getFloat(obj, j2);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void j(Object obj, long j2, boolean z) {
            this.f13022a.putBoolean(obj, j2, z);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void k(Object obj, long j2, byte b2) {
            this.f13022a.putByte(obj, j2, b2);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void l(Object obj, long j2, double d) {
            this.f13022a.putDouble(obj, j2, d);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final void m(Object obj, long j2, float f2) {
            this.f13022a.putFloat(obj, j2, f2);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean q() {
            if (!super.q()) {
                return false;
            }
            try {
                Class<?> cls = this.f13022a.getClass();
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

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean r() {
            Unsafe unsafe = this.f13022a;
            if (unsafe != null) {
                try {
                    Class<?> cls = unsafe.getClass();
                    cls.getMethod("objectFieldOffset", Field.class);
                    Class cls2 = Long.TYPE;
                    cls.getMethod("getLong", Object.class, cls2);
                    if (UnsafeUtil.g() != null) {
                        try {
                            Class<?> cls3 = this.f13022a.getClass();
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
        public final Unsafe f13022a;

        public MemoryAccessor(Unsafe unsafe) {
            this.f13022a = unsafe;
        }

        public final int a(Class cls) {
            return this.f13022a.arrayBaseOffset(cls);
        }

        public final int b(Class cls) {
            return this.f13022a.arrayIndexScale(cls);
        }

        public abstract boolean c(long j2, Object obj);

        public abstract double d(long j2, Object obj);

        public abstract float e(long j2, Object obj);

        public final int f(long j2, Object obj) {
            return this.f13022a.getInt(obj, j2);
        }

        public final long g(long j2, Object obj) {
            return this.f13022a.getLong(obj, j2);
        }

        public final Object h(long j2, Object obj) {
            return this.f13022a.getObject(obj, j2);
        }

        public final long i(Field field) {
            return this.f13022a.objectFieldOffset(field);
        }

        public abstract void j(Object obj, long j2, boolean z);

        public abstract void k(Object obj, long j2, byte b2);

        public abstract void l(Object obj, long j2, double d);

        public abstract void m(Object obj, long j2, float f2);

        public final void n(Object obj, long j2, int i2) {
            this.f13022a.putInt(obj, j2, i2);
        }

        public final void o(long j2, Object obj, long j3) {
            this.f13022a.putLong(obj, j2, j3);
        }

        public final void p(long j2, Object obj, Object obj2) {
            this.f13022a.putObject(obj, j2, obj2);
        }

        public boolean q() {
            Unsafe unsafe = this.f13022a;
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

        public abstract boolean r();
    }

    static {
        Unsafe unsafeI = i();
        f13017a = unsafeI;
        f13018b = Android.f12893a;
        boolean zH = h(Long.TYPE);
        boolean zH2 = h(Integer.TYPE);
        MemoryAccessor jvmMemoryAccessor = null;
        if (unsafeI != null) {
            if (!Android.a()) {
                jvmMemoryAccessor = new JvmMemoryAccessor(unsafeI);
            } else if (zH) {
                jvmMemoryAccessor = new Android64MemoryAccessor(unsafeI);
            } else if (zH2) {
                jvmMemoryAccessor = new Android32MemoryAccessor(unsafeI);
            }
        }
        f13019c = jvmMemoryAccessor;
        d = jvmMemoryAccessor == null ? false : jvmMemoryAccessor.r();
        f13020e = jvmMemoryAccessor == null ? false : jvmMemoryAccessor.q();
        f13021f = e(byte[].class);
        e(boolean[].class);
        f(boolean[].class);
        e(int[].class);
        f(int[].class);
        e(long[].class);
        f(long[].class);
        e(float[].class);
        f(float[].class);
        e(double[].class);
        f(double[].class);
        e(Object[].class);
        f(Object[].class);
        Field fieldG = g();
        if (fieldG != null && jvmMemoryAccessor != null) {
            jvmMemoryAccessor.i(fieldG);
        }
        g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void a(Throwable th) {
        Logger.getLogger(UnsafeUtil.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    public static boolean b(long j2, Object obj) {
        return ((byte) ((f13019c.f((-4) & j2, obj) >>> ((int) (((~j2) & 3) << 3))) & 255)) != 0;
    }

    public static boolean c(long j2, Object obj) {
        return ((byte) ((f13019c.f((-4) & j2, obj) >>> ((int) ((j2 & 3) << 3))) & 255)) != 0;
    }

    public static Object d(Class cls) {
        try {
            return f13017a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            bm.i(e2);
            return null;
        }
    }

    public static int e(Class cls) {
        if (f13020e) {
            return f13019c.a(cls);
        }
        return -1;
    }

    public static void f(Class cls) {
        if (f13020e) {
            f13019c.b(cls);
        }
    }

    public static Field g() {
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

    public static boolean h(Class cls) {
        if (!Android.a()) {
            return false;
        }
        try {
            Class cls2 = f13018b;
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

    public static Unsafe i() {
        try {
            return (Unsafe) AccessController.doPrivileged(new AnonymousClass1());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void j(byte[] bArr, byte b2, long j2) {
        f13019c.k(bArr, f13021f + j2, b2);
    }

    public static void k(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int iF = f13019c.f(j3, obj);
        int i2 = ((~((int) j2)) & 3) << 3;
        m(obj, j3, ((255 & b2) << i2) | (iF & (~(255 << i2))));
    }

    public static void l(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        m(obj, j3, ((255 & b2) << i2) | (f13019c.f(j3, obj) & (~(255 << i2))));
    }

    public static void m(Object obj, long j2, int i2) {
        f13019c.n(obj, j2, i2);
    }

    public static void n(long j2, Object obj, long j3) {
        f13019c.o(j2, obj, j3);
    }

    public static void o(long j2, Object obj, Object obj2) {
        f13019c.p(j2, obj, obj2);
    }
}
