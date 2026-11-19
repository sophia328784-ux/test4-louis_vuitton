package com.google.android.filament;

import defpackage.md;
import java.nio.Buffer;
import java.nio.BufferOverflowException;

/* JADX INFO: loaded from: classes2.dex */
public class VertexBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28594a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AttributeType {
        private static final /* synthetic */ AttributeType[] $VALUES;
        public static final AttributeType BYTE;
        public static final AttributeType BYTE2;
        public static final AttributeType BYTE3;
        public static final AttributeType BYTE4;
        public static final AttributeType FLOAT;
        public static final AttributeType FLOAT2;
        public static final AttributeType FLOAT3;
        public static final AttributeType FLOAT4;
        public static final AttributeType HALF;
        public static final AttributeType HALF2;
        public static final AttributeType HALF3;
        public static final AttributeType HALF4;
        public static final AttributeType INT;
        public static final AttributeType SHORT;
        public static final AttributeType SHORT2;
        public static final AttributeType SHORT3;
        public static final AttributeType SHORT4;
        public static final AttributeType UBYTE;
        public static final AttributeType UBYTE2;
        public static final AttributeType UBYTE3;
        public static final AttributeType UBYTE4;
        public static final AttributeType UINT;
        public static final AttributeType USHORT;
        public static final AttributeType USHORT2;
        public static final AttributeType USHORT3;
        public static final AttributeType USHORT4;

        static {
            AttributeType attributeType = new AttributeType("BYTE", 0);
            BYTE = attributeType;
            AttributeType attributeType2 = new AttributeType("BYTE2", 1);
            BYTE2 = attributeType2;
            AttributeType attributeType3 = new AttributeType("BYTE3", 2);
            BYTE3 = attributeType3;
            AttributeType attributeType4 = new AttributeType("BYTE4", 3);
            BYTE4 = attributeType4;
            AttributeType attributeType5 = new AttributeType("UBYTE", 4);
            UBYTE = attributeType5;
            AttributeType attributeType6 = new AttributeType("UBYTE2", 5);
            UBYTE2 = attributeType6;
            AttributeType attributeType7 = new AttributeType("UBYTE3", 6);
            UBYTE3 = attributeType7;
            AttributeType attributeType8 = new AttributeType("UBYTE4", 7);
            UBYTE4 = attributeType8;
            AttributeType attributeType9 = new AttributeType("SHORT", 8);
            SHORT = attributeType9;
            AttributeType attributeType10 = new AttributeType("SHORT2", 9);
            SHORT2 = attributeType10;
            AttributeType attributeType11 = new AttributeType("SHORT3", 10);
            SHORT3 = attributeType11;
            AttributeType attributeType12 = new AttributeType("SHORT4", 11);
            SHORT4 = attributeType12;
            AttributeType attributeType13 = new AttributeType("USHORT", 12);
            USHORT = attributeType13;
            AttributeType attributeType14 = new AttributeType("USHORT2", 13);
            USHORT2 = attributeType14;
            AttributeType attributeType15 = new AttributeType("USHORT3", 14);
            USHORT3 = attributeType15;
            AttributeType attributeType16 = new AttributeType("USHORT4", 15);
            USHORT4 = attributeType16;
            AttributeType attributeType17 = new AttributeType("INT", 16);
            INT = attributeType17;
            AttributeType attributeType18 = new AttributeType("UINT", 17);
            UINT = attributeType18;
            AttributeType attributeType19 = new AttributeType("FLOAT", 18);
            FLOAT = attributeType19;
            AttributeType attributeType20 = new AttributeType("FLOAT2", 19);
            FLOAT2 = attributeType20;
            AttributeType attributeType21 = new AttributeType("FLOAT3", 20);
            FLOAT3 = attributeType21;
            AttributeType attributeType22 = new AttributeType("FLOAT4", 21);
            FLOAT4 = attributeType22;
            AttributeType attributeType23 = new AttributeType("HALF", 22);
            HALF = attributeType23;
            AttributeType attributeType24 = new AttributeType("HALF2", 23);
            HALF2 = attributeType24;
            AttributeType attributeType25 = new AttributeType("HALF3", 24);
            HALF3 = attributeType25;
            AttributeType attributeType26 = new AttributeType("HALF4", 25);
            HALF4 = attributeType26;
            $VALUES = new AttributeType[]{attributeType, attributeType2, attributeType3, attributeType4, attributeType5, attributeType6, attributeType7, attributeType8, attributeType9, attributeType10, attributeType11, attributeType12, attributeType13, attributeType14, attributeType15, attributeType16, attributeType17, attributeType18, attributeType19, attributeType20, attributeType21, attributeType22, attributeType23, attributeType24, attributeType25, attributeType26};
        }

        public static AttributeType valueOf(String str) {
            return (AttributeType) Enum.valueOf(AttributeType.class, str);
        }

        public static AttributeType[] values() {
            return (AttributeType[]) $VALUES.clone();
        }
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28596b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28597a;

            public BuilderFinalizer(long j2) {
                this.f28597a = j2;
            }

