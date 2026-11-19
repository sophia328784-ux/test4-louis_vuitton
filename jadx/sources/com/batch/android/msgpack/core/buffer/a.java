package com.batch.android.msgpack.core.buffer;

import defpackage.x1;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Method f23727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static Method f23728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static Method f23729c;
    static Method d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static Constructor<?> f23730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static Class<?> f23731f;
    static e g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static Method f23732h;

    /* JADX INFO: renamed from: com.batch.android.msgpack.core.buffer.a$a, reason: collision with other inner class name */
    public class C0062a implements PrivilegedAction<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteBuffer f23733a;

        public C0062a(ByteBuffer byteBuffer) {
            this.f23733a = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return a.c(this.f23733a);
        }
    }

    public class b implements PrivilegedAction<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteBuffer f23734a;

        public b(ByteBuffer byteBuffer) {
            this.f23734a = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return a.b(this.f23734a, a.f23728b);
        }
    }

    public class c implements PrivilegedAction<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteBuffer f23735a;

        public c(ByteBuffer byteBuffer) {
            this.f23735a = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return a.d(this.f23735a);
        }
    }

    public static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23736a;

        static {
            int[] iArr = new int[e.values().length];
            f23736a = iArr;
            try {
                iArr[e.ARGS_LONG_INT_REF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23736a[e.ARGS_LONG_INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23736a[e.ARGS_INT_INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23736a[e.ARGS_MB_INT_INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum e {
        ARGS_LONG_INT_REF,
        ARGS_LONG_INT,
        ARGS_INT_INT,
        ARGS_MB_INT_INT
    }

    static {
        Method declaredMethod;
        Constructor<?> declaredConstructor;
        e eVar;
        e eVar2;
        Class cls = Long.TYPE;
        Class cls2 = Integer.TYPE;
        try {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(1);
            Class<?> cls3 = byteBufferAllocateDirect.getClass();
            f23731f = cls3;
            try {
                try {
                    try {
                        declaredConstructor = cls3.getDeclaredConstructor(cls, cls2, Object.class);
                        eVar2 = e.ARGS_LONG_INT_REF;
                    } catch (NoSuchMethodException unused) {
                        Class<?> cls4 = Class.forName("java.nio.MemoryBlock");
                        declaredMethod = cls4.getDeclaredMethod("wrapFromJni", cls2, cls);
                        declaredMethod.setAccessible(true);
                        declaredConstructor = f23731f.getDeclaredConstructor(cls4, cls2, cls2);
                        eVar = e.ARGS_MB_INT_INT;
                    }
                } catch (NoSuchMethodException unused2) {
                    declaredConstructor = f23731f.getDeclaredConstructor(cls2, cls2);
                    eVar2 = e.ARGS_INT_INT;
                }
            } catch (NoSuchMethodException unused3) {
                declaredConstructor = f23731f.getDeclaredConstructor(cls, cls2);
                eVar2 = e.ARGS_LONG_INT;
            }
            eVar = eVar2;
            declaredMethod = null;
            f23730e = declaredConstructor;
            g = eVar;
            f23732h = declaredMethod;
            if (declaredConstructor == null) {
                throw new RuntimeException("Constructor of DirectByteBuffer is not found");
            }
            declaredConstructor.setAccessible(true);
            Method declaredMethod2 = f23731f.getDeclaredMethod("address", null);
            f23727a = declaredMethod2;
            declaredMethod2.setAccessible(true);
            if (MessageBuffer.javaVersion <= 8) {
                e(byteBufferAllocateDirect);
            } else {
                f(byteBufferAllocateDirect);
            }
        } catch (Exception e2) {
            x1.m(e2);
        }
    }

    private a() {
    }

    public static ByteBuffer a(long j2, int i2, int i3, ByteBuffer byteBuffer) {
        try {
            int i4 = d.f23736a[g.ordinal()];
            if (i4 == 1) {
                return (ByteBuffer) f23730e.newInstance(Long.valueOf(j2 + ((long) i2)), Integer.valueOf(i3), byteBuffer);
            }
            if (i4 == 2) {
                return (ByteBuffer) f23730e.newInstance(Long.valueOf(j2 + ((long) i2)), Integer.valueOf(i3));
            }
            if (i4 == 3) {
                return (ByteBuffer) f23730e.newInstance(Integer.valueOf(((int) j2) + i2), Integer.valueOf(i3));
            }
            if (i4 == 4) {
                return (ByteBuffer) f23730e.newInstance(f23732h.invoke(null, Long.valueOf(j2 + ((long) i2)), Integer.valueOf(i3)), Integer.valueOf(i3), 0);
            }
            throw new IllegalStateException("Unexpected value");
        } catch (Throwable th) {
            x1.m(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object b(ByteBuffer byteBuffer, Method method) {
        try {
            Method declaredMethod = method.getReturnType().getDeclaredMethod("clean", null);
            Object objInvoke = method.invoke(byteBuffer, null);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(objInvoke, null);
            return declaredMethod;
        } catch (IllegalAccessException e2) {
            return e2;
        } catch (NoSuchMethodException e3) {
            return e3;
        } catch (InvocationTargetException e4) {
            return e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object c(ByteBuffer byteBuffer) {
        try {
            Method declaredMethod = byteBuffer.getClass().getDeclaredMethod("cleaner", null);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(byteBuffer, null);
            return declaredMethod;
        } catch (IllegalAccessException e2) {
            return e2;
        } catch (NoSuchMethodException e3) {
            return e3;
        } catch (InvocationTargetException e4) {
            return e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object d(ByteBuffer byteBuffer) {
        try {
            Unsafe unsafe = MessageBuffer.unsafe;
            Method declaredMethod = unsafe.getClass().getDeclaredMethod("invokeCleaner", ByteBuffer.class);
            declaredMethod.invoke(unsafe, byteBuffer);
            return declaredMethod;
        } catch (IllegalAccessException e2) {
            return e2;
        } catch (NoSuchMethodException e3) {
            return e3;
        } catch (InvocationTargetException e4) {
            return e4;
        }
    }

    private static void e(ByteBuffer byteBuffer) {
        Object objDoPrivileged = AccessController.doPrivileged(new C0062a(byteBuffer));
        if (objDoPrivileged instanceof Throwable) {
            x1.m((Throwable) objDoPrivileged);
            return;
        }
        f23728b = (Method) objDoPrivileged;
        Object objDoPrivileged2 = AccessController.doPrivileged(new b(byteBuffer));
        if (objDoPrivileged2 instanceof Throwable) {
            x1.m((Throwable) objDoPrivileged2);
        } else {
            f23729c = (Method) objDoPrivileged2;
        }
    }

    private static void f(ByteBuffer byteBuffer) {
        Object objDoPrivileged = AccessController.doPrivileged(new c(byteBuffer));
        if (objDoPrivileged instanceof Throwable) {
            x1.m((Throwable) objDoPrivileged);
        } else {
            d = (Method) objDoPrivileged;
        }
    }

    public static boolean c(Object obj) {
        return f23731f.isInstance(obj);
    }

    public static long b(Object obj) {
        try {
            return ((Long) f23727a.invoke(obj, null)).longValue();
        } catch (IllegalAccessException e2) {
            x1.m(e2);
            return 0L;
        } catch (InvocationTargetException e3) {
            x1.m(e3);
            return 0L;
        }
    }

    public static void a(Object obj) {
        try {
            if (MessageBuffer.javaVersion <= 8) {
                f23729c.invoke(f23728b.invoke(obj, null), null);
            } else {
                d.invoke(MessageBuffer.unsafe, obj);
            }
        } catch (Throwable th) {
            x1.m(th);
        }
    }
}
