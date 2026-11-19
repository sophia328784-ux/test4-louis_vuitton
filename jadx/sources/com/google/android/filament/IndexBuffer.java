package com.google.android.filament;

import defpackage.md;
import java.nio.Buffer;
import java.nio.BufferOverflowException;

/* JADX INFO: loaded from: classes2.dex */
public class IndexBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28545a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28546a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28547b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28548a;

            public BuilderFinalizer(long j2) {
                this.f28548a = j2;
            }

            public final void finalize() {
                long j2 = this.f28548a;
                try {
                    super.finalize();
                    IndexBuffer.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    IndexBuffer.nDestroyBuilder(j2);
                }
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class IndexType {
            private static final /* synthetic */ IndexType[] $VALUES;
            public static final IndexType UINT;
            public static final IndexType USHORT;

            static {
                IndexType indexType = new IndexType("USHORT", 0);
                USHORT = indexType;
                IndexType indexType2 = new IndexType("UINT", 1);
                UINT = indexType2;
                $VALUES = new IndexType[]{indexType, indexType2};
            }

            public static IndexType valueOf(String str) {
                return (IndexType) Enum.valueOf(IndexType.class, str);
            }

            public static IndexType[] values() {
                return (IndexType[]) $VALUES.clone();
            }
        }

        public Builder() {
            long jNCreateBuilder = IndexBuffer.nCreateBuilder();
            this.f28547b = jNCreateBuilder;
            this.f28546a = new BuilderFinalizer(jNCreateBuilder);
        }

        public final IndexBuffer a(Engine engine) {
            long jNBuilderBuild = IndexBuffer.nBuilderBuild(this.f28547b, engine.getNativeObject());
            if (jNBuilderBuild == 0) {
                md.k("Couldn't create IndexBuffer");
                return null;
            }
            IndexBuffer indexBuffer = new IndexBuffer();
            indexBuffer.f28545a = jNBuilderBuild;
            return indexBuffer;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderBufferType(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nBuilderBuild(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderIndexCount(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);

    private static native int nSetBuffer(long j2, long j3, Buffer buffer, int i2, int i3, int i4, Object obj, Runnable runnable);

    public final long f() {
        long j2 = this.f28545a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed IndexBuffer");
        return 0L;
    }

    public final void g(int i2, Engine engine, Buffer buffer) {
        long jF = f();
        long nativeObject = engine.getNativeObject();
        int iRemaining = buffer.remaining();
        if (i2 == 0) {
            i2 = buffer.remaining();
        }
        if (nSetBuffer(jF, nativeObject, buffer, iRemaining, 0, i2, null, null) < 0) {
            throw new BufferOverflowException();
        }
    }
}
