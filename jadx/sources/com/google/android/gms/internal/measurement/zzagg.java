package com.google.android.gms.internal.measurement;

import defpackage.bm;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzagg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f30476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f30477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzagf f30478c;
    public static final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f30479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final boolean f30480f;

    static {
        boolean z;
        zzagf zzagfVar;
        Unsafe unsafeL = l();
        f30476a = unsafeL;
        int i2 = zzacf.f30358a;
        f30477b = Memory.class;
        Class cls = Long.TYPE;
        boolean zM = m(cls);
        Class cls2 = Integer.TYPE;
        boolean zM2 = m(cls2);
        zzagf zzagdVar = null;
        if (unsafeL != null) {
            if (zM) {
                zzagdVar = new zzage(unsafeL);
            } else if (zM2) {
                zzagdVar = new zzagd(unsafeL);
            }
        }
        f30478c = zzagdVar;
        if (zzagdVar != null) {
            try {
                Class<?> cls3 = zzagdVar.f30475a.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                a();
            } catch (Throwable th) {
                Logger.getLogger(zzagg.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
            }
        }
        zzagf zzagfVar2 = f30478c;
        if (zzagfVar2 == null) {
            z = false;
        } else {
            try {
                Class<?> cls4 = zzagfVar2.f30475a.getClass();
                cls4.getMethod("objectFieldOffset", Field.class);
                cls4.getMethod("arrayBaseOffset", Class.class);
                cls4.getMethod("arrayIndexScale", Class.class);
                cls4.getMethod("getInt", Object.class, cls);
                cls4.getMethod("putInt", Object.class, cls, cls2);
                cls4.getMethod("getLong", Object.class, cls);
                cls4.getMethod("putLong", Object.class, cls, cls);
                cls4.getMethod("getObject", Object.class, cls);
                cls4.getMethod("putObject", Object.class, cls, Object.class);
                z = true;
            } catch (Throwable th2) {
                Logger.getLogger(zzagg.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
                z = false;
            }
        }
        d = z;
        f30479e = p(byte[].class);
        p(boolean[].class);
        q(boolean[].class);
        p(int[].class);
        q(int[].class);
        p(long[].class);
        q(long[].class);
        p(float[].class);
        q(float[].class);
        p(double[].class);
        q(double[].class);
        p(Object[].class);
        q(Object[].class);
        Field fieldA = a();
        if (fieldA != null && (zzagfVar = f30478c) != null) {
            zzagfVar.f30475a.objectFieldOffset(fieldA);
        }
        f30480f = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static Field a() {
        Field declaredField;
        Field declaredField2;
        int i2 = zzacf.f30358a;
        try {
            declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            declaredField = null;
        }
        if (declaredField != null) {
            return declaredField;
        }
        try {
            declaredField2 = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField2 = null;
        }
        if (declaredField2 == null || declaredField2.getType() != Long.TYPE) {
            return null;
        }
        return declaredField2;
    }

    public static void b(Object obj, long j2, byte b2) {
        Unsafe unsafe = f30478c.f30475a;
        long j3 = (-4) & j2;
        int i2 = unsafe.getInt(obj, j3);
        int i3 = ((~((int) j2)) & 3) << 3;
        unsafe.putInt(obj, j3, ((255 & b2) << i3) | (i2 & (~(255 << i3))));
    }

    public static void c(Object obj, long j2, byte b2) {
        Unsafe unsafe = f30478c.f30475a;
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        unsafe.putInt(obj, j3, ((255 & b2) << i2) | (unsafe.getInt(obj, j3) & (~(255 << i2))));
    }

    public static Object d(Class cls) {
        try {
            return f30476a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            bm.i(e2);
            return null;
        }
    }

    public static int e(long j2, Object obj) {
        return f30478c.f30475a.getInt(obj, j2);
    }

    public static void f(Object obj, long j2, int i2) {
        f30478c.f30475a.putInt(obj, j2, i2);
    }

    public static long g(long j2, Object obj) {
        return f30478c.f30475a.getLong(obj, j2);
    }

    public static void h(long j2, Object obj, long j3) {
        f30478c.f30475a.putLong(obj, j2, j3);
    }

    public static Object i(long j2, Object obj) {
        return f30478c.f30475a.getObject(obj, j2);
    }

    public static void j(long j2, Object obj, Object obj2) {
        f30478c.f30475a.putObject(obj, j2, obj2);
    }

    public static void k(byte[] bArr, byte b2, long j2) {
        f30478c.a(bArr, f30479e + j2, b2);
    }

    public static Unsafe l() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzagc());
        } catch (Throwable unused) {
            unsafe = null;
        }
        if (unsafe == null) {
            return null;
        }
        try {
            unsafe.arrayBaseOffset(byte[].class);
            return unsafe;
        } catch (Exception unused2) {
            Logger.getLogger(zzagg.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "getUnsafe", "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely.");
            return null;
        }
    }

    public static boolean m(Class cls) {
        int i2 = zzacf.f30358a;
        try {
            Class cls2 = f30477b;
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

    public static /* synthetic */ boolean n(long j2, Object obj) {
        return ((byte) ((f30478c.f30475a.getInt(obj, (-4) & j2) >>> ((int) (((~j2) & 3) << 3))) & 255)) != 0;
    }

    public static /* synthetic */ boolean o(long j2, Object obj) {
        return ((byte) ((f30478c.f30475a.getInt(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3))) & 255)) != 0;
    }

    public static int p(Class cls) {
        if (d) {
            return f30478c.f30475a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void q(Class cls) {
        if (d) {
            f30478c.f30475a.arrayIndexScale(cls);
        }
    }
}
