package com.batch.android.msgpack.core.buffer;

import com.batch.android.x0.p;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.bm;
import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import defpackage.x1;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
public class MessageBuffer {
    static final int ARRAY_BYTE_BASE_OFFSET;
    private static final String BIGENDIAN_MESSAGE_BUFFER = "com.batch.android.msgpack.core.buffer.MessageBufferBE";
    private static final String DEFAULT_MESSAGE_BUFFER = "com.batch.android.msgpack.core.buffer.MessageBuffer";
    private static final String UNIVERSAL_MESSAGE_BUFFER = "com.batch.android.msgpack.core.buffer.MessageBufferU";
    static final boolean isUniversalBuffer;
    static final int javaVersion;
    private static final Constructor<?> mbArrConstructor;
    private static final Constructor<?> mbBBConstructor;
    static final Unsafe unsafe;
    protected final long address;
    protected final Object base;
    protected final ByteBuffer reference;
    protected final int size;

    /* JADX WARN: Code duplicated, block: B:61:0x0124  */
    /* JADX WARN: Code duplicated, block: B:62:0x0126  */
    /* JADX WARN: Code duplicated, block: B:64:0x012e  */
    /* JADX WARN: Code duplicated, block: B:67:0x0135  */
    /* JADX WARN: Code duplicated, block: B:78:0x013a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z;
        Unsafe unsafe2;
        Unsafe unsafe3;
        String str = BIGENDIAN_MESSAGE_BUFFER;
        Class cls = Integer.TYPE;
        javaVersion = a();
        boolean z2 = false;
        int iArrayBaseOffset = 16;
        try {
            try {
                Class.forName("sun.misc.Unsafe");
                z = true;
            } catch (Throwable th) {
                th = th;
                unsafe2 = 0;
                unsafe = unsafe2;
                ARRAY_BYTE_BASE_OFFSET = 16;
                isUniversalBuffer = z2;
                if (z2) {
                    str = UNIVERSAL_MESSAGE_BUFFER;
                } else if (ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN) {
                    str = DEFAULT_MESSAGE_BUFFER;
                }
                if (DEFAULT_MESSAGE_BUFFER.equals(str)) {
                    mbArrConstructor = null;
                    mbBBConstructor = null;
                } else {
                    try {
                        Class<?> cls2 = Class.forName(str);
                        Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(byte[].class, cls, cls);
                        declaredConstructor.setAccessible(true);
                        mbArrConstructor = declaredConstructor;
                        Constructor<?> declaredConstructor2 = cls2.getDeclaredConstructor(ByteBuffer.class);
                        declaredConstructor2.setAccessible(true);
                        mbBBConstructor = declaredConstructor2;
                    } catch (Exception e2) {
                        e2.printStackTrace(System.err);
                        x1.m(e2);
                        return;
                    }
                }
                throw th;
            }
        } catch (Exception unused) {
            z = false;
        }
        try {
            try {
                z2 = Boolean.parseBoolean(System.getProperty("msgpack.universal-buffer", "false")) || System.getProperty("java.runtime.name", "").toLowerCase(Locale.US).contains(ReferenceApiV3ConstKt.OS_NAME) || (System.getProperty("com.google.appengine.runtime.version") != null) || javaVersion < 7 || !z;
                if (z2) {
                    unsafe3 = null;
                } else {
                    Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
                    declaredField.setAccessible(true);
                    unsafe3 = (Unsafe) declaredField.get(null);
                    try {
                        if (unsafe3 == null) {
                            throw new RuntimeException("Unsafe is unavailable");
                        }
                        iArrayBaseOffset = unsafe3.arrayBaseOffset(byte[].class);
                        int iArrayIndexScale = unsafe3.arrayIndexScale(byte[].class);
                        if (iArrayIndexScale != 1) {
                            throw new IllegalStateException("Byte array index scale must be 1, but is " + iArrayIndexScale);
                        }
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace(System.err);
                        unsafe = unsafe3;
                        ARRAY_BYTE_BASE_OFFSET = 16;
                        isUniversalBuffer = true;
                        try {
                            Constructor<?> declaredConstructor3 = MessageBufferU.class.getDeclaredConstructor(byte[].class, cls, cls);
                            declaredConstructor3.setAccessible(true);
                            mbArrConstructor = declaredConstructor3;
                            Constructor<?> declaredConstructor4 = MessageBufferU.class.getDeclaredConstructor(ByteBuffer.class);
                            declaredConstructor4.setAccessible(true);
                            mbBBConstructor = declaredConstructor4;
                            return;
                        } catch (Exception e4) {
                            e4.printStackTrace(System.err);
                            x1.m(e4);
                            return;
                        }
                    }
                }
                unsafe = unsafe3;
                ARRAY_BYTE_BASE_OFFSET = iArrayBaseOffset;
                isUniversalBuffer = z2;
                if (z2) {
                    str = UNIVERSAL_MESSAGE_BUFFER;
                } else if (ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN) {
                    str = DEFAULT_MESSAGE_BUFFER;
                }
                if (DEFAULT_MESSAGE_BUFFER.equals(str)) {
                    mbArrConstructor = null;
                    mbBBConstructor = null;
                    return;
                }
                try {
                    Class<?> cls3 = Class.forName(str);
                    Constructor<?> declaredConstructor5 = cls3.getDeclaredConstructor(byte[].class, cls, cls);
                    declaredConstructor5.setAccessible(true);
                    mbArrConstructor = declaredConstructor5;
                    Constructor<?> declaredConstructor6 = cls3.getDeclaredConstructor(ByteBuffer.class);
                    declaredConstructor6.setAccessible(true);
                    mbBBConstructor = declaredConstructor6;
                } catch (Exception e5) {
                    e5.printStackTrace(System.err);
                    x1.m(e5);
                }
            } catch (Exception e6) {
                e = e6;
                unsafe3 = null;
            }
        } catch (Throwable th2) {
            th = th2;
            unsafe2 = z;
            unsafe = unsafe2;
            ARRAY_BYTE_BASE_OFFSET = 16;
            isUniversalBuffer = z2;
            if (z2) {
                str = UNIVERSAL_MESSAGE_BUFFER;
            } else if (ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN) {
                str = DEFAULT_MESSAGE_BUFFER;
            }
            if (DEFAULT_MESSAGE_BUFFER.equals(str)) {
                mbArrConstructor = null;
                mbBBConstructor = null;
            } else {
                Class<?> cls4 = Class.forName(str);
                Constructor<?> declaredConstructor7 = cls4.getDeclaredConstructor(byte[].class, cls, cls);
                declaredConstructor7.setAccessible(true);
                mbArrConstructor = declaredConstructor7;
                Constructor<?> declaredConstructor8 = cls4.getDeclaredConstructor(ByteBuffer.class);
                declaredConstructor8.setAccessible(true);
                mbBBConstructor = declaredConstructor8;
            }
            throw th;
        }
    }

    public MessageBuffer(ByteBuffer byteBuffer) {
        if (!byteBuffer.isDirect()) {
            if (!byteBuffer.hasArray()) {
                md.n("Only the array-backed ByteBuffer or DirectBuffer is supported");
                throw null;
            }
            this.base = byteBuffer.array();
            this.address = byteBuffer.position() + byteBuffer.arrayOffset() + ARRAY_BYTE_BASE_OFFSET;
            this.size = byteBuffer.remaining();
            this.reference = null;
            return;
        }
        if (isUniversalBuffer) {
            this.base = null;
            this.address = 0L;
            this.size = byteBuffer.remaining();
            this.reference = null;
            return;
        }
        this.base = null;
        this.address = a.b((Object) byteBuffer) + ((long) byteBuffer.position());
        this.size = byteBuffer.remaining();
        this.reference = byteBuffer;
    }

    private static int a() {
        String property = System.getProperty("java.specification.version", "");
        int iIndexOf = property.indexOf(46);
        if (iIndexOf == -1) {
            try {
                return Integer.parseInt(property);
            } catch (NumberFormatException e2) {
                e2.printStackTrace(System.err);
                return 6;
            }
        }
        try {
            int i2 = Integer.parseInt(property.substring(0, iIndexOf));
            return i2 > 1 ? i2 : Integer.parseInt(property.substring(iIndexOf + 1));
        } catch (NumberFormatException e3) {
            e3.printStackTrace(System.err);
            return 6;
        }
    }

    public static MessageBuffer allocate(int i2) {
        if (i2 >= 0) {
            return wrap(new byte[i2]);
        }
        md.n("size must not be negative");
        return null;
    }

    public static void releaseBuffer(MessageBuffer messageBuffer) {
        if (isUniversalBuffer || messageBuffer.hasArray()) {
            return;
        }
        if (a.c((Object) messageBuffer.reference)) {
            a.a((Object) messageBuffer.reference);
        } else {
            unsafe.freeMemory(messageBuffer.address);
        }
    }

    public static MessageBuffer wrap(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public byte[] array() {
        return (byte[]) this.base;
    }

    public int arrayOffset() {
        return ((int) this.address) - ARRAY_BYTE_BASE_OFFSET;
    }

    public void copyTo(int i2, MessageBuffer messageBuffer, int i3, int i4) {
        unsafe.copyMemory(this.base, this.address + ((long) i2), messageBuffer.base, messageBuffer.address + ((long) i3), i4);
    }

    public boolean getBoolean(int i2) {
        return unsafe.getBoolean(this.base, this.address + ((long) i2));
    }

    public byte getByte(int i2) {
        return unsafe.getByte(this.base, this.address + ((long) i2));
    }

    public void getBytes(int i2, int i3, ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < i3) {
            throw new BufferOverflowException();
        }
        byteBuffer.put(sliceAsByteBuffer(i2, i3));
    }

    public double getDouble(int i2) {
        return Double.longBitsToDouble(getLong(i2));
    }

    public float getFloat(int i2) {
        return Float.intBitsToFloat(getInt(i2));
    }

    public int getInt(int i2) {
        return Integer.reverseBytes(unsafe.getInt(this.base, this.address + ((long) i2)));
    }

    public long getLong(int i2) {
        return Long.reverseBytes(unsafe.getLong(this.base, this.address + ((long) i2)));
    }

    public short getShort(int i2) {
        return Short.reverseBytes(unsafe.getShort(this.base, this.address + ((long) i2)));
    }

    public boolean hasArray() {
        return this.base != null;
    }

    public void putBoolean(int i2, boolean z) {
        unsafe.putBoolean(this.base, this.address + ((long) i2), z);
    }

    public void putByte(int i2, byte b2) {
        unsafe.putByte(this.base, this.address + ((long) i2), b2);
    }

    public void putByteBuffer(int i2, ByteBuffer byteBuffer, int i3) {
        if (i3 > byteBuffer.remaining()) {
            ct0.c();
            return;
        }
        if (isUniversalBuffer) {
            r81.b();
            return;
        }
        if (byteBuffer.isDirect()) {
            unsafe.copyMemory((Object) null, a.b((Object) byteBuffer) + ((long) byteBuffer.position()), this.base, this.address + ((long) i2), i3);
            byteBuffer.position(byteBuffer.position() + i3);
            return;
        }
        if (byteBuffer.hasArray()) {
            unsafe.copyMemory(byteBuffer.array(), byteBuffer.position() + ARRAY_BYTE_BASE_OFFSET, this.base, this.address + ((long) i2), i3);
            byteBuffer.position(byteBuffer.position() + i3);
            return;
        }
        if (hasArray()) {
            byteBuffer.get((byte[]) this.base, i2, i3);
            return;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            unsafe.putByte(this.base, this.address + ((long) i2), byteBuffer.get());
        }
    }

    public void putBytes(int i2, byte[] bArr, int i3, int i4) {
        unsafe.copyMemory(bArr, ARRAY_BYTE_BASE_OFFSET + i3, this.base, this.address + ((long) i2), i4);
    }

    public void putDouble(int i2, double d) {
        putLong(i2, Double.doubleToRawLongBits(d));
    }

    public void putFloat(int i2, float f2) {
        putInt(i2, Float.floatToRawIntBits(f2));
    }

    public void putInt(int i2, int i3) {
        unsafe.putInt(this.base, this.address + ((long) i2), Integer.reverseBytes(i3));
    }

    public void putLong(int i2, long j2) {
        unsafe.putLong(this.base, this.address + ((long) i2), Long.reverseBytes(j2));
    }

    public void putMessageBuffer(int i2, MessageBuffer messageBuffer, int i3, int i4) {
        unsafe.copyMemory(messageBuffer.base, messageBuffer.address + ((long) i3), this.base, this.address + ((long) i2), i4);
    }

    public void putShort(int i2, short s) {
        unsafe.putShort(this.base, this.address + ((long) i2), Short.reverseBytes(s));
    }

    public int size() {
        return this.size;
    }

    public MessageBuffer slice(int i2, int i3) {
        if (i2 == 0 && i3 == size()) {
            return this;
        }
        p.a(i2 + i3 <= size());
        return new MessageBuffer(this.base, this.address + ((long) i2), i3);
    }

    public ByteBuffer sliceAsByteBuffer(int i2, int i3) {
        if (hasArray()) {
            return ByteBuffer.wrap((byte[]) this.base, (int) ((this.address - ((long) ARRAY_BYTE_BASE_OFFSET)) + ((long) i2)), i3);
        }
        if (!isUniversalBuffer) {
            return a.a(this.address, i2, i3, this.reference);
        }
        r81.b();
        return null;
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        unsafe.copyMemory(this.base, this.address, bArr, ARRAY_BYTE_BASE_OFFSET, size());
        return bArr;
    }

    public String toHexString(int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = i2; i4 < i3; i4++) {
            if (i4 != i2) {
                sb.append(" ");
            }
            sb.append(String.format("%02x", Byte.valueOf(getByte(i4))));
        }
        return sb.toString();
    }

    public static MessageBuffer wrap(byte[] bArr, int i2, int i3) {
        return a(bArr, i2, i3);
    }

    public static MessageBuffer wrap(ByteBuffer byteBuffer) {
        return a(byteBuffer);
    }

    public void getBytes(int i2, byte[] bArr, int i3, int i4) {
        unsafe.copyMemory(this.base, this.address + ((long) i2), bArr, ARRAY_BYTE_BASE_OFFSET + i3, i4);
    }

    public ByteBuffer sliceAsByteBuffer() {
        return sliceAsByteBuffer(0, size());
    }

    private static MessageBuffer a(byte[] bArr, int i2, int i3) {
        p.a(bArr);
        Constructor<?> constructor = mbArrConstructor;
        if (constructor != null) {
            return a(constructor, bArr, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        return new MessageBuffer(bArr, i2, i3);
    }

    private static MessageBuffer a(ByteBuffer byteBuffer) {
        p.a(byteBuffer);
        Constructor<?> constructor = mbBBConstructor;
        if (constructor != null) {
            return a(constructor, byteBuffer);
        }
        return new MessageBuffer(byteBuffer);
    }

    private static MessageBuffer a(Constructor<?> constructor, Object... objArr) {
        try {
            return (MessageBuffer) constructor.newInstance(objArr);
        } catch (IllegalAccessException e2) {
            bm.i(e2);
            return null;
        } catch (InstantiationException e3) {
            bm.i(e3);
            return null;
        } catch (InvocationTargetException e4) {
            if (!(e4.getCause() instanceof RuntimeException)) {
                if (!(e4.getCause() instanceof Error)) {
                    bm.i(e4.getCause());
                    return null;
                }
                throw ((Error) e4.getCause());
            }
            throw ((RuntimeException) e4.getCause());
        }
    }

    public MessageBuffer(byte[] bArr, int i2, int i3) {
        this.base = bArr;
        this.address = ARRAY_BYTE_BASE_OFFSET + i2;
        this.size = i3;
        this.reference = null;
    }

    public MessageBuffer(Object obj, long j2, int i2) {
        this.base = obj;
        this.address = j2;
        this.size = i2;
        this.reference = null;
    }
}
