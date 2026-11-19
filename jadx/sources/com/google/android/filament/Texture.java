package com.google.android.filament;

import defpackage.md;
import java.nio.Buffer;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class Texture {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28578a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28579a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28580b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28581a;

            public BuilderFinalizer(long j2) {
                this.f28581a = j2;
            }

            public final void finalize() {
                long j2 = this.f28581a;
                try {
                    super.finalize();
                    Texture.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    Texture.nDestroyBuilder(j2);
                }
            }
        }

        public Builder() {
            long jNCreateBuilder = Texture.nCreateBuilder();
            this.f28580b = jNCreateBuilder;
            this.f28579a = new BuilderFinalizer(jNCreateBuilder);
        }

        public final Texture a(Engine engine) {
            long jNBuilderBuild = Texture.nBuilderBuild(this.f28580b, engine.getNativeObject());
            if (jNBuilderBuild != 0) {
                return new Texture(jNBuilderBuild);
            }
            md.k("Couldn't create Texture");
            return null;
        }

        public final void b(InternalFormat internalFormat) {
            Texture.nBuilderFormat(this.f28580b, internalFormat.ordinal());
        }

        public final void c(Sampler sampler) {
            Texture.nBuilderSampler(this.f28580b, sampler.ordinal());
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CompressedFormat {
        private static final /* synthetic */ CompressedFormat[] $VALUES;
        public static final CompressedFormat DXT1_RGB;
        public static final CompressedFormat DXT1_RGBA;
        public static final CompressedFormat DXT1_SRGB;
        public static final CompressedFormat DXT1_SRGBA;
        public static final CompressedFormat DXT3_RGBA;
        public static final CompressedFormat DXT3_SRGBA;
        public static final CompressedFormat DXT5_RGBA;
        public static final CompressedFormat DXT5_SRGBA;
        public static final CompressedFormat EAC_R11;
        public static final CompressedFormat EAC_R11_SIGNED;
        public static final CompressedFormat EAC_RG11;
        public static final CompressedFormat EAC_RG11_SIGNED;
        public static final CompressedFormat ETC2_EAC_RGBA8;
        public static final CompressedFormat ETC2_EAC_SRGBA8;
        public static final CompressedFormat ETC2_RGB8;
        public static final CompressedFormat ETC2_RGB8_A1;
        public static final CompressedFormat ETC2_SRGB8;
        public static final CompressedFormat ETC2_SRGB8_A1;
        public static final CompressedFormat RED_GREEN_RGTC2;
        public static final CompressedFormat RED_RGTC1;
        public static final CompressedFormat RGBA_ASTC_10x10;
        public static final CompressedFormat RGBA_ASTC_10x5;
        public static final CompressedFormat RGBA_ASTC_10x6;
        public static final CompressedFormat RGBA_ASTC_10x8;
        public static final CompressedFormat RGBA_ASTC_12x10;
        public static final CompressedFormat RGBA_ASTC_12x12;
        public static final CompressedFormat RGBA_ASTC_4x4;
        public static final CompressedFormat RGBA_ASTC_5x4;
        public static final CompressedFormat RGBA_ASTC_5x5;
        public static final CompressedFormat RGBA_ASTC_6x5;
        public static final CompressedFormat RGBA_ASTC_6x6;
        public static final CompressedFormat RGBA_ASTC_8x5;
        public static final CompressedFormat RGBA_ASTC_8x6;
        public static final CompressedFormat RGBA_ASTC_8x8;
        public static final CompressedFormat RGBA_BPTC_UNORM;
        public static final CompressedFormat RGB_BPTC_SIGNED_FLOAT;
        public static final CompressedFormat RGB_BPTC_UNSIGNED_FLOAT;
        public static final CompressedFormat SIGNED_RED_GREEN_RGTC2;
        public static final CompressedFormat SIGNED_RED_RGTC1;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_10x10;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_10x5;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_10x6;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_10x8;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_12x10;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_12x12;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_4x4;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_5x4;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_5x5;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_6x5;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_6x6;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_8x5;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_8x6;
        public static final CompressedFormat SRGB8_ALPHA8_ASTC_8x8;
        public static final CompressedFormat SRGB_ALPHA_BPTC_UNORM;

        static {
            CompressedFormat compressedFormat = new CompressedFormat("EAC_R11", 0);
            EAC_R11 = compressedFormat;
            CompressedFormat compressedFormat2 = new CompressedFormat("EAC_R11_SIGNED", 1);
            EAC_R11_SIGNED = compressedFormat2;
            CompressedFormat compressedFormat3 = new CompressedFormat("EAC_RG11", 2);
            EAC_RG11 = compressedFormat3;
            CompressedFormat compressedFormat4 = new CompressedFormat("EAC_RG11_SIGNED", 3);
            EAC_RG11_SIGNED = compressedFormat4;
            CompressedFormat compressedFormat5 = new CompressedFormat("ETC2_RGB8", 4);
            ETC2_RGB8 = compressedFormat5;
            CompressedFormat compressedFormat6 = new CompressedFormat("ETC2_SRGB8", 5);
            ETC2_SRGB8 = compressedFormat6;
            CompressedFormat compressedFormat7 = new CompressedFormat("ETC2_RGB8_A1", 6);
            ETC2_RGB8_A1 = compressedFormat7;
            CompressedFormat compressedFormat8 = new CompressedFormat("ETC2_SRGB8_A1", 7);
            ETC2_SRGB8_A1 = compressedFormat8;
            CompressedFormat compressedFormat9 = new CompressedFormat("ETC2_EAC_RGBA8", 8);
            ETC2_EAC_RGBA8 = compressedFormat9;
            CompressedFormat compressedFormat10 = new CompressedFormat("ETC2_EAC_SRGBA8", 9);
            ETC2_EAC_SRGBA8 = compressedFormat10;
            CompressedFormat compressedFormat11 = new CompressedFormat("DXT1_RGB", 10);
            DXT1_RGB = compressedFormat11;
            CompressedFormat compressedFormat12 = new CompressedFormat("DXT1_RGBA", 11);
            DXT1_RGBA = compressedFormat12;
            CompressedFormat compressedFormat13 = new CompressedFormat("DXT3_RGBA", 12);
            DXT3_RGBA = compressedFormat13;
            CompressedFormat compressedFormat14 = new CompressedFormat("DXT5_RGBA", 13);
            DXT5_RGBA = compressedFormat14;
            CompressedFormat compressedFormat15 = new CompressedFormat("DXT1_SRGB", 14);
            DXT1_SRGB = compressedFormat15;
            CompressedFormat compressedFormat16 = new CompressedFormat("DXT1_SRGBA", 15);
            DXT1_SRGBA = compressedFormat16;
            CompressedFormat compressedFormat17 = new CompressedFormat("DXT3_SRGBA", 16);
            DXT3_SRGBA = compressedFormat17;
            CompressedFormat compressedFormat18 = new CompressedFormat("DXT5_SRGBA", 17);
            DXT5_SRGBA = compressedFormat18;
            CompressedFormat compressedFormat19 = new CompressedFormat("RGBA_ASTC_4x4", 18);
            RGBA_ASTC_4x4 = compressedFormat19;
            CompressedFormat compressedFormat20 = new CompressedFormat("RGBA_ASTC_5x4", 19);
            RGBA_ASTC_5x4 = compressedFormat20;
            CompressedFormat compressedFormat21 = new CompressedFormat("RGBA_ASTC_5x5", 20);
            RGBA_ASTC_5x5 = compressedFormat21;
            CompressedFormat compressedFormat22 = new CompressedFormat("RGBA_ASTC_6x5", 21);
            RGBA_ASTC_6x5 = compressedFormat22;
            CompressedFormat compressedFormat23 = new CompressedFormat("RGBA_ASTC_6x6", 22);
            RGBA_ASTC_6x6 = compressedFormat23;
            CompressedFormat compressedFormat24 = new CompressedFormat("RGBA_ASTC_8x5", 23);
            RGBA_ASTC_8x5 = compressedFormat24;
            CompressedFormat compressedFormat25 = new CompressedFormat("RGBA_ASTC_8x6", 24);
            RGBA_ASTC_8x6 = compressedFormat25;
            CompressedFormat compressedFormat26 = new CompressedFormat("RGBA_ASTC_8x8", 25);
            RGBA_ASTC_8x8 = compressedFormat26;
            CompressedFormat compressedFormat27 = new CompressedFormat("RGBA_ASTC_10x5", 26);
            RGBA_ASTC_10x5 = compressedFormat27;
            CompressedFormat compressedFormat28 = new CompressedFormat("RGBA_ASTC_10x6", 27);
            RGBA_ASTC_10x6 = compressedFormat28;
            CompressedFormat compressedFormat29 = new CompressedFormat("RGBA_ASTC_10x8", 28);
            RGBA_ASTC_10x8 = compressedFormat29;
            CompressedFormat compressedFormat30 = new CompressedFormat("RGBA_ASTC_10x10", 29);
            RGBA_ASTC_10x10 = compressedFormat30;
            CompressedFormat compressedFormat31 = new CompressedFormat("RGBA_ASTC_12x10", 30);
            RGBA_ASTC_12x10 = compressedFormat31;
            CompressedFormat compressedFormat32 = new CompressedFormat("RGBA_ASTC_12x12", 31);
            RGBA_ASTC_12x12 = compressedFormat32;
            CompressedFormat compressedFormat33 = new CompressedFormat("SRGB8_ALPHA8_ASTC_4x4", 32);
            SRGB8_ALPHA8_ASTC_4x4 = compressedFormat33;
            CompressedFormat compressedFormat34 = new CompressedFormat("SRGB8_ALPHA8_ASTC_5x4", 33);
            SRGB8_ALPHA8_ASTC_5x4 = compressedFormat34;
            CompressedFormat compressedFormat35 = new CompressedFormat("SRGB8_ALPHA8_ASTC_5x5", 34);
            SRGB8_ALPHA8_ASTC_5x5 = compressedFormat35;
            CompressedFormat compressedFormat36 = new CompressedFormat("SRGB8_ALPHA8_ASTC_6x5", 35);
            SRGB8_ALPHA8_ASTC_6x5 = compressedFormat36;
            CompressedFormat compressedFormat37 = new CompressedFormat("SRGB8_ALPHA8_ASTC_6x6", 36);
            SRGB8_ALPHA8_ASTC_6x6 = compressedFormat37;
            CompressedFormat compressedFormat38 = new CompressedFormat("SRGB8_ALPHA8_ASTC_8x5", 37);
            SRGB8_ALPHA8_ASTC_8x5 = compressedFormat38;
            CompressedFormat compressedFormat39 = new CompressedFormat("SRGB8_ALPHA8_ASTC_8x6", 38);
            SRGB8_ALPHA8_ASTC_8x6 = compressedFormat39;
            CompressedFormat compressedFormat40 = new CompressedFormat("SRGB8_ALPHA8_ASTC_8x8", 39);
            SRGB8_ALPHA8_ASTC_8x8 = compressedFormat40;
            CompressedFormat compressedFormat41 = new CompressedFormat("SRGB8_ALPHA8_ASTC_10x5", 40);
            SRGB8_ALPHA8_ASTC_10x5 = compressedFormat41;
            CompressedFormat compressedFormat42 = new CompressedFormat("SRGB8_ALPHA8_ASTC_10x6", 41);
            SRGB8_ALPHA8_ASTC_10x6 = compressedFormat42;
            CompressedFormat compressedFormat43 = new CompressedFormat("SRGB8_ALPHA8_ASTC_10x8", 42);
            SRGB8_ALPHA8_ASTC_10x8 = compressedFormat43;
            CompressedFormat compressedFormat44 = new CompressedFormat("SRGB8_ALPHA8_ASTC_10x10", 43);
            SRGB8_ALPHA8_ASTC_10x10 = compressedFormat44;
            CompressedFormat compressedFormat45 = new CompressedFormat("SRGB8_ALPHA8_ASTC_12x10", 44);
            SRGB8_ALPHA8_ASTC_12x10 = compressedFormat45;
            CompressedFormat compressedFormat46 = new CompressedFormat("SRGB8_ALPHA8_ASTC_12x12", 45);
            SRGB8_ALPHA8_ASTC_12x12 = compressedFormat46;
            CompressedFormat compressedFormat47 = new CompressedFormat("RED_RGTC1", 46);
            RED_RGTC1 = compressedFormat47;
            CompressedFormat compressedFormat48 = new CompressedFormat("SIGNED_RED_RGTC1", 47);
            SIGNED_RED_RGTC1 = compressedFormat48;
            CompressedFormat compressedFormat49 = new CompressedFormat("RED_GREEN_RGTC2", 48);
            RED_GREEN_RGTC2 = compressedFormat49;
            CompressedFormat compressedFormat50 = new CompressedFormat("SIGNED_RED_GREEN_RGTC2", 49);
            SIGNED_RED_GREEN_RGTC2 = compressedFormat50;
            CompressedFormat compressedFormat51 = new CompressedFormat("RGB_BPTC_SIGNED_FLOAT", 50);
            RGB_BPTC_SIGNED_FLOAT = compressedFormat51;
            CompressedFormat compressedFormat52 = new CompressedFormat("RGB_BPTC_UNSIGNED_FLOAT", 51);
            RGB_BPTC_UNSIGNED_FLOAT = compressedFormat52;
            CompressedFormat compressedFormat53 = new CompressedFormat("RGBA_BPTC_UNORM", 52);
            RGBA_BPTC_UNORM = compressedFormat53;
            CompressedFormat compressedFormat54 = new CompressedFormat("SRGB_ALPHA_BPTC_UNORM", 53);
            SRGB_ALPHA_BPTC_UNORM = compressedFormat54;
            $VALUES = new CompressedFormat[]{compressedFormat, compressedFormat2, compressedFormat3, compressedFormat4, compressedFormat5, compressedFormat6, compressedFormat7, compressedFormat8, compressedFormat9, compressedFormat10, compressedFormat11, compressedFormat12, compressedFormat13, compressedFormat14, compressedFormat15, compressedFormat16, compressedFormat17, compressedFormat18, compressedFormat19, compressedFormat20, compressedFormat21, compressedFormat22, compressedFormat23, compressedFormat24, compressedFormat25, compressedFormat26, compressedFormat27, compressedFormat28, compressedFormat29, compressedFormat30, compressedFormat31, compressedFormat32, compressedFormat33, compressedFormat34, compressedFormat35, compressedFormat36, compressedFormat37, compressedFormat38, compressedFormat39, compressedFormat40, compressedFormat41, compressedFormat42, compressedFormat43, compressedFormat44, compressedFormat45, compressedFormat46, compressedFormat47, compressedFormat48, compressedFormat49, compressedFormat50, compressedFormat51, compressedFormat52, compressedFormat53, compressedFormat54};
        }

        public static CompressedFormat valueOf(String str) {
            return (CompressedFormat) Enum.valueOf(CompressedFormat.class, str);
        }

        public static CompressedFormat[] values() {
            return (CompressedFormat[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Format {
        private static final /* synthetic */ Format[] $VALUES;
        public static final Format ALPHA;
        public static final Format DEPTH_COMPONENT;
        public static final Format DEPTH_STENCIL;
        public static final Format R;
        public static final Format RG;
        public static final Format RGB;
        public static final Format RGBA;
        public static final Format RGBA_INTEGER;
        public static final Format RGB_INTEGER;
        public static final Format RG_INTEGER;
        public static final Format R_INTEGER;
        public static final Format STENCIL_INDEX;
        public static final Format UNUSED;

        static {
            Format format = new Format("R", 0);
            R = format;
            Format format2 = new Format("R_INTEGER", 1);
            R_INTEGER = format2;
            Format format3 = new Format("RG", 2);
            RG = format3;
            Format format4 = new Format("RG_INTEGER", 3);
            RG_INTEGER = format4;
            Format format5 = new Format("RGB", 4);
            RGB = format5;
            Format format6 = new Format("RGB_INTEGER", 5);
            RGB_INTEGER = format6;
            Format format7 = new Format("RGBA", 6);
            RGBA = format7;
            Format format8 = new Format("RGBA_INTEGER", 7);
            RGBA_INTEGER = format8;
            Format format9 = new Format("UNUSED", 8);
            UNUSED = format9;
            Format format10 = new Format("DEPTH_COMPONENT", 9);
            DEPTH_COMPONENT = format10;
            Format format11 = new Format("DEPTH_STENCIL", 10);
            DEPTH_STENCIL = format11;
            Format format12 = new Format("STENCIL_INDEX", 11);
            STENCIL_INDEX = format12;
            Format format13 = new Format("ALPHA", 12);
            ALPHA = format13;
            $VALUES = new Format[]{format, format2, format3, format4, format5, format6, format7, format8, format9, format10, format11, format12, format13};
        }

        public static Format valueOf(String str) {
            return (Format) Enum.valueOf(Format.class, str);
        }

        public static Format[] values() {
            return (Format[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class InternalFormat {
        private static final /* synthetic */ InternalFormat[] $VALUES;
        public static final InternalFormat DEPTH16;
        public static final InternalFormat DEPTH24;
        public static final InternalFormat DEPTH24_STENCIL8;
        public static final InternalFormat DEPTH32F;
        public static final InternalFormat DEPTH32F_STENCIL8;
        public static final InternalFormat DXT1_RGB;
        public static final InternalFormat DXT1_RGBA;
        public static final InternalFormat DXT1_SRGB;
        public static final InternalFormat DXT1_SRGBA;
        public static final InternalFormat DXT3_RGBA;
        public static final InternalFormat DXT3_SRGBA;
        public static final InternalFormat DXT5_RGBA;
        public static final InternalFormat DXT5_SRGBA;
        public static final InternalFormat EAC_R11;
        public static final InternalFormat EAC_R11_SIGNED;
        public static final InternalFormat EAC_RG11;
        public static final InternalFormat EAC_RG11_SIGNED;
        public static final InternalFormat ETC2_EAC_RGBA8;
        public static final InternalFormat ETC2_EAC_SRGBA8;
        public static final InternalFormat ETC2_RGB8;
        public static final InternalFormat ETC2_RGB8_A1;
        public static final InternalFormat ETC2_SRGB8;
        public static final InternalFormat ETC2_SRGB8_A1;
        public static final InternalFormat R11F_G11F_B10F;
        public static final InternalFormat R16F;
        public static final InternalFormat R16I;
        public static final InternalFormat R16UI;
        public static final InternalFormat R32F;
        public static final InternalFormat R32I;
        public static final InternalFormat R32UI;
        public static final InternalFormat R8;
        public static final InternalFormat R8I;
        public static final InternalFormat R8UI;
        public static final InternalFormat R8_SNORM;
        public static final InternalFormat RED_GREEN_RGTC2;
        public static final InternalFormat RED_RGTC1;
        public static final InternalFormat RG16F;
        public static final InternalFormat RG16I;
        public static final InternalFormat RG16UI;
        public static final InternalFormat RG32F;
        public static final InternalFormat RG32I;
        public static final InternalFormat RG32UI;
        public static final InternalFormat RG8;
        public static final InternalFormat RG8I;
        public static final InternalFormat RG8UI;
        public static final InternalFormat RG8_SNORM;
        public static final InternalFormat RGB10_A2;
        public static final InternalFormat RGB16F;
        public static final InternalFormat RGB16I;
        public static final InternalFormat RGB16UI;
        public static final InternalFormat RGB32F;
        public static final InternalFormat RGB32I;
        public static final InternalFormat RGB32UI;
        public static final InternalFormat RGB565;
        public static final InternalFormat RGB5_A1;
        public static final InternalFormat RGB8;
        public static final InternalFormat RGB8I;
        public static final InternalFormat RGB8UI;
        public static final InternalFormat RGB8_SNORM;
        public static final InternalFormat RGB9_E5;
        public static final InternalFormat RGBA16F;
        public static final InternalFormat RGBA16I;
        public static final InternalFormat RGBA16UI;
        public static final InternalFormat RGBA32F;
        public static final InternalFormat RGBA32I;
        public static final InternalFormat RGBA32UI;
        public static final InternalFormat RGBA4;
        public static final InternalFormat RGBA8;
        public static final InternalFormat RGBA8I;
        public static final InternalFormat RGBA8UI;
        public static final InternalFormat RGBA8_SNORM;
        public static final InternalFormat RGBA_ASTC_10x10;
        public static final InternalFormat RGBA_ASTC_10x5;
        public static final InternalFormat RGBA_ASTC_10x6;
        public static final InternalFormat RGBA_ASTC_10x8;
        public static final InternalFormat RGBA_ASTC_12x10;
        public static final InternalFormat RGBA_ASTC_12x12;
        public static final InternalFormat RGBA_ASTC_4x4;
        public static final InternalFormat RGBA_ASTC_5x4;
        public static final InternalFormat RGBA_ASTC_5x5;
        public static final InternalFormat RGBA_ASTC_6x5;
        public static final InternalFormat RGBA_ASTC_6x6;
        public static final InternalFormat RGBA_ASTC_8x5;
        public static final InternalFormat RGBA_ASTC_8x6;
        public static final InternalFormat RGBA_ASTC_8x8;
        public static final InternalFormat RGBA_BPTC_UNORM;
        public static final InternalFormat RGB_BPTC_SIGNED_FLOAT;
        public static final InternalFormat RGB_BPTC_UNSIGNED_FLOAT;
        public static final InternalFormat SIGNED_RED_GREEN_RGTC2;
        public static final InternalFormat SIGNED_RED_RGTC1;
        public static final InternalFormat SRGB8;
        public static final InternalFormat SRGB8_A8;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_10x10;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_10x5;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_10x6;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_10x8;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_12x10;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_12x12;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_4x4;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_5x4;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_5x5;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_6x5;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_6x6;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_8x5;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_8x6;
        public static final InternalFormat SRGB8_ALPHA8_ASTC_8x8;
        public static final InternalFormat SRGB_ALPHA_BPTC_UNORM;
        public static final InternalFormat STENCIL8;
        public static final InternalFormat UNUSED;

        static {
            InternalFormat internalFormat = new InternalFormat("R8", 0);
            R8 = internalFormat;
            InternalFormat internalFormat2 = new InternalFormat("R8_SNORM", 1);
            R8_SNORM = internalFormat2;
            InternalFormat internalFormat3 = new InternalFormat("R8UI", 2);
            R8UI = internalFormat3;
            InternalFormat internalFormat4 = new InternalFormat("R8I", 3);
            R8I = internalFormat4;
            InternalFormat internalFormat5 = new InternalFormat("STENCIL8", 4);
            STENCIL8 = internalFormat5;
            InternalFormat internalFormat6 = new InternalFormat("R16F", 5);
            R16F = internalFormat6;
            InternalFormat internalFormat7 = new InternalFormat("R16UI", 6);
            R16UI = internalFormat7;
            InternalFormat internalFormat8 = new InternalFormat("R16I", 7);
            R16I = internalFormat8;
            InternalFormat internalFormat9 = new InternalFormat("RG8", 8);
            RG8 = internalFormat9;
            InternalFormat internalFormat10 = new InternalFormat("RG8_SNORM", 9);
            RG8_SNORM = internalFormat10;
            InternalFormat internalFormat11 = new InternalFormat("RG8UI", 10);
            RG8UI = internalFormat11;
            InternalFormat internalFormat12 = new InternalFormat("RG8I", 11);
            RG8I = internalFormat12;
            InternalFormat internalFormat13 = new InternalFormat("RGB565", 12);
            RGB565 = internalFormat13;
            InternalFormat internalFormat14 = new InternalFormat("RGB9_E5", 13);
            RGB9_E5 = internalFormat14;
            InternalFormat internalFormat15 = new InternalFormat("RGB5_A1", 14);
            RGB5_A1 = internalFormat15;
            InternalFormat internalFormat16 = new InternalFormat("RGBA4", 15);
            RGBA4 = internalFormat16;
            InternalFormat internalFormat17 = new InternalFormat("DEPTH16", 16);
            DEPTH16 = internalFormat17;
            InternalFormat internalFormat18 = new InternalFormat("RGB8", 17);
            RGB8 = internalFormat18;
            InternalFormat internalFormat19 = new InternalFormat("SRGB8", 18);
            SRGB8 = internalFormat19;
            InternalFormat internalFormat20 = new InternalFormat("RGB8_SNORM", 19);
            RGB8_SNORM = internalFormat20;
            InternalFormat internalFormat21 = new InternalFormat("RGB8UI", 20);
            RGB8UI = internalFormat21;
            InternalFormat internalFormat22 = new InternalFormat("RGB8I", 21);
            RGB8I = internalFormat22;
            InternalFormat internalFormat23 = new InternalFormat("DEPTH24", 22);
            DEPTH24 = internalFormat23;
            InternalFormat internalFormat24 = new InternalFormat("R32F", 23);
            R32F = internalFormat24;
            InternalFormat internalFormat25 = new InternalFormat("R32UI", 24);
            R32UI = internalFormat25;
            InternalFormat internalFormat26 = new InternalFormat("R32I", 25);
            R32I = internalFormat26;
            InternalFormat internalFormat27 = new InternalFormat("RG16F", 26);
            RG16F = internalFormat27;
            InternalFormat internalFormat28 = new InternalFormat("RG16UI", 27);
            RG16UI = internalFormat28;
            InternalFormat internalFormat29 = new InternalFormat("RG16I", 28);
            RG16I = internalFormat29;
            InternalFormat internalFormat30 = new InternalFormat("R11F_G11F_B10F", 29);
            R11F_G11F_B10F = internalFormat30;
            InternalFormat internalFormat31 = new InternalFormat("RGBA8", 30);
            RGBA8 = internalFormat31;
            InternalFormat internalFormat32 = new InternalFormat("SRGB8_A8", 31);
            SRGB8_A8 = internalFormat32;
            InternalFormat internalFormat33 = new InternalFormat("RGBA8_SNORM", 32);
            RGBA8_SNORM = internalFormat33;
            InternalFormat internalFormat34 = new InternalFormat("UNUSED", 33);
            UNUSED = internalFormat34;
            InternalFormat internalFormat35 = new InternalFormat("RGB10_A2", 34);
            RGB10_A2 = internalFormat35;
            InternalFormat internalFormat36 = new InternalFormat("RGBA8UI", 35);
            RGBA8UI = internalFormat36;
            InternalFormat internalFormat37 = new InternalFormat("RGBA8I", 36);
            RGBA8I = internalFormat37;
            InternalFormat internalFormat38 = new InternalFormat("DEPTH32F", 37);
            DEPTH32F = internalFormat38;
            InternalFormat internalFormat39 = new InternalFormat("DEPTH24_STENCIL8", 38);
            DEPTH24_STENCIL8 = internalFormat39;
            InternalFormat internalFormat40 = new InternalFormat("DEPTH32F_STENCIL8", 39);
            DEPTH32F_STENCIL8 = internalFormat40;
            InternalFormat internalFormat41 = new InternalFormat("RGB16F", 40);
            RGB16F = internalFormat41;
            InternalFormat internalFormat42 = new InternalFormat("RGB16UI", 41);
            RGB16UI = internalFormat42;
            InternalFormat internalFormat43 = new InternalFormat("RGB16I", 42);
            RGB16I = internalFormat43;
            InternalFormat internalFormat44 = new InternalFormat("RG32F", 43);
            RG32F = internalFormat44;
            InternalFormat internalFormat45 = new InternalFormat("RG32UI", 44);
            RG32UI = internalFormat45;
            InternalFormat internalFormat46 = new InternalFormat("RG32I", 45);
            RG32I = internalFormat46;
            InternalFormat internalFormat47 = new InternalFormat("RGBA16F", 46);
            RGBA16F = internalFormat47;
            InternalFormat internalFormat48 = new InternalFormat("RGBA16UI", 47);
            RGBA16UI = internalFormat48;
            InternalFormat internalFormat49 = new InternalFormat("RGBA16I", 48);
            RGBA16I = internalFormat49;
            InternalFormat internalFormat50 = new InternalFormat("RGB32F", 49);
            RGB32F = internalFormat50;
            InternalFormat internalFormat51 = new InternalFormat("RGB32UI", 50);
            RGB32UI = internalFormat51;
            InternalFormat internalFormat52 = new InternalFormat("RGB32I", 51);
            RGB32I = internalFormat52;
            InternalFormat internalFormat53 = new InternalFormat("RGBA32F", 52);
            RGBA32F = internalFormat53;
            InternalFormat internalFormat54 = new InternalFormat("RGBA32UI", 53);
            RGBA32UI = internalFormat54;
            InternalFormat internalFormat55 = new InternalFormat("RGBA32I", 54);
            RGBA32I = internalFormat55;
            InternalFormat internalFormat56 = new InternalFormat("EAC_R11", 55);
            EAC_R11 = internalFormat56;
            InternalFormat internalFormat57 = new InternalFormat("EAC_R11_SIGNED", 56);
            EAC_R11_SIGNED = internalFormat57;
            InternalFormat internalFormat58 = new InternalFormat("EAC_RG11", 57);
            EAC_RG11 = internalFormat58;
            InternalFormat internalFormat59 = new InternalFormat("EAC_RG11_SIGNED", 58);
            EAC_RG11_SIGNED = internalFormat59;
            InternalFormat internalFormat60 = new InternalFormat("ETC2_RGB8", 59);
            ETC2_RGB8 = internalFormat60;
            InternalFormat internalFormat61 = new InternalFormat("ETC2_SRGB8", 60);
            ETC2_SRGB8 = internalFormat61;
            InternalFormat internalFormat62 = new InternalFormat("ETC2_RGB8_A1", 61);
            ETC2_RGB8_A1 = internalFormat62;
            InternalFormat internalFormat63 = new InternalFormat("ETC2_SRGB8_A1", 62);
            ETC2_SRGB8_A1 = internalFormat63;
            InternalFormat internalFormat64 = new InternalFormat("ETC2_EAC_RGBA8", 63);
            ETC2_EAC_RGBA8 = internalFormat64;
            InternalFormat internalFormat65 = new InternalFormat("ETC2_EAC_SRGBA8", 64);
            ETC2_EAC_SRGBA8 = internalFormat65;
            InternalFormat internalFormat66 = new InternalFormat("DXT1_RGB", 65);
            DXT1_RGB = internalFormat66;
            InternalFormat internalFormat67 = new InternalFormat("DXT1_RGBA", 66);
            DXT1_RGBA = internalFormat67;
            InternalFormat internalFormat68 = new InternalFormat("DXT3_RGBA", 67);
            DXT3_RGBA = internalFormat68;
            InternalFormat internalFormat69 = new InternalFormat("DXT5_RGBA", 68);
            DXT5_RGBA = internalFormat69;
            InternalFormat internalFormat70 = new InternalFormat("DXT1_SRGB", 69);
            DXT1_SRGB = internalFormat70;
            InternalFormat internalFormat71 = new InternalFormat("DXT1_SRGBA", 70);
            DXT1_SRGBA = internalFormat71;
            InternalFormat internalFormat72 = new InternalFormat("DXT3_SRGBA", 71);
            DXT3_SRGBA = internalFormat72;
            InternalFormat internalFormat73 = new InternalFormat("DXT5_SRGBA", 72);
            DXT5_SRGBA = internalFormat73;
            InternalFormat internalFormat74 = new InternalFormat("RGBA_ASTC_4x4", 73);
            RGBA_ASTC_4x4 = internalFormat74;
            InternalFormat internalFormat75 = new InternalFormat("RGBA_ASTC_5x4", 74);
            RGBA_ASTC_5x4 = internalFormat75;
            InternalFormat internalFormat76 = new InternalFormat("RGBA_ASTC_5x5", 75);
            RGBA_ASTC_5x5 = internalFormat76;
            InternalFormat internalFormat77 = new InternalFormat("RGBA_ASTC_6x5", 76);
            RGBA_ASTC_6x5 = internalFormat77;
            InternalFormat internalFormat78 = new InternalFormat("RGBA_ASTC_6x6", 77);
            RGBA_ASTC_6x6 = internalFormat78;
            InternalFormat internalFormat79 = new InternalFormat("RGBA_ASTC_8x5", 78);
            RGBA_ASTC_8x5 = internalFormat79;
            InternalFormat internalFormat80 = new InternalFormat("RGBA_ASTC_8x6", 79);
            RGBA_ASTC_8x6 = internalFormat80;
            InternalFormat internalFormat81 = new InternalFormat("RGBA_ASTC_8x8", 80);
            RGBA_ASTC_8x8 = internalFormat81;
            InternalFormat internalFormat82 = new InternalFormat("RGBA_ASTC_10x5", 81);
            RGBA_ASTC_10x5 = internalFormat82;
            InternalFormat internalFormat83 = new InternalFormat("RGBA_ASTC_10x6", 82);
            RGBA_ASTC_10x6 = internalFormat83;
            InternalFormat internalFormat84 = new InternalFormat("RGBA_ASTC_10x8", 83);
            RGBA_ASTC_10x8 = internalFormat84;
            InternalFormat internalFormat85 = new InternalFormat("RGBA_ASTC_10x10", 84);
            RGBA_ASTC_10x10 = internalFormat85;
            InternalFormat internalFormat86 = new InternalFormat("RGBA_ASTC_12x10", 85);
            RGBA_ASTC_12x10 = internalFormat86;
            InternalFormat internalFormat87 = new InternalFormat("RGBA_ASTC_12x12", 86);
            RGBA_ASTC_12x12 = internalFormat87;
            InternalFormat internalFormat88 = new InternalFormat("SRGB8_ALPHA8_ASTC_4x4", 87);
            SRGB8_ALPHA8_ASTC_4x4 = internalFormat88;
            InternalFormat internalFormat89 = new InternalFormat("SRGB8_ALPHA8_ASTC_5x4", 88);
            SRGB8_ALPHA8_ASTC_5x4 = internalFormat89;
            InternalFormat internalFormat90 = new InternalFormat("SRGB8_ALPHA8_ASTC_5x5", 89);
            SRGB8_ALPHA8_ASTC_5x5 = internalFormat90;
            InternalFormat internalFormat91 = new InternalFormat("SRGB8_ALPHA8_ASTC_6x5", 90);
            SRGB8_ALPHA8_ASTC_6x5 = internalFormat91;
            InternalFormat internalFormat92 = new InternalFormat("SRGB8_ALPHA8_ASTC_6x6", 91);
            SRGB8_ALPHA8_ASTC_6x6 = internalFormat92;
            InternalFormat internalFormat93 = new InternalFormat("SRGB8_ALPHA8_ASTC_8x5", 92);
            SRGB8_ALPHA8_ASTC_8x5 = internalFormat93;
            InternalFormat internalFormat94 = new InternalFormat("SRGB8_ALPHA8_ASTC_8x6", 93);
            SRGB8_ALPHA8_ASTC_8x6 = internalFormat94;
            InternalFormat internalFormat95 = new InternalFormat("SRGB8_ALPHA8_ASTC_8x8", 94);
            SRGB8_ALPHA8_ASTC_8x8 = internalFormat95;
            InternalFormat internalFormat96 = new InternalFormat("SRGB8_ALPHA8_ASTC_10x5", 95);
            SRGB8_ALPHA8_ASTC_10x5 = internalFormat96;
            InternalFormat internalFormat97 = new InternalFormat("SRGB8_ALPHA8_ASTC_10x6", 96);
            SRGB8_ALPHA8_ASTC_10x6 = internalFormat97;
            InternalFormat internalFormat98 = new InternalFormat("SRGB8_ALPHA8_ASTC_10x8", 97);
            SRGB8_ALPHA8_ASTC_10x8 = internalFormat98;
            InternalFormat internalFormat99 = new InternalFormat("SRGB8_ALPHA8_ASTC_10x10", 98);
            SRGB8_ALPHA8_ASTC_10x10 = internalFormat99;
            InternalFormat internalFormat100 = new InternalFormat("SRGB8_ALPHA8_ASTC_12x10", 99);
            SRGB8_ALPHA8_ASTC_12x10 = internalFormat100;
            InternalFormat internalFormat101 = new InternalFormat("SRGB8_ALPHA8_ASTC_12x12", 100);
            SRGB8_ALPHA8_ASTC_12x12 = internalFormat101;
            InternalFormat internalFormat102 = new InternalFormat("RED_RGTC1", 101);
            RED_RGTC1 = internalFormat102;
            InternalFormat internalFormat103 = new InternalFormat("SIGNED_RED_RGTC1", 102);
            SIGNED_RED_RGTC1 = internalFormat103;
            InternalFormat internalFormat104 = new InternalFormat("RED_GREEN_RGTC2", 103);
            RED_GREEN_RGTC2 = internalFormat104;
            InternalFormat internalFormat105 = new InternalFormat("SIGNED_RED_GREEN_RGTC2", 104);
            SIGNED_RED_GREEN_RGTC2 = internalFormat105;
            InternalFormat internalFormat106 = new InternalFormat("RGB_BPTC_SIGNED_FLOAT", 105);
            RGB_BPTC_SIGNED_FLOAT = internalFormat106;
            InternalFormat internalFormat107 = new InternalFormat("RGB_BPTC_UNSIGNED_FLOAT", 106);
            RGB_BPTC_UNSIGNED_FLOAT = internalFormat107;
            InternalFormat internalFormat108 = new InternalFormat("RGBA_BPTC_UNORM", 107);
            RGBA_BPTC_UNORM = internalFormat108;
            InternalFormat internalFormat109 = new InternalFormat("SRGB_ALPHA_BPTC_UNORM", 108);
            SRGB_ALPHA_BPTC_UNORM = internalFormat109;
            $VALUES = new InternalFormat[]{internalFormat, internalFormat2, internalFormat3, internalFormat4, internalFormat5, internalFormat6, internalFormat7, internalFormat8, internalFormat9, internalFormat10, internalFormat11, internalFormat12, internalFormat13, internalFormat14, internalFormat15, internalFormat16, internalFormat17, internalFormat18, internalFormat19, internalFormat20, internalFormat21, internalFormat22, internalFormat23, internalFormat24, internalFormat25, internalFormat26, internalFormat27, internalFormat28, internalFormat29, internalFormat30, internalFormat31, internalFormat32, internalFormat33, internalFormat34, internalFormat35, internalFormat36, internalFormat37, internalFormat38, internalFormat39, internalFormat40, internalFormat41, internalFormat42, internalFormat43, internalFormat44, internalFormat45, internalFormat46, internalFormat47, internalFormat48, internalFormat49, internalFormat50, internalFormat51, internalFormat52, internalFormat53, internalFormat54, internalFormat55, internalFormat56, internalFormat57, internalFormat58, internalFormat59, internalFormat60, internalFormat61, internalFormat62, internalFormat63, internalFormat64, internalFormat65, internalFormat66, internalFormat67, internalFormat68, internalFormat69, internalFormat70, internalFormat71, internalFormat72, internalFormat73, internalFormat74, internalFormat75, internalFormat76, internalFormat77, internalFormat78, internalFormat79, internalFormat80, internalFormat81, internalFormat82, internalFormat83, internalFormat84, internalFormat85, internalFormat86, internalFormat87, internalFormat88, internalFormat89, internalFormat90, internalFormat91, internalFormat92, internalFormat93, internalFormat94, internalFormat95, internalFormat96, internalFormat97, internalFormat98, internalFormat99, internalFormat100, internalFormat101, internalFormat102, internalFormat103, internalFormat104, internalFormat105, internalFormat106, internalFormat107, internalFormat108, internalFormat109};
        }

        public static InternalFormat valueOf(String str) {
            return (InternalFormat) Enum.valueOf(InternalFormat.class, str);
        }

        public static InternalFormat[] values() {
            return (InternalFormat[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Sampler {
        private static final /* synthetic */ Sampler[] $VALUES;
        public static final Sampler SAMPLER_2D;
        public static final Sampler SAMPLER_2D_ARRAY;
        public static final Sampler SAMPLER_3D;
        public static final Sampler SAMPLER_CUBEMAP;
        public static final Sampler SAMPLER_EXTERNAL;

        static {
            Sampler sampler = new Sampler("SAMPLER_2D", 0);
            SAMPLER_2D = sampler;
            Sampler sampler2 = new Sampler("SAMPLER_2D_ARRAY", 1);
            SAMPLER_2D_ARRAY = sampler2;
            Sampler sampler3 = new Sampler("SAMPLER_CUBEMAP", 2);
            SAMPLER_CUBEMAP = sampler3;
            Sampler sampler4 = new Sampler("SAMPLER_EXTERNAL", 3);
            SAMPLER_EXTERNAL = sampler4;
            Sampler sampler5 = new Sampler("SAMPLER_3D", 4);
            SAMPLER_3D = sampler5;
            $VALUES = new Sampler[]{sampler, sampler2, sampler3, sampler4, sampler5};
        }

        public static Sampler valueOf(String str) {
            return (Sampler) Enum.valueOf(Sampler.class, str);
        }

        public static Sampler[] values() {
            return (Sampler[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type BYTE;
        public static final Type COMPRESSED;
        public static final Type FLOAT;
        public static final Type HALF;
        public static final Type INT;
        public static final Type SHORT;
        public static final Type UBYTE;
        public static final Type UINT;
        public static final Type UINT_10F_11F_11F_REV;
        public static final Type USHORT;
        public static final Type USHORT_565;

        static {
            Type type = new Type("UBYTE", 0);
            UBYTE = type;
            Type type2 = new Type("BYTE", 1);
            BYTE = type2;
            Type type3 = new Type("USHORT", 2);
            USHORT = type3;
            Type type4 = new Type("SHORT", 3);
            SHORT = type4;
            Type type5 = new Type("UINT", 4);
            UINT = type5;
            Type type6 = new Type("INT", 5);
            INT = type6;
            Type type7 = new Type("HALF", 6);
            HALF = type7;
            Type type8 = new Type("FLOAT", 7);
            FLOAT = type8;
            Type type9 = new Type("COMPRESSED", 8);
            COMPRESSED = type9;
            Type type10 = new Type("UINT_10F_11F_11F_REV", 9);
            UINT_10F_11F_11F_REV = type10;
            Type type11 = new Type("USHORT_565", 10);
            USHORT_565 = type11;
            $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8, type9, type10, type11};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    static {
        try {
            Class.forName("android.hardware.HardwareBuffer");
        } catch (ClassNotFoundException unused) {
        }
        Sampler.values();
        InternalFormat.values();
    }

    public Texture(long j2) {
        this.f28578a = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nBuilderBuild(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderFormat(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderHeight(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderImportTexture(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderLevels(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderSampler(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderUsage(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderWidth(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);

    private static native void nGenerateMipmaps(long j2, long j3);

    private static native int nGetHeight(long j2, int i2);

    private static native int nGetLevels(long j2);

    private static native int nGetWidth(long j2, int i2);

    private static native int nSetImage3D(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer, int i9, int i10, int i11, int i12, int i13, int i14, int i15, Object obj, Runnable runnable);

    private static native int nSetImage3DCompressed(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer, int i9, int i10, int i11, int i12, int i13, int i14, int i15, Object obj, Runnable runnable);

    private static native int nSetImageCubemap(long j2, long j3, int i2, Buffer buffer, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, Object obj, Runnable runnable);

    private static native int nSetImageCubemapCompressed(long j2, long j3, int i2, Buffer buffer, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, Object obj, Runnable runnable);

    public long getNativeObject() {
        long j2 = this.f28578a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed Texture");
        return 0L;
    }

    public final void k(Engine engine) {
        nGenerateMipmaps(getNativeObject(), engine.getNativeObject());
    }

    public final int l(int i2) {
        return nGetHeight(getNativeObject(), i2);
    }

    public final int m() {
        return nGetLevels(getNativeObject());
    }

    public final int n(int i2) {
        return nGetWidth(getNativeObject(), i2);
    }

    public final void o(Engine engine, int i2, PixelBufferDescriptor pixelBufferDescriptor, int[] iArr) {
        Buffer buffer = pixelBufferDescriptor.f28582a;
        Type type = pixelBufferDescriptor.f28583b;
        if ((type == Type.COMPRESSED ? nSetImageCubemapCompressed(getNativeObject(), engine.getNativeObject(), i2, buffer, buffer.remaining(), pixelBufferDescriptor.d, pixelBufferDescriptor.f28585e, type.ordinal(), pixelBufferDescriptor.f28584c, pixelBufferDescriptor.f28587h, pixelBufferDescriptor.f28588i.ordinal(), iArr, pixelBufferDescriptor.f28589j, pixelBufferDescriptor.f28590k) : nSetImageCubemap(getNativeObject(), engine.getNativeObject(), i2, buffer, buffer.remaining(), pixelBufferDescriptor.d, pixelBufferDescriptor.f28585e, type.ordinal(), pixelBufferDescriptor.f28584c, pixelBufferDescriptor.f28586f, pixelBufferDescriptor.g.ordinal(), iArr, pixelBufferDescriptor.f28589j, pixelBufferDescriptor.f28590k)) < 0) {
            throw new BufferOverflowException();
        }
    }

    public final void p(Engine engine, PixelBufferDescriptor pixelBufferDescriptor) {
        int iN = n(0);
        int iL = l(0);
        Type type = pixelBufferDescriptor.f28583b;
        Buffer buffer = pixelBufferDescriptor.f28582a;
        if ((type == Type.COMPRESSED ? nSetImage3DCompressed(getNativeObject(), engine.getNativeObject(), 0, 0, 0, 0, iN, iL, 1, buffer, buffer.remaining(), pixelBufferDescriptor.d, pixelBufferDescriptor.f28585e, type.ordinal(), pixelBufferDescriptor.f28584c, pixelBufferDescriptor.f28587h, pixelBufferDescriptor.f28588i.ordinal(), pixelBufferDescriptor.f28589j, pixelBufferDescriptor.f28590k) : nSetImage3D(getNativeObject(), engine.getNativeObject(), 0, 0, 0, 0, iN, iL, 1, buffer, buffer.remaining(), pixelBufferDescriptor.d, pixelBufferDescriptor.f28585e, type.ordinal(), pixelBufferDescriptor.f28584c, pixelBufferDescriptor.f28586f, pixelBufferDescriptor.g.ordinal(), pixelBufferDescriptor.f28589j, pixelBufferDescriptor.f28590k)) < 0) {
            throw new BufferOverflowException();
        }
    }

    public static class PixelBufferDescriptor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Buffer f28582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f28583b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f28584c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f28585e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f28586f;
        public final Format g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f28587h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final CompressedFormat f28588i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Object f28589j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final Runnable f28590k;

        public PixelBufferDescriptor(ByteBuffer byteBuffer, CompressedFormat compressedFormat, int i2) {
            this.f28584c = 1;
            this.d = 0;
            this.f28585e = 0;
            this.f28586f = 0;
            this.f28582a = byteBuffer;
            this.f28583b = Type.COMPRESSED;
            this.f28584c = 1;
            this.f28588i = compressedFormat;
            this.f28587h = i2;
        }

        public PixelBufferDescriptor(Buffer buffer, Format format, Type type) {
            this(buffer, format, type, 1, 0, 0, 0, null, null);
        }

        public PixelBufferDescriptor(Buffer buffer, Format format, Type type, int i2) {
            this(buffer, format, type, i2, 0, 0, 0, null, null);
        }

        public PixelBufferDescriptor(Buffer buffer, Format format, Type type, int i2, int i3, int i4) {
            this(buffer, format, type, i2, i3, i4, 0, null, null);
        }

        public PixelBufferDescriptor(Buffer buffer, Format format, Type type, int i2, int i3, int i4, int i5, Object obj, Runnable runnable) {
            this.f28582a = buffer;
            this.d = i3;
            this.f28585e = i4;
            this.f28583b = type;
            this.f28584c = i2;
            this.f28586f = i5;
            this.g = format;
            this.f28589j = obj;
            this.f28590k = runnable;
        }
    }
}