            public final void finalize() {
                long j2 = this.f28597a;
                try {
                    super.finalize();
                    VertexBuffer.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    VertexBuffer.nDestroyBuilder(j2);
                }
            }
        }

        public Builder() {
            long jNCreateBuilder = VertexBuffer.nCreateBuilder();
            this.f28596b = jNCreateBuilder;
            this.f28595a = new BuilderFinalizer(jNCreateBuilder);
        }

        public final void a(VertexAttribute vertexAttribute, int i2, AttributeType attributeType, int i3) {
            VertexBuffer.nBuilderAttribute(this.f28596b, vertexAttribute.ordinal(), i2, attributeType.ordinal(), 0, i3);
        }

        public final VertexBuffer b(Engine engine) {
            long jNBuilderBuild = VertexBuffer.nBuilderBuild(this.f28596b, engine.getNativeObject());
            if (jNBuilderBuild == 0) {
                md.k("Couldn't create VertexBuffer");
                return null;
            }
            VertexBuffer vertexBuffer = new VertexBuffer();
            vertexBuffer.f28594a = jNBuilderBuild;
            return vertexBuffer;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class VertexAttribute {
        private static final /* synthetic */ VertexAttribute[] $VALUES;
        public static final VertexAttribute BONE_INDICES;
        public static final VertexAttribute BONE_WEIGHTS;
        public static final VertexAttribute COLOR;
        public static final VertexAttribute CUSTOM0;
        public static final VertexAttribute CUSTOM1;
        public static final VertexAttribute CUSTOM2;
        public static final VertexAttribute CUSTOM3;
        public static final VertexAttribute CUSTOM4;
        public static final VertexAttribute CUSTOM5;
        public static final VertexAttribute CUSTOM6;
        public static final VertexAttribute CUSTOM7;
        public static final VertexAttribute POSITION;
        public static final VertexAttribute TANGENTS;
        public static final VertexAttribute UNUSED;
        public static final VertexAttribute UV0;
        public static final VertexAttribute UV1;

        static {
            VertexAttribute vertexAttribute = new VertexAttribute("POSITION", 0);
            POSITION = vertexAttribute;
            VertexAttribute vertexAttribute2 = new VertexAttribute("TANGENTS", 1);
            TANGENTS = vertexAttribute2;
            VertexAttribute vertexAttribute3 = new VertexAttribute("COLOR", 2);
            COLOR = vertexAttribute3;
            VertexAttribute vertexAttribute4 = new VertexAttribute("UV0", 3);
            UV0 = vertexAttribute4;
            VertexAttribute vertexAttribute5 = new VertexAttribute("UV1", 4);
            UV1 = vertexAttribute5;
            VertexAttribute vertexAttribute6 = new VertexAttribute("BONE_INDICES", 5);
            BONE_INDICES = vertexAttribute6;
            VertexAttribute vertexAttribute7 = new VertexAttribute("BONE_WEIGHTS", 6);
            BONE_WEIGHTS = vertexAttribute7;
            VertexAttribute vertexAttribute8 = new VertexAttribute("UNUSED", 7);
            UNUSED = vertexAttribute8;
            VertexAttribute vertexAttribute9 = new VertexAttribute("CUSTOM0", 8);
            CUSTOM0 = vertexAttribute9;
            VertexAttribute vertexAttribute10 = new VertexAttribute("CUSTOM1", 9);
            CUSTOM1 = vertexAttribute10;
            VertexAttribute vertexAttribute11 = new VertexAttribute("CUSTOM2", 10);
            CUSTOM2 = vertexAttribute11;
            VertexAttribute vertexAttribute12 = new VertexAttribute("CUSTOM3", 11);
            CUSTOM3 = vertexAttribute12;
            VertexAttribute vertexAttribute13 = new VertexAttribute("CUSTOM4", 12);
            CUSTOM4 = vertexAttribute13;
            VertexAttribute vertexAttribute14 = new VertexAttribute("CUSTOM5", 13);
            CUSTOM5 = vertexAttribute14;
            VertexAttribute vertexAttribute15 = new VertexAttribute("CUSTOM6", 14);
            CUSTOM6 = vertexAttribute15;
            VertexAttribute vertexAttribute16 = new VertexAttribute("CUSTOM7", 15);
            CUSTOM7 = vertexAttribute16;
            $VALUES = new VertexAttribute[]{vertexAttribute, vertexAttribute2, vertexAttribute3, vertexAttribute4, vertexAttribute5, vertexAttribute6, vertexAttribute7, vertexAttribute8, vertexAttribute9, vertexAttribute10, vertexAttribute11, vertexAttribute12, vertexAttribute13, vertexAttribute14, vertexAttribute15, vertexAttribute16};
        }

        public static VertexAttribute valueOf(String str) {
            return (VertexAttribute) Enum.valueOf(VertexAttribute.class, str);
        }

        public static VertexAttribute[] values() {
            return (VertexAttribute[]) $VALUES.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderAttribute(long j2, int i2, int i3, int i4, int i5, int i6);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderBufferCount(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nBuilderBuild(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderVertexCount(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);

    private static native int nSetBufferAt(long j2, long j3, int i2, Buffer buffer, int i3, int i4, int i5, Object obj, Runnable runnable);

    public final long g() {
        long j2 = this.f28594a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed VertexBuffer");
        return 0L;
    }

    public final void h(int i2, Engine engine, Buffer buffer) {
        if (nSetBufferAt(g(), engine.getNativeObject(), i2, buffer, buffer.remaining(), 0, buffer.remaining(), null, null) < 0) {
            throw new BufferOverflowException();
        }
    }

    public final void i(Engine engine, int i2, Buffer buffer, int i3) {
        long jG = g();
        long nativeObject = engine.getNativeObject();
        int iRemaining = buffer.remaining();
        if (i3 == 0) {
            i3 = buffer.remaining();
        }
        if (nSetBufferAt(jG, nativeObject, i2, buffer, iRemaining, 0, i3, null, null) < 0) {
            throw new BufferOverflowException();
        }
    }
}
