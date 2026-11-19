package com.cyberlink.clgpuimage.cosmetic;

import android.graphics.PointF;
import android.opengl.GLES20;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.sightcall.uvc.Camera;
import defpackage.fc;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public final class CLShowAlignFilter extends GPUImageFilter {
    public static final float[] C = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};
    public int A;
    public int B;
    public final Object o;
    public int p;
    public final ShowAlignData[] q;
    public byte[] r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public final FloatBuffer x;
    public int y;
    public PointF z;

    public static class ShowAlignData {
        public boolean is_enabled;
        public int rotation = 90;
        public boolean is_flip = false;
        public int frame_width = Camera.DEFAULT_PREVIEW_HEIGHT;
        public int frame_height = Camera.DEFAULT_PREVIEW_WIDTH;
        public boolean m_is_data_valid = false;
        public ArrayList<PointF> m_face_align_data = new ArrayList<>();

        public void Copy(ShowAlignData showAlignData) {
            this.is_enabled = showAlignData.is_enabled;
            this.rotation = showAlignData.rotation;
            this.is_flip = showAlignData.is_flip;
            this.frame_width = showAlignData.frame_width;
            this.frame_height = showAlignData.frame_height;
            this.m_is_data_valid = showAlignData.m_is_data_valid;
            this.m_face_align_data.clear();
            for (int i2 = 0; i2 < showAlignData.m_face_align_data.size(); i2++) {
                this.m_face_align_data.add(showAlignData.m_face_align_data.get(i2));
            }
        }
    }

    public CLShowAlignFilter(int i2) {
        super("attribute vec4 position;attribute vec4 inputTextureCoordinate;attribute vec4 SceneTextureCoordinate; varying vec2 textureCoordinate;varying vec2 scene_template_texture_coordinate; void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;    scene_template_texture_coordinate = SceneTextureCoordinate.xy;}", "\n#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;varying vec2 scene_template_texture_coordinate; uniform sampler2D inputImageTexture;uniform sampler2D show_align_texture;vec3 blend_color = vec3(0.0, 0.0, 1.0);uniform int enable_replay_brush;uniform vec4 replay_brush_range;uniform int show_align;\n void main(){     vec4 source = texture2D(inputImageTexture, textureCoordinate);     vec4 texture_value = texture2D(show_align_texture, scene_template_texture_coordinate);     vec3 dst_value = mix(source.rgb, blend_color, texture_value.a);     if (show_align == 0)     {         dst_value = source.rgb;     }     if (enable_replay_brush > 0)     {         if (textureCoordinate.x >= replay_brush_range.x && textureCoordinate.y >= replay_brush_range.y &&             textureCoordinate.x <= replay_brush_range.z && textureCoordinate.y <= replay_brush_range.w)         {             dst_value = vec3(0.0, 0.0, 0.0);         }     }     gl_FragColor = vec4(dst_value, 1.0);}");
        this.o = new Object();
        this.p = 90;
        this.u = -1;
        this.v = 0;
        this.q = new ShowAlignData[3];
        for (int i3 = 0; i3 < 3; i3++) {
            this.q[i3] = new ShowAlignData();
        }
        this.x = fc.v(ByteBuffer.allocateDirect(32));
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void d() {
        float[] fArr;
        if (this.u != -1) {
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, this.u);
            GLES20.glUniform1i(this.v, 1);
        }
        FloatBuffer floatBuffer = this.x;
        floatBuffer.clear();
        int i2 = this.p;
        int i3 = (i2 + Sink.ORIENTATION_270) % 360;
        float[] fArr2 = C;
        if (i2 == i3) {
            fArr = new float[]{fArr2[4], fArr2[5], fArr2[0], fArr2[1], fArr2[6], fArr2[7], fArr2[2], fArr2[3]};
        } else if (i2 == (i2 + Sink.ORIENTATION_180) % 360) {
            fArr = new float[]{fArr2[6], fArr2[7], fArr2[4], fArr2[5], fArr2[2], fArr2[3], fArr2[0], fArr2[1]};
        } else {
            fArr = i2 == (i2 + 90) % 360 ? new float[]{fArr2[2], fArr2[3], fArr2[6], fArr2[7], fArr2[0], fArr2[1], fArr2[4], fArr2[5]} : new float[]{fArr2[0], fArr2[1], fArr2[2], fArr2[3], fArr2[4], fArr2[5], fArr2[6], fArr2[7]};
        }
        floatBuffer.put(fArr);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.y, 2, 5126, false, 0, (Buffer) this.x);
        GLES20.glEnableVertexAttribArray(this.y);
        GLES20.glUniform1i(this.w, 0);
        GLES20.glUniform1i(this.A, 0);
        int i4 = this.B;
        PointF pointF = this.z;
        float f2 = pointF.x;
        float f3 = pointF.y;
        GLES20.glUniform4f(i4, f2 - 0.025f, f3 - 0.025f, f2 + 0.025f, f3 + 0.0125f);
    }

    public final void j(ShowAlignData[] showAlignDataArr) {
        ShowAlignData[] showAlignDataArr2 = showAlignDataArr;
        int iMin = Math.min(showAlignDataArr2.length, this.q.length);
        int i2 = 0;
        for (int i3 = 0; i3 < iMin; i3++) {
            this.q[i3].Copy(showAlignDataArr2[i3]);
        }
        ShowAlignData showAlignData = showAlignDataArr2[0];
        int i4 = showAlignData.frame_width;
        int i5 = showAlignData.frame_height;
        int i6 = showAlignData.rotation;
        synchronized (this.o) {
            try {
                byte[] bArr = this.r;
                if (bArr != null && this.s == i4 && this.t == i5) {
                    Arrays.fill(bArr, (byte) 0);
                } else {
                    this.r = new byte[i4 * i5];
                    this.s = i4;
                    this.t = i5;
                }
                int i7 = 0;
                while (i7 < iMin) {
                    ShowAlignData showAlignData2 = showAlignDataArr2[i7];
                    if (showAlignData2.m_is_data_valid) {
                        int size = showAlignData2.m_face_align_data.size();
                        float[] fArr = new float[size];
                        float[] fArr2 = new float[size];
                        int i8 = this.p;
                        if (i6 == (i8 + 90) % 360) {
                            for (int i9 = i2; i9 < size; i9++) {
                                PointF pointF = showAlignData2.m_face_align_data.get(i9);
                                fArr[i9] = pointF.y;
                                fArr2[i9] = 1.0f - pointF.x;
                            }
                        } else if (i6 == (i8 + Sink.ORIENTATION_180) % 360) {
                            for (int i10 = i2; i10 < size; i10++) {
                                PointF pointF2 = showAlignData2.m_face_align_data.get(i10);
                                fArr[i10] = 1.0f - pointF2.x;
                                fArr2[i10] = 1.0f - pointF2.y;
                            }
                        } else if (i6 == (i8 + Sink.ORIENTATION_270) % 360) {
                            for (int i11 = i2; i11 < size; i11++) {
                                PointF pointF3 = showAlignData2.m_face_align_data.get(i11);
                                fArr[i11] = 1.0f - pointF3.y;
                                fArr2[i11] = pointF3.x;
                            }
                        } else {
                            for (int i12 = i2; i12 < size; i12++) {
                                PointF pointF4 = showAlignData2.m_face_align_data.get(i12);
                                fArr[i12] = pointF4.x;
                                fArr2[i12] = pointF4.y;
                            }
                        }
                        int i13 = i2;
                        while (i13 < size) {
                            int iMin2 = Math.min(Math.max(Math.round(fArr[i13] * (this.s - 1)), i2), this.s - 1);
                            int iMin3 = Math.min(Math.max(Math.round(fArr2[i13] * (this.t - 1)), i2), this.t - 1);
                            int iMin4 = Math.min(iMin3 + 1, this.t - 1);
                            int iMax = Math.max(iMin2 - 2, i2);
                            int iMin5 = Math.min(iMin2 + 2, this.s - 1);
                            for (int iMax2 = Math.max(iMin3 - 1, i2); iMax2 <= iMin4; iMax2++) {
                                for (int i14 = iMax; i14 <= iMin5; i14++) {
                                    this.r[(this.s * iMax2) + i14] = -1;
                                }
                            }
                            i13++;
                            i2 = 0;
                        }
                    }
                    i7++;
                    showAlignDataArr2 = showAlignDataArr;
                    i2 = 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        int i2 = this.u;
        if (i2 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i2}, 0);
            this.u = -1;
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(3553, iArr[0]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.u = iArr[0];
        this.v = GLES20.glGetUniformLocation(getProgram(), "show_align_texture");
        this.w = GLES20.glGetUniformLocation(getProgram(), "show_align");
        this.y = GLES20.glGetAttribLocation(getProgram(), "SceneTextureCoordinate");
        this.A = GLES20.glGetUniformLocation(getProgram(), "enable_replay_brush");
        this.B = GLES20.glGetUniformLocation(getProgram(), "replay_brush_range");
        this.z = new PointF(-1.0f, -1.0f);
    }
}
