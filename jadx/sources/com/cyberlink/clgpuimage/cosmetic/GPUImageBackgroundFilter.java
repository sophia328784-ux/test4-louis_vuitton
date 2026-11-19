package com.cyberlink.clgpuimage.cosmetic;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.OpenGlUtils;
import com.cyberlink.clgpuimage.util.TextureAlignmentUtil;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.fc;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public final class GPUImageBackgroundFilter extends CLMakeupLivePluginFilter {
    public static final float[] A0 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};
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
    public final boolean K;
    public volatile boolean L;
    public volatile boolean M;
    public volatile boolean N;
    public volatile boolean O;
    public boolean P;
    public boolean Q;
    public ByteBuffer R;
    public ByteBuffer S;
    public ByteBuffer T;
    public ByteBuffer U;
    public int V;
    public int W;
    public int X;
    public int Y;
    public int Z;
    public int a0;
    public TextureAlignmentUtil.AlignMode b0;
    public final al c0;
    public final GPUImageFilter d0;
    public int[] e0;
    public int[] f0;
    public final FloatBuffer g0;
    public final FloatBuffer h0;
    public final FloatBuffer i0;
    public final BackgroundData j0;
    public final CLMakeupLiveHairDyeFilter.HairDyeData k0;
    public int l0;
    public final Object m0;
    public final Object n0;
    public final Object o0;
    public int p;
    public final Object p0;
    public int q;
    public final Object q0;
    public int r;
    public final Object r0;
    public int s;
    public final a s0;
    public int t;
    public final a t0;
    public int u;
    public c u0;
    public int v;
    public c v0;
    public int w;
    public c w0;
    public int x;
    public int x0;
    public int y;
    public int y0;
    public int z;
    public final ArrayList z0;

    public static class BackgroundData {
        public byte[] m_segment_map_data;
        int m_segment_map_height;
        int m_segment_map_width;
        public boolean m_is_enabled = false;
        public int m_rotation = 90;
        public boolean m_is_flip = false;

        public void AllocByteArray(int i2, int i3) {
            if (this.m_segment_map_width == i2 && this.m_segment_map_height == i3) {
                return;
            }
            this.m_segment_map_width = i2;
            this.m_segment_map_height = i3;
            this.m_segment_map_data = new byte[i2 * i3];
        }

        public void Copy(BackgroundData backgroundData) {
            boolean z = backgroundData.m_is_enabled;
            this.m_is_enabled = z;
            if (!z) {
                AllocByteArray(0, 0);
                return;
            }
            this.m_rotation = backgroundData.m_rotation;
            this.m_is_flip = backgroundData.m_is_flip;
            AllocByteArray(backgroundData.m_segment_map_width, backgroundData.m_segment_map_height);
            byte[] bArr = backgroundData.m_segment_map_data;
            if (bArr != null) {
                System.arraycopy(bArr, 0, this.m_segment_map_data, 0, bArr.length);
            }
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f25719a = b.f25720a;
    }

    /* JADX WARN: Enum class init method not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f25720a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f25721b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f25722c = 3;
    }

    public static class c {
    }

    public static final class d extends GPUImageFilter {
        public float A;
        public float B;
        public float C;
        public float D;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public FloatBuffer x;
        public float y;
        public float z;

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public final void d() {
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, this.w);
            GLES20.glUniform1i(this.p, 1);
            GLES20.glVertexAttribPointer(this.o, 2, 5126, false, 0, this.x.rewind());
            GLES20.glEnableVertexAttribArray(this.o);
            GLES20.glUniform1f(this.q, this.y);
            GLES20.glUniform1f(this.r, this.z);
            GLES20.glUniform1f(this.s, this.A);
            GLES20.glUniform1f(this.t, this.B);
            GLES20.glUniform1f(this.u, this.C);
            GLES20.glUniform1f(this.v, this.D);
        }

        public final void j(int i2, FloatBuffer floatBuffer, int i3, FloatBuffer floatBuffer2, float f2, float f3, float f4, float f5, float f6, float f7, FloatBuffer floatBuffer3) {
            this.w = i3;
            this.x = floatBuffer2;
            this.y = f2;
            this.z = f3;
            this.A = f4;
            this.B = f5;
            this.C = f6;
            this.D = f7;
            super.onDraw(i2, floatBuffer3, floatBuffer);
            GLES20.glDisableVertexAttribArray(this.o);
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public final void onInit() {
            super.onInit();
            this.o = GLES20.glGetAttribLocation(getProgram(), "inputHairTextureCoordinate");
            this.p = GLES20.glGetUniformLocation(getProgram(), "inputHairTexture");
            this.q = GLES20.glGetUniformLocation(getProgram(), "hairCenterX");
            this.r = GLES20.glGetUniformLocation(getProgram(), "hairCenterY");
            this.u = GLES20.glGetUniformLocation(getProgram(), "hairBackgroundImageWidth");
            this.v = GLES20.glGetUniformLocation(getProgram(), "hairBackgroundImageHeight");
            this.s = GLES20.glGetUniformLocation(getProgram(), "hairWidth");
            this.t = GLES20.glGetUniformLocation(getProgram(), "hairHeight");
        }
    }

    public GPUImageBackgroundFilter(boolean z, boolean z2) {
        super(z ? "attribute vec4 position;\n\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputMaskTextureCoordinate;\nattribute vec4 inputAnimatedTextureCoordinate;\nattribute vec4 inputStaticTextureCoordinate;\nattribute vec4 inputHairTextureCoordinate;\n\nvarying vec2 textureCoordinate;\nvarying vec2 maskTextureCoordinate;\nvarying vec2 animatedTextureCoordinate;\nvarying vec2 staticTextureCoordinate;\nvarying vec2 hairTextureCoordinate;\n\nuniform float hairCenterX;\nuniform float hairCenterY;\nuniform float hairBackgroundImageWidth;\nuniform float hairBackgroundImageHeight;\nuniform float hairWidth;\nuniform float hairHeight;\n\nvoid main()\n{\n   gl_Position = position;\n   textureCoordinate = inputTextureCoordinate.xy;\n   maskTextureCoordinate = inputMaskTextureCoordinate.xy;\n   animatedTextureCoordinate = inputAnimatedTextureCoordinate.xy;\n   staticTextureCoordinate = inputStaticTextureCoordinate.xy;\n\n   hairTextureCoordinate.x = (inputHairTextureCoordinate.x - hairCenterX) * hairBackgroundImageWidth / hairWidth + 0.5;\n   hairTextureCoordinate.y = (inputHairTextureCoordinate.y - hairCenterY) * hairBackgroundImageHeight / hairHeight + 0.5;\n}\n" : "attribute vec4 position;\n\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputAnimatedTextureCoordinate;\nattribute vec4 inputStaticTextureCoordinate;\n\nvarying vec2 textureCoordinate;\nvarying vec2 animatedTextureCoordinate;\nvarying vec2 staticTextureCoordinate;\n\nvoid main()\n{\n   gl_Position = position;\n   textureCoordinate = inputTextureCoordinate.xy;\n   animatedTextureCoordinate = inputAnimatedTextureCoordinate.xy;\n   staticTextureCoordinate = inputStaticTextureCoordinate.xy;\n}\n", z ? "#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;\nvarying vec2 maskTextureCoordinate;\nvarying vec2 animatedTextureCoordinate;\nvarying vec2 staticTextureCoordinate;\nvarying vec2 hairTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputMaskTexture;\nuniform sampler2D inputAnimatedTexture;\nuniform sampler2D inputStaticTexture;\nuniform sampler2D inputHairTexture;\n\nuniform int animatedTextureColorIsPremultipliedAlpha;\nuniform int staticTextureColorIsPremultipliedAlpha;\n\nvoid main()\n{\n   vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   vec4 maskTextureColor = texture2D(inputMaskTexture, maskTextureCoordinate);\n   vec4 animatedTextureColor = texture2D(inputAnimatedTexture, animatedTextureCoordinate);\n   vec4 staticTextureColor = texture2D(inputStaticTexture, staticTextureCoordinate);\n\n   animatedTextureColor = vec4(animatedTextureColor.rgb * max(animatedTextureColor.a, float(animatedTextureColorIsPremultipliedAlpha)), animatedTextureColor.a);\n   staticTextureColor = vec4(staticTextureColor.rgb * max(staticTextureColor.a, float(staticTextureColorIsPremultipliedAlpha)), staticTextureColor.a);\n\n   vec4 backgroundColor = mix(animatedTextureColor, staticTextureColor, staticTextureColor.a);\n   float hairAlpha = texture2D(inputHairTexture, hairTextureCoordinate).r;\n   float maskValue = max(maskTextureColor.r, hairAlpha);\n\n   gl_FragColor = (textureColor * maskValue) + (backgroundColor * (1.0 - maskValue));\n}\n" : "#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;\nvarying vec2 animatedTextureCoordinate;\nvarying vec2 staticTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputAnimatedTexture;\nuniform sampler2D inputStaticTexture;\n\nuniform int animatedTextureColorIsPremultipliedAlpha;\nuniform int staticTextureColorIsPremultipliedAlpha;\n\nvoid main()\n{\n   vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   vec4 animatedTextureColor = texture2D(inputAnimatedTexture, animatedTextureCoordinate);\n   vec4 staticTextureColor = texture2D(inputStaticTexture, staticTextureCoordinate);\n\n   animatedTextureColor = vec4(animatedTextureColor.rgb * max(animatedTextureColor.a, float(animatedTextureColorIsPremultipliedAlpha)), animatedTextureColor.a);\n   staticTextureColor = vec4(staticTextureColor.rgb * max(staticTextureColor.a, float(staticTextureColorIsPremultipliedAlpha)), staticTextureColor.a);\n\n   vec4 result = (textureColor * (1.0 - animatedTextureColor.a)) + animatedTextureColor;\n   result = (result * (1.0 - staticTextureColor.a)) + staticTextureColor;\n\n   gl_FragColor = vec4(result.rgb, 1.0);\n}\n");
        this.x = -1;
        this.y = -1;
        this.z = -1;
        this.A = -1;
        this.B = -1;
        TextureAlignmentUtil.AlignMode alignMode = TextureAlignmentUtil.AlignMode.ALIGN_STRETCH;
        this.b0 = alignMode;
        this.d0 = new GPUImageFilter();
        this.l0 = 90;
        this.m0 = new Object();
        this.n0 = new Object();
        this.o0 = new Object();
        this.p0 = new Object();
        this.q0 = new Object();
        Object obj = new Object();
        this.r0 = obj;
        this.z0 = new ArrayList();
        this.K = z;
        if (z) {
            this.c0 = new al();
            float[] fArr = GPUImageRenderer.M;
            FloatBuffer floatBufferV = fc.v(ByteBuffer.allocateDirect(32));
            this.g0 = floatBufferV;
            floatBufferV.put(fArr).position(0);
            FloatBuffer floatBufferV2 = fc.v(ByteBuffer.allocateDirect(32));
            this.h0 = floatBufferV2;
            floatBufferV2.put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f}).position(0);
            FloatBuffer floatBufferV3 = fc.v(ByteBuffer.allocateDirect(32));
            this.i0 = floatBufferV3;
            floatBufferV3.put(A0).position(0);
        } else {
            this.c0 = null;
        }
        float[] fArr2 = A0;
        this.R = j(fArr2, 90);
        this.U = j(fArr2, 90);
        k(0, alignMode);
        k(1, alignMode);
        this.j0 = new BackgroundData();
        this.k0 = new CLMakeupLiveHairDyeFilter.HairDyeData();
        synchronized (obj) {
            this.t0 = new a();
            this.s0 = new a();
        }
    }

    @Override // com.cyberlink.clgpuimage.CLMakeupLivePluginFilter
    public final boolean GetEnabled() {
        return this.N || this.O;
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void d() {
        GLES20.glUniform1i(this.C, this.P ? 1 : 0);
        GLES20.glUniform1i(this.D, this.Q ? 1 : 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.L ? this.y : this.A);
        GLES20.glUniform1i(this.u, 3);
        GLES20.glEnableVertexAttribArray(this.q);
        this.z0.add(Integer.valueOf(this.q));
        this.S.position(0);
        GLES20.glVertexAttribPointer(this.q, 2, 5126, false, 0, (Buffer) this.S);
        GLES20.glActiveTexture(33988);
        GLES20.glBindTexture(3553, this.M ? this.z : this.A);
        GLES20.glUniform1i(this.v, 4);
        GLES20.glEnableVertexAttribArray(this.r);
        this.z0.add(Integer.valueOf(this.r));
        this.T.position(0);
        GLES20.glVertexAttribPointer(this.r, 2, 5126, false, 0, (Buffer) this.T);
    }

    public final ByteBuffer j(float[] fArr, int i2) {
        float[] fArr2;
        int i3 = this.l0;
        if (i2 == (i3 + Sink.ORIENTATION_270) % 360) {
            fArr2 = new float[]{fArr[4], fArr[5], fArr[0], fArr[1], fArr[6], fArr[7], fArr[2], fArr[3]};
        } else if (i2 == (i3 + Sink.ORIENTATION_180) % 360) {
            fArr2 = new float[]{fArr[6], fArr[7], fArr[4], fArr[5], fArr[2], fArr[3], fArr[0], fArr[1]};
        } else {
            fArr2 = i2 == (i3 + 90) % 360 ? new float[]{fArr[2], fArr[3], fArr[6], fArr[7], fArr[0], fArr[1], fArr[4], fArr[5]} : new float[]{fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7]};
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferOrder.asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr2);
        floatBufferAsFloatBuffer.flip();
        return byteBufferOrder;
    }

    public final void k(int i2, TextureAlignmentUtil.AlignMode alignMode) {
        int i3;
        int i4;
        if (i2 == 0) {
            i3 = this.X;
            i4 = this.Y;
        } else {
            i3 = this.Z;
            i4 = this.a0;
        }
        float[] fArrA = TextureAlignmentUtil.a(alignMode, i3, i4, getOutputWidth(), getOutputHeight());
        float f2 = fArrA[0];
        float f3 = fArrA[1];
        float f4 = fArrA[2];
        float f5 = fArrA[3];
        float[] fArr = {f2, f3, f4, f3, f2, f5, f4, f5};
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferOrder.asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr);
        floatBufferAsFloatBuffer.flip();
        if (i2 == 0) {
            this.S = byteBufferOrder;
        } else {
            this.T = byteBufferOrder;
        }
    }

    public final void l(BackgroundData backgroundData, CLMakeupLiveHairDyeFilter.HairDyeData hairDyeData) {
        synchronized (this.m0) {
            try {
                this.j0.Copy(backgroundData);
                this.k0.Copy(hairDyeData);
                BackgroundData backgroundData2 = this.j0;
                if (backgroundData2.m_is_enabled && backgroundData2.m_segment_map_data != null) {
                    this.R = j(A0, backgroundData2.m_rotation);
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.j0.m_segment_map_data);
                    BackgroundData backgroundData3 = this.j0;
                    int i2 = backgroundData3.m_segment_map_width;
                    int i3 = backgroundData3.m_segment_map_height;
                    if (byteBufferWrap != null) {
                        e(new af(this, byteBufferWrap, i2, i3));
                    }
                }
                CLMakeupLiveHairDyeFilter.HairDyeData hairDyeData2 = this.k0;
                if (!hairDyeData2.m_is_enabled || hairDyeData2.m_segment_map_data == null) {
                    ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(new byte[1]);
                    if (byteBufferWrap2 != null) {
                        e(new ai(this, 1, 1, byteBufferWrap2));
                    }
                } else {
                    this.U = j(A0, hairDyeData2.m_rotation);
                    ByteBuffer byteBufferWrap3 = ByteBuffer.wrap(this.k0.m_segment_map_data);
                    CLMakeupLiveHairDyeFilter.HairDyeData hairDyeData3 = this.k0;
                    int i4 = hairDyeData3.m_segment_map_width;
                    int i5 = hairDyeData3.m_segment_map_height;
                    if (byteBufferWrap3 != null) {
                        e(new ai(this, i5, i4, byteBufferWrap3));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m(Buffer buffer, int i2, int i3, TextureAlignmentUtil.AlignMode alignMode) {
        if (buffer == null) {
            return;
        }
        this.N = true;
        e(new ag(this, buffer, i3, i2, false, alignMode));
    }

    public final void n() {
        this.N = false;
        e(new aj(this));
    }

    public final void o() {
        this.O = true;
        e(new ak(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        r();
        this.d0.destroy();
        al alVar = this.c0;
        if (alVar != null) {
            bz bzVarListIterator = ((ImmutableList) alVar.f42018a).listIterator(0);
            while (bzVarListIterator.hasNext()) {
                ((GPUImageFilter) bzVarListIterator.next()).destroy();
            }
        }
        GLES20.glDeleteTextures(5, new int[]{this.x, this.y, this.z, this.A, this.B}, 0);
        this.x = -1;
        this.y = -1;
        this.z = -1;
        this.A = -1;
        this.B = -1;
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        a aVar;
        int i3;
        int i4;
        float f2;
        f();
        if (isInitialized()) {
            synchronized (this.r0) {
                aVar = this.t0;
                a aVar2 = this.s0;
                aVar.f25719a = aVar2.f25719a;
                aVar2.f25719a = b.f25720a;
            }
            int i5 = aVar.f25719a;
            boolean z = i5 == b.f25722c;
            boolean z2 = i5 == b.f25721b;
            if (z) {
                Log.g(3, "BackgroundFilter", "Get background info");
                synchronized (this.p0) {
                    this.u0 = new c();
                    this.u0.getClass();
                    this.u0.getClass();
                    this.u0.getClass();
                    this.p0.notifyAll();
                }
            }
            if (z2) {
                Log.g(3, "BackgroundFilter", "Get foreground info");
                synchronized (this.o0) {
                    this.v0 = new c();
                    this.v0.getClass();
                    this.v0.getClass();
                    this.v0.getClass();
                    this.o0.notifyAll();
                }
            }
            int[] iArr = new int[1];
            GLES20.glGetIntegerv(36006, iArr, 0);
            if (!this.L && !this.M) {
                GLES20.glBindFramebuffer(36160, iArr[0]);
                this.d0.onDraw(i2, floatBuffer, floatBuffer2);
                return;
            }
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(16384);
            this.z0.clear();
            if (this.K) {
                int[] iArr2 = this.e0;
                if (iArr2 == null || this.f0 == null) {
                    GLES20.glUseProgram(getProgram());
                    GLES20.glActiveTexture(33989);
                    GLES20.glBindTexture(3553, this.x);
                } else {
                    int i6 = this.x;
                    if (i6 == -1 || this.c0 == null) {
                        GLES20.glBindFramebuffer(36160, iArr2[1]);
                        GLES20.glClearColor(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16384);
                        GLES20.glBindFramebuffer(36160, iArr[0]);
                    } else {
                        int i7 = 0;
                        for (int i8 = 2; i7 < i8; i8 = i8) {
                            GPUImageFilter gPUImageFilter = (GPUImageFilter) this.c0.f42018a.get(i7);
                            GLES20.glBindFramebuffer(36160, this.e0[i7]);
                            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            GLES20.glClear(16384);
                            gPUImageFilter.onDraw(i6, this.g0, this.i0);
                            GLES20.glBindFramebuffer(36160, iArr[0]);
                            i6 = this.f0[i7];
                            i7++;
                        }
                    }
                    if (z2) {
                        Log.g(3, "BackgroundFilter", "Get mask info");
                        synchronized (this.q0) {
                            this.w0 = new c();
                            getOutputWidth();
                            c cVar = this.w0;
                            getOutputHeight();
                            cVar.getClass();
                            this.w0.getClass();
                            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((getOutputWidth() * getOutputHeight()) << 2);
                            byteBufferAllocateDirect.rewind();
                            GLES20.glBindFramebuffer(36160, this.e0[0]);
                            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            GLES20.glClear(16384);
                            d dVar = new d("attribute vec4 position;\n\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputHairTextureCoordinate;\n\nvarying vec2 textureCoordinate;\nvarying vec2 hairTextureCoordinate;\n\nuniform float hairCenterX;\nuniform float hairCenterY;\nuniform float hairWidth;\nuniform float hairHeight;\nuniform float hairBackgroundImageWidth;\nuniform float hairBackgroundImageHeight;\n\nvoid main()\n{\n   gl_Position = position;\n   textureCoordinate = inputTextureCoordinate.xy;\n   hairTextureCoordinate.x = (inputHairTextureCoordinate.x - hairCenterX) * hairBackgroundImageWidth / hairWidth + 0.5;\n   hairTextureCoordinate.y = (inputHairTextureCoordinate.y - hairCenterY) * hairBackgroundImageHeight / hairHeight + 0.5;\n}\n", "#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;\nvarying vec2 hairTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputHairTexture;\n\nvoid main()\n{\n   vec4 textureColor = vec4(1.0, 1.0, 1.0, 1.0);\n   vec4 maskTextureColor = texture2D(inputImageTexture, textureCoordinate);\n\n   vec4 backgroundColor = vec4(0.0, 0.0, 0.0, 1.0);\n   float hairAlpha = texture2D(inputHairTexture, hairTextureCoordinate).r;\n   float maskValue = max(maskTextureColor.r, hairAlpha);\n\n   gl_FragColor = (textureColor * maskValue) + (backgroundColor * (1.0 - maskValue));\n}\n");
                            dVar.init();
                            int outputWidth = getOutputWidth();
                            int outputHeight = getOutputHeight();
                            dVar.g = outputWidth;
                            dVar.f25446h = outputHeight;
                            this.R.position(0);
                            this.U.position(0);
                            int i9 = this.f0[1];
                            FloatBuffer floatBuffer3 = this.i0;
                            int i10 = this.B;
                            CLMakeupLiveHairDyeFilter.HairDyeData hairDyeData = this.k0;
                            float f3 = hairDyeData.m_roi_x;
                            f2 = 0.5f;
                            float f4 = hairDyeData.m_roi_width;
                            float f5 = (f4 * 0.5f) + f3;
                            float f6 = hairDyeData.m_analyzing_frame_width;
                            float f7 = f5 / f6;
                            i4 = 0;
                            float f8 = hairDyeData.m_roi_y;
                            float f9 = hairDyeData.m_roi_height;
                            float f10 = (f9 * 0.5f) + f8;
                            float f11 = hairDyeData.m_analyzing_frame_height;
                            dVar.j(i9, floatBuffer3, i10, floatBuffer3, f7, f10 / f11, f4, f9, f6, f11, this.h0);
                            dVar.destroy();
                            GLES20.glReadPixels(0, 0, getOutputWidth(), getOutputHeight(), 6408, 5121, byteBufferAllocateDirect);
                            GLES20.glBindFramebuffer(36160, iArr[0]);
                            this.w0.getClass();
                            this.q0.notifyAll();
                        }
                    } else {
                        i4 = 0;
                        f2 = 0.5f;
                    }
                    GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    GLES20.glClear(16384);
                    GLES20.glUseProgram(getProgram());
                    GLES20.glActiveTexture(33989);
                    GLES20.glBindTexture(3553, this.f0[1]);
                    CLMakeupLiveHairDyeFilter.HairDyeData hairDyeData2 = this.k0;
                    int i11 = hairDyeData2.m_analyzing_frame_width;
                    int i12 = hairDyeData2.m_analyzing_frame_height;
                    float f12 = i11;
                    float f13 = ((hairDyeData2.m_roi_width * f2) + hairDyeData2.m_roi_x) / f12;
                    float f14 = i12;
                    float f15 = ((hairDyeData2.m_roi_height * f2) + hairDyeData2.m_roi_y) / f14;
                    GLES20.glUniform1f(this.E, f13);
                    GLES20.glUniform1f(this.F, f15);
                    GLES20.glUniform1f(this.G, this.k0.m_roi_width);
                    GLES20.glUniform1f(this.H, this.k0.m_roi_height);
                    GLES20.glUniform1f(this.I, f12);
                    GLES20.glUniform1f(this.J, f14);
                    GLES20.glActiveTexture(33990);
                    GLES20.glBindTexture(3553, this.B);
                    GLES20.glUniform1i(this.w, 6);
                    GLES20.glEnableVertexAttribArray(this.s);
                    this.z0.add(Integer.valueOf(this.s));
                    this.U.position(i4);
                    GLES20.glVertexAttribPointer(this.s, 2, 5126, false, 0, (Buffer) this.U);
                }
                GLES20.glUniform1i(this.t, 5);
                GLES20.glEnableVertexAttribArray(this.p);
                this.z0.add(Integer.valueOf(this.p));
                this.R.position(0);
                GLES20.glVertexAttribPointer(this.p, 2, 5126, false, 0, (Buffer) this.R);
            } else {
                GLES20.glUseProgram(getProgram());
            }
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.d);
            floatBuffer2.position(0);
            GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) floatBuffer2);
            GLES20.glEnableVertexAttribArray(this.f25445f);
            if (i2 != -1) {
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, i2);
                i3 = 0;
                GLES20.glUniform1i(this.f25444e, 0);
            } else {
                i3 = 0;
            }
            d();
            GLES20.glDrawArrays(5, i3, 4);
            GLES20.glDisableVertexAttribArray(this.d);
            GLES20.glDisableVertexAttribArray(this.f25445f);
            Iterator it = this.z0.iterator();
            while (it.hasNext()) {
                GLES20.glDisableVertexAttribArray(((Integer) it.next()).intValue());
            }
            GLES20.glBindTexture(3553, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        this.d0.init();
        if (this.K) {
            al alVar = this.c0;
            if (alVar != null) {
                bz bzVarListIterator = ((ImmutableList) alVar.f42018a).listIterator(0);
                while (bzVarListIterator.hasNext()) {
                    ((GPUImageFilter) bzVarListIterator.next()).init();
                }
                alVar.b();
            }
            this.s = GLES20.glGetAttribLocation(getProgram(), "inputHairTextureCoordinate");
            this.w = GLES20.glGetUniformLocation(getProgram(), "inputHairTexture");
            this.E = GLES20.glGetUniformLocation(getProgram(), "hairCenterX");
            this.F = GLES20.glGetUniformLocation(getProgram(), "hairCenterY");
            this.I = GLES20.glGetUniformLocation(getProgram(), "hairBackgroundImageWidth");
            this.J = GLES20.glGetUniformLocation(getProgram(), "hairBackgroundImageHeight");
            this.G = GLES20.glGetUniformLocation(getProgram(), "hairWidth");
            this.H = GLES20.glGetUniformLocation(getProgram(), "hairHeight");
            this.p = GLES20.glGetAttribLocation(getProgram(), "inputMaskTextureCoordinate");
            this.t = GLES20.glGetUniformLocation(getProgram(), "inputMaskTexture");
        }
        this.q = GLES20.glGetAttribLocation(getProgram(), "inputAnimatedTextureCoordinate");
        this.u = GLES20.glGetUniformLocation(getProgram(), "inputAnimatedTexture");
        this.r = GLES20.glGetAttribLocation(getProgram(), "inputStaticTextureCoordinate");
        this.v = GLES20.glGetUniformLocation(getProgram(), "inputStaticTexture");
        this.C = GLES20.glGetUniformLocation(getProgram(), "animatedTextureColorIsPremultipliedAlpha");
        this.D = GLES20.glGetUniformLocation(getProgram(), "staticTextureColorIsPremultipliedAlpha");
        this.A = OpenGlUtils.f(Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888), -1);
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        int i4 = i2;
        int i5 = i3;
        this.g = i4;
        this.f25446h = i5;
        GPUImageFilter gPUImageFilter = this.d0;
        gPUImageFilter.g = i4;
        gPUImageFilter.f25446h = i5;
        if (this.M) {
            k(1, this.b0);
        }
        if (this.K) {
            if (this.e0 != null) {
                r();
            }
            this.e0 = new int[2];
            this.f0 = new int[2];
            int[] iArr = new int[1];
            GLES20.glGetIntegerv(36006, iArr, 0);
            int i6 = 0;
            while (i6 < 2) {
                GLES20.glGenFramebuffers(1, this.e0, i6);
                GLES20.glGenTextures(1, this.f0, i6);
                GLES20.glBindTexture(3553, this.f0[i6]);
                GLES20.glTexImage2D(3553, 0, 6408, i4, i5, 0, 6408, 5121, null);
                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                GLES20.glBindFramebuffer(36160, this.e0[i6]);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.f0[i6], 0);
                GLES20.glBindTexture(3553, iArr[0]);
                GLES20.glBindFramebuffer(36160, 0);
                i6++;
                i4 = i2;
                i5 = i3;
            }
        }
    }

    public final void p(int i2, int i3, TextureAlignmentUtil.AlignMode alignMode, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return;
        }
        this.O = true;
        e(new ah(this, byteBuffer, i3, i2, alignMode, true));
    }

    public final void q(int i2) {
        synchronized (this.r0) {
            this.s0.f25719a = i2;
        }
    }

    public final void r() {
        int[] iArr = this.f0;
        if (iArr != null) {
            GLES20.glDeleteTextures(iArr.length, iArr, 0);
            this.f0 = null;
        }
        int[] iArr2 = this.e0;
        if (iArr2 != null) {
            GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
            this.e0 = null;
        }
    }
}
