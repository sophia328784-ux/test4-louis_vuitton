package com.otaliastudios.opengl.types;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\n\u0010\u0001\"\u00020\u00002\u00020\u0000*\n\u0010\u0003\"\u00020\u00022\u00020\u0002*\n\u0010\u0005\"\u00020\u00042\u00020\u0004*\n\u0010\u0007\"\u00020\u00062\u00020\u0006*\n\u0010\t\"\u00020\b2\u00020\b¨\u0006\n"}, d2 = {"Ljava/nio/Buffer;", "Buffer", "Ljava/nio/ByteBuffer;", "ByteBuffer", "Ljava/nio/FloatBuffer;", "FloatBuffer", "Ljava/nio/IntBuffer;", "IntBuffer", "Ljava/nio/ShortBuffer;", "ShortBuffer", "library_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public abstract class BuffersJvmKt {
    public static final FloatBuffer a(int i2) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i2 * 4).order(ByteOrder.nativeOrder());
        byteBufferOrder.limit(byteBufferOrder.capacity());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferOrder.asFloatBuffer();
        floatBufferAsFloatBuffer.getClass();
        return floatBufferAsFloatBuffer;
    }
}
