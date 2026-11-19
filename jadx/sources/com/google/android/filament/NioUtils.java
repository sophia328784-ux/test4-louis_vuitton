package com.google.android.filament;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class NioUtils {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class BufferType {
        private static final /* synthetic */ BufferType[] $VALUES;
        public static final BufferType BYTE;
        public static final BufferType CHAR;
        public static final BufferType DOUBLE;
        public static final BufferType FLOAT;
        public static final BufferType INT;
        public static final BufferType LONG;
        public static final BufferType SHORT;

        static {
            BufferType bufferType = new BufferType("BYTE", 0);
            BYTE = bufferType;
            BufferType bufferType2 = new BufferType("CHAR", 1);
            CHAR = bufferType2;
            BufferType bufferType3 = new BufferType("SHORT", 2);
            SHORT = bufferType3;
            BufferType bufferType4 = new BufferType("INT", 3);
            INT = bufferType4;
            BufferType bufferType5 = new BufferType("LONG", 4);
            LONG = bufferType5;
            BufferType bufferType6 = new BufferType("FLOAT", 5);
            FLOAT = bufferType6;
            BufferType bufferType7 = new BufferType("DOUBLE", 6);
            DOUBLE = bufferType7;
            $VALUES = new BufferType[]{bufferType, bufferType2, bufferType3, bufferType4, bufferType5, bufferType6, bufferType7};
        }

        public static BufferType valueOf(String str) {
            return (BufferType) Enum.valueOf(BufferType.class, str);
        }

        public static BufferType[] values() {
            return (BufferType[]) $VALUES.clone();
        }
    }

    private NioUtils() {
    }

    public static Object getBaseArray(Buffer buffer) {
        if (buffer.hasArray()) {
            return buffer.array();
        }
        return null;
    }

    public static int getBaseArrayOffset(Buffer buffer, int i2) {
        if (!buffer.hasArray()) {
            return 0;
        }
        return (buffer.position() + buffer.arrayOffset()) << i2;
    }

    public static long getBasePointer(Buffer buffer, long j2, int i2) {
        if (j2 != 0) {
            return j2 + ((long) (buffer.position() << i2));
        }
        return 0L;
    }

    public static int getBufferType(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            return BufferType.BYTE.ordinal();
        }
        if (buffer instanceof CharBuffer) {
            return BufferType.CHAR.ordinal();
        }
        if (buffer instanceof ShortBuffer) {
            return BufferType.SHORT.ordinal();
        }
        if (buffer instanceof IntBuffer) {
            return BufferType.INT.ordinal();
        }
        if (buffer instanceof LongBuffer) {
            return BufferType.LONG.ordinal();
        }
        return buffer instanceof FloatBuffer ? BufferType.FLOAT.ordinal() : BufferType.DOUBLE.ordinal();
    }
}
