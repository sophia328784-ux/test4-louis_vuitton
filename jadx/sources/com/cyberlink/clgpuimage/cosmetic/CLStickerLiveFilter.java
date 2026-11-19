package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.sightcall.uvc.Camera;
import defpackage.fc;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public final class CLStickerLiveFilter extends GPUImageFilter {
    public static final float[] R = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};
    public final int[] A;
    public final int[] B;
    public boolean C;
    public final int[] D;
    public final int[] E;
    public final int[] F;
    public final int[] G;
    public final int[] H;
    public final int[] I;
    public final int[] J;
    public int K;
    public int L;
    public int M;
    public final int[] N;
    public final int[] O;
    public final int[] P;
    public final int[] Q;
    public final Object o;
    public final Object p;
    public final StickerData q;
    public final CLMakeupLiveFilter.LiveDynamicRangeMetadata r;
    public final FloatBuffer s;
    public final FloatBuffer t;
    public int u;
    public int v;
    public final int[] w;
    public final int[] x;
    public final int[] y;
    public final int[] z;

    public static class StickerData {
        public boolean is_enabled;
        final int HOMOGRAPY_SIZE = 9;
        final float[] IDENTICAL_HOMOGRAPHY = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
        public boolean is_face_detected = false;
        public int rotation = 90;
        public boolean is_flip = false;
        public int frame_width = Camera.DEFAULT_PREVIEW_HEIGHT;
        public int frame_height = Camera.DEFAULT_PREVIEW_WIDTH;
        public int[] face_sticker_model_width = new int[4];
        public int[] face_sticker_model_height = new int[4];
        public boolean[] is_face_sticker_displayed = new boolean[4];
        public boolean[] reset_decoder = new boolean[4];
        public float[] face_sticker_homography = new float[36];
        public int face_sticker_count = 0;
        public float[] scene_ratio_x = new float[2];
        public float[] scene_ratio_y = new float[2];
        public float[] scene_offset_x = new float[2];
        public float[] scene_offset_y = new float[2];
        public float[] scene_stretch_start_x = new float[2];
        public float[] scene_stretch_end_x = new float[2];
        public float[] scene_stretch_start_y = new float[2];
        public float[] scene_stretch_end_y = new float[2];
        public boolean[] is_scene_displayed = new boolean[2];
        public boolean[] reset_scene_decoder = new boolean[2];
        public int scene_sticker_count = 0;

        public StickerData() {
            for (int i2 = 0; i2 < 4; i2++) {
                System.arraycopy(this.IDENTICAL_HOMOGRAPHY, 0, this.face_sticker_homography, i2 * 9, 9);
            }
        }

        public void Copy(StickerData stickerData) {
            this.is_enabled = stickerData.is_enabled;
            this.rotation = stickerData.rotation;
            this.is_flip = stickerData.is_flip;
            this.is_face_detected = stickerData.is_face_detected;
            this.frame_width = stickerData.frame_width;
            this.frame_height = stickerData.frame_height;
            System.arraycopy(stickerData.is_scene_displayed, 0, this.is_scene_displayed, 0, 2);
            System.arraycopy(stickerData.reset_scene_decoder, 0, this.reset_scene_decoder, 0, 2);
            System.arraycopy(stickerData.scene_offset_x, 0, this.scene_offset_x, 0, 2);
            System.arraycopy(stickerData.scene_offset_y, 0, this.scene_offset_y, 0, 2);
            System.arraycopy(stickerData.scene_ratio_x, 0, this.scene_ratio_x, 0, 2);
            System.arraycopy(stickerData.scene_ratio_y, 0, this.scene_ratio_y, 0, 2);
            System.arraycopy(stickerData.scene_stretch_start_x, 0, this.scene_stretch_start_x, 0, 2);
            System.arraycopy(stickerData.scene_stretch_end_x, 0, this.scene_stretch_end_x, 0, 2);
            System.arraycopy(stickerData.scene_stretch_start_y, 0, this.scene_stretch_start_y, 0, 2);
            System.arraycopy(stickerData.scene_stretch_end_y, 0, this.scene_stretch_end_y, 0, 2);
            System.arraycopy(stickerData.face_sticker_model_width, 0, this.face_sticker_model_width, 0, 4);
            System.arraycopy(stickerData.face_sticker_model_height, 0, this.face_sticker_model_height, 0, 4);
            System.arraycopy(stickerData.is_face_sticker_displayed, 0, this.is_face_sticker_displayed, 0, 4);
            System.arraycopy(stickerData.reset_decoder, 0, this.reset_decoder, 0, 4);
            this.face_sticker_count = stickerData.face_sticker_count;
            System.arraycopy(stickerData.face_sticker_homography, 0, this.face_sticker_homography, 0, 36);
            this.scene_sticker_count = stickerData.scene_sticker_count;
        }
    }

    public CLStickerLiveFilter() {
        super("attribute vec4 position;attribute vec4 inputTextureCoordinate;attribute vec4 inputStickerTemplateTextureCoordinate;attribute vec4 inputStickerSceneTemplateTextureCoordinate;varying vec2 textureCoordinate;varying vec2 template_texture_coordinate;varying vec2 scene_template_texture_coordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;    template_texture_coordinate = inputStickerTemplateTextureCoordinate.xy;    scene_template_texture_coordinate = inputStickerSceneTemplateTextureCoordinate.xy;}", "\n#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;varying vec2 template_texture_coordinate;varying vec2 scene_template_texture_coordinate;uniform vec2 frame_face_sticker_scale_ratio_0;uniform vec2 frame_face_sticker_scale_ratio_1;uniform vec2 frame_face_sticker_scale_ratio_2;uniform vec2 frame_face_sticker_scale_ratio_3;uniform mat3 face_sticker_homography_0;uniform mat3 face_sticker_homography_1;uniform mat3 face_sticker_homography_2;uniform mat3 face_sticker_homography_3;uniform sampler2D inputImageTexture;uniform sampler2D sticker_template_texture;uniform sampler2D face_sticker_texture_0;uniform sampler2D face_sticker_texture_1;uniform sampler2D face_sticker_texture_2;uniform sampler2D face_sticker_texture_3;uniform sampler2D scene_sticker_texture_0;uniform sampler2D scene_sticker_texture_1;uniform float face_sticker_displayed_0;uniform float face_sticker_displayed_1;uniform float face_sticker_displayed_2;uniform float face_sticker_displayed_3;uniform float scene_sticker_displayed_0;uniform float scene_sticker_displayed_1;uniform vec3 min_rgb;uniform vec3 max_rgb;uniform vec2 scene_sticker_scale_ratio_0;uniform vec2 scene_sticker_scale_ratio_1;uniform vec2 scene_sticker_offset_0;uniform vec2 scene_sticker_offset_1;uniform vec2 scene_sticker_stretch_start_0;uniform vec2 scene_sticker_stretch_start_1;uniform vec2 scene_sticker_stretch_end_0;uniform vec2 scene_sticker_stretch_end_1;uniform float aspect_ratio_multiplier_frame_over_scene_0;uniform float aspect_ratio_multiplier_frame_over_scene_1;float GetNewPositionForStretch(float old_position, float start, float end, float aspect_ratio_multiplier){    float new_position = old_position;    if (start == 0.0 && end == 1.0)    {        return new_position;    }    if (old_position <= start / aspect_ratio_multiplier)    {        new_position = old_position * aspect_ratio_multiplier;    }    else if (old_position >= 1.0 - (1.0 - end) / aspect_ratio_multiplier)    {        float range_y = (1.0 - end) / aspect_ratio_multiplier;        float offset_y = old_position - (1.0 - range_y);        float offset_y_ratio = offset_y / range_y;        new_position = end + (1.0 - end) * offset_y_ratio;    }    else    {        float range_y = 1.0 - (start + (1.0 - end)) / aspect_ratio_multiplier;        float offset_y = old_position - start / aspect_ratio_multiplier;        float offset_y_ratio = offset_y / range_y;        new_position = start + offset_y_ratio * (end - start);    }    return new_position;}void main(){    vec4 source = texture2D(inputImageTexture, textureCoordinate);    vec2 scene_sticker_texture_coordinate_0 = (scene_template_texture_coordinate - scene_sticker_offset_0) / scene_sticker_scale_ratio_0;    vec2 scene_sticker_texture_coordinate_1 = (scene_template_texture_coordinate - scene_sticker_offset_1) / scene_sticker_scale_ratio_1;    scene_sticker_texture_coordinate_0.y = GetNewPositionForStretch(scene_sticker_texture_coordinate_0.y, scene_sticker_stretch_start_0.y, scene_sticker_stretch_end_0.y, aspect_ratio_multiplier_frame_over_scene_0);    scene_sticker_texture_coordinate_1.y = GetNewPositionForStretch(scene_sticker_texture_coordinate_1.y, scene_sticker_stretch_start_1.y, scene_sticker_stretch_end_1.y, aspect_ratio_multiplier_frame_over_scene_1);    vec4 scene_sticker_template_0 = texture2D(scene_sticker_texture_0, scene_sticker_texture_coordinate_0);    vec4 scene_sticker_template_1 = texture2D(scene_sticker_texture_1, scene_sticker_texture_coordinate_1);    bool condition_scene_0 = (any(lessThan(scene_sticker_texture_coordinate_0, vec2(0.0))) || any(greaterThan(scene_sticker_texture_coordinate_0, vec2(1.0))));    bool condition_scene_1 = (any(lessThan(scene_sticker_texture_coordinate_1, vec2(0.0))) || any(greaterThan(scene_sticker_texture_coordinate_1, vec2(1.0))));    vec3 temp_coordinate_0 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_0;    vec2 warp_face_sticker_texture_coordinate_0 = vec2(temp_coordinate_0.x / temp_coordinate_0.z, temp_coordinate_0.y / temp_coordinate_0.z) * frame_face_sticker_scale_ratio_0;    vec3 temp_coordinate_1 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_1;    vec2 warp_face_sticker_texture_coordinate_1 = vec2(temp_coordinate_1.x / temp_coordinate_1.z, temp_coordinate_1.y / temp_coordinate_1.z) * frame_face_sticker_scale_ratio_1;    vec3 temp_coordinate_2 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_2;    vec2 warp_face_sticker_texture_coordinate_2 = vec2(temp_coordinate_2.x / temp_coordinate_2.z, temp_coordinate_2.y / temp_coordinate_2.z) * frame_face_sticker_scale_ratio_2;    vec3 temp_coordinate_3 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_3;    vec2 warp_face_sticker_texture_coordinate_3 = vec2(temp_coordinate_3.x / temp_coordinate_3.z, temp_coordinate_3.y / temp_coordinate_3.z) * frame_face_sticker_scale_ratio_3;    bool condition_0 = (any(lessThan(warp_face_sticker_texture_coordinate_0, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_0, vec2(1.0))));    bool condition_1 = (any(lessThan(warp_face_sticker_texture_coordinate_1, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_1, vec2(1.0))));    bool condition_2 = (any(lessThan(warp_face_sticker_texture_coordinate_2, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_2, vec2(1.0))));    bool condition_3 = (any(lessThan(warp_face_sticker_texture_coordinate_3, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_3, vec2(1.0))));    vec4 face_sticker_0 = texture2D(face_sticker_texture_0, warp_face_sticker_texture_coordinate_0);    vec4 face_sticker_1 = texture2D(face_sticker_texture_1, warp_face_sticker_texture_coordinate_1);    vec4 face_sticker_2 = texture2D(face_sticker_texture_2, warp_face_sticker_texture_coordinate_2);    vec4 face_sticker_3 = texture2D(face_sticker_texture_3, warp_face_sticker_texture_coordinate_3);    if (condition_0)    {        face_sticker_0.a = 0.0;    }    if (condition_1)    {        face_sticker_1.a = 0.0;    }    if (condition_2)    {        face_sticker_2.a = 0.0;    }    if (condition_3)    {        face_sticker_3.a = 0.0;    }    if (condition_scene_0)    {        scene_sticker_template_0.a = 0.0;    }    if (condition_scene_1)    {        scene_sticker_template_1.a = 0.0;    }    vec4 result = mix(source, face_sticker_0, face_sticker_0.a * face_sticker_displayed_0);    result = mix(result, face_sticker_1, face_sticker_1.a * face_sticker_displayed_1);    result = mix(result, face_sticker_2, face_sticker_2.a * face_sticker_displayed_2);    result = mix(result, face_sticker_3, face_sticker_3.a * face_sticker_displayed_3);    result = mix(result, scene_sticker_template_0, scene_sticker_template_0.a * scene_sticker_displayed_0);    result = mix(result, scene_sticker_template_1, scene_sticker_template_1.a * scene_sticker_displayed_1);    gl_FragColor = vec4(result.rgb, 1.0);}");
        this.o = new Object();
        this.p = new Object();
        this.q = new StickerData();
        this.r = new CLMakeupLiveFilter.LiveDynamicRangeMetadata();
        this.w = new int[2];
        this.x = new int[2];
        this.y = new int[2];
        this.z = new int[2];
        this.A = new int[2];
        this.B = new int[2];
        this.D = new int[2];
        this.E = new int[4];
        this.F = new int[4];
        this.G = new int[4];
        this.H = new int[4];
        this.I = new int[2];
        this.J = new int[2];
        this.M = 90;
        this.N = new int[2];
        this.O = new int[4];
        this.P = new int[4];
        this.Q = new int[4];
        this.s = fc.v(ByteBuffer.allocateDirect(32));
        this.t = fc.v(ByteBuffer.allocateDirect(32));
    }

    /* JADX WARN: Code duplicated, block: B:53:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:54:0x01cc  */
    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void d() {
        int i2;
        float fMax;
        int[] iArr;
        synchronized (this.p) {
            GLES20.glUniform3fv(this.K, 1, FloatBuffer.wrap(this.r.min_rgb));
            GLES20.glUniform3fv(this.L, 1, FloatBuffer.wrap(this.r.max_rgb));
        }
        this.s.clear();
        FloatBuffer floatBuffer = this.s;
        float[] fArr = R;
        floatBuffer.put(l(fArr, this.q.rotation));
        this.s.position(0);
        GLES20.glVertexAttribPointer(this.u, 2, 5126, false, 0, (Buffer) this.s);
        GLES20.glEnableVertexAttribArray(this.u);
        this.t.clear();
        this.t.put(l(fArr, this.M));
        this.t.position(0);
        GLES20.glVertexAttribPointer(this.v, 2, 5126, false, 0, (Buffer) this.t);
        GLES20.glEnableVertexAttribArray(this.v);
        synchronized (this.o) {
            int i3 = 0;
            while (true) {
                float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (i3 >= 4) {
                    break;
                }
                try {
                    StickerData stickerData = this.q;
                    boolean z = stickerData.face_sticker_model_width[i3] == this.G[i3] && stickerData.face_sticker_model_height[i3] == this.H[i3];
                    if (this.E[i3] != -1) {
                        if (i3 == 0) {
                            GLES20.glActiveTexture(33985);
                        } else if (i3 == 1) {
                            GLES20.glActiveTexture(33986);
                        } else if (i3 == 2) {
                            GLES20.glActiveTexture(33987);
                        } else if (i3 == 3) {
                            GLES20.glActiveTexture(33988);
                        }
                        GLES20.glBindTexture(3553, this.E[i3]);
                        GLES20.glUniform1i(this.F[i3], i3 + 1);
                        StickerData stickerData2 = this.q;
                        GLES20.glUniform2f(this.O[i3], stickerData2.frame_width / this.G[i3], stickerData2.frame_height / this.H[i3]);
                    }
                    float[] fArr2 = new float[9];
                    for (int i4 = 0; i4 < 9; i4++) {
                        fArr2[i4] = this.q.face_sticker_homography[(i3 * 9) + i4];
                    }
                    GLES20.glUniformMatrix3fv(this.Q[i3], 1, false, fArr2, 0);
                    if (z) {
                        StickerData stickerData3 = this.q;
                        if (stickerData3.is_face_sticker_displayed[i3] && stickerData3.is_face_detected) {
                            f2 = 1.0f;
                        }
                    }
                    GLES20.glUniform1f(this.P[i3], f2);
                    i3++;
                } catch (Throwable th) {
                    throw th;
                }
                throw th;
            }
        }
        for (int i5 = 0; i5 < 2; i5++) {
            if (this.w[i5] != -1) {
                if (i5 == 0) {
                    i2 = 33989;
                } else if (i5 == 1) {
                    i2 = 33990;
                } else {
                    GLES20.glBindTexture(3553, this.w[i5]);
                    GLES20.glUniform1i(this.x[i5], i5 + 5);
                    int i6 = this.y[i5];
                    StickerData stickerData4 = this.q;
                    GLES20.glUniform2f(i6, stickerData4.scene_ratio_x[i5], stickerData4.scene_ratio_y[i5]);
                    int i7 = this.z[i5];
                    StickerData stickerData5 = this.q;
                    GLES20.glUniform2f(i7, stickerData5.scene_offset_x[i5], stickerData5.scene_offset_y[i5]);
                    StickerData stickerData6 = this.q;
                    int iMax = Math.max(Math.min(stickerData6.frame_width, stickerData6.frame_height), 1);
                    StickerData stickerData7 = this.q;
                    fMax = (Math.max(Math.max(stickerData7.frame_width, stickerData7.frame_height), 1) / iMax) / (Math.max(this.J[i5], 1) / Math.max(this.I[i5], 1));
                    GLES20.glUniform1f(this.N[i5], fMax);
                    iArr = this.A;
                    if (fMax > 1.0f) {
                        int i8 = iArr[i5];
                        StickerData stickerData8 = this.q;
                        GLES20.glUniform2f(i8, stickerData8.scene_stretch_start_x[i5], stickerData8.scene_stretch_start_y[i5]);
                        int i9 = this.B[i5];
                        StickerData stickerData9 = this.q;
                        GLES20.glUniform2f(i9, stickerData9.scene_stretch_end_x[i5], stickerData9.scene_stretch_end_y[i5]);
                    } else {
                        GLES20.glUniform2f(iArr[i5], Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glUniform2f(this.B[i5], 1.0f, 1.0f);
                    }
                }
                GLES20.glActiveTexture(i2);
                GLES20.glBindTexture(3553, this.w[i5]);
                GLES20.glUniform1i(this.x[i5], i5 + 5);
                int i10 = this.y[i5];
                StickerData stickerData10 = this.q;
                GLES20.glUniform2f(i10, stickerData10.scene_ratio_x[i5], stickerData10.scene_ratio_y[i5]);
                int i11 = this.z[i5];
                StickerData stickerData11 = this.q;
                GLES20.glUniform2f(i11, stickerData11.scene_offset_x[i5], stickerData11.scene_offset_y[i5]);
                StickerData stickerData12 = this.q;
                int iMax2 = Math.max(Math.min(stickerData12.frame_width, stickerData12.frame_height), 1);
                StickerData stickerData13 = this.q;
                fMax = (Math.max(Math.max(stickerData13.frame_width, stickerData13.frame_height), 1) / iMax2) / (Math.max(this.J[i5], 1) / Math.max(this.I[i5], 1));
                GLES20.glUniform1f(this.N[i5], fMax);
                iArr = this.A;
                if (fMax > 1.0f) {
                    int i12 = iArr[i5];
                    StickerData stickerData14 = this.q;
                    GLES20.glUniform2f(i12, stickerData14.scene_stretch_start_x[i5], stickerData14.scene_stretch_start_y[i5]);
                    int i13 = this.B[i5];
                    StickerData stickerData15 = this.q;
                    GLES20.glUniform2f(i13, stickerData15.scene_stretch_end_x[i5], stickerData15.scene_stretch_end_y[i5]);
                } else {
                    GLES20.glUniform2f(iArr[i5], Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    GLES20.glUniform2f(this.B[i5], 1.0f, 1.0f);
                }
            }
            GLES20.glUniform1f(this.D[i5], (this.C && this.q.is_scene_displayed[i5]) ? 1.0f : 0.0f);
        }
    }

    public final void j(StickerData stickerData, CLMakeupLiveFilter.LiveDynamicRangeMetadata liveDynamicRangeMetadata) {
        synchronized (this.p) {
            this.q.Copy(stickerData);
            this.r.Copy(liveDynamicRangeMetadata);
            e(new ae(this));
        }
    }

    public final void k(int[] iArr, int[] iArr2) {
        int iMin = Math.min(iArr.length, 4);
        for (int i2 = 0; i2 < iMin; i2++) {
            this.E[i2] = iArr[i2];
        }
        int iMin2 = Math.min(iArr2.length, 2);
        for (int i3 = 0; i3 < iMin2; i3++) {
            this.w[i3] = iArr2[i3];
        }
    }

    public final float[] l(float[] fArr, int i2) {
        int i3 = this.M;
        if (i2 == (i3 + Sink.ORIENTATION_270) % 360) {
            return new float[]{fArr[4], fArr[5], fArr[0], fArr[1], fArr[6], fArr[7], fArr[2], fArr[3]};
        }
        if (i2 == (i3 + Sink.ORIENTATION_180) % 360) {
            return new float[]{fArr[6], fArr[7], fArr[4], fArr[5], fArr[2], fArr[3], fArr[0], fArr[1]};
        }
        return i2 == (i3 + 90) % 360 ? new float[]{fArr[2], fArr[3], fArr[6], fArr[7], fArr[0], fArr[1], fArr[4], fArr[5]} : new float[]{fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7]};
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        this.u = GLES20.glGetAttribLocation(getProgram(), "inputStickerTemplateTextureCoordinate");
        this.v = GLES20.glGetAttribLocation(getProgram(), "inputStickerSceneTemplateTextureCoordinate");
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_texture_0");
        int[] iArr = this.x;
        iArr[0] = iGlGetUniformLocation;
        iArr[1] = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_texture_1");
        int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(getProgram(), "face_sticker_texture_0");
        int[] iArr2 = this.F;
        iArr2[0] = iGlGetUniformLocation2;
        iArr2[1] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_texture_1");
        iArr2[2] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_texture_2");
        iArr2[3] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_texture_3");
        this.K = GLES20.glGetUniformLocation(getProgram(), "min_rgb");
        this.L = GLES20.glGetUniformLocation(getProgram(), "max_rgb");
        int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(getProgram(), "aspect_ratio_multiplier_frame_over_scene_0");
        int[] iArr3 = this.N;
        iArr3[0] = iGlGetUniformLocation3;
        iArr3[1] = GLES20.glGetUniformLocation(getProgram(), "aspect_ratio_multiplier_frame_over_scene_1");
        int iGlGetUniformLocation4 = GLES20.glGetUniformLocation(getProgram(), "frame_face_sticker_scale_ratio_0");
        int[] iArr4 = this.O;
        iArr4[0] = iGlGetUniformLocation4;
        int iGlGetUniformLocation5 = GLES20.glGetUniformLocation(getProgram(), "face_sticker_displayed_0");
        int[] iArr5 = this.P;
        iArr5[0] = iGlGetUniformLocation5;
        int iGlGetUniformLocation6 = GLES20.glGetUniformLocation(getProgram(), "face_sticker_homography_0");
        int[] iArr6 = this.Q;
        iArr6[0] = iGlGetUniformLocation6;
        iArr4[1] = GLES20.glGetUniformLocation(getProgram(), "frame_face_sticker_scale_ratio_1");
        iArr5[1] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_displayed_1");
        iArr6[1] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_homography_1");
        iArr4[2] = GLES20.glGetUniformLocation(getProgram(), "frame_face_sticker_scale_ratio_2");
        iArr5[2] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_displayed_2");
        iArr6[2] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_homography_2");
        iArr4[3] = GLES20.glGetUniformLocation(getProgram(), "frame_face_sticker_scale_ratio_3");
        iArr5[3] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_displayed_3");
        iArr6[3] = GLES20.glGetUniformLocation(getProgram(), "face_sticker_homography_3");
        int iGlGetUniformLocation7 = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_scale_ratio_0");
        int[] iArr7 = this.y;
        iArr7[0] = iGlGetUniformLocation7;
        int iGlGetUniformLocation8 = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_offset_0");
        int[] iArr8 = this.z;
        iArr8[0] = iGlGetUniformLocation8;
        int iGlGetUniformLocation9 = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_displayed_0");
        int[] iArr9 = this.D;
        iArr9[0] = iGlGetUniformLocation9;
        iArr7[1] = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_scale_ratio_1");
        iArr8[1] = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_offset_1");
        iArr9[1] = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_displayed_1");
        int iGlGetUniformLocation10 = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_stretch_start_0");
        int[] iArr10 = this.A;
        iArr10[0] = iGlGetUniformLocation10;
        int iGlGetUniformLocation11 = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_stretch_end_0");
        int[] iArr11 = this.B;
        iArr11[0] = iGlGetUniformLocation11;
        iArr10[1] = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_stretch_start_1");
        iArr11[1] = GLES20.glGetUniformLocation(getProgram(), "scene_sticker_stretch_end_1");
    }
}
