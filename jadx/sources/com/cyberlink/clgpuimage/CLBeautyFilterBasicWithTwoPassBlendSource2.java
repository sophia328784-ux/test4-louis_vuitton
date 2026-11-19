package com.cyberlink.clgpuimage;

import android.content.res.AssetManager;
import android.opengl.GLES20;
import com.batch.android.x0.h;
import com.cyberlink.clgpuimage.util.TextureRotationUtil;
import com.sightcall.uvc.Camera;
import defpackage.fc;
import java.io.IOException;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public class CLBeautyFilterBasicWithTwoPassBlendSource2 extends GPUImageFilter {
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public final float L;
    public TableMode M;
    public boolean N;
    public int[] O;
    public int P;
    public ByteBuffer Q;
    public final FloatBuffer o;
    public final FloatBuffer p;
    public final IBeautyFilter2.FilterType q;
    public String r;
    public String s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int[] y;
    public int[] z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class PostProcessMode {
        public static final PostProcessMode POST_FADE;
        public static final PostProcessMode POST_NONE;
        public static final PostProcessMode POST_NORMAL;
        public static final PostProcessMode POST_SOURCE;
        public static final PostProcessMode POST_VIGNETTE;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ PostProcessMode[] f25404a;

        static {
            PostProcessMode postProcessMode = new PostProcessMode("POST_NONE", 0);
            POST_NONE = postProcessMode;
            PostProcessMode postProcessMode2 = new PostProcessMode("POST_NORMAL", 1);
            POST_NORMAL = postProcessMode2;
            PostProcessMode postProcessMode3 = new PostProcessMode("POST_VIGNETTE", 2);
            POST_VIGNETTE = postProcessMode3;
            PostProcessMode postProcessMode4 = new PostProcessMode("POST_SOURCE", 3);
            POST_SOURCE = postProcessMode4;
            PostProcessMode postProcessMode5 = new PostProcessMode("POST_FADE", 4);
            POST_FADE = postProcessMode5;
            f25404a = new PostProcessMode[]{postProcessMode, postProcessMode2, postProcessMode3, postProcessMode4, postProcessMode5};
        }

        public static PostProcessMode valueOf(String str) {
            return (PostProcessMode) Enum.valueOf(PostProcessMode.class, str);
        }

        public static PostProcessMode[] values() {
            return (PostProcessMode[]) f25404a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class PreProcessMode {
        public static final PreProcessMode PRE_NONE;
        public static final PreProcessMode PRE_WHITEN;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ PreProcessMode[] f25405a;

        static {
            PreProcessMode preProcessMode = new PreProcessMode("PRE_NONE", 0);
            PRE_NONE = preProcessMode;
            PreProcessMode preProcessMode2 = new PreProcessMode("PRE_WHITEN", 1);
            PRE_WHITEN = preProcessMode2;
            f25405a = new PreProcessMode[]{preProcessMode, preProcessMode2};
        }

        public static PreProcessMode valueOf(String str) {
            return (PreProcessMode) Enum.valueOf(PreProcessMode.class, str);
        }

        public static PreProcessMode[] values() {
            return (PreProcessMode[]) f25405a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TableMode {
        public static final TableMode TABLE_1D;
        public static final TableMode TABLE_3D;
        public static final TableMode TABLE_NONE;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ TableMode[] f25406a;

        static {
            TableMode tableMode = new TableMode("TABLE_NONE", 0);
            TABLE_NONE = tableMode;
            TableMode tableMode2 = new TableMode("TABLE_3D", 1);
            TABLE_3D = tableMode2;
            TableMode tableMode3 = new TableMode("TABLE_1D", 2);
            TABLE_1D = tableMode3;
            f25406a = new TableMode[]{tableMode, tableMode2, tableMode3};
        }

        public static TableMode valueOf(String str) {
            return (TableMode) Enum.valueOf(TableMode.class, str);
        }

        public static TableMode[] values() {
            return (TableMode[]) f25406a.clone();
        }
    }

    public CLBeautyFilterBasicWithTwoPassBlendSource2(String str, String str2, String str3, String str4, IBeautyFilter2.FilterType filterType) {
        super(str3, str4);
        this.t = 960;
        this.u = Sink.Video.MAX_DIMENSION_LOW;
        this.v = Camera.DEFAULT_PREVIEW_HEIGHT;
        this.w = 360;
        this.r = str;
        this.s = str2;
        this.q = filterType;
        this.L = filterType == IBeautyFilter2.FilterType.LIVE_SMOOTH ? 6.0f : 2.0f;
        float[] fArr = GPUImageRenderer.M;
        FloatBuffer floatBufferV = fc.v(ByteBuffer.allocateDirect(32));
        this.o = floatBufferV;
        floatBufferV.put(fArr).position(0);
        FloatBuffer floatBufferV2 = fc.v(ByteBuffer.allocateDirect(32));
        this.p = floatBufferV2;
        floatBufferV2.put(TextureRotationUtil.f25839a).position(0);
        this.M = TableMode.TABLE_NONE;
        this.N = false;
    }

    public void j(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        IntBuffer intBufferAllocate = IntBuffer.allocate(1024);
        GLES20.glGetIntegerv(36006, intBufferAllocate);
        IntBuffer intBufferAllocate2 = IntBuffer.allocate(4);
        GLES20.glGetIntegerv(2978, intBufferAllocate2);
        GLES20.glUseProgram(this.A);
        GLES20.glViewport(0, 0, this.v, this.w);
        GLES20.glBindFramebuffer(36160, this.y[0]);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.B, 2, 5126, false, 0, (Buffer) floatBuffer);
        GLES20.glEnableVertexAttribArray(this.B);
        floatBuffer2.position(0);
        GLES20.glVertexAttribPointer(this.D, 2, 5126, false, 0, (Buffer) floatBuffer2);
        GLES20.glEnableVertexAttribArray(this.D);
        if (i2 != -1) {
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, i2);
            GLES20.glUniform1i(this.C, 0);
        }
        float fMin = Math.min(this.v, this.w) / 720.0f;
        IBeautyFilter2.FilterType filterType = IBeautyFilter2.FilterType.LIVE_SMOOTH;
        IBeautyFilter2.FilterType filterType2 = this.q;
        float f2 = fMin * this.L;
        float fMax = (float) Math.max(1.0d, filterType2 == filterType ? Math.floor(f2) : f2);
        GLES20.glUniform2f(this.E, (fMax - 0.5f) / this.v, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        GLES20.glUniform2f(this.F, fMax / this.v, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(this.B);
        GLES20.glDisableVertexAttribArray(this.D);
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
        GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(1), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
    }

    public void k(int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        this.t = i2;
        this.u = i3;
        int i4 = i2 / 2;
        this.v = i4;
        int i5 = i3 / 2;
        this.w = i5;
        int[] iArr = new int[1];
        this.y = iArr;
        this.z = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glGenTextures(1, this.z, 0);
        GLES20.glBindTexture(3553, this.z[0]);
        GLES20.glTexImage2D(3553, 0, 6408, i4, i5, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
        GLES20.glGetIntegerv(36006, intBufferAllocate);
        GLES20.glBindFramebuffer(36160, this.y[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.z[0], 0);
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
        float fMin = Math.min(this.t, this.u) / 720.0f;
        IBeautyFilter2.FilterType filterType = IBeautyFilter2.FilterType.LIVE_SMOOTH;
        IBeautyFilter2.FilterType filterType2 = this.q;
        float f2 = fMin * this.L;
        final float fMax = (float) Math.max(1.0d, filterType2 == filterType ? Math.floor(f2) : f2);
        final float f3 = fMax - 0.5f;
        e(new Runnable() { // from class: com.cyberlink.clgpuimage.CLBeautyFilterBasicWithTwoPassBlendSource2.1
            @Override // java.lang.Runnable
            public void run() {
                CLBeautyFilterBasicWithTwoPassBlendSource2 cLBeautyFilterBasicWithTwoPassBlendSource2 = CLBeautyFilterBasicWithTwoPassBlendSource2.this;
                cLBeautyFilterBasicWithTwoPassBlendSource2.g(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, f3 / cLBeautyFilterBasicWithTwoPassBlendSource2.u}, cLBeautyFilterBasicWithTwoPassBlendSource2.G);
                CLBeautyFilterBasicWithTwoPassBlendSource2 cLBeautyFilterBasicWithTwoPassBlendSource3 = CLBeautyFilterBasicWithTwoPassBlendSource2.this;
                cLBeautyFilterBasicWithTwoPassBlendSource3.g(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, fMax / cLBeautyFilterBasicWithTwoPassBlendSource3.u}, cLBeautyFilterBasicWithTwoPassBlendSource3.H);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004b A[LOOP:0: B:27:0x0049->B:28:0x004b, LOOP_END] */
    public final void l(AssetManager assetManager, byte[] bArr, TableMode tableMode) {
        int i2;
        int i3;
        this.M = tableMode;
        this.N = true;
        if (tableMode != TableMode.TABLE_NONE) {
            int i4 = 256;
            if (tableMode == TableMode.TABLE_3D) {
                i2 = 128;
            } else if (tableMode == TableMode.TABLE_1D) {
                i2 = 1;
            } else {
                i2 = 0;
                i4 = 0;
            }
            int i5 = i4 * i2 * 3;
            byte[] bArr2 = new byte[i5];
            if (tableMode == TableMode.TABLE_1D) {
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(i5, bArr.length));
            } else {
                InputStream inputStreamOpen = null;
                try {
                    try {
                        try {
                            inputStreamOpen = assetManager.open("color_effect_table/");
                            inputStreamOpen.read(bArr2, 0, i5);
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            if (inputStreamOpen != null) {
                            }
                            if (this.N) {
                                for (i3 = 0; i3 < i5; i3++) {
                                    byte b2 = bArr2[i3];
                                    byte b3 = (byte) (((b2 & 15) << 4) | ((b2 & 240) >> 4));
                                    byte b4 = (byte) (((b3 & 51) << 2) | ((b3 & h.a.q) >> 2));
                                    bArr2[i3] = (byte) (((b4 & 85) << 1) | ((b4 & 170) >> 1));
                                }
                            }
                            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i5);
                            this.Q = byteBufferAllocate;
                            byteBufferAllocate.put(bArr2, 0, i5);
                            this.Q.position(0);
                        }
                        inputStreamOpen.close();
                    } catch (IOException unused) {
                    }
                } catch (Throwable th) {
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            }
            if (this.N) {
                while (i3 < i5) {
                    byte b5 = bArr2[i3];
                    byte b6 = (byte) (((b5 & 15) << 4) | ((b5 & 240) >> 4));
                    byte b7 = (byte) (((b6 & 51) << 2) | ((b6 & h.a.q) >> 2));
                    bArr2[i3] = (byte) (((b7 & 85) << 1) | ((b7 & 170) >> 1));
                }
            }
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i5);
            this.Q = byteBufferAllocate2;
            byteBufferAllocate2.put(bArr2, 0, i5);
            this.Q.position(0);
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onDestroy() {
        int[] iArr;
        int[] iArr2 = this.z;
        if (iArr2 != null) {
            GLES20.glDeleteTextures(iArr2.length, iArr2, 0);
            this.z = null;
        }
        int[] iArr3 = this.y;
        if (iArr3 != null) {
            GLES20.glDeleteFramebuffers(iArr3.length, iArr3, 0);
            this.y = null;
        }
        GLES20.glDeleteProgram(this.A);
        if (this.M == TableMode.TABLE_NONE || (iArr = this.O) == null) {
            return;
        }
        GLES20.glDeleteTextures(iArr.length, iArr, 0);
        this.O = null;
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (!isInitialized() || this.y == null || this.z == null) {
            return;
        }
        j(i2, this.o, this.p);
        GLES20.glUseProgram(this.mGLProgId);
        f();
        if (isInitialized()) {
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.d);
            floatBuffer2.position(0);
            GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) floatBuffer2);
            GLES20.glEnableVertexAttribArray(this.f25445f);
            if (this.z[0] != -1) {
                GLES20.glActiveTexture(33987);
                GLES20.glBindTexture(3553, this.z[0]);
                GLES20.glUniform1i(this.f25444e, 3);
            }
            if (i2 != -1) {
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, i2);
                GLES20.glUniform1i(this.x, 0);
            }
            if (this.M != TableMode.TABLE_NONE && this.O[0] != -1) {
                GLES20.glActiveTexture(33988);
                GLES20.glBindTexture(3553, this.O[0]);
                GLES20.glUniform1i(this.P, 4);
            }
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.d);
            GLES20.glDisableVertexAttribArray(this.f25445f);
            GLES20.glBindTexture(3553, 0);
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onInit() {
        int i2;
        int i3;
        int iD = OpenGlUtils.d(this.r, this.s);
        this.A = iD;
        this.B = GLES20.glGetAttribLocation(iD, "position");
        this.C = GLES20.glGetUniformLocation(this.A, "inputImageTexture");
        this.D = GLES20.glGetAttribLocation(this.A, "inputTextureCoordinate");
        this.E = GLES20.glGetUniformLocation(this.A, "sampling_offset_start");
        this.F = GLES20.glGetUniformLocation(this.A, "sampling_step");
        super.onInit();
        this.G = GLES20.glGetUniformLocation(getProgram(), "sampling_offset_start");
        this.H = GLES20.glGetUniformLocation(getProgram(), "sampling_step");
        this.I = GLES20.glGetUniformLocation(getProgram(), "smooth_strength");
        this.J = GLES20.glGetUniformLocation(getProgram(), "color_strength");
        this.K = GLES20.glGetUniformLocation(getProgram(), "fade_strength");
        this.x = GLES20.glGetUniformLocation(getProgram(), "rootImageTexture");
        TableMode tableMode = this.M;
        if (tableMode != TableMode.TABLE_NONE) {
            if (tableMode == TableMode.TABLE_3D) {
                i3 = 128;
                i2 = 256;
            } else if (tableMode == TableMode.TABLE_1D) {
                i2 = 256;
                i3 = 1;
            } else {
                i2 = 0;
                i3 = 0;
            }
            int[] iArr = new int[1];
            this.O = iArr;
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, this.O[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glTexImage2D(3553, 0, 6407, i2, i3, 0, 6407, 5121, this.Q);
            this.P = GLES20.glGetUniformLocation(getProgram(), "mapping_table_texture");
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onInitialized() {
        super.onInitialized();
        k(this.t, this.u);
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        this.g = i2;
        this.f25446h = i3;
        if (this.y != null) {
            int[] iArr = this.z;
            if (iArr != null) {
                GLES20.glDeleteTextures(iArr.length, iArr, 0);
                this.z = null;
            }
            int[] iArr2 = this.y;
            if (iArr2 != null) {
                GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
                this.y = null;
            }
        }
        k(i2, i3);
    }

    public final void setShaders(String str, String str2, String str3, String str4) {
        this.r = str;
        this.s = str2;
        super.setShaders(str3, str4);
    }

    public CLBeautyFilterBasicWithTwoPassBlendSource2(IBeautyFilter2.FilterType filterType) {
        this(GPUImageFilter.NO_FILTER_VERTEX_SHADER, GPUImageFilter.NO_FILTER_FRAGMENT_SHADER, GPUImageFilter.NO_FILTER_VERTEX_SHADER, GPUImageFilter.NO_FILTER_FRAGMENT_SHADER, filterType);
    }
}
