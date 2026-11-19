package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLiveDecode;
import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.cyberlink.clgpuimage.OpenGlUtils;
import defpackage.fc;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public final class CLMakeupLiveLipStickFilter extends CLMakeupLive3DFilter {
    public static final float[] K9 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};
    public static final char[] L9 = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 194, 194, 143, 254, 252, 169, 232, 139, 136, 242, 248, 128, 248, 241, 232, 164, 232, 143, 254, 252, 169, 159, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 130, 232, 148, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 129, 147, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 128, 232, 148, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 131, 144, 162, 194, 194, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 232, 148, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 129, 131, 144, 232, 150, 232, 139, 136, 242, 248, 128, 248, 241, 149, 129, 130, 162, 194, 194, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 168, 149, 151, 232, 148, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 162, 194, 194, 134, 194, 194};
    public static final char[] M9 = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 140, 141, 242, 252, 244, 180, 250, 244, 254, 142, 137, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 246, 250, 244, 254, 142, 137, 180, 250, 140, 244, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 248, 140, 241, 136, 128, 248, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 246, 250, 140, 244, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 248, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 246, 250, 140, 244, 248, 143, 250, 245, 242, 253, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 232, 132, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 140, 244, 242, 247, 248, 137, 139, 136, 251, 232, 164, 232, 168, 149, 151, 162, 194, 242, 255, 232, 159, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 165, 164, 232, 151, 149, 151, 232, 157, 157, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 163, 164, 232, 168, 149, 151, 232, 157, 157, 194, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 165, 164, 232, 151, 149, 151, 232, 157, 157, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 163, 164, 232, 168, 149, 151, 232, 157, 157, 194, 242, 140, 248, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 246, 250, 140, 244, 248, 143, 250, 245, 242, 253, 232, 165, 232, 151, 144, 194, 132, 194, 140, 244, 242, 247, 248, 137, 139, 136, 251, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 246, 250, 244, 254, 142, 137, 180, 250, 140, 244, 237, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 134, 194, 242, 255, 232, 159, 242, 140, 248, 140, 241, 136, 128, 248, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 246, 250, 140, 244, 232, 165, 232, 151, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 136, 142, 139, 252, 254, 149, 139, 232, 146, 232, 140, 244, 242, 247, 248, 137, 139, 136, 251, 232, 145, 232, 151, 149, 170, 147, 232, 140, 136, 142, 139, 252, 254, 149, 240, 147, 232, 140, 136, 142, 139, 252, 254, 149, 251, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 246, 250, 244, 254, 142, 137, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 180, 250, 244, 254, 142, 137, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 246, 250, 244, 254, 142, 137, 147, 232, 140, 244, 242, 247, 248, 137, 139, 136, 251, 144, 162, 194, 134, 194};
    public int A6;
    public int A7;
    public int A8;
    public int A9;
    public int B6;
    public int B7;
    public int B8;
    public int B9;
    public int C5;
    public int C6;
    public int C7;
    public int C8;
    public int C9;
    public int D5;
    public int D6;
    public int D7;
    public int D8;
    public int D9;
    public CLShare3DRelatedClasses.Pass1BufferData E5;
    public int E6;
    public int E7;
    public int E8;
    public int E9;
    public int F5;
    public int F6;
    public final int[] F7;
    public int F8;
    public int F9;
    public int G5;
    public int G6;
    public int G7;
    public int G8;
    public float[] G9;
    public int H5;
    public int H6;
    public int H7;
    public int H8;
    public byte[] H9;
    public int I5;
    public int I6;
    public int I7;
    public CLShare3DRelatedClasses.Pass1BufferData I8;
    public byte[] I9;
    public int J5;
    public int J6;
    public int J7;
    public int J8;
    public final CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata J9;
    public int K5;
    public int K6;
    public int K7;
    public int K8;
    public int L5;
    public int L6;
    public int L7;
    public int L8;
    public boolean M5;
    public int M6;
    public int M7;
    public int M8;
    public int N5;
    public int N6;
    public int N7;
    public int N8;
    public ByteBuffer O5;
    public int O6;
    public int O7;
    public int O8;
    public int P5;
    public int P6;
    public int P7;
    public int P8;
    public int Q5;
    public int Q6;
    public int Q7;
    public int Q8;
    public CLShare3DRelatedClasses.Pass1BufferData R5;
    public int R6;
    public int R7;
    public float R8;
    public int S5;
    public int S6;
    public int S7;
    public float S8;
    public int T5;
    public int T6;
    public int T7;
    public float T8;
    public int U5;
    public int U6;
    public int U7;
    public float U8;
    public int V5;
    public int V6;
    public int V7;
    public float V8;
    public int W5;
    public CLShare3DRelatedClasses.Pass1BufferData W6;
    public int W7;
    public float W8;
    public int X5;
    public int X6;
    public int X7;
    public byte[] X8;
    public int Y5;
    public int Y6;
    public int Y7;
    public byte[] Y8;
    public int Z5;
    public int Z6;
    public int Z7;
    public byte[] Z8;
    public int a6;
    public int a7;
    public int a8;
    public byte[] a9;
    public int b6;
    public int b7;
    public int b8;
    public ByteBuffer b9;
    public int c6;
    public int c7;
    public int c8;
    public ByteBuffer c9;
    public int d6;
    public int d7;
    public int d8;
    public ByteBuffer d9;
    public int e6;
    public int e7;
    public int e8;
    public ByteBuffer e9;
    public int f6;
    public int f7;
    public int f8;
    public int f9;
    public int g6;
    public int g7;
    public float g8;
    public int g9;
    public int h6;
    public int h7;
    public final FloatBuffer h8;
    public final float[][] h9;
    public int i6;
    public int i7;
    public int i8;
    public float[] i9;
    public int j6;
    public int j7;
    public int j8;
    public int j9;
    public int k6;
    public CLShare3DRelatedClasses.Pass1BufferData k7;
    public int k8;
    public float k9;
    public int l6;
    public int l7;
    public int l8;
    public int l9;
    public int m6;
    public int m7;
    public int m8;
    public int m9;
    public int n6;
    public int n7;
    public int n8;
    public boolean n9;
    public int o6;
    public int o7;
    public int o8;
    public final CLMakeupLiveFilter.LiveDynamicRangeMetadata o9;
    public CLShare3DRelatedClasses.Pass1BufferData p6;
    public int p7;
    public int p8;
    public final Object p9;
    public int q6;
    public int q7;
    public int q8;
    public int q9;
    public int r6;
    public int r7;
    public int r8;
    public int r9;
    public int s6;
    public int s7;
    public int s8;
    public int s9;
    public int t6;
    public int t7;
    public int t8;
    public float t9;
    public int u6;
    public int u7;
    public int u8;
    public float u9;
    public int v6;
    public int v7;
    public int v8;
    public int v9;
    public int w6;
    public int w7;
    public int w8;
    public int w9;
    public int x6;
    public int x7;
    public int x8;
    public boolean x9;
    public int y6;
    public int y7;
    public int y8;
    public boolean y9;
    public int z6;
    public int z7;
    public int z8;
    public boolean z9;

    /* JADX INFO: loaded from: classes3.dex */
    public enum BlendMode {
        THICK,
        BRIGHT,
        GLOSS,
        HIGH_GLOSS,
        WET_PEARLIZED,
        METALLIC,
        HOLOGRAPHIC
    }

    public static class LipstickData {
        public int m_background_image_height;
        public int m_background_image_width;
        public boolean m_enable_color_shimmer_0;
        public boolean m_enable_color_shimmer_1;
        public int m_force_bright_threshold_0;
        public int m_force_bright_threshold_1;
        public float m_gloss_contrast_scale_0;
        public float m_gloss_contrast_scale_1;
        public int m_gloss_contrast_shift_0;
        public int m_gloss_contrast_shift_1;
        public float m_gloss_contrast_shrink_0;
        public float m_gloss_contrast_shrink_1;
        public boolean m_is_flipped;
        public boolean m_is_upper_lower_omber;
        public int m_layer_count;
        public int m_mask_height;
        public int m_mask_width;
        public byte[] m_mouth_layer_mask_data;
        public byte[] m_mouth_mask_data;
        public int m_roi_height;
        public int m_roi_width;
        public int m_roi_x;
        public int m_roi_y;
        public int m_rotation;
        public byte[] m_shimmer_data;
        public int m_shimmer_height;
        public float m_shimmer_intensity_0;
        public float m_shimmer_intensity_1;
        public float m_shimmer_normalize_factor_0;
        public float m_shimmer_normalize_factor_1;
        public int m_shimmer_width;
        public boolean m_use_median_0;
        public boolean m_use_median_1;
        public byte[] m_blend_weight_and_lvel_map = new byte[1024];
        public int[] m_color_r = new int[2];
        public int[] m_color_g = new int[2];
        public int[] m_color_b = new int[2];
        public int[] m_shimmer_color_0 = new int[3];
        public int[] m_shimmer_color_1 = new int[3];
        public byte[] mp_primer_blend_weight_and_level_mask = new byte[1024];
        public boolean m_is_valid = false;
        public int m_num_triangles = 0;
        public float[] m_face_3d_xyz = null;
        public float[] m_normal_vectors = null;
        public float[] m_texcoords = null;
        public boolean m_is_texcoord_changed = false;
        public float[] m_camera_matrix = new float[9];
        public float[] m_pnp_matrix = new float[12];
        public float[] m_normal_pnp_matrix = new float[16];
        byte[] mp_template_data = null;
        public int template_width = 0;
        public int template_height = 0;
        public int template_stride = 0;
        public int m_fullness = 0;
        public float m_fullness_adjusting_factor = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float m_fullness_shadow_adjusting_factor = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public int m_smooth_kernel_size = 0;
        public int m_wrinkless = 0;
        public boolean m_is_lip_shape_enabled = false;
        public int m_primer_mask_width = 0;
        public int m_primer_mask_height = 0;
        public int m_primer_roi_x = 0;
        public int m_primer_roi_y = 0;
        public int m_primer_roi_width = 0;
        public int m_primer_roi_height = 0;
        public byte[] mp_primer_data = null;
        public int[] m_primer_color = new int[3];
        public int m_version = 0;

        public void AllocByteArray(int i2, int i3, int i4, int i5, int i6) {
            if (this.m_mask_width != i2 || this.m_mask_height != i3) {
                this.m_mask_width = i2;
                this.m_mask_height = i3;
                int i7 = (i2 * i3) << 3;
                this.m_mouth_mask_data = new byte[i7];
                this.m_mouth_layer_mask_data = new byte[i7];
            }
            if (this.m_shimmer_width != i4 || this.m_shimmer_height != i5) {
                this.m_shimmer_width = i4;
                this.m_shimmer_height = i5;
                this.m_shimmer_data = new byte[(i4 * i5) << 1];
            }
            if (i6 > 0 || this.m_num_triangles != i6) {
                this.m_num_triangles = i6;
                int i8 = i6 * 9;
                this.m_face_3d_xyz = new float[i8];
                this.m_normal_vectors = new float[i8];
                this.m_texcoords = new float[i6 * 6];
            }
        }

        public void AllocPrimerArray(int i2, int i3) {
            if (this.m_primer_mask_width == i2 && this.m_primer_mask_height == i3) {
                return;
            }
            this.m_primer_mask_width = i2;
            this.m_primer_mask_height = i3;
            this.mp_primer_data = new byte[(i2 * i3) << 2];
        }

        public void AllocTemplateArray(int i2, int i3) {
            this.mp_template_data = new byte[(i2 * i3) << 2];
            this.template_width = i2;
            this.template_height = i3;
            this.template_stride = i2 << 2;
        }

        public void Copy(LipstickData lipstickData) {
            if (lipstickData.m_mask_width != 0 && lipstickData.m_mask_height != 0) {
                this.m_mouth_mask_data = (byte[]) lipstickData.m_mouth_mask_data.clone();
                this.m_mouth_layer_mask_data = (byte[]) lipstickData.m_mouth_layer_mask_data.clone();
                this.m_shimmer_data = (byte[]) lipstickData.m_shimmer_data.clone();
            }
            this.m_mask_width = lipstickData.m_mask_width;
            this.m_mask_height = lipstickData.m_mask_height;
            this.m_roi_x = lipstickData.m_roi_x;
            this.m_roi_y = lipstickData.m_roi_y;
            this.m_roi_width = lipstickData.m_roi_width;
            this.m_roi_height = lipstickData.m_roi_height;
            this.m_shimmer_width = lipstickData.m_shimmer_width;
            this.m_shimmer_height = lipstickData.m_shimmer_height;
            this.m_background_image_width = lipstickData.m_background_image_width;
            this.m_background_image_height = lipstickData.m_background_image_height;
            this.m_gloss_contrast_scale_0 = lipstickData.m_gloss_contrast_scale_0;
            this.m_gloss_contrast_scale_1 = lipstickData.m_gloss_contrast_scale_1;
            this.m_gloss_contrast_shift_0 = lipstickData.m_gloss_contrast_shift_0;
            this.m_gloss_contrast_shift_1 = lipstickData.m_gloss_contrast_shift_1;
            this.m_gloss_contrast_shrink_0 = lipstickData.m_gloss_contrast_shrink_0;
            this.m_gloss_contrast_shrink_1 = lipstickData.m_gloss_contrast_shrink_1;
            this.m_force_bright_threshold_0 = lipstickData.m_force_bright_threshold_0;
            this.m_force_bright_threshold_1 = lipstickData.m_force_bright_threshold_1;
            this.m_use_median_0 = lipstickData.m_use_median_0;
            this.m_use_median_1 = lipstickData.m_use_median_1;
            this.m_shimmer_normalize_factor_0 = lipstickData.m_shimmer_normalize_factor_0;
            this.m_shimmer_normalize_factor_1 = lipstickData.m_shimmer_normalize_factor_1;
            this.m_blend_weight_and_lvel_map = (byte[]) lipstickData.m_blend_weight_and_lvel_map.clone();
            this.m_rotation = lipstickData.m_rotation;
            this.m_is_flipped = lipstickData.m_is_flipped;
            this.m_layer_count = lipstickData.m_layer_count;
            this.m_is_upper_lower_omber = lipstickData.m_is_upper_lower_omber;
            this.m_color_r = (int[]) lipstickData.m_color_r.clone();
            this.m_color_g = (int[]) lipstickData.m_color_g.clone();
            this.m_color_b = (int[]) lipstickData.m_color_b.clone();
            this.m_enable_color_shimmer_0 = lipstickData.m_enable_color_shimmer_0;
            this.m_enable_color_shimmer_1 = lipstickData.m_enable_color_shimmer_1;
            this.m_shimmer_color_0 = (int[]) lipstickData.m_shimmer_color_0.clone();
            this.m_shimmer_color_1 = (int[]) lipstickData.m_shimmer_color_1.clone();
            this.m_shimmer_intensity_0 = lipstickData.m_shimmer_intensity_0;
            this.m_shimmer_intensity_1 = lipstickData.m_shimmer_intensity_1;
            this.m_is_valid = lipstickData.m_is_valid;
            this.m_num_triangles = lipstickData.m_num_triangles;
            int i2 = lipstickData.m_num_triangles;
            if (i2 > 0 && lipstickData.m_face_3d_xyz != null && lipstickData.m_normal_vectors != null && lipstickData.m_texcoords != null) {
                float[] fArr = new float[i2 * 9];
                this.m_face_3d_xyz = fArr;
                this.m_normal_vectors = new float[i2 * 9];
                this.m_texcoords = new float[i2 * 6];
                float[] fArr2 = lipstickData.m_face_3d_xyz;
                System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
                float[] fArr3 = lipstickData.m_normal_vectors;
                System.arraycopy(fArr3, 0, this.m_normal_vectors, 0, fArr3.length);
                this.m_is_texcoord_changed = lipstickData.m_is_texcoord_changed;
                if (lipstickData.m_is_texcoord_changed) {
                    float[] fArr4 = lipstickData.m_texcoords;
                    System.arraycopy(fArr4, 0, this.m_texcoords, 0, fArr4.length);
                }
            }
            float[] fArr5 = lipstickData.m_camera_matrix;
            System.arraycopy(fArr5, 0, this.m_camera_matrix, 0, fArr5.length);
            float[] fArr6 = lipstickData.m_pnp_matrix;
            System.arraycopy(fArr6, 0, this.m_pnp_matrix, 0, fArr6.length);
            float[] fArr7 = lipstickData.m_normal_pnp_matrix;
            System.arraycopy(fArr7, 0, this.m_normal_pnp_matrix, 0, fArr7.length);
            if (lipstickData.mp_template_data != null) {
                AllocTemplateArray(lipstickData.template_width, lipstickData.template_height);
                byte[] bArr = lipstickData.mp_template_data;
                System.arraycopy(bArr, 0, this.mp_template_data, 0, bArr.length);
            }
            this.m_fullness = lipstickData.m_fullness;
            this.m_fullness_adjusting_factor = lipstickData.m_fullness_adjusting_factor;
            this.m_fullness_shadow_adjusting_factor = lipstickData.m_fullness_shadow_adjusting_factor;
            this.m_smooth_kernel_size = lipstickData.m_smooth_kernel_size;
            this.m_wrinkless = lipstickData.m_wrinkless;
            this.m_is_lip_shape_enabled = lipstickData.m_is_lip_shape_enabled;
            this.m_primer_mask_width = lipstickData.m_primer_mask_width;
            this.m_primer_mask_height = lipstickData.m_primer_mask_height;
            this.m_primer_roi_x = lipstickData.m_primer_roi_x;
            this.m_primer_roi_y = lipstickData.m_primer_roi_y;
            this.m_primer_roi_width = lipstickData.m_primer_roi_width;
            this.m_primer_roi_height = lipstickData.m_primer_roi_height;
            if (lipstickData.m_primer_mask_width != 0 && lipstickData.m_primer_mask_height != 0) {
                this.mp_primer_data = (byte[]) lipstickData.mp_primer_data.clone();
            }
            this.mp_primer_blend_weight_and_level_mask = (byte[]) lipstickData.mp_primer_blend_weight_and_level_mask.clone();
            this.m_primer_color = (int[]) lipstickData.m_primer_color.clone();
            this.m_version = lipstickData.m_version;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25700a = {194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 245, 140, 254, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 137, 242, 129, 254, 245, 248, 140, 141, 254, 137, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 140, 241, 242, 246, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 246, 136, 139, 137, 241, 136, 245, 136, 240, 130, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 139, 254, 137, 245, 250, 130, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 248, 151, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 248, 168, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 252, 136, 142, 247, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 242, 140, 248, 142, 137, 137, 254, 139, 248, 245, 136, 128, 254, 139, 248, 136, 246, 251, 254, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 240, 245, 136, 140, 140, 248, 252, 136, 247, 141, 139, 250, 140, 141, 248, 140, 252, 250, 245, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 240, 245, 136, 140, 140, 248, 252, 136, 247, 141, 139, 250, 140, 141, 248, 140, 241, 242, 255, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 240, 245, 136, 140, 140, 248, 252, 136, 247, 141, 139, 250, 140, 141, 248, 140, 241, 139, 242, 247, 244, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 136, 139, 252, 254, 248, 251, 139, 242, 240, 241, 141, 248, 141, 241, 139, 254, 140, 241, 136, 245, 253, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 142, 140, 254, 248, 246, 254, 253, 242, 250, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 248, 247, 136, 139, 246, 250, 
        245, 242, 131, 254, 248, 255, 250, 252, 141, 136, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 245, 242, 137, 140, 141, 242, 252, 244, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 252, 136, 245, 136, 139, 248, 140, 241, 242, 246, 246, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 140, 241, 242, 246, 246, 254, 139, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 247, 250, 251, 245, 254, 248, 139, 254, 137, 245, 250, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 137, 139, 242, 246, 254, 139, 248, 240, 139, 250, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 142, 245, 245, 247, 254, 140, 140, 248, 140, 141, 139, 254, 247, 240, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 248, 140, 242, 131, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 139, 136, 141, 250, 141, 242, 136, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 128, 139, 242, 247, 244, 245, 254, 140, 140, 248, 140, 141, 139, 254, 247, 240, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 142, 245, 245, 247, 254, 140, 140, 248, 140, 241, 250, 253, 136, 128, 248, 140, 141, 139, 254, 247, 240, 141, 241, 162, 194, 194, 252, 136, 247, 140, 141, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 232, 164, 232, 151, 149, 151, 151, 168, 162, 194, 252, 136, 247, 140, 141, 232, 246, 250, 141, 170, 232, 235, 190, 185, 237, 136, 226, 186, 251, 186, 139, 232, 164, 232, 246, 250, 141, 170, 159, 151, 149, 169, 160, 160, 147, 232, 148, 151, 149, 168, 173, 160, 147, 232, 151, 149, 172, 147, 232, 151, 149, 172, 175, 174, 147, 232, 148, 151, 149, 170, 170, 168, 147, 232, 148, 151, 149, 171, 168, 160, 147, 232, 151, 149, 168, 168, 171, 147, 232, 151, 149, 172, 147, 232, 148, 151, 149, 151, 175, 168, 144, 162, 194, 252, 136, 247, 140, 141, 232, 246, 250, 141, 170, 232, 226, 186, 251, 186, 139, 237, 136, 235, 190, 185, 232, 164, 232, 246, 250, 141, 170, 159, 168, 149, 151, 151, 151, 151, 147, 232, 168, 149, 151, 151, 151, 151, 147, 232, 168, 149, 151, 151, 151, 151, 147, 232, 148, 151, 149, 151, 151, 151, 160, 147, 232, 148, 151, 149, 170, 171, 170, 174, 147, 232, 168, 149, 174, 174, 169, 168, 147, 232, 168, 149, 171, 151, 168, 174, 147, 232, 148, 151, 149, 174, 168, 171, 169, 147, 232, 151, 149, 151, 151, 151, 168, 144, 162, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 169, 191, 236, 239, 159, 143, 254, 252, 170, 232, 252, 144, 194, 132, 194, 143, 254, 252, 171, 232, 178, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 148, 168, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 169, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 148, 168, 149, 151, 144, 162, 194, 143, 254, 252, 171, 232, 137, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 171, 159, 252, 149, 251, 240, 147, 232, 178, 149, 128, 131, 144, 147, 232, 143, 254, 252, 171, 159, 252, 149, 240, 251, 147, 232, 178, 149, 129, 130, 144, 147, 232, 140, 141, 254, 137, 159, 252, 149, 251, 147, 232, 252, 149, 240, 144, 144, 162, 194, 143, 254, 252, 171, 232, 138, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 171, 159, 137, 149, 129, 130, 128, 147, 232, 252, 149, 139, 144, 147, 232, 143, 254, 252, 171, 159, 252, 149, 139, 147, 232, 137, 149, 130, 131, 129, 144, 147, 232, 140, 141, 254, 137, 159, 137, 149, 129, 147, 232, 252, 149, 139, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 232, 164, 232, 138, 149, 129, 232, 148, 232, 246, 242, 247, 159, 138, 149, 128, 147, 232, 138, 149, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 254, 232, 164, 232, 168, 149, 151, 254, 148, 168, 151, 162, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 250, 251, 140, 159, 138, 149, 131, 232, 146, 232, 159, 138, 149, 128, 232, 148, 232, 138, 149, 130, 144, 232, 150, 232, 159, 173, 149, 151, 232, 145, 232, 253, 232, 
        146, 232, 254, 144, 144, 147, 232, 253, 232, 150, 232, 159, 138, 149, 129, 232, 146, 232, 254, 144, 147, 232, 138, 149, 129, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 191, 236, 239, 169, 235, 190, 185, 159, 143, 254, 252, 170, 232, 252, 144, 194, 132, 194, 143, 254, 252, 171, 232, 178, 232, 164, 232, 143, 254, 252, 171, 159, 168, 149, 151, 147, 232, 169, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 168, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 170, 149, 151, 144, 162, 194, 143, 254, 252, 170, 232, 137, 232, 164, 232, 250, 251, 140, 159, 255, 139, 250, 252, 141, 159, 252, 149, 129, 129, 129, 232, 146, 232, 178, 149, 129, 130, 131, 144, 232, 145, 232, 173, 149, 151, 232, 148, 232, 178, 149, 128, 128, 128, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 252, 149, 131, 232, 145, 232, 246, 242, 129, 159, 178, 149, 129, 129, 129, 147, 232, 252, 245, 250, 246, 137, 159, 137, 232, 148, 232, 178, 149, 129, 129, 129, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 147, 232, 252, 149, 130, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 141, 136, 191, 186, 239, 159, 143, 254, 252, 170, 232, 139, 240, 251, 144, 194, 132, 194, 143, 254, 252, 171, 232, 137, 232, 164, 232, 159, 139, 240, 251, 149, 240, 232, 163, 232, 139, 240, 251, 149, 251, 144, 232, 166, 232, 143, 254, 252, 171, 159, 139, 240, 251, 149, 251, 240, 147, 232, 148, 168, 149, 151, 147, 232, 151, 149, 173, 173, 173, 173, 173, 173, 173, 174, 144, 232, 161, 232, 143, 254, 252, 171, 159, 139, 240, 251, 149, 240, 251, 147, 232, 151, 149, 151, 147, 232, 148, 151, 149, 170, 170, 170, 170, 170, 170, 170, 170, 144, 162, 194, 143, 254, 252, 171, 232, 138, 232, 164, 232, 159, 139, 240, 251, 149, 139, 232, 163, 232, 137, 149, 129, 144, 232, 166, 232, 143, 254, 252, 171, 159, 137, 149, 129, 130, 128, 147, 232, 139, 240, 251, 149, 139, 144, 232, 161, 232, 143, 254, 252, 171, 159, 139, 240, 251, 149, 139, 147, 232, 137, 149, 130, 131, 129, 144, 162, 194, 255, 245, 136, 250, 141, 232, 252, 232, 164, 232, 138, 149, 129, 232, 148, 232, 246, 242, 247, 159, 138, 149, 128, 147, 232, 138, 149, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 241, 232, 164, 232, 250, 251, 140, 159, 159, 138, 149, 128, 232, 148, 232, 138, 149, 130, 144, 232, 150, 232, 159, 173, 149, 151, 232, 145, 232, 252, 232, 146, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 232, 146, 232, 138, 149, 131, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 241, 147, 232, 252, 147, 232, 138, 149, 129, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 141, 136, 191, 236, 179, 159, 143, 254, 252, 170, 232, 139, 240, 251, 144, 194, 132, 194, 143, 254, 252, 170, 232, 241, 252, 143, 232, 164, 232, 235, 190, 185, 141, 136, 191, 186, 239, 159, 139, 240, 251, 144, 162, 194, 255, 245, 136, 250, 141, 232, 245, 232, 164, 232, 241, 252, 143, 149, 131, 232, 148, 232, 241, 252, 143, 149, 130, 232, 145, 232, 151, 149, 172, 162, 194, 255, 245, 136, 250, 141, 232, 140, 232, 164, 232, 241, 252, 143, 149, 130, 232, 150, 232, 159, 168, 149, 151, 232, 148, 232, 250, 251, 140, 159, 245, 232, 145, 232, 169, 149, 151, 232, 148, 232, 168, 149, 151, 144, 232, 146, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 241, 252, 143, 149, 129, 147, 232, 140, 147, 232, 245, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 191, 236, 179, 141, 136, 235, 190, 185, 159, 143, 254, 252, 170, 232, 241, 140, 245, 144, 194, 132, 194, 143, 254, 252, 170, 232, 139, 240, 251, 162, 194, 255, 245, 136, 250, 141, 232, 129, 232, 164, 232, 241, 140, 245, 149, 129, 232, 145, 232, 173, 149, 151, 162, 194, 139, 240, 251, 149, 139, 232, 164, 232, 250, 251, 140, 159, 129, 232, 148, 232, 170, 149, 151, 144, 232, 148, 232, 168, 149, 151, 162, 194, 139, 240, 251, 149, 240, 232, 164, 232, 169, 149, 151, 232, 148, 232, 250, 251, 140, 159, 129, 232, 148, 232, 169, 149, 151, 144, 162, 194, 139, 240, 251, 149, 251, 232, 164, 232, 169, 149, 151, 232, 148, 232, 250, 251, 140, 159, 129, 232, 148, 232, 171, 149, 151, 144, 162, 194, 139, 240, 251, 232, 164, 232, 252, 245, 250, 246, 137, 159, 139, 240, 251, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 252, 232, 164, 232, 159, 168, 149, 151, 232, 148, 232, 250, 251, 140, 159, 169, 149, 151, 232, 145, 232, 241, 140, 245, 149, 131, 232, 148, 232, 168, 149, 151, 144, 144, 232, 145, 232, 241, 140, 245, 149, 130, 162, 194, 139, 240, 251, 232, 164, 232, 252, 245, 250, 246, 137, 159, 159, 139, 240, 251, 232, 148, 232, 143, 254, 252, 170, 159, 151, 149, 172, 144, 144, 232, 145, 232, 143, 254, 252, 170, 159, 252, 144, 232, 146, 232, 143, 254, 252, 170, 159, 241, 140, 245, 149, 131, 144, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 139, 240, 251, 162, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 191, 250, 139, 253, 179, 242, 
        240, 241, 141, 159, 255, 245, 136, 250, 141, 232, 252, 136, 245, 136, 139, 147, 232, 255, 245, 136, 250, 141, 232, 245, 250, 130, 254, 139, 144, 194, 132, 194, 242, 255, 232, 159, 252, 136, 245, 136, 139, 232, 163, 232, 151, 149, 172, 144, 194, 132, 194, 252, 136, 245, 136, 139, 232, 164, 232, 169, 149, 151, 232, 145, 232, 245, 250, 130, 254, 139, 232, 145, 232, 252, 136, 245, 136, 139, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 252, 136, 245, 136, 139, 232, 164, 232, 168, 149, 151, 232, 148, 232, 169, 149, 151, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 245, 250, 130, 254, 139, 144, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 252, 136, 245, 136, 139, 144, 162, 194, 134, 194, 139, 254, 141, 142, 139, 247, 232, 252, 136, 245, 136, 139, 162, 194, 134, 194, 194, 242, 247, 141, 232, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 255, 245, 136, 250, 141, 232, 240, 137, 142, 248, 143, 250, 245, 142, 254, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 252, 137, 142, 248, 143, 250, 245, 142, 254, 232, 164, 232, 240, 137, 142, 248, 143, 250, 245, 142, 254, 232, 145, 232, 169, 172, 172, 149, 151, 162, 194, 139, 254, 141, 142, 139, 247, 232, 159, 252, 137, 142, 248, 143, 250, 245, 142, 254, 232, 163, 232, 151, 149, 151, 144, 166, 232, 242, 247, 141, 159, 252, 137, 142, 248, 143, 250, 245, 142, 254, 232, 148, 232, 151, 149, 172, 144, 232, 161, 232, 242, 247, 141, 159, 252, 137, 142, 248, 143, 250, 245, 142, 254, 232, 146, 232, 151, 149, 172, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 184, 253, 253, 236, 241, 250, 253, 136, 128, 159, 143, 254, 252, 170, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 147, 232, 255, 245, 136, 250, 141, 232, 246, 250, 140, 244, 248, 143, 250, 245, 142, 254, 147, 232, 255, 245, 136, 250, 141, 232, 140, 141, 139, 254, 247, 240, 141, 241, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 137, 242, 129, 254, 245, 248, 130, 232, 164, 232, 151, 149, 169, 160, 160, 232, 145, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 151, 230, 232, 146, 232, 151, 149, 172, 175, 174, 232, 145, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 168, 230, 232, 146, 232, 151, 149, 168, 168, 171, 232, 145, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 169, 230, 162, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 240, 139, 250, 253, 242, 254, 247, 141, 248, 139, 250, 141, 242, 136, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 246, 242, 247, 159, 151, 149, 174, 172, 147, 232, 137, 136, 128, 159, 246, 250, 140, 244, 248, 143, 250, 245, 142, 254, 147, 232, 168, 149, 172, 144, 144, 144, 232, 145, 232, 140, 141, 139, 254, 247, 240, 141, 241, 232, 150, 232, 168, 151, 151, 149, 151, 162, 194, 255, 245, 136, 250, 141, 232, 140, 241, 139, 242, 247, 244, 248, 130, 232, 164, 232, 137, 242, 129, 254, 245, 248, 130, 232, 145, 232, 250, 245, 137, 241, 250, 248, 240, 139, 250, 253, 242, 254, 247, 141, 248, 139, 250, 141, 242, 136, 162, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 140, 241, 139, 242, 247, 244, 248, 130, 232, 164, 232, 137, 242, 129, 254, 245, 248, 130, 232, 148, 232, 159, 151, 149, 170, 171, 170, 169, 232, 145, 232, 137, 136, 128, 159, 137, 242, 129, 254, 245, 248, 130, 147, 232, 169, 149, 151, 144, 232, 146, 232, 151, 149, 173, 170, 175, 175, 232, 145, 232, 137, 242, 129, 254, 245, 248, 130, 232, 146, 232, 151, 149, 151, 151, 170, 168, 144, 162, 194, 140, 241, 139, 242, 247, 244, 248, 130, 232, 164, 232, 246, 250, 129, 248, 140, 241, 139, 242, 247, 244, 248, 130, 232, 145, 232, 159, 250, 245, 137, 241, 250, 248, 240, 139, 250, 253, 242, 254, 247, 141, 248, 139, 250, 141, 242, 136, 232, 150, 232, 151, 149, 169, 169, 174, 172, 144, 162, 194, 242, 247, 141, 232, 242, 140, 248, 140, 241, 250, 253, 136, 128, 248, 142, 247, 253, 254, 139, 255, 245, 136, 128, 232, 164, 232, 151, 162, 194, 143, 254, 252, 170, 232, 253, 140, 141, 248, 137, 242, 129, 254, 245, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 252, 232, 164, 232, 151, 162, 232, 252, 232, 163, 232, 170, 162, 232, 252, 146, 146, 144, 194, 132, 194, 242, 255, 232, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 252, 230, 232, 163, 232, 140, 241, 139, 242, 247, 244, 248, 130, 144, 194, 242, 140, 248, 140, 241, 250, 253, 136, 128, 248, 142, 247, 253, 254, 139, 255, 245, 136, 128, 232, 164, 232, 168, 162, 194, 253, 140, 141, 248, 137, 242, 129, 254, 245, 228, 252, 230, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 252, 230, 232, 148, 232, 140, 241, 139, 242, 247, 244, 248, 130, 144, 162, 194, 134, 194, 242, 255, 232, 159, 250, 245, 137, 241, 250, 248, 240, 139, 250, 253, 242, 254, 247, 141, 248, 139, 250, 141, 242, 136, 232, 165, 232, 151, 149, 151, 232, 157, 157, 232, 242, 140, 248, 140, 241, 250, 253, 136, 128, 248, 142, 247, 253, 254, 139, 255, 245, 136, 128, 232, 164, 164, 232, 151, 144, 194, 132, 194, 143, 254, 252, 170, 232, 241, 140, 143, 232, 164, 232, 235, 190, 185, 
        169, 191, 236, 239, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 144, 162, 194, 255, 245, 136, 250, 141, 232, 136, 245, 253, 239, 232, 164, 232, 241, 140, 143, 228, 169, 230, 162, 194, 241, 140, 143, 228, 169, 230, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 241, 140, 143, 228, 169, 230, 232, 148, 232, 140, 241, 139, 242, 247, 244, 248, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 136, 139, 242, 240, 242, 247, 250, 245, 248, 139, 250, 141, 242, 136, 232, 164, 232, 159, 241, 140, 143, 228, 169, 230, 232, 165, 232, 151, 149, 151, 144, 166, 232, 136, 245, 253, 239, 232, 150, 232, 241, 140, 143, 228, 169, 230, 232, 161, 232, 168, 149, 151, 162, 194, 255, 245, 136, 250, 141, 232, 139, 250, 141, 242, 136, 232, 164, 232, 159, 241, 140, 143, 228, 169, 230, 232, 165, 232, 151, 149, 151, 144, 166, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 159, 136, 245, 253, 239, 232, 148, 232, 241, 140, 143, 228, 169, 230, 144, 232, 150, 232, 151, 149, 172, 144, 232, 145, 232, 168, 149, 172, 232, 161, 232, 151, 149, 151, 162, 194, 255, 245, 136, 250, 141, 232, 254, 129, 137, 136, 247, 254, 247, 141, 232, 164, 232, 246, 250, 129, 159, 168, 149, 151, 147, 232, 137, 136, 128, 159, 169, 149, 151, 147, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 159, 151, 149, 169, 232, 148, 232, 241, 140, 143, 228, 168, 230, 144, 144, 232, 150, 232, 151, 149, 168, 144, 232, 145, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 159, 136, 245, 253, 239, 232, 148, 232, 151, 149, 175, 144, 232, 150, 232, 151, 149, 168, 144, 144, 162, 194, 255, 245, 136, 250, 141, 232, 136, 245, 253, 239, 248, 139, 250, 141, 242, 136, 232, 164, 232, 137, 136, 128, 159, 246, 242, 247, 159, 168, 149, 151, 147, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 136, 245, 253, 239, 232, 150, 232, 151, 149, 170, 144, 144, 147, 232, 170, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 136, 245, 253, 236, 248, 139, 250, 141, 242, 136, 232, 164, 232, 168, 149, 151, 232, 148, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 159, 241, 140, 143, 228, 168, 230, 232, 148, 232, 151, 149, 168, 144, 232, 150, 232, 151, 149, 171, 144, 144, 162, 194, 241, 140, 143, 228, 168, 230, 232, 164, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 246, 250, 129, 159, 241, 140, 143, 228, 168, 230, 232, 145, 232, 136, 139, 242, 240, 242, 247, 250, 245, 248, 139, 250, 141, 242, 136, 147, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 241, 140, 143, 228, 168, 230, 232, 145, 232, 159, 168, 149, 151, 232, 146, 232, 139, 250, 141, 242, 136, 232, 145, 232, 254, 129, 137, 136, 247, 254, 247, 141, 232, 145, 232, 136, 245, 253, 236, 248, 139, 250, 141, 242, 136, 144, 232, 145, 232, 136, 245, 253, 239, 248, 139, 250, 141, 242, 136, 144, 144, 144, 162, 194, 253, 140, 141, 248, 137, 242, 129, 254, 245, 232, 164, 232, 191, 236, 239, 169, 235, 190, 185, 159, 241, 140, 143, 144, 162, 194, 134, 194, 139, 254, 141, 142, 139, 247, 232, 253, 140, 141, 248, 137, 242, 129, 254, 245, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 190, 254, 141, 189, 242, 247, 250, 245, 236, 141, 139, 136, 244, 254, 140, 159, 144, 194, 132, 194, 242, 255, 232, 159, 254, 247, 250, 251, 245, 254, 248, 139, 254, 137, 245, 250, 130, 232, 163, 232, 151, 149, 172, 144, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 140, 139, 252, 248, 140, 141, 139, 136, 244, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 139, 254, 137, 245, 250, 130, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 162, 194, 255, 245, 136, 250, 141, 232, 140, 139, 252, 248, 136, 139, 250, 245, 232, 164, 232, 168, 149, 151, 162, 194, 143, 254, 252, 170, 232, 252, 136, 142, 247, 141, 254, 139, 232, 164, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 162, 194, 143, 254, 252, 170, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 248, 129, 248, 250, 245, 137, 241, 250, 232, 164, 232, 140, 139, 252, 248, 140, 141, 139, 136, 244, 254, 162, 194, 255, 245, 136, 250, 141, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 232, 164, 232, 140, 139, 252, 248, 136, 139, 250, 245, 162, 194, 143, 254, 252, 170, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 232, 164, 232, 140, 139, 252, 248, 140, 141, 139, 136, 244, 254, 162, 194, 143, 254, 252, 170, 232, 246, 250, 129, 248, 140, 141, 139, 136, 244, 254, 232, 164, 232, 140, 139, 252, 248, 140, 141, 139, 136, 244, 254, 162, 194, 255, 136, 139, 232, 159, 255, 245, 136, 250, 141, 232, 244, 232, 164, 232, 148, 170, 149, 172, 162, 232, 244, 232, 163, 164, 232, 170, 149, 172, 162, 232, 244, 232, 146, 164, 232, 
        168, 149, 151, 144, 194, 132, 194, 255, 136, 139, 232, 159, 255, 245, 136, 250, 141, 232, 241, 232, 164, 232, 148, 170, 149, 172, 162, 232, 241, 232, 163, 164, 232, 170, 149, 172, 162, 232, 241, 232, 146, 164, 232, 168, 149, 151, 144, 194, 132, 194, 143, 254, 252, 169, 232, 252, 136, 136, 139, 253, 232, 164, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 137, 242, 129, 254, 245, 248, 140, 141, 254, 137, 232, 145, 232, 143, 254, 252, 169, 159, 241, 147, 232, 244, 144, 162, 194, 143, 254, 252, 171, 232, 252, 142, 139, 139, 248, 140, 141, 139, 136, 244, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 139, 254, 137, 245, 250, 130, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 252, 136, 136, 139, 253, 144, 162, 194, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 248, 129, 248, 250, 245, 137, 241, 250, 232, 146, 164, 232, 252, 142, 139, 139, 248, 140, 141, 139, 136, 244, 254, 149, 139, 240, 251, 232, 145, 232, 252, 142, 139, 139, 248, 140, 141, 139, 136, 244, 254, 149, 250, 162, 194, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 232, 146, 164, 232, 159, 168, 149, 151, 232, 148, 232, 252, 142, 139, 139, 248, 140, 141, 139, 136, 244, 254, 149, 250, 144, 162, 194, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 232, 146, 164, 232, 252, 142, 139, 139, 248, 140, 141, 139, 136, 244, 254, 149, 139, 240, 251, 162, 194, 252, 136, 142, 247, 141, 254, 139, 232, 146, 164, 232, 143, 254, 252, 170, 159, 252, 142, 139, 139, 248, 140, 141, 139, 136, 244, 254, 149, 250, 147, 232, 168, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 246, 250, 129, 248, 140, 141, 139, 136, 244, 254, 232, 164, 232, 246, 250, 129, 159, 246, 250, 129, 248, 140, 141, 139, 136, 244, 254, 147, 232, 252, 142, 139, 139, 248, 140, 141, 139, 136, 244, 254, 149, 139, 240, 251, 144, 162, 194, 134, 194, 134, 194, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 248, 129, 248, 250, 245, 137, 241, 250, 232, 164, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 248, 129, 248, 250, 245, 137, 241, 250, 232, 150, 232, 252, 136, 142, 247, 141, 254, 139, 149, 129, 162, 194, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 232, 164, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 232, 150, 232, 252, 136, 142, 247, 141, 254, 139, 149, 130, 162, 194, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 232, 164, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 232, 150, 232, 252, 136, 142, 247, 141, 254, 139, 149, 131, 162, 194, 140, 139, 252, 248, 140, 141, 139, 136, 244, 254, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 140, 141, 139, 136, 244, 254, 147, 232, 246, 250, 129, 248, 140, 141, 139, 136, 244, 254, 147, 232, 140, 139, 252, 248, 136, 139, 250, 245, 144, 162, 194, 143, 254, 252, 170, 232, 139, 136, 136, 246, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 144, 162, 194, 139, 136, 136, 246, 149, 129, 232, 164, 232, 168, 149, 151, 232, 148, 232, 140, 141, 254, 137, 159, 151, 149, 170, 170, 147, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 144, 162, 194, 139, 136, 136, 246, 149, 130, 232, 164, 232, 159, 168, 149, 151, 232, 148, 232, 140, 141, 254, 137, 159, 151, 149, 173, 173, 147, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 144, 144, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 139, 136, 136, 246, 149, 129, 144, 162, 194, 139, 136, 136, 246, 149, 131, 232, 164, 232, 159, 168, 149, 151, 232, 148, 232, 140, 141, 254, 137, 159, 168, 149, 151, 232, 147, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 144, 144, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 139, 136, 136, 246, 149, 130, 144, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 139, 136, 136, 246, 149, 129, 144, 162, 194, 143, 254, 252, 170, 232, 139, 254, 140, 142, 245, 141, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 140, 141, 139, 136, 244, 254, 147, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 248, 129, 248, 250, 245, 137, 241, 250, 147, 232, 159, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 232, 148, 232, 151, 149, 151, 144, 232, 150, 232, 151, 149, 170, 170, 144, 232, 145, 232, 139, 136, 136, 246, 149, 129, 162, 194, 139, 254, 140, 142, 245, 141, 232, 146, 164, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 248, 129, 248, 250, 245, 137, 241, 250, 232, 145, 232, 139, 136, 136, 246, 149, 130, 162, 194, 139, 254, 140, 142, 245, 141, 232, 146, 164, 232, 246, 242, 129, 159, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 248, 129, 
        248, 250, 245, 137, 241, 250, 147, 232, 140, 246, 136, 136, 141, 241, 254, 253, 248, 140, 141, 139, 136, 244, 254, 147, 232, 159, 140, 246, 136, 136, 141, 241, 254, 253, 248, 136, 139, 250, 245, 232, 148, 232, 151, 149, 173, 173, 144, 232, 150, 232, 151, 149, 170, 171, 144, 232, 145, 232, 139, 136, 136, 246, 149, 131, 162, 194, 139, 254, 141, 142, 139, 247, 232, 139, 254, 140, 142, 245, 141, 162, 194, 134, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 143, 254, 252, 170, 232, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 162, 194, 194, 242, 255, 232, 159, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 144, 144, 232, 133, 133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 144, 144, 232, 133, 133, 194, 159, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 250, 251, 140, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 143, 254, 252, 169, 159, 151, 149, 172, 144, 144, 147, 232, 143, 254, 252, 169, 159, 151, 149, 172, 144, 144, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 136, 142, 139, 252, 254, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 232, 145, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 245, 242, 137, 140, 141, 242, 252, 244, 144, 162, 194, 143, 254, 252, 171, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 194, 146, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 137, 242, 129, 254, 245, 248, 140, 141, 254, 137, 232, 145, 232, 143, 254, 252, 169, 159, 148, 168, 149, 151, 147, 232, 151, 149, 151, 144, 144, 194, 146, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 137, 242, 129, 254, 245, 248, 140, 141, 254, 137, 232, 145, 232, 143, 254, 252, 169, 159, 232, 168, 149, 151, 147, 232, 151, 149, 151, 144, 144, 194, 146, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 137, 242, 129, 254, 245, 248, 140, 141, 254, 137, 232, 145, 232, 143, 254, 252, 169, 159, 232, 151, 149, 151, 147, 232, 148, 168, 149, 151, 144, 144, 194, 146, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 137, 242, 129, 254, 245, 248, 140, 141, 254, 137, 232, 145, 232, 143, 254, 252, 169, 159, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 144, 162, 194, 
        245, 242, 137, 248, 140, 241, 250, 137, 254, 232, 145, 164, 232, 151, 149, 169, 162, 194, 255, 245, 136, 250, 141, 232, 137, 241, 242, 245, 141, 139, 142, 246, 232, 164, 232, 151, 149, 151, 162, 194};
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25701a = {194, 242, 255, 232, 159, 242, 140, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 232, 165, 232, 151, 149, 172, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 232, 164, 232, 250, 245, 137, 241, 250, 162, 194, 255, 245, 136, 250, 141, 232, 136, 139, 250, 245, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 250, 245, 137, 241, 250, 232, 164, 232, 246, 242, 247, 159, 245, 242, 137, 140, 232, 146, 232, 136, 139, 250, 245, 232, 146, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 149, 139, 147, 232, 168, 149, 151, 144, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 136, 139, 250, 245, 144, 162, 194, 194, 137, 241, 242, 245, 141, 139, 142, 246, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 149, 139, 232, 148, 232, 245, 242, 137, 140, 144, 162, 194, 255, 245, 136, 250, 141, 232, 252, 142, 137, 242, 253, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 168, 149, 151, 232, 148, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 139, 254, 137, 245, 250, 130, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 137, 241, 242, 245, 141, 139, 142, 246, 232, 145, 164, 232, 252, 142, 137, 242, 253, 248, 139, 250, 253, 242, 142, 140, 162, 194, 134, 194, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 232, 164, 232, 168, 149, 151, 232, 150, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 194, 162, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 136, 255, 248, 130, 232, 164, 232, 151, 149, 151, 194, 162, 194, 255, 245, 136, 250, 141, 232, 246, 242, 247, 248, 136, 255, 248, 130, 232, 164, 232, 172, 172, 173, 173, 149, 151, 194, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 244, 232, 164, 232, 148, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 248, 140, 242, 131, 254, 162, 232, 244, 232, 163, 164, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 248, 140, 242, 131, 254, 162, 232, 244, 146, 146, 144, 194, 132, 194, 143, 254, 252, 169, 232, 140, 250, 246, 137, 245, 254, 248, 140, 241, 242, 255, 141, 232, 164, 232, 159, 139, 136, 141, 250, 141, 242, 136, 247, 232, 164, 164, 232, 160, 151, 232, 133, 133, 232, 139, 136, 141, 250, 141, 242, 136, 247, 232, 164, 164, 232, 169, 174, 151, 144, 166, 232, 143, 254, 252, 169, 159, 151, 149, 151, 147, 232, 255, 245, 136, 250, 141, 159, 244, 144, 232, 145, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 144, 232, 161, 232, 143, 254, 252, 169, 159, 255, 245, 136, 250, 141, 159, 244, 144, 232, 145, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 147, 232, 151, 149, 151, 144, 194, 162, 194, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 140, 250, 246, 137, 245, 254, 248, 140, 241, 242, 255, 141, 194, 162, 194, 143, 254, 252, 171, 232, 246, 136, 139, 137, 241, 136, 245, 136, 240, 130, 248, 168, 140, 141, 248, 137, 250, 140, 140, 248, 137, 242, 129, 254, 245, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 246, 136, 139, 137, 241, 136, 245, 136, 240, 130, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 194, 162, 194, 246, 250, 129, 248, 136, 255, 248, 130, 232, 164, 232, 246, 250, 129, 159, 246, 250, 129, 248, 136, 255, 248, 130, 147, 232, 246, 136, 139, 137, 241, 136, 245, 136, 240, 130, 248, 168, 140, 141, 248, 137, 250, 140, 140, 248, 137, 242, 129, 254, 245, 228, 168, 230, 144, 194, 162, 194, 246, 242, 247, 248, 136, 255, 248, 130, 232, 164, 232, 246, 242, 247, 159, 246, 242, 247, 248, 136, 255, 248, 130, 147, 232, 246, 136, 139, 137, 241, 136, 245, 136, 240, 130, 248, 168, 140, 141, 248, 137, 250, 140, 140, 248, 137, 242, 129, 254, 245, 228, 151, 230, 144, 194, 162, 194, 134, 194, 143, 254, 252, 170, 232, 140, 139, 252, 248, 139, 240, 251, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 194, 162, 194, 255, 245, 136, 250, 141, 232, 140, 139, 252, 248, 130, 232, 164, 232, 151, 149, 169, 160, 160, 232, 145, 232, 140, 139, 252, 248, 139, 240, 
        251, 149, 139, 232, 146, 232, 151, 149, 172, 175, 174, 232, 145, 232, 140, 139, 252, 248, 139, 240, 251, 149, 240, 232, 146, 232, 151, 149, 168, 168, 171, 232, 145, 232, 140, 139, 252, 248, 139, 240, 251, 149, 251, 194, 162, 194, 255, 245, 136, 250, 141, 232, 136, 137, 254, 247, 248, 130, 232, 164, 232, 246, 250, 129, 248, 136, 255, 248, 130, 194, 162, 194, 255, 245, 136, 250, 141, 232, 252, 245, 136, 140, 254, 248, 130, 232, 164, 232, 246, 242, 247, 248, 136, 255, 248, 130, 194, 162, 194, 255, 245, 136, 250, 141, 232, 139, 254, 140, 142, 245, 141, 248, 130, 194, 162, 194, 242, 255, 232, 159, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 252, 245, 136, 140, 254, 248, 130, 144, 232, 165, 232, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 140, 139, 252, 248, 130, 144, 232, 157, 157, 232, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 136, 137, 254, 247, 248, 130, 144, 232, 163, 232, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 140, 139, 252, 248, 130, 144, 144, 194, 139, 254, 140, 142, 245, 141, 248, 130, 232, 164, 232, 246, 242, 129, 159, 136, 137, 254, 247, 248, 130, 147, 232, 252, 245, 136, 140, 254, 248, 130, 147, 232, 151, 149, 172, 144, 194, 162, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 252, 245, 136, 140, 254, 248, 130, 144, 232, 165, 232, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 140, 139, 252, 248, 130, 144, 144, 194, 139, 254, 140, 142, 245, 141, 248, 130, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 130, 147, 232, 252, 245, 136, 140, 254, 248, 130, 147, 232, 151, 149, 174, 172, 144, 194, 162, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 136, 137, 254, 247, 248, 130, 144, 232, 163, 232, 237, 136, 186, 233, 238, 233, 242, 129, 254, 245, 159, 140, 139, 252, 248, 130, 144, 144, 194, 139, 254, 140, 142, 245, 141, 248, 130, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 130, 147, 232, 136, 137, 254, 247, 248, 130, 147, 232, 151, 149, 174, 172, 144, 194, 162, 194, 254, 245, 140, 254, 194, 139, 254, 140, 142, 245, 141, 248, 130, 232, 164, 232, 246, 242, 129, 159, 136, 137, 254, 247, 248, 130, 147, 232, 252, 245, 136, 140, 254, 248, 130, 147, 232, 151, 149, 172, 144, 194, 162, 194, 143, 254, 252, 170, 232, 140, 139, 252, 248, 130, 252, 251, 252, 139, 232, 164, 232, 235, 190, 185, 237, 136, 226, 186, 251, 186, 139, 232, 145, 232, 140, 139, 252, 248, 139, 240, 251, 194, 162, 194, 140, 139, 252, 248, 130, 252, 251, 252, 139, 228, 151, 230, 232, 164, 232, 139, 254, 140, 142, 245, 141, 248, 130, 194, 162, 194, 143, 254, 252, 170, 232, 128, 139, 242, 247, 244, 245, 254, 140, 140, 248, 139, 240, 251, 232, 164, 232, 226, 186, 251, 186, 139, 237, 136, 235, 190, 185, 232, 145, 232, 140, 139, 252, 248, 130, 252, 251, 252, 139, 194, 162, 194, 242, 255, 232, 159, 128, 139, 242, 247, 244, 245, 254, 140, 140, 248, 139, 240, 251, 149, 139, 232, 163, 232, 140, 139, 252, 248, 139, 240, 251, 149, 139, 144, 194, 128, 139, 242, 247, 244, 245, 254, 140, 140, 248, 139, 240, 251, 149, 139, 232, 164, 232, 246, 242, 129, 159, 128, 139, 242, 247, 244, 245, 254, 140, 140, 248, 139, 240, 251, 149, 139, 147, 232, 140, 139, 252, 248, 139, 240, 251, 149, 139, 147, 232, 151, 149, 172, 144, 194, 162, 194, 140, 136, 142, 139, 252, 254, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 128, 139, 242, 247, 244, 245, 254, 140, 140, 248, 139, 240, 251, 147, 232, 250, 245, 137, 241, 250, 232, 145, 232, 128, 139, 242, 247, 244, 245, 254, 140, 140, 248, 140, 141, 139, 254, 247, 240, 141, 241, 144, 162, 194, 134, 194, 143, 254, 252, 170, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 140, 136, 142, 139, 252, 254, 162, 194, 194, 143, 254, 252, 170, 232, 140, 141, 139, 136, 244, 254, 140, 232, 164, 232, 190, 254, 141, 189, 242, 247, 250, 245, 236, 141, 139, 136, 244, 254, 140, 159, 144, 232, 145, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 245, 242, 137, 140, 141, 242, 252, 244, 144, 162, 194, 255, 245, 136, 250, 141, 232, 252, 136, 247, 141, 139, 250, 140, 141, 248, 246, 250, 140, 244, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 240, 232, 145, 232, 250, 245, 137, 241, 250, 162, 194, 255, 245, 136, 250, 141, 232, 240, 245, 136, 140, 140, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 251, 232, 145, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 245, 242, 137, 140, 141, 242, 
        252, 244, 144, 232, 145, 232, 250, 245, 137, 241, 250, 162, 194, 255, 245, 136, 250, 141, 232, 240, 139, 250, 130, 232, 164, 232, 151, 149, 169, 160, 160, 232, 145, 232, 140, 136, 142, 139, 252, 254, 149, 139, 232, 146, 232, 151, 149, 172, 175, 174, 232, 145, 232, 140, 136, 142, 139, 252, 254, 149, 240, 232, 146, 232, 151, 149, 168, 168, 171, 232, 145, 232, 140, 136, 142, 139, 252, 254, 149, 251, 162, 194, 255, 245, 136, 250, 141, 232, 252, 136, 247, 141, 139, 250, 140, 141, 232, 164, 232, 246, 250, 129, 159, 246, 242, 247, 159, 159, 240, 139, 250, 130, 232, 145, 232, 240, 245, 136, 140, 140, 248, 252, 136, 247, 141, 139, 250, 140, 141, 248, 140, 252, 250, 245, 254, 232, 146, 232, 240, 245, 136, 140, 140, 248, 252, 136, 247, 141, 139, 250, 140, 141, 248, 140, 241, 242, 255, 141, 144, 232, 145, 232, 252, 136, 247, 141, 139, 250, 140, 141, 248, 246, 250, 140, 244, 232, 146, 232, 151, 149, 172, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 252, 136, 247, 141, 139, 250, 140, 141, 248, 246, 250, 140, 244, 144, 147, 232, 168, 149, 151, 144, 147, 232, 151, 149, 151, 144, 162, 194, 242, 255, 232, 159, 252, 136, 247, 141, 139, 250, 140, 141, 232, 163, 232, 151, 149, 172, 144, 232, 252, 136, 247, 141, 139, 250, 140, 141, 232, 164, 232, 151, 149, 172, 232, 148, 232, 159, 151, 149, 172, 232, 148, 232, 252, 136, 247, 141, 139, 250, 140, 141, 144, 232, 145, 232, 240, 245, 136, 140, 140, 248, 252, 136, 247, 141, 139, 250, 140, 141, 248, 140, 241, 139, 242, 247, 244, 162, 194, 242, 255, 232, 159, 142, 140, 254, 248, 246, 254, 253, 242, 250, 247, 232, 165, 232, 151, 149, 172, 144, 194, 132, 194, 240, 139, 250, 130, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 251, 162, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 151, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 162, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 168, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 240, 162, 194, 194, 255, 245, 136, 250, 141, 232, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 139, 162, 194, 255, 245, 136, 250, 141, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 151, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 240, 162, 194, 255, 245, 136, 250, 141, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 168, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 251, 162, 194, 194, 242, 255, 232, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 252, 136, 142, 247, 141, 232, 164, 164, 232, 168, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 151, 232, 145, 232, 250, 245, 137, 241, 250, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 139, 162, 194, 194, 242, 255, 232, 159, 137, 241, 242, 245, 141, 139, 142, 246, 232, 165, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 253, 254, 255, 250, 142, 245, 141, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 
        245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 137, 139, 242, 246, 254, 139, 248, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 139, 162, 194, 255, 245, 136, 250, 141, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 137, 139, 242, 246, 254, 139, 248, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 240, 232, 145, 232, 250, 245, 137, 241, 250, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 139, 162, 194, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 129, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 147, 232, 253, 254, 255, 250, 142, 245, 141, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 147, 232, 137, 241, 242, 245, 141, 139, 142, 246, 144, 162, 194, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 129, 159, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 147, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 147, 232, 137, 241, 242, 245, 141, 139, 142, 246, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 248, 151, 232, 145, 232, 140, 136, 142, 139, 252, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 248, 151, 232, 147, 232, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 252, 136, 245, 136, 139, 147, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 144, 162, 194, 134, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 252, 136, 142, 247, 141, 232, 164, 164, 232, 169, 144, 194, 132, 194, 242, 255, 232, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 242, 140, 248, 142, 137, 137, 254, 139, 248, 245, 136, 128, 254, 139, 248, 136, 246, 251, 254, 139, 232, 164, 164, 232, 151, 144, 194, 132, 194, 250, 245, 137, 241, 250, 248, 151, 232, 164, 232, 246, 242, 129, 159, 250, 245, 137, 241, 250, 248, 151, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 149, 250, 147, 232, 242, 140, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 144, 162, 194, 250, 245, 137, 241, 250, 248, 168, 232, 164, 232, 168, 149, 151, 232, 148, 232, 250, 245, 137, 241, 250, 248, 151, 162, 194, 134, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 242, 140, 248, 142, 137, 137, 254, 139, 248, 245, 136, 128, 254, 139, 248, 136, 246, 251, 254, 139, 232, 164, 164, 232, 168, 144, 194, 132, 194, 250, 245, 137, 241, 250, 248, 151, 232, 164, 232, 246, 242, 129, 159, 250, 245, 137, 241, 250, 248, 151, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 149, 250, 147, 232, 242, 140, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 144, 162, 194, 250, 245, 137, 241, 250, 248, 168, 232, 164, 232, 246, 242, 129, 159, 250, 245, 137, 241, 250, 248, 168, 147, 232, 168, 149, 151, 232, 148, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 149, 250, 147, 232, 242, 140, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 144, 162, 194, 255, 245, 136, 250, 141, 232, 141, 246, 137, 232, 164, 232, 250, 245, 137, 241, 250, 248, 151, 162, 194, 250, 245, 137, 241, 250, 248, 151, 232, 164, 232, 250, 245, 137, 241, 250, 248, 151, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 250, 245, 137, 241, 250, 248, 168, 144, 162, 194, 250, 245, 137, 241, 250, 248, 168, 232, 164, 232, 250, 245, 137, 241, 250, 248, 168, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 141, 246, 137, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 140, 142, 246, 232, 164, 232, 250, 245, 137, 241, 250, 248, 151, 232, 146, 232, 250, 245, 137, 241, 250, 248, 168, 162, 194, 242, 255, 232, 159, 250, 245, 137, 241, 250, 248, 140, 142, 246, 232, 165, 232, 151, 149, 151, 144, 194, 132, 194, 250, 245, 137, 241, 250, 248, 151, 232, 164, 232, 250, 245, 137, 241, 250, 248, 151, 232, 150, 232, 250, 245, 137, 241, 250, 248, 140, 142, 246, 162, 194, 250, 245, 137, 241, 250, 248, 168, 232, 164, 232, 250, 245, 137, 241, 250, 248, 168, 232, 150, 232, 250, 245, 137, 241, 250, 248, 140, 142, 246, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 250, 245, 137, 241, 250, 248, 151, 232, 164, 232, 250, 245, 137, 241, 250, 248, 168, 232, 164, 232, 151, 149, 151, 162, 194, 134, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 245, 254, 143, 
        254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 159, 250, 245, 137, 241, 250, 248, 151, 232, 145, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 151, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 240, 232, 146, 232, 250, 245, 137, 241, 250, 248, 168, 232, 145, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 168, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 251, 144, 232, 145, 232, 250, 245, 137, 241, 250, 162, 194, 242, 255, 232, 159, 137, 241, 242, 245, 141, 139, 142, 246, 232, 165, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 253, 254, 255, 250, 142, 245, 141, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 137, 139, 242, 246, 254, 139, 248, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 139, 162, 194, 255, 245, 136, 250, 141, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 151, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 137, 139, 242, 246, 254, 139, 248, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 240, 162, 194, 255, 245, 136, 250, 141, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 168, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 137, 139, 242, 246, 254, 139, 248, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 251, 162, 194, 255, 245, 136, 250, 141, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 159, 250, 245, 137, 241, 250, 248, 151, 232, 145, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 151, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 240, 232, 146, 232, 250, 245, 137, 241, 250, 248, 168, 232, 145, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 168, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 251, 144, 232, 145, 232, 250, 245, 137, 241, 250, 162, 194, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 129, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 147, 232, 253, 254, 255, 250, 142, 245, 141, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 147, 232, 137, 241, 242, 245, 141, 139, 142, 246, 144, 162, 194, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 129, 159, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 147, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 147, 232, 137, 241, 242, 245, 141, 139, 142, 246, 144, 162, 194, 134, 194, 140, 141, 139, 136, 244, 254, 140, 149, 139, 232, 164, 232, 250, 245, 137, 241, 250, 248, 151, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 240, 232, 146, 232, 250, 245, 137, 241, 250, 248, 168, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 251, 162, 194, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 248, 151, 232, 145, 232, 159, 250, 245, 137, 241, 250, 248, 151, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 240, 144, 232, 150, 232, 246, 250, 129, 159, 140, 141, 139, 136, 244, 254, 140, 149, 139, 147, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 232, 146, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 248, 168, 232, 145, 232, 159, 250, 245, 137, 241, 250, 248, 168, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 251, 144, 232, 150, 232, 246, 250, 129, 159, 140, 141, 139, 136, 244, 254, 140, 149, 139, 147, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 252, 136, 245, 136, 139, 232, 145, 232, 140, 136, 142, 139, 252, 254, 147, 232, 252, 136, 245, 136, 139, 232, 147, 232, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 252, 136, 245, 136, 139, 147, 232, 245, 254, 143, 254, 245, 
        248, 128, 254, 242, 240, 241, 141, 144, 162, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 253, 242, 255, 255, 232, 164, 232, 246, 250, 129, 159, 240, 139, 250, 130, 232, 148, 232, 255, 136, 139, 252, 254, 248, 251, 139, 242, 240, 241, 141, 248, 141, 241, 139, 254, 140, 241, 136, 245, 253, 147, 232, 151, 149, 151, 144, 232, 145, 232, 250, 245, 137, 241, 250, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 139, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 159, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 143, 254, 252, 170, 159, 168, 149, 151, 232, 148, 232, 253, 242, 255, 255, 144, 162, 194, 194, 252, 136, 247, 141, 139, 250, 140, 141, 232, 164, 232, 159, 252, 136, 247, 141, 139, 250, 140, 141, 232, 148, 232, 151, 149, 172, 144, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 139, 232, 146, 232, 151, 149, 172, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 139, 232, 164, 232, 191, 250, 139, 253, 179, 242, 240, 241, 141, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 139, 147, 232, 252, 136, 247, 141, 139, 250, 140, 141, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 240, 232, 164, 232, 191, 250, 139, 253, 179, 242, 240, 241, 141, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 240, 147, 232, 252, 136, 247, 141, 139, 250, 140, 141, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 251, 232, 164, 232, 191, 250, 139, 253, 179, 242, 240, 241, 141, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 251, 147, 232, 252, 136, 247, 141, 139, 250, 140, 141, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 159, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 143, 254, 252, 170, 159, 168, 149, 151, 232, 148, 232, 240, 245, 136, 140, 140, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 139, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 245, 136, 140, 140, 248, 142, 137, 137, 254, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 232, 145, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 255, 142, 245, 245, 247, 254, 140, 140, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 145, 232, 169, 149, 151, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 159, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 143, 254, 252, 170, 159, 168, 149, 151, 232, 148, 232, 240, 245, 136, 140, 140, 248, 142, 137, 137, 254, 139, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 141, 139, 250, 247, 140, 242, 141, 242, 136, 247, 248, 139, 250, 141, 242, 136, 232, 164, 232, 159, 246, 242, 247, 159, 246, 250, 129, 159, 250, 251, 140, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 148, 232, 151, 149, 172, 144, 147, 232, 151, 149, 151, 175, 170, 144, 147, 232, 151, 149, 172, 144, 232, 148, 232, 151, 149, 151, 175, 170, 144, 232, 150, 232, 151, 149, 171, 168, 174, 162, 194, 255, 245, 136, 250, 141, 232, 245, 142, 246, 250, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 240, 139, 250, 130, 232, 145, 232, 140, 241, 242, 246, 246, 254, 139, 248, 247, 136, 139, 246, 250, 245, 242, 131, 254, 248, 255, 250, 252, 141, 136, 139, 162, 194, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 168, 149, 151, 232, 148, 232, 151, 149, 170, 232, 145, 232, 141, 139, 250, 247, 140, 242, 141, 242, 136, 247, 248, 139, 250, 141, 242, 136, 162, 194, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 140, 241, 242, 246, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 232, 145, 232, 250, 245, 137, 241, 250, 162, 194, 194, 143, 254, 252, 170, 232, 241, 140, 245, 232, 164, 232, 235, 190, 185, 141, 136, 191, 236, 179, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 144, 162, 194, 241, 140, 245, 149, 131, 232, 164, 232, 246, 242, 247, 159, 241, 140, 245, 149, 131, 232, 146, 232, 140, 241, 242, 246, 246, 254, 139, 232, 145, 232, 140, 241, 242, 246, 246, 254, 139, 248, 128, 254, 242, 
        240, 241, 141, 232, 145, 232, 245, 142, 246, 250, 248, 128, 254, 242, 240, 241, 141, 232, 145, 232, 250, 245, 137, 241, 250, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 139, 147, 232, 168, 149, 151, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 191, 236, 179, 141, 136, 235, 190, 185, 159, 241, 140, 245, 144, 162, 194, 194, 242, 255, 232, 159, 254, 247, 250, 251, 245, 254, 248, 252, 136, 245, 136, 139, 248, 140, 241, 242, 246, 246, 254, 139, 232, 165, 232, 151, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 252, 136, 247, 141, 139, 250, 140, 141, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 250, 129, 159, 246, 242, 247, 159, 240, 139, 250, 130, 232, 145, 232, 151, 149, 172, 232, 146, 232, 151, 149, 169, 172, 147, 232, 151, 149, 174, 172, 144, 147, 232, 151, 149, 169, 172, 144, 162, 194, 255, 245, 136, 250, 141, 232, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 250, 129, 159, 246, 242, 247, 159, 140, 241, 242, 246, 246, 254, 139, 232, 145, 232, 169, 149, 172, 232, 145, 232, 250, 245, 137, 241, 250, 232, 145, 232, 140, 241, 242, 246, 246, 254, 139, 248, 128, 254, 242, 240, 241, 141, 232, 145, 232, 252, 136, 247, 141, 139, 250, 140, 141, 248, 128, 254, 242, 240, 241, 141, 232, 145, 232, 140, 241, 242, 246, 246, 254, 139, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 147, 232, 151, 149, 175, 144, 147, 232, 151, 149, 151, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 147, 232, 140, 241, 242, 246, 246, 254, 139, 248, 252, 136, 245, 136, 139, 147, 232, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 232, 145, 232, 140, 141, 139, 136, 244, 254, 140, 149, 139, 144, 162, 194, 134, 194, 194, 242, 255, 232, 159, 242, 140, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 232, 165, 232, 151, 149, 172, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 241, 250, 253, 136, 128, 232, 164, 232, 246, 242, 129, 159, 151, 149, 172, 147, 232, 151, 149, 151, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 149, 240, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 139, 232, 164, 232, 191, 250, 139, 253, 179, 242, 240, 241, 141, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 139, 147, 232, 140, 241, 250, 253, 136, 128, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 240, 232, 164, 232, 191, 250, 139, 253, 179, 242, 240, 241, 141, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 240, 147, 232, 140, 241, 250, 253, 136, 128, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 251, 232, 164, 232, 191, 250, 139, 253, 179, 242, 240, 241, 141, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 251, 147, 232, 140, 241, 250, 253, 136, 128, 144, 162, 194, 255, 245, 136, 250, 141, 232, 241, 242, 240, 241, 245, 242, 240, 241, 141, 232, 164, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 149, 251, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 159, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 143, 254, 252, 170, 159, 168, 149, 151, 232, 148, 232, 241, 242, 240, 241, 245, 242, 240, 241, 141, 144, 162, 194, 134, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 194, 134, 194, 134, 194};
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25702a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 252, 254, 247, 141, 254, 139, 248, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 252, 254, 247, 141, 254, 139, 248, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 241, 254, 242, 240, 241, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 137, 139, 242, 246, 254, 139, 248, 252, 254, 247, 141, 254, 139, 248, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 137, 139, 242, 246, 254, 139, 248, 252, 254, 247, 141, 254, 139, 248, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 241, 254, 242, 240, 241, 141, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 148, 232, 137, 139, 242, 246, 254, 139, 248, 252, 254, 247, 141, 254, 139, 248, 129, 144, 232, 145, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 232, 150, 232, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 128, 242, 253, 141, 241, 232, 146, 232, 151, 149, 172, 162, 194, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 148, 232, 137, 139, 242, 246, 254, 139, 248, 252, 254, 247, 141, 254, 139, 248, 130, 144, 232, 145, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 232, 150, 232, 245, 242, 137, 248, 
        137, 139, 242, 246, 254, 139, 248, 241, 254, 242, 240, 241, 141, 232, 146, 232, 151, 149, 172, 162, 194, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 148, 232, 252, 254, 247, 141, 254, 139, 248, 129, 144, 232, 145, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 232, 150, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 128, 242, 253, 141, 241, 232, 146, 232, 151, 149, 172, 162, 194, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 148, 232, 252, 254, 247, 141, 254, 139, 248, 130, 144, 232, 145, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 232, 150, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 241, 254, 242, 240, 241, 141, 232, 146, 232, 151, 149, 172, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25703b = {154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 245, 140, 254, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 139, 136, 136, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 250, 137, 137, 245, 130, 248, 136, 247, 248, 136, 139, 242, 240, 242, 247, 250, 245, 248, 245, 242, 137, 140, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 252, 136, 142, 247, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 242, 140, 248, 142, 137, 137, 254, 139, 248, 245, 136, 128, 254, 139, 248, 136, 246, 251, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 143, 254, 252, 170, 232, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 162, 194, 194, 242, 255, 232, 159, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 144, 144, 232, 133, 133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 144, 144, 232, 133, 133, 194, 254, 247, 250, 251, 
        245, 254, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 232, 163, 232, 168, 232, 133, 133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 250, 251, 140, 159, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 143, 254, 252, 169, 159, 151, 149, 172, 144, 144, 147, 232, 143, 254, 252, 169, 159, 151, 149, 172, 144, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 136, 142, 139, 252, 254, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 143, 254, 252, 170, 232, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 139, 136, 136, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 162, 194, 194, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 248, 250, 245, 137, 241, 250, 232, 164, 232, 246, 242, 129, 159, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 147, 194, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 147, 194, 140, 141, 254, 137, 159, 151, 149, 172, 147, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 245, 242, 137, 248, 140, 241, 250, 137, 254, 144, 144, 144, 162, 194, 194, 140, 136, 142, 139, 252, 254, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 254, 147, 232, 245, 242, 137, 140, 248, 250, 245, 137, 241, 250, 232, 145, 232, 250, 137, 137, 245, 130, 248, 136, 247, 248, 136, 139, 242, 240, 242, 247, 250, 245, 248, 245, 242, 137, 140, 144, 162, 194, 194, 143, 254, 252, 170, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 140, 136, 142, 139, 252, 254, 162, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 248, 137, 139, 242, 246, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 162, 194, 250, 245, 137, 241, 250, 232, 145, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 162, 194, 255, 245, 136, 250, 141, 232, 240, 139, 250, 130, 232, 164, 232, 151, 149, 169, 160, 160, 232, 145, 232, 140, 136, 142, 139, 252, 254, 149, 139, 232, 146, 232, 151, 149, 172, 175, 174, 232, 145, 232, 140, 136, 142, 139, 252, 254, 149, 240, 232, 146, 232, 151, 149, 168, 168, 171, 232, 145, 232, 140, 136, 142, 139, 252, 254, 149, 251, 162, 194, 255, 245, 136, 250, 141, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 151, 149, 151, 162, 194, 242, 255, 232, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 252, 136, 142, 247, 141, 232, 164, 164, 232, 168, 144, 194, 132, 194, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 240, 232, 145, 232, 250, 245, 137, 241, 250, 162, 194, 255, 245, 136, 250, 141, 232, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 151, 149, 172, 147, 232, 151, 144, 144, 149, 240, 232, 145, 232, 250, 245, 137, 241, 250, 162, 194, 245, 254, 143, 
        254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 129, 159, 253, 254, 255, 250, 142, 245, 141, 248, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 147, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 147, 232, 250, 245, 137, 241, 250, 232, 145, 232, 250, 245, 137, 241, 250, 144, 162, 194, 134, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 245, 250, 130, 254, 139, 248, 252, 136, 142, 247, 141, 232, 164, 164, 232, 169, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 151, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 168, 232, 164, 232, 168, 149, 151, 232, 148, 232, 250, 245, 137, 241, 250, 248, 151, 162, 194, 255, 245, 136, 250, 141, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 151, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 240, 162, 194, 255, 245, 136, 250, 141, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 168, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 251, 162, 194, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 159, 250, 245, 137, 241, 250, 248, 151, 232, 145, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 151, 232, 146, 232, 250, 245, 137, 241, 250, 248, 168, 232, 145, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 248, 168, 144, 232, 145, 232, 250, 245, 137, 241, 250, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 248, 250, 247, 253, 248, 245, 254, 143, 254, 245, 248, 246, 250, 137, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 240, 139, 250, 130, 147, 232, 151, 144, 144, 149, 139, 162, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 232, 145, 232, 140, 136, 142, 139, 252, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 252, 136, 245, 136, 139, 232, 147, 232, 251, 245, 254, 247, 253, 248, 128, 254, 242, 240, 241, 141, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 252, 136, 245, 136, 139, 147, 232, 245, 254, 143, 254, 245, 248, 128, 254, 242, 240, 241, 141, 144, 162, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194, 134, 194};
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25704a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 246, 136, 253, 254, 245, 248, 143, 242, 254, 128, 248, 246, 250, 141, 139, 242, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 137, 139, 136, 243, 254, 252, 141, 248, 246, 250, 141, 139, 242, 129, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 142, 143, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 248, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 248, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 128, 242, 253, 141, 241, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 241, 254, 242, 240, 241, 141, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 139, 136, 243, 254, 252, 141, 248, 246, 250, 141, 139, 242, 129, 232, 145, 232, 246, 136, 253, 254, 245, 248, 143, 242, 254, 128, 248, 246, 250, 141, 139, 242, 129, 232, 145, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 194, 194, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 142, 143, 149, 129, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 141, 254, 129, 252, 136, 136, 139, 253, 149, 129, 232, 145, 232, 168, 151, 175, 151, 149, 151, 232, 148, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 248, 129, 144, 232, 150, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 128, 242, 253, 141, 241, 162, 194, 194, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 142, 143, 149, 130, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 141, 254, 129, 252, 136, 136, 139, 253, 149, 130, 232, 145, 232, 168, 168, 173, 151, 149, 151, 232, 148, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 248, 130, 144, 232, 150, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 241, 254, 242, 240, 241, 141, 162, 194, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25705b = {154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 245, 140, 254, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 142, 143, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 246, 250, 140, 244, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 140, 241, 250, 253, 136, 128, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 241, 242, 240, 241, 245, 242, 240, 241, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 136, 246, 251, 139, 254, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 241, 250, 253, 136, 128, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 241, 242, 240, 241, 245, 242, 240, 241, 141, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 246, 250, 140, 244, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 246, 250, 140, 244, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 142, 143, 144, 149, 250, 162, 194, 194, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 140, 241, 250, 253, 136, 128, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 140, 241, 250, 253, 136, 128, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 142, 143, 144, 149, 250, 162, 194, 194, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 241, 242, 240, 241, 245, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 241, 242, 240, 241, 245, 242, 240, 241, 141, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 142, 143, 144, 149, 250, 162, 194, 194, 255, 245, 136, 250, 141, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 136, 246, 251, 139, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 136, 246, 251, 139, 254, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 142, 143, 144, 149, 250, 162, 194, 194, 194, 194, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 140, 241, 250, 253, 136, 128, 232, 145, 164, 232, 140, 241, 250, 253, 136, 128, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 194, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 241, 242, 240, 241, 245, 242, 240, 241, 141, 232, 145, 164, 232, 241, 242, 240, 241, 245, 242, 240, 241, 141, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 194, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 246, 250, 140, 244, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 140, 241, 250, 253, 136, 128, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 241, 242, 240, 241, 245, 242, 240, 241, 141, 147, 232, 245, 242, 137, 248, 140, 241, 250, 137, 254, 248, 136, 246, 251, 139, 254, 144, 162, 194, 194, 134, 194, 194};
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25706a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 137, 139, 136, 243, 254, 252, 141, 180, 250, 141, 139, 242, 129, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 139, 136, 243, 254, 252, 141, 180, 250, 141, 139, 242, 129, 232, 145, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 232, 145, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25707b = {154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 245, 140, 254, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 139, 254, 137, 245, 250, 130, 248, 140, 141, 139, 136, 244, 254, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 143, 254, 252, 170, 232, 140, 141, 139, 136, 244, 254, 239, 250, 245, 142, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 139, 254, 137, 245, 250, 130, 248, 140, 141, 139, 136, 244, 254, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 162, 194, 194, 194, 194, 143, 254, 252, 169, 232, 252, 142, 137, 242, 253, 232, 164, 232, 143, 254, 252, 169, 159, 151, 149, 172, 147, 232, 174, 175, 170, 149, 151, 232, 150, 232, 168, 168, 173, 151, 149, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 139, 250, 253, 242, 142, 140, 232, 164, 232, 140, 138, 139, 141, 159, 137, 136, 128, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 148, 232, 252, 142, 137, 242, 253, 149, 129, 147, 232, 169, 149, 151, 144, 232, 146, 232, 137, 136, 128, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 148, 232, 252, 142, 137, 242, 253, 149, 130, 147, 232, 169, 149, 151, 144, 144, 232, 150, 232, 159, 171, 175, 149, 151, 232, 150, 232, 168, 168, 173, 151, 149, 151, 144, 162, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 141, 139, 136, 244, 254, 239, 250, 245, 142, 254, 147, 232, 252, 245, 250, 246, 137, 159, 139, 250, 253, 242, 142, 140, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 144, 162, 194, 194, 134, 194, 194};
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25708a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 137, 139, 136, 243, 254, 252, 141, 180, 250, 141, 139, 242, 129, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 247, 253, 252, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 139, 136, 243, 254, 252, 141, 180, 250, 141, 139, 242, 129, 232, 145, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 232, 145, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 194, 194, 143, 254, 252, 171, 232, 141, 254, 246, 137, 232, 164, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 232, 145, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 247, 253, 252, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 141, 254, 246, 137, 149, 129, 130, 131, 232, 150, 232, 141, 254, 246, 137, 149, 128, 162, 194, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25709b = {154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 245, 140, 254, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 247, 253, 252, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 143, 254, 252, 171, 232, 141, 254, 246, 137, 245, 250, 141, 254, 239, 250, 245, 142, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 143, 254, 252, 171, 232, 141, 139, 250, 247, 140, 255, 136, 139, 246, 254, 253, 181, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 232, 145, 232, 143, 254, 252, 171, 159, 141, 254, 246, 137, 245, 250, 141, 254, 239, 250, 245, 142, 254, 149, 139, 240, 251, 232, 145, 232, 169, 149, 151, 232, 148, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 147, 232, 168, 149, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 247, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 141, 139, 250, 247, 140, 255, 136, 139, 246, 254, 253, 181, 136, 139, 246, 250, 245, 149, 129, 130, 131, 144, 162, 194, 194, 194, 194, 143, 254, 252, 170, 232, 245, 242, 240, 241, 141, 236, 139, 252, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 168, 151, 149, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 245, 242, 240, 241, 141, 187, 242, 139, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 245, 242, 240, 241, 141, 236, 139, 252, 232, 148, 232, 247, 253, 252, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 143, 254, 252, 170, 232, 143, 242, 254, 128, 187, 242, 139, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 148, 247, 253, 252, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 143, 254, 252, 170, 232, 241, 250, 245, 255, 128, 250, 130, 187, 242, 139, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 245, 242, 240, 241, 141, 187, 242, 139, 232, 146, 232, 143, 242, 254, 128, 187, 242, 139, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 140, 137, 254, 252, 142, 245, 250, 139, 179, 242, 240, 241, 141, 179, 136, 128, 254, 139, 232, 164, 232, 137, 136, 128, 159, 246, 250, 129, 159, 253, 136, 141, 159, 247, 136, 139, 246, 250, 245, 147, 232, 241, 250, 245, 255, 128, 250, 130, 187, 242, 139, 144, 147, 232, 151, 149, 151, 144, 147, 232, 175, 149, 151, 144, 162, 194, 194, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 137, 254, 252, 142, 245, 250, 139, 179, 242, 240, 241, 141, 179, 136, 128, 254, 139, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 141, 254, 246, 137, 245, 250, 141, 254, 239, 250, 245, 142, 254, 149, 250, 144, 162, 194, 194, 134, 194, 194};
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25710a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 252, 254, 247, 141, 254, 139, 248, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 252, 254, 247, 141, 254, 139, 248, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 241, 254, 242, 240, 241, 141, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 248, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 148, 232, 252, 254, 247, 141, 254, 139, 248, 129, 144, 232, 145, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 232, 150, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 128, 242, 253, 141, 241, 232, 146, 232, 151, 149, 172, 162, 194, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 148, 232, 252, 254, 247, 141, 254, 139, 248, 130, 144, 232, 145, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 232, 150, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 241, 254, 242, 240, 241, 141, 232, 146, 232, 151, 149, 172, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25711b = {194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 245, 140, 254, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 142, 245, 245, 247, 254, 140, 140, 248, 140, 141, 139, 254, 247, 240, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 142, 245, 245, 247, 254, 140, 140, 248, 140, 241, 250, 253, 136, 128, 248, 140, 141, 139, 254, 247, 240, 141, 241, 162, 194, 194, 252, 136, 247, 140, 141, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 232, 164, 232, 151, 149, 151, 151, 168, 162, 194, 252, 136, 247, 140, 141, 232, 246, 250, 141, 170, 232, 235, 190, 185, 237, 136, 226, 186, 251, 186, 139, 232, 164, 232, 246, 250, 141, 170, 159, 151, 149, 169, 160, 160, 147, 232, 148, 151, 149, 168, 173, 160, 147, 232, 151, 149, 172, 147, 232, 151, 149, 172, 175, 174, 147, 232, 148, 151, 149, 170, 170, 168, 147, 232, 148, 151, 149, 171, 168, 160, 147, 232, 151, 149, 168, 168, 171, 147, 232, 151, 149, 172, 147, 232, 148, 151, 149, 151, 175, 168, 144, 162, 194, 252, 136, 247, 140, 141, 232, 246, 250, 141, 170, 232, 226, 186, 251, 186, 139, 237, 136, 235, 190, 185, 232, 164, 232, 246, 250, 141, 170, 159, 168, 149, 151, 151, 151, 151, 147, 232, 168, 149, 151, 151, 151, 151, 147, 232, 168, 149, 151, 151, 151, 151, 147, 232, 148, 151, 149, 151, 151, 151, 160, 147, 232, 148, 151, 149, 170, 171, 170, 174, 147, 232, 168, 149, 174, 174, 169, 168, 147, 232, 168, 149, 171, 151, 168, 174, 147, 232, 148, 151, 149, 174, 168, 171, 169, 147, 232, 151, 149, 151, 151, 151, 168, 144, 162, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 169, 191, 236, 239, 159, 143, 254, 252, 170, 232, 252, 144, 194, 132, 194, 143, 254, 252, 171, 232, 178, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 148, 168, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 169, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 148, 168, 149, 151, 144, 162, 194, 143, 254, 252, 171, 232, 137, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 171, 159, 252, 149, 251, 240, 147, 232, 178, 149, 128, 131, 144, 147, 232, 143, 254, 252, 171, 159, 252, 149, 240, 251, 147, 232, 178, 149, 129, 130, 144, 147, 232, 140, 141, 254, 137, 159, 252, 149, 251, 147, 232, 252, 149, 240, 144, 144, 162, 194, 143, 254, 252, 171, 232, 138, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 171, 159, 137, 149, 129, 130, 128, 147, 232, 252, 149, 139, 144, 147, 232, 143, 254, 252, 171, 159, 252, 149, 139, 147, 232, 137, 149, 130, 131, 129, 144, 147, 232, 140, 141, 254, 137, 159, 137, 149, 129, 147, 232, 252, 149, 139, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 232, 164, 232, 138, 149, 129, 232, 148, 232, 246, 242, 247, 159, 138, 149, 128, 147, 232, 138, 149, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 254, 232, 164, 232, 168, 149, 151, 254, 148, 168, 151, 162, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 250, 251, 140, 159, 138, 149, 131, 232, 146, 232, 159, 138, 149, 128, 232, 148, 232, 138, 149, 130, 
        144, 232, 150, 232, 159, 173, 149, 151, 232, 145, 232, 253, 232, 146, 232, 254, 144, 144, 147, 232, 253, 232, 150, 232, 159, 138, 149, 129, 232, 146, 232, 254, 144, 147, 232, 138, 149, 129, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 191, 236, 239, 169, 235, 190, 185, 159, 143, 254, 252, 170, 232, 252, 144, 194, 132, 194, 143, 254, 252, 171, 232, 178, 232, 164, 232, 143, 254, 252, 171, 159, 168, 149, 151, 147, 232, 169, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 168, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 170, 149, 151, 144, 162, 194, 143, 254, 252, 170, 232, 137, 232, 164, 232, 250, 251, 140, 159, 255, 139, 250, 252, 141, 159, 252, 149, 129, 129, 129, 232, 146, 232, 178, 149, 129, 130, 131, 144, 232, 145, 232, 173, 149, 151, 232, 148, 232, 178, 149, 128, 128, 128, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 252, 149, 131, 232, 145, 232, 246, 242, 129, 159, 178, 149, 129, 129, 129, 147, 232, 252, 245, 250, 246, 137, 159, 137, 232, 148, 232, 178, 149, 129, 129, 129, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 147, 232, 252, 149, 130, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 191, 236, 179, 141, 136, 235, 190, 185, 159, 143, 254, 252, 170, 232, 241, 140, 245, 144, 194, 132, 194, 143, 254, 252, 170, 232, 139, 240, 251, 162, 194, 255, 245, 136, 250, 141, 232, 129, 232, 164, 232, 241, 140, 245, 149, 129, 232, 145, 232, 173, 149, 151, 162, 194, 139, 240, 251, 149, 139, 232, 164, 232, 250, 251, 140, 159, 129, 232, 148, 232, 170, 149, 151, 144, 232, 148, 232, 168, 149, 151, 162, 194, 139, 240, 251, 149, 240, 232, 164, 232, 169, 149, 151, 232, 148, 232, 250, 251, 140, 159, 129, 232, 148, 232, 169, 149, 151, 144, 162, 194, 139, 240, 251, 149, 251, 232, 164, 232, 169, 149, 151, 232, 148, 232, 250, 251, 140, 159, 129, 232, 148, 232, 171, 149, 151, 144, 162, 194, 139, 240, 251, 232, 164, 232, 252, 245, 250, 246, 137, 159, 139, 240, 251, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 252, 232, 164, 232, 159, 168, 149, 151, 232, 148, 232, 250, 251, 140, 159, 169, 149, 151, 232, 145, 232, 241, 140, 245, 149, 131, 232, 148, 232, 168, 149, 151, 144, 144, 232, 145, 232, 241, 140, 245, 149, 130, 162, 194, 139, 240, 251, 232, 164, 232, 252, 245, 250, 246, 137, 159, 159, 139, 240, 251, 232, 148, 232, 143, 254, 252, 170, 159, 151, 149, 172, 144, 144, 232, 145, 232, 143, 254, 252, 170, 159, 252, 144, 232, 146, 232, 143, 254, 252, 170, 159, 241, 140, 245, 149, 131, 144, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 139, 240, 251, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 184, 253, 253, 236, 241, 250, 253, 136, 128, 159, 143, 254, 252, 170, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 147, 232, 255, 245, 136, 250, 141, 232, 246, 250, 140, 244, 248, 143, 250, 245, 142, 254, 147, 232, 255, 245, 136, 250, 141, 232, 140, 141, 139, 254, 247, 240, 141, 241, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 137, 242, 129, 254, 245, 248, 130, 232, 164, 232, 151, 149, 169, 160, 160, 232, 145, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 151, 230, 232, 146, 232, 151, 149, 172, 175, 174, 232, 145, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 168, 230, 232, 146, 232, 151, 149, 168, 168, 171, 232, 145, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 169, 230, 162, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 240, 139, 250, 253, 242, 254, 247, 141, 248, 139, 250, 141, 242, 136, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 246, 242, 247, 159, 151, 149, 174, 172, 147, 232, 137, 136, 128, 159, 246, 250, 140, 244, 248, 143, 250, 245, 142, 254, 147, 232, 168, 149, 172, 144, 144, 144, 232, 145, 232, 140, 141, 139, 254, 247, 240, 141, 241, 232, 150, 232, 168, 151, 151, 149, 151, 162, 194, 255, 245, 136, 250, 141, 232, 140, 241, 139, 242, 247, 244, 248, 130, 232, 164, 232, 137, 242, 129, 254, 245, 248, 130, 232, 145, 232, 250, 245, 137, 241, 250, 248, 240, 139, 250, 253, 242, 254, 247, 141, 248, 139, 250, 141, 242, 136, 162, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 140, 241, 139, 242, 247, 244, 248, 130, 232, 164, 232, 137, 242, 129, 254, 245, 248, 130, 232, 148, 232, 159, 151, 149, 170, 171, 170, 169, 232, 145, 232, 137, 136, 128, 159, 137, 242, 129, 254, 245, 248, 130, 147, 232, 169, 149, 151, 144, 232, 146, 232, 151, 149, 173, 170, 175, 175, 232, 145, 232, 137, 242, 129, 254, 245, 248, 130, 232, 146, 232, 151, 149, 151, 151, 170, 168, 144, 162, 194, 140, 241, 139, 242, 247, 244, 248, 130, 232, 164, 232, 246, 250, 129, 248, 140, 241, 139, 242, 247, 244, 248, 130, 232, 145, 232, 159, 250, 245, 137, 241, 250, 248, 240, 139, 250, 253, 242, 254, 247, 141, 248, 139, 250, 141, 242, 136, 232, 150, 232, 151, 149, 169, 169, 174, 172, 144, 162, 194, 242, 247, 141, 232, 242, 140, 248, 140, 241, 250, 253, 136, 128, 248, 142, 247, 253, 254, 139, 255, 245, 136, 128, 232, 164, 232, 151, 162, 194, 143, 254, 252, 170, 232, 
        253, 140, 141, 248, 137, 242, 129, 254, 245, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 252, 232, 164, 232, 151, 162, 232, 252, 232, 163, 232, 170, 162, 232, 252, 146, 146, 144, 194, 132, 194, 242, 255, 232, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 252, 230, 232, 163, 232, 140, 241, 139, 242, 247, 244, 248, 130, 144, 194, 242, 140, 248, 140, 241, 250, 253, 136, 128, 248, 142, 247, 253, 254, 139, 255, 245, 136, 128, 232, 164, 232, 168, 162, 194, 253, 140, 141, 248, 137, 242, 129, 254, 245, 228, 252, 230, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 228, 252, 230, 232, 148, 232, 140, 241, 139, 242, 247, 244, 248, 130, 144, 162, 194, 134, 194, 242, 255, 232, 159, 250, 245, 137, 241, 250, 248, 240, 139, 250, 253, 242, 254, 247, 141, 248, 139, 250, 141, 242, 136, 232, 165, 232, 151, 149, 151, 232, 157, 157, 232, 242, 140, 248, 140, 241, 250, 253, 136, 128, 248, 142, 247, 253, 254, 139, 255, 245, 136, 128, 232, 164, 164, 232, 151, 144, 194, 132, 194, 143, 254, 252, 170, 232, 241, 140, 143, 232, 164, 232, 235, 190, 185, 169, 191, 236, 239, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 144, 162, 194, 255, 245, 136, 250, 141, 232, 136, 245, 253, 239, 232, 164, 232, 241, 140, 143, 228, 169, 230, 162, 194, 241, 140, 143, 228, 169, 230, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 241, 140, 143, 228, 169, 230, 232, 148, 232, 140, 241, 139, 242, 247, 244, 248, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 136, 139, 242, 240, 242, 247, 250, 245, 248, 139, 250, 141, 242, 136, 232, 164, 232, 159, 241, 140, 143, 228, 169, 230, 232, 165, 232, 151, 149, 151, 144, 166, 232, 136, 245, 253, 239, 232, 150, 232, 241, 140, 143, 228, 169, 230, 232, 161, 232, 168, 149, 151, 162, 194, 255, 245, 136, 250, 141, 232, 139, 250, 141, 242, 136, 232, 164, 232, 159, 241, 140, 143, 228, 169, 230, 232, 165, 232, 151, 149, 151, 144, 166, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 159, 136, 245, 253, 239, 232, 148, 232, 241, 140, 143, 228, 169, 230, 144, 232, 150, 232, 151, 149, 172, 144, 232, 145, 232, 168, 149, 172, 232, 161, 232, 151, 149, 151, 162, 194, 255, 245, 136, 250, 141, 232, 254, 129, 137, 136, 247, 254, 247, 141, 232, 164, 232, 246, 250, 129, 159, 168, 149, 151, 147, 232, 137, 136, 128, 159, 169, 149, 151, 147, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 159, 151, 149, 169, 232, 148, 232, 241, 140, 143, 228, 168, 230, 144, 144, 232, 150, 232, 151, 149, 168, 144, 232, 145, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 159, 136, 245, 253, 239, 232, 148, 232, 151, 149, 175, 144, 232, 150, 232, 151, 149, 168, 144, 144, 162, 194, 255, 245, 136, 250, 141, 232, 136, 245, 253, 239, 248, 139, 250, 141, 242, 136, 232, 164, 232, 137, 136, 128, 159, 246, 242, 247, 159, 168, 149, 151, 147, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 136, 245, 253, 239, 232, 150, 232, 151, 149, 170, 144, 144, 147, 232, 170, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 136, 245, 253, 236, 248, 139, 250, 141, 242, 136, 232, 164, 232, 168, 149, 151, 232, 148, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 159, 241, 140, 143, 228, 168, 230, 232, 148, 232, 151, 149, 168, 144, 232, 150, 232, 151, 149, 171, 144, 144, 162, 194, 241, 140, 143, 228, 168, 230, 232, 164, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 246, 250, 129, 159, 241, 140, 143, 228, 168, 230, 232, 145, 232, 136, 139, 242, 240, 242, 247, 250, 245, 248, 139, 250, 141, 242, 136, 147, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 241, 140, 143, 228, 168, 230, 232, 145, 232, 159, 168, 149, 151, 232, 146, 232, 139, 250, 141, 242, 136, 232, 145, 232, 254, 129, 137, 136, 247, 254, 247, 141, 232, 145, 232, 136, 245, 253, 236, 248, 139, 250, 141, 242, 136, 144, 232, 145, 232, 136, 245, 253, 239, 248, 139, 250, 141, 242, 136, 144, 144, 144, 162, 194, 253, 140, 141, 248, 137, 242, 129, 254, 245, 232, 164, 232, 191, 236, 239, 169, 235, 190, 185, 159, 241, 140, 143, 144, 162, 194, 134, 194, 139, 254, 141, 142, 139, 247, 232, 253, 140, 141, 248, 137, 242, 129, 254, 245, 162, 194, 134, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 143, 254, 252, 170, 232, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 162, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 136, 142, 139, 252, 254, 147, 232, 168, 149, 151, 144, 162, 194, 242, 255, 232, 159, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 144, 144, 232, 133, 
        133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 144, 144, 144, 194, 139, 254, 141, 142, 139, 247, 162, 194, 194, 132, 194, 255, 245, 136, 250, 141, 232, 137, 139, 136, 141, 254, 252, 141, 242, 136, 247, 248, 246, 250, 140, 244, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 162, 194, 255, 245, 136, 250, 141, 232, 140, 137, 254, 252, 142, 245, 250, 139, 248, 245, 242, 240, 241, 141, 242, 247, 240, 248, 245, 136, 128, 254, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 162, 194, 255, 245, 136, 250, 141, 232, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 164, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 140, 137, 254, 252, 142, 245, 250, 139, 248, 245, 242, 240, 241, 141, 242, 247, 240, 248, 245, 136, 128, 254, 139, 232, 145, 232, 137, 139, 136, 141, 254, 252, 141, 242, 136, 247, 248, 246, 250, 140, 244, 232, 145, 232, 151, 149, 172, 232, 145, 232, 255, 142, 245, 245, 247, 254, 140, 140, 248, 140, 141, 139, 254, 247, 240, 141, 241, 144, 162, 194, 143, 254, 252, 170, 232, 130, 252, 251, 252, 139, 232, 164, 232, 235, 190, 185, 237, 136, 226, 186, 251, 186, 139, 232, 145, 232, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 149, 139, 240, 251, 162, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 253, 140, 141, 248, 130, 232, 164, 232, 148, 168, 149, 151, 171, 168, 174, 232, 145, 232, 137, 136, 128, 159, 130, 252, 251, 252, 139, 149, 139, 147, 232, 170, 149, 151, 144, 232, 146, 232, 151, 149, 175, 171, 175, 169, 232, 145, 232, 137, 136, 128, 159, 130, 252, 251, 252, 139, 149, 139, 147, 232, 169, 149, 151, 144, 232, 146, 232, 168, 149, 168, 160, 170, 172, 232, 145, 232, 130, 252, 251, 252, 139, 149, 139, 232, 148, 232, 151, 149, 151, 151, 170, 173, 162, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 130, 232, 164, 232, 246, 242, 129, 159, 130, 252, 251, 252, 139, 149, 139, 147, 232, 246, 250, 129, 248, 253, 140, 141, 248, 130, 147, 232, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 144, 162, 194, 130, 252, 251, 252, 139, 149, 139, 232, 164, 232, 252, 245, 250, 246, 137, 159, 253, 140, 141, 248, 130, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 149, 139, 240, 251, 232, 164, 232, 226, 186, 251, 186, 139, 237, 136, 235, 190, 185, 232, 145, 232, 130, 252, 251, 252, 139, 162, 194, 134, 194, 143, 254, 252, 170, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 184, 253, 253, 236, 241, 250, 253, 136, 128, 159, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 149, 139, 240, 251, 147, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 147, 232, 175, 151, 149, 151, 232, 145, 232, 255, 142, 245, 245, 247, 254, 140, 140, 248, 140, 241, 250, 253, 136, 128, 248, 140, 141, 139, 254, 247, 240, 141, 241, 144, 162, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194};
    }

    public static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25712a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 194, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 194, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 248, 241, 254, 242, 240, 241, 141, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 252, 254, 247, 141, 254, 139, 248, 129, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 252, 254, 247, 141, 254, 139, 248, 130, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 128, 242, 253, 141, 241, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 241, 254, 242, 240, 241, 141, 194, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 194, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 194, 162, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 194, 162, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 194, 162, 194, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 148, 232, 252, 254, 247, 141, 254, 139, 248, 129, 144, 232, 145, 232, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 232, 150, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 128, 242, 253, 141, 241, 232, 146, 232, 151, 149, 172, 194, 162, 194, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 148, 232, 252, 254, 247, 141, 254, 139, 248, 130, 144, 232, 145, 232, 255, 139, 250, 246, 254, 248, 241, 254, 242, 240, 241, 141, 232, 150, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 241, 254, 242, 240, 241, 141, 232, 146, 232, 151, 149, 172, 194, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25713b = {154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 245, 140, 254, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 248, 140, 242, 131, 254, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 248, 241, 254, 242, 240, 241, 141, 194, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 139, 136, 141, 250, 141, 242, 136, 247, 194, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 194, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 194, 162, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 242, 255, 232, 159, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 250, 251, 140, 159, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 143, 254, 252, 169, 159, 151, 149, 172, 144, 144, 147, 232, 143, 254, 252, 169, 159, 151, 149, 172, 144, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 232, 164, 232, 168, 149, 151, 232, 150, 232, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 194, 162, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 136, 255, 248, 130, 232, 164, 232, 151, 149, 151, 194, 162, 194, 255, 245, 136, 250, 141, 232, 246, 242, 247, 248, 136, 255, 248, 130, 232, 164, 232, 172, 172, 173, 173, 149, 151, 194, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 244, 232, 164, 232, 148, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 248, 140, 242, 131, 254, 162, 232, 244, 232, 163, 164, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 248, 140, 242, 131, 254, 162, 232, 244, 146, 146, 144, 194, 132, 194, 143, 254, 252, 169, 232, 140, 250, 246, 137, 245, 254, 248, 140, 241, 242, 255, 141, 232, 164, 232, 159, 139, 136, 141, 250, 141, 242, 136, 247, 232, 164, 164, 232, 160, 151, 232, 133, 133, 232, 139, 136, 141, 250, 141, 242, 136, 247, 232, 164, 164, 232, 169, 174, 151, 144, 166, 232, 143, 254, 252, 169, 159, 151, 149, 151, 147, 232, 255, 245, 136, 250, 141, 159, 244, 144, 232, 145, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 144, 232, 161, 232, 143, 254, 252, 169, 159, 255, 245, 136, 250, 141, 159, 244, 144, 232, 145, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 147, 232, 151, 149, 151, 144, 194, 162, 194, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 140, 250, 246, 137, 245, 254, 248, 140, 241, 242, 255, 141, 194, 162, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 149, 139, 240, 251, 194, 162, 194, 255, 245, 136, 250, 141, 232, 240, 139, 250, 130, 232, 164, 232, 151, 149, 169, 160, 160, 232, 145, 232, 252, 136, 245, 136, 139, 149, 139, 232, 146, 232, 151, 149, 172, 175, 174, 232, 145, 232, 252, 136, 245, 136, 139, 149, 240, 232, 146, 232, 151, 149, 168, 168, 171, 232, 145, 232, 252, 136, 245, 136, 139, 149, 251, 194, 162, 194, 246, 250, 129, 248, 136, 255, 248, 130, 232, 164, 232, 246, 250, 129, 159, 240, 139, 250, 130, 147, 232, 246, 250, 129, 248, 136, 255, 248, 130, 144, 194, 162, 194, 246, 242, 247, 248, 136, 255, 248, 130, 232, 164, 232, 246, 242, 247, 159, 240, 139, 250, 130, 147, 232, 246, 242, 247, 248, 136, 255, 248, 130, 144, 194, 162, 194, 134, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 
        171, 159, 246, 250, 129, 248, 136, 255, 248, 130, 147, 232, 246, 242, 247, 248, 136, 255, 248, 130, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 194, 162, 194, 134, 194};
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25714a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 137, 242, 129, 254, 245, 248, 140, 141, 254, 137, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 252, 254, 247, 141, 254, 139, 248, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 252, 254, 247, 141, 254, 139, 248, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 241, 254, 242, 240, 241, 141, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 248, 141, 241, 139, 254, 254, 248, 253, 242, 246, 248, 137, 250, 140, 140, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 148, 232, 252, 254, 247, 141, 254, 139, 248, 129, 144, 232, 145, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 232, 150, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 128, 242, 253, 141, 241, 232, 146, 232, 151, 149, 172, 162, 194, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 245, 242, 137, 140, 141, 242, 252, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 148, 232, 252, 254, 247, 141, 254, 139, 248, 130, 144, 232, 145, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 232, 150, 232, 245, 242, 137, 140, 141, 242, 252, 244, 248, 241, 254, 242, 240, 241, 141, 232, 146, 232, 151, 149, 172, 162, 194, 137, 242, 129, 254, 245, 248, 140, 141, 254, 137, 232, 164, 232, 143, 254, 252, 169, 159, 168, 149, 151, 232, 150, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 250, 240, 254, 248, 128, 242, 253, 141, 241, 147, 232, 168, 149, 151, 232, 150, 232, 251, 250, 252, 244, 240, 139, 136, 142, 247, 253, 248, 242, 246, 
        250, 240, 254, 248, 241, 254, 242, 240, 241, 141, 144, 162, 194, 134, 194};
    }

    public CLMakeupLiveLipStickFilter() {
        super(CLMakeupLiveDecode.a(e.f25706a), CLMakeupLiveDecode.a(e.f25707b), CLMakeupLiveDecode.a(g.f25710a), CLMakeupLiveDecode.a(g.f25711b));
        this.C5 = -1;
        this.E5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.M5 = false;
        this.N5 = -1;
        this.R5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.h6 = -1;
        this.i6 = -1;
        this.j6 = -1;
        this.k6 = -1;
        this.l6 = 0;
        this.m6 = 0;
        this.n6 = 0;
        this.o6 = 0;
        this.p6 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.T6 = -1;
        this.U6 = -1;
        this.V6 = -1;
        this.W6 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.k7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.F7 = new int[2];
        this.b8 = -1;
        this.c8 = -1;
        this.d8 = -1;
        this.e8 = -1;
        this.f8 = -1;
        this.E8 = -1;
        this.I8 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.h9 = new float[][]{new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}};
        this.i9 = new float[3];
        this.m9 = 90;
        this.n9 = false;
        this.o9 = new CLMakeupLiveFilter.LiveDynamicRangeMetadata();
        this.p9 = new Object();
        this.x9 = false;
        this.y9 = false;
        this.z9 = false;
        this.G9 = new float[3];
        this.J9 = new CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata();
        this.h8 = fc.v(ByteBuffer.allocateDirect(32));
        this.J8 = 0;
        this.K8 = 0;
        this.L8 = 0;
        this.M8 = 0;
        this.N8 = 0;
        this.O8 = 0;
        this.P8 = 0;
        this.Q8 = 0;
        this.R8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.S8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.T8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.V8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.U8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.W8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.b9 = null;
        this.d9 = null;
        this.e9 = null;
        this.X8 = null;
        this.Y8 = null;
        this.Z8 = null;
        this.a9 = null;
        this.f9 = 0;
        this.g9 = 0;
        this.l9 = 0;
        this.s9 = 0;
        this.t9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.u9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.v9 = 0;
        this.w9 = 0;
        this.O5 = null;
        this.P5 = 0;
        this.Q5 = 0;
        this.g8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.A9 = 0;
        this.B9 = 0;
        this.C9 = 0;
        this.D9 = 0;
        this.E9 = 0;
        this.F9 = 0;
        this.H9 = null;
        this.I9 = null;
        O(new CLShare3DRelatedClasses.Live3DRenderData(null, null, null, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{1.0f, 1.0f, 1.0f}, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}, 1.0f, new float[]{1.0f, 1.0f, 1.0f}, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f));
    }

    public static void n0(float[] fArr, float[] fArr2, float[] fArr3, int i2, int i3, int i4, int i5, float[] fArr4, float[] fArr5, float[] fArr6) {
        int i6 = i2 - i3;
        if (i6 < 0) {
            i6 += 360;
        }
        for (int i7 = 0; i7 < 4; i7++) {
            for (int i8 = 0; i8 < 3; i8++) {
                fArr4[(i7 << 2) + i8] = fArr[(i8 << 2) + i7];
            }
        }
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        fArr4[11] = 0.0f;
        char c2 = 7;
        fArr4[7] = 0.0f;
        fArr4[3] = 0.0f;
        char c3 = 15;
        fArr4[15] = 1.0f;
        for (int i9 = 0; i9 < 4; i9++) {
            for (int i10 = 0; i10 < 4; i10++) {
                fArr5[(i9 << 2) + i10] = fArr2[(i10 << 2) + i9];
            }
        }
        float[] fArr7 = new float[9];
        float[] fArr8 = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
        if (i6 == 90 || i6 == 270) {
            fArr8[4] = 0.0f;
            fArr8[0] = 0.0f;
            fArr8[3] = 1.0f;
            fArr8[1] = 1.0f;
        }
        for (int i11 = 0; i11 < 9; i11++) {
            fArr7[i11] = 0.0f;
        }
        int i12 = 0;
        while (i12 < 3) {
            float f3 = f2;
            int i13 = 0;
            while (true) {
                char c4 = c2;
                if (i13 < 3) {
                    for (int i14 = 0; i14 < 3; i14++) {
                        int i15 = (i12 * 3) + i13;
                        int i16 = i14 * 3;
                        fArr7[i15] = (fArr3[i12 + i16] * fArr8[i16 + i13]) + fArr7[i15];
                    }
                    i13++;
                    c2 = c4;
                }
            }
            i12++;
            f2 = f3;
        }
        float f4 = f2;
        char c5 = c2;
        float[] fArr9 = new float[9];
        fArr9[0] = 2.0f / i4;
        fArr9[1] = f4;
        fArr9[2] = f4;
        fArr9[3] = f4;
        fArr9[4] = 2.0f / i5;
        fArr9[5] = f4;
        fArr9[6] = -1.0f;
        fArr9[c5] = -1.0f;
        fArr9[8] = 1.0f;
        float[] fArr10 = new float[9];
        for (int i17 = 0; i17 < 3; i17++) {
            int i18 = 0;
            while (i18 < 3) {
                int i19 = i17 * 3;
                int i20 = i19 + i18;
                fArr10[i20] = f4;
                char c6 = c3;
                for (int i21 = 0; i21 < 3; i21++) {
                    fArr10[i20] = (fArr7[i19 + i21] * fArr9[(i21 * 3) + i18]) + fArr10[i20];
                }
                i18++;
                c3 = c6;
            }
        }
        char c7 = c3;
        float[] fArr11 = new float[9];
        float[] fArr12 = {1.0f, -1.0f, -1.0f, 1.0f};
        float[] fArr13 = {-1.0f, -1.0f, 1.0f, 1.0f};
        int i22 = (i6 / 90) % 4;
        System.arraycopy(fArr10, 0, fArr11, 0, 9);
        int i23 = 0;
        while (i23 < 2) {
            float f5 = i23 == 0 ? fArr12[i22] : fArr13[i22];
            for (int i24 = 0; i24 < 3; i24++) {
                int i25 = (i24 * 3) + i23;
                fArr11[i25] = fArr11[i25] * f5;
            }
            i23++;
        }
        fArr6[0] = fArr11[0];
        fArr6[1] = fArr11[1];
        fArr6[2] = f4;
        fArr6[3] = fArr11[2];
        fArr6[4] = fArr11[3];
        fArr6[5] = fArr11[4];
        fArr6[6] = f4;
        fArr6[c5] = fArr11[5];
        fArr6[8] = fArr11[6];
        fArr6[9] = fArr11[c5];
        fArr6[10] = -1.0001999f;
        fArr6[11] = fArr11[8];
        fArr6[12] = f4;
        fArr6[13] = f4;
        fArr6[14] = -0.20003319f;
        fArr6[c7] = f4;
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter
    public final void T(CLShare3DRelatedClasses.Live3DRenderData live3DRenderData) {
        b0(live3DRenderData);
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter
    public final void b0(CLShare3DRelatedClasses.Live3DRenderData live3DRenderData) {
        e0();
        GLES20.glUniformMatrix4fv(this.O0, 1, false, this.y0, 0);
        GLES20.glUniformMatrix4fv(this.P0, 1, false, this.z0, 0);
        GLES20.glUniformMatrix4fv(this.Q0, 1, false, this.A0, 0);
        if (this.C5 != -1) {
            GLES20.glActiveTexture(33986);
            GLES20.glBindTexture(3553, this.C5);
            GLES20.glTexImage2D(3553, 0, 6408, Sink.Screenshare.MAX_DIMENSION_LOW, 1160, 0, 6408, 5121, null);
            GLES20.glUniform1i(this.D5, 2);
        }
    }

    public final void k0(CLMakeupLiveFilter.LiveDynamicRangeMetadata liveDynamicRangeMetadata, LipstickData lipstickData, CLMakeupLiveLiplinerFilter.LiplinerData liplinerData) {
        CLShare3DRelatedClasses.Live3DRenderData live3DRenderData;
        synchronized (this.h0) {
            try {
                this.o9.Copy(liveDynamicRangeMetadata);
                boolean z = lipstickData.m_is_valid;
                this.i0 = z;
                if (z) {
                    this.X8 = lipstickData.m_mouth_mask_data;
                    this.Y8 = lipstickData.m_mouth_layer_mask_data;
                    this.Z8 = lipstickData.m_shimmer_data;
                    this.a9 = lipstickData.m_blend_weight_and_lvel_map;
                    this.l9 = lipstickData.m_rotation;
                    this.P8 = lipstickData.m_shimmer_width;
                    this.Q8 = lipstickData.m_shimmer_height;
                    this.J8 = lipstickData.m_mask_width;
                    this.K8 = lipstickData.m_mask_height;
                    this.L8 = lipstickData.m_roi_x;
                    this.M8 = lipstickData.m_roi_y;
                    this.N8 = lipstickData.m_roi_width;
                    this.O8 = lipstickData.m_roi_height;
                    this.q9 = lipstickData.m_background_image_width;
                    this.r9 = lipstickData.m_background_image_height;
                    this.P5 = lipstickData.template_width;
                    this.Q5 = lipstickData.template_height;
                    this.R8 = lipstickData.m_gloss_contrast_scale_0;
                    this.S8 = lipstickData.m_gloss_contrast_shift_0 / 255.0f;
                    this.T8 = lipstickData.m_gloss_contrast_shrink_0;
                    this.V8 = lipstickData.m_force_bright_threshold_0 / 255.0f;
                    this.U8 = lipstickData.m_use_median_0 ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    this.W8 = lipstickData.m_shimmer_normalize_factor_0;
                    this.f9 = lipstickData.m_layer_count;
                    this.g9 = lipstickData.m_is_upper_lower_omber ? 1 : 0;
                    for (int i2 = 0; i2 < this.f9; i2++) {
                        float[] fArr = this.h9[i2];
                        fArr[0] = lipstickData.m_color_r[i2] / 255.0f;
                        fArr[1] = lipstickData.m_color_g[i2] / 255.0f;
                        fArr[2] = lipstickData.m_color_b[i2] / 255.0f;
                    }
                    this.s9 = lipstickData.m_fullness;
                    this.t9 = lipstickData.m_fullness_adjusting_factor;
                    this.u9 = lipstickData.m_fullness_shadow_adjusting_factor;
                    this.v9 = lipstickData.m_smooth_kernel_size;
                    this.w9 = lipstickData.m_wrinkless;
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate((this.J8 * this.K8) << 2);
                    this.b9 = byteBufferAllocate;
                    byteBufferAllocate.put(this.X8, 0, (this.J8 * this.K8) << 2);
                    this.b9.position(0);
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate((this.J8 * this.K8) << 2);
                    this.c9 = byteBufferAllocate2;
                    byteBufferAllocate2.put(this.Y8, 0, (this.J8 * this.K8) << 2);
                    this.c9.position(0);
                    ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(1024);
                    this.e9 = byteBufferAllocate3;
                    byteBufferAllocate3.put(this.a9, 0, 1024);
                    this.e9.position(0);
                    ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(this.P8 * this.Q8);
                    this.d9 = byteBufferAllocate4;
                    byteBufferAllocate4.put(this.Z8, 0, this.P8 * this.Q8);
                    this.d9.position(0);
                    if (!this.M5) {
                        ByteBuffer byteBufferAllocate5 = ByteBuffer.allocate((this.P5 * this.Q5) << 2);
                        this.O5 = byteBufferAllocate5;
                        byteBufferAllocate5.clear();
                        this.O5.put(lipstickData.mp_template_data, 0, (this.P5 * this.Q5) << 2);
                        this.O5.position(0);
                        this.M5 = true;
                    }
                    int[] iArr = lipstickData.m_shimmer_color_0;
                    this.i9 = new float[]{iArr[0] / 255.0f, iArr[1] / 255.0f, iArr[2] / 255.0f};
                    this.j9 = lipstickData.m_enable_color_shimmer_0 ? 1 : 0;
                    this.k9 = lipstickData.m_shimmer_intensity_0;
                    this.j0 = lipstickData.m_rotation;
                    this.k0 = lipstickData.m_is_flipped;
                    System.arraycopy(lipstickData.m_pnp_matrix, 0, this.l0, 0, 12);
                    System.arraycopy(lipstickData.m_camera_matrix, 0, this.m0, 0, 9);
                    System.arraycopy(lipstickData.m_normal_pnp_matrix, 0, this.n0, 0, 16);
                    CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = this.p0;
                    if (live3DRenderDataArr != null && (live3DRenderData = live3DRenderDataArr[0]) != null) {
                        live3DRenderData.UpdateCoordinates(lipstickData.m_face_3d_xyz, lipstickData.m_normal_vectors, lipstickData.m_is_texcoord_changed ? lipstickData.m_texcoords : null);
                    }
                    byte[] bArr = lipstickData.mp_primer_data;
                    this.H9 = bArr;
                    this.I9 = lipstickData.mp_primer_blend_weight_and_level_mask;
                    this.C0 = true;
                    this.x9 = lipstickData.m_is_lip_shape_enabled && lipstickData.m_is_valid && this.y9;
                    this.z9 = liplinerData.m_is_valid;
                    this.A9 = lipstickData.m_primer_mask_width;
                    this.B9 = lipstickData.m_primer_mask_height;
                    this.C9 = lipstickData.m_primer_roi_x;
                    this.D9 = lipstickData.m_primer_roi_y;
                    this.E9 = lipstickData.m_primer_roi_width;
                    this.F9 = lipstickData.m_primer_roi_height;
                    if (bArr != null) {
                        GLES20.glBindTexture(3553, this.T6);
                        GLES20.glTexImage2D(3553, 0, 6408, this.A9, this.B9, 0, 6408, 5121, ByteBuffer.wrap(this.H9));
                    }
                    if (this.I9 != null) {
                        GLES20.glBindTexture(3553, this.U6);
                        GLES20.glTexImage2D(3553, 0, 6408, 256, 1, 0, 6408, 5121, ByteBuffer.wrap(this.I9));
                    }
                    int[] iArr2 = lipstickData.m_primer_color;
                    this.G9 = new float[]{iArr2[0] / 255.0f, iArr2[1] / 255.0f, iArr2[2] / 255.0f};
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l0(CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata liveFaceRegionOccludeMetadata) {
        synchronized (this.p9) {
            this.J9.Copy(liveFaceRegionOccludeMetadata);
        }
    }

    public final void m0(boolean z) {
        this.n9 = z;
    }

    public final float[] o0(float[] fArr, int i2) {
        int i3 = this.m9;
        if (i2 == (i3 + Sink.ORIENTATION_270) % 360) {
            return new float[]{fArr[4], fArr[5], fArr[0], fArr[1], fArr[6], fArr[7], fArr[2], fArr[3]};
        }
        if (i2 == (i3 + Sink.ORIENTATION_180) % 360) {
            return new float[]{fArr[6], fArr[7], fArr[4], fArr[5], fArr[2], fArr[3], fArr[0], fArr[1]};
        }
        return i2 == (i3 + 90) % 360 ? new float[]{fArr[2], fArr[3], fArr[6], fArr[7], fArr[0], fArr[1], fArr[4], fArr[5]} : new float[]{fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7]};
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter, com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        super.onDestroy();
        GLES20.glDeleteTextures(1, new int[]{this.b8}, 0);
        this.b8 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.c8}, 0);
        this.c8 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.e8}, 0);
        this.e8 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.d8}, 0);
        this.d8 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.C5}, 0);
        this.C5 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.T6}, 0);
        this.T6 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.U6}, 0);
        this.U6 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.V6}, 0);
        this.V6 = -1;
        int i2 = this.N5;
        if (i2 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i2}, 0);
            this.N5 = -1;
        }
        this.W6.DestroyData();
        GLES20.glDeleteProgram(this.X6);
        this.E5.DestroyData();
        GLES20.glDeleteProgram(this.F5);
        this.k7.DestroyData();
        GLES20.glDeleteProgram(this.l7);
        this.R5.DestroyData();
        GLES20.glDeleteProgram(this.S5);
        this.p6.DestroyData();
        GLES20.glDeleteProgram(this.q6);
        this.I8.DestroyData();
        this.J9.p_buffer = null;
        GLES20.glDeleteProgram(this.z8);
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter, com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        float[] fArr;
        int i10;
        float f2;
        int i11;
        int i12;
        float f3;
        int i13;
        int i14;
        float f4;
        int i15;
        float[] fArr2;
        int i16;
        float f5;
        int i17;
        int i18;
        int i19;
        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr;
        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr2;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData6;
        if (isInitialized()) {
            synchronized (this.v) {
                try {
                    CLShare3DRelatedClasses.Pass1BufferData pass1BufferData7 = this.W6;
                    if (pass1BufferData7 != null && pass1BufferData7.frame_buffer != null && pass1BufferData7.frame_buffer_texture != null && pass1BufferData7.width > 0 && pass1BufferData7.height > 0 && (pass1BufferData = this.p) != null && pass1BufferData.frame_buffer != null && pass1BufferData.frame_buffer_texture != null && pass1BufferData.depth_buffer != null && pass1BufferData.width > 0 && pass1BufferData.height > 0 && (pass1BufferData2 = this.E5) != null && pass1BufferData2.frame_buffer != null && pass1BufferData2.frame_buffer_texture != null && pass1BufferData2.depth_buffer != null && pass1BufferData2.width > 0 && pass1BufferData2.height > 0 && (pass1BufferData3 = this.R5) != null && pass1BufferData3.frame_buffer != null && pass1BufferData3.frame_buffer_texture != null && pass1BufferData3.depth_buffer != null && pass1BufferData3.width > 0 && pass1BufferData3.height > 0 && (pass1BufferData4 = this.p6) != null && pass1BufferData4.frame_buffer != null && pass1BufferData4.frame_buffer_texture != null && pass1BufferData4.width > 0 && pass1BufferData4.height > 0 && (pass1BufferData5 = this.k7) != null && pass1BufferData5.frame_buffer != null && pass1BufferData5.frame_buffer_texture != null && pass1BufferData5.width > 0 && pass1BufferData5.height > 0 && (!this.J9.is_valid || ((pass1BufferData6 = this.I8) != null && pass1BufferData6.frame_buffer != null && pass1BufferData6.frame_buffer_texture != null && pass1BufferData6.width > 0 && pass1BufferData6.height > 0))) {
                        synchronized (this.h0) {
                            try {
                                if (this.i0 && (live3DRenderDataArr2 = this.p0) != null && live3DRenderDataArr2[0] != null) {
                                    IntBuffer intBufferAllocate = IntBuffer.allocate(1024);
                                    GLES20.glGetIntegerv(36006, intBufferAllocate);
                                    IntBuffer intBufferAllocate2 = IntBuffer.allocate(4);
                                    GLES20.glGetIntegerv(2978, intBufferAllocate2);
                                    GLES20.glUseProgram(this.F5);
                                    GLES20.glViewport(0, 0, this.g, this.f25446h);
                                    GLES20.glBindFramebuffer(36160, this.E5.frame_buffer[0]);
                                    GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    GLES20.glClear(16640);
                                    GLES20.glEnable(2929);
                                    GLES20.glEnable(2884);
                                    GLES20.glCullFace(1029);
                                    GLES20.glEnableVertexAttribArray(this.G5);
                                    GLES20.glEnableVertexAttribArray(this.H5);
                                    CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.p0[0];
                                    FloatBuffer floatBuffer3 = live3DRenderData.vertex_buffer;
                                    FloatBuffer floatBuffer4 = live3DRenderData.texcoord_buffer;
                                    int iMin = Math.min(floatBuffer3.capacity() / 3, floatBuffer4.capacity() / 2);
                                    floatBuffer3.position(0);
                                    GLES20.glVertexAttribPointer(this.G5, 3, 5126, false, 0, (Buffer) live3DRenderData.vertex_buffer);
                                    floatBuffer4.position(0);
                                    GLES20.glVertexAttribPointer(this.H5, 2, 5126, false, 0, (Buffer) live3DRenderData.texcoord_buffer);
                                    float[] fArr3 = new float[16];
                                    float[] fArr4 = new float[16];
                                    float[] fArr5 = new float[16];
                                    n0(this.l0, this.n0, this.m0, this.m9, this.l9, this.g, this.f25446h, fArr3, fArr4, fArr5);
                                    GLES20.glUniformMatrix4fv(this.I5, 1, false, fArr3, 0);
                                    GLES20.glUniformMatrix4fv(this.J5, 1, false, fArr4, 0);
                                    GLES20.glUniformMatrix4fv(this.K5, 1, false, fArr5, 0);
                                    if (this.N5 == -1 && this.M5) {
                                        int[] iArr = new int[1];
                                        GLES20.glGenTextures(1, iArr, 0);
                                        int i20 = iArr[0];
                                        this.N5 = i20;
                                        GLES20.glBindTexture(3553, i20);
                                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                        GLES20.glTexImage2D(3553, 0, 6408, this.P5, this.Q5, 0, 6408, 5121, this.O5);
                                    }
                                    if (this.N5 != -1) {
                                        GLES20.glActiveTexture(33984);
                                        GLES20.glBindTexture(3553, this.N5);
                                        GLES20.glUniform1i(this.L5, 0);
                                    }
                                    GLES20.glDrawArrays(4, 0, iMin);
                                    GLES20.glDisable(2929);
                                    GLES20.glDisable(2884);
                                    GLES20.glDisableVertexAttribArray(this.G5);
                                    GLES20.glDisableVertexAttribArray(this.H5);
                                    GLES20.glBindTexture(3553, 0);
                                    GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
                                    GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(1), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (!i0()) {
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData8 = this.p;
                            int i21 = pass1BufferData8.width >> 1;
                            int i22 = pass1BufferData8.height >> 1;
                            pass1BufferData8.DestroyData();
                            this.p.CreateData(i21, i22);
                            i0();
                        }
                        synchronized (this.h0) {
                            try {
                                if (!this.i0 || (live3DRenderDataArr = this.p0) == null || live3DRenderDataArr[0] == null) {
                                    i3 = -1;
                                    i4 = 2;
                                    i5 = 33987;
                                    i6 = 33986;
                                    i7 = 33985;
                                    i8 = 33988;
                                } else {
                                    IntBuffer intBufferAllocate3 = IntBuffer.allocate(1024);
                                    GLES20.glGetIntegerv(36006, intBufferAllocate3);
                                    IntBuffer intBufferAllocate4 = IntBuffer.allocate(4);
                                    GLES20.glGetIntegerv(2978, intBufferAllocate4);
                                    GLES20.glUseProgram(this.S5);
                                    GLES20.glViewport(0, 0, this.g, this.f25446h);
                                    GLES20.glBindFramebuffer(36160, this.R5.frame_buffer[0]);
                                    GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    GLES20.glClear(16640);
                                    GLES20.glEnable(2929);
                                    GLES20.glEnable(2884);
                                    GLES20.glCullFace(1029);
                                    GLES20.glEnableVertexAttribArray(this.T5);
                                    GLES20.glEnableVertexAttribArray(this.U5);
                                    CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 = this.p0[0];
                                    FloatBuffer floatBuffer5 = live3DRenderData2.vertex_buffer;
                                    FloatBuffer floatBuffer6 = live3DRenderData2.texcoord_buffer;
                                    i8 = 33988;
                                    int iMin2 = Math.min(floatBuffer5.capacity() / 3, floatBuffer6.capacity() / 2);
                                    floatBuffer5.position(0);
                                    i5 = 33987;
                                    GLES20.glVertexAttribPointer(this.T5, 3, 5126, false, 0, (Buffer) floatBuffer5);
                                    floatBuffer6.position(0);
                                    GLES20.glVertexAttribPointer(this.U5, 2, 5126, false, 0, (Buffer) floatBuffer6);
                                    float[] fArr6 = new float[16];
                                    float[] fArr7 = new float[16];
                                    i6 = 33986;
                                    i7 = 33985;
                                    n0(this.l0, this.n0, this.m0, this.m9, this.l9, this.g, this.f25446h, fArr6, new float[16], fArr7);
                                    GLES20.glUniformMatrix4fv(this.V5, 1, false, fArr6, 0);
                                    GLES20.glUniformMatrix4fv(this.W5, 1, false, fArr7, 0);
                                    GLES20.glUniform1f(this.f6, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    GLES20.glUniform1f(this.g6, 1.0f);
                                    GLES20.glUniform1f(this.b6, this.l6);
                                    GLES20.glUniform1f(this.c6, this.m6);
                                    GLES20.glUniform1f(this.d6, this.n6);
                                    GLES20.glUniform1f(this.e6, this.o6);
                                    if (this.h6 != -1) {
                                        GLES20.glActiveTexture(33985);
                                        GLES20.glBindTexture(3553, this.h6);
                                        GLES20.glUniform1i(this.X5, 1);
                                    }
                                    if (this.i6 != -1) {
                                        GLES20.glActiveTexture(33986);
                                        GLES20.glBindTexture(3553, this.i6);
                                        GLES20.glUniform1i(this.Y5, 2);
                                    }
                                    if (this.j6 != -1) {
                                        GLES20.glActiveTexture(33987);
                                        GLES20.glBindTexture(3553, this.j6);
                                        GLES20.glUniform1i(this.Z5, 3);
                                    }
                                    i3 = -1;
                                    if (this.k6 != -1) {
                                        GLES20.glActiveTexture(33988);
                                        GLES20.glBindTexture(3553, this.k6);
                                        GLES20.glUniform1i(this.a6, 4);
                                    }
                                    GLES20.glDrawArrays(4, 0, iMin2);
                                    GLES20.glDisable(2929);
                                    GLES20.glDisable(2884);
                                    GLES20.glDisableVertexAttribArray(this.T5);
                                    GLES20.glDisableVertexAttribArray(this.U5);
                                    GLES20.glBindTexture(3553, 0);
                                    GLES20.glBindFramebuffer(36160, intBufferAllocate3.get(0));
                                    i4 = 2;
                                    GLES20.glViewport(intBufferAllocate4.get(0), intBufferAllocate4.get(1), intBufferAllocate4.get(2), intBufferAllocate4.get(3));
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        synchronized (this.h0) {
                            try {
                                IntBuffer intBufferAllocate5 = IntBuffer.allocate(1024);
                                GLES20.glGetIntegerv(36006, intBufferAllocate5);
                                IntBuffer intBufferAllocate6 = IntBuffer.allocate(4);
                                GLES20.glGetIntegerv(2978, intBufferAllocate6);
                                GLES20.glUseProgram(this.q6);
                                GLES20.glViewport(0, 0, this.g, this.f25446h);
                                GLES20.glBindFramebuffer(36160, this.p6.frame_buffer[0]);
                                GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                GLES20.glClear(16640);
                                GLES20.glEnableVertexAttribArray(this.r6);
                                GLES20.glEnableVertexAttribArray(this.s6);
                                GLES20.glEnableVertexAttribArray(this.t6);
                                GLES20.glEnableVertexAttribArray(this.u6);
                                floatBuffer.position(0);
                                i9 = i3;
                                GLES20.glVertexAttribPointer(this.r6, 2, 5126, false, 0, (Buffer) floatBuffer);
                                floatBuffer2.position(0);
                                GLES20.glVertexAttribPointer(this.s6, 2, 5126, false, 0, (Buffer) floatBuffer2);
                                this.h8.clear();
                                FloatBuffer floatBuffer7 = this.h8;
                                fArr = K9;
                                floatBuffer7.put(o0(fArr, this.l9));
                                this.h8.position(0);
                                GLES20.glVertexAttribPointer(this.t6, 2, 5126, false, 0, (Buffer) this.h8);
                                this.o.position(0);
                                GLES20.glVertexAttribPointer(this.u6, 2, 5126, false, 0, (Buffer) this.o);
                                GLES20.glActiveTexture(33984);
                                GLES20.glBindTexture(3553, i2);
                                GLES20.glUniform1i(this.z6, 0);
                                if (this.R5.frame_buffer_texture[0] != i9) {
                                    GLES20.glActiveTexture(i7);
                                    GLES20.glBindTexture(3553, this.R5.frame_buffer_texture[0]);
                                    GLES20.glUniform1i(this.w6, 1);
                                }
                                if (this.T6 != i9) {
                                    GLES20.glActiveTexture(i6);
                                    GLES20.glBindTexture(3553, this.T6);
                                    GLES20.glUniform1i(this.v6, i4);
                                }
                                if (this.U6 != i9) {
                                    GLES20.glActiveTexture(i5);
                                    GLES20.glBindTexture(3553, this.U6);
                                    GLES20.glUniform1i(this.x6, 3);
                                }
                                if (this.b8 != i9) {
                                    GLES20.glActiveTexture(i8);
                                    GLES20.glBindTexture(3553, this.b8);
                                    GLES20.glTexImage2D(3553, 0, 6408, this.J8, this.K8, 0, 6408, 5121, this.b9);
                                    GLES20.glUniform1i(this.y6, 4);
                                }
                                if (this.f8 != i9) {
                                    GLES20.glActiveTexture(33989);
                                    GLES20.glBindTexture(3553, this.f8);
                                    GLES20.glUniform1i(this.A6, 5);
                                }
                                if (this.V6 != i9) {
                                    GLES20.glActiveTexture(33990);
                                    GLES20.glBindTexture(3553, this.V6);
                                    GLES20.glTexImage2D(3553, 0, 6408, 256, 1, 0, 6408, 5121, this.e9);
                                    GLES20.glUniform1i(this.S6, 6);
                                }
                                GLES20.glUniform2fv(this.C6, 1, this.m, 0);
                                GLES20.glUniform2fv(this.D6, 1, this.n, 0);
                                GLES20.glUniform1f(this.G6, this.E9);
                                GLES20.glUniform1f(this.H6, this.F9);
                                GLES20.glUniform1f(this.K6, this.N8);
                                GLES20.glUniform1f(this.L6, this.O8);
                                int i23 = this.l9;
                                if (i23 == 0 || i23 == 180) {
                                    GLES20.glUniform1f(this.M6, this.q9);
                                    GLES20.glUniform1f(this.N6, this.r9);
                                    GLES20.glUniform1f(this.E6, ((this.E9 * 0.5f) + this.C9) / this.q9);
                                    GLES20.glUniform1f(this.F6, ((this.F9 * 0.5f) + this.D9) / this.r9);
                                    GLES20.glUniform1f(this.I6, ((this.N8 * 0.5f) + this.L8) / this.q9);
                                    i10 = this.J6;
                                    f2 = (this.O8 * 0.5f) + this.M8;
                                    i11 = this.r9;
                                } else {
                                    GLES20.glUniform1f(this.M6, this.r9);
                                    GLES20.glUniform1f(this.N6, this.q9);
                                    GLES20.glUniform1f(this.E6, ((this.E9 * 0.5f) + this.C9) / this.r9);
                                    GLES20.glUniform1f(this.F6, ((this.F9 * 0.5f) + this.D9) / this.q9);
                                    GLES20.glUniform1f(this.I6, ((this.N8 * 0.5f) + this.L8) / this.r9);
                                    i10 = this.J6;
                                    f2 = (this.O8 * 0.5f) + this.M8;
                                    i11 = this.q9;
                                }
                                GLES20.glUniform1f(i10, f2 / i11);
                                int i24 = this.l9 - this.m9;
                                if (i24 < 0) {
                                    i24 += 360;
                                }
                                GLES20.glUniform1i(this.B6, i24);
                                GLES20.glUniform3fv(this.O6, 1, FloatBuffer.wrap(this.G9));
                                GLES20.glUniform1i(this.P6, (!this.x9 || this.z9) ? 0 : 1);
                                GLES20.glUniform1f(this.Q6, this.g8);
                                GLES20.glUniform1i(this.R6, this.f9);
                                GLES20.glDrawArrays(5, 0, 4);
                                GLES20.glDisableVertexAttribArray(this.r6);
                                GLES20.glDisableVertexAttribArray(this.s6);
                                GLES20.glDisableVertexAttribArray(this.t6);
                                GLES20.glDisableVertexAttribArray(this.u6);
                                GLES20.glBindTexture(3553, 0);
                                GLES20.glBindFramebuffer(36160, intBufferAllocate5.get(0));
                                GLES20.glViewport(intBufferAllocate6.get(0), intBufferAllocate6.get(1), intBufferAllocate6.get(i4), intBufferAllocate6.get(3));
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                        IntBuffer intBufferAllocate7 = IntBuffer.allocate(1024);
                        GLES20.glGetIntegerv(36006, intBufferAllocate7);
                        IntBuffer intBufferAllocate8 = IntBuffer.allocate(4);
                        GLES20.glGetIntegerv(2978, intBufferAllocate8);
                        GLES20.glUseProgram(this.X6);
                        GLES20.glViewport(0, 0, this.g, this.f25446h);
                        GLES20.glBindFramebuffer(36160, this.W6.frame_buffer[0]);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        floatBuffer.position(0);
                        int i25 = i4;
                        GLES20.glVertexAttribPointer(this.Y6, 2, 5126, false, 0, (Buffer) floatBuffer);
                        GLES20.glEnableVertexAttribArray(this.Y6);
                        floatBuffer2.position(0);
                        GLES20.glVertexAttribPointer(this.Z6, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.Z6);
                        this.h8.clear();
                        this.h8.put(o0(fArr, this.l9));
                        this.h8.position(0);
                        GLES20.glVertexAttribPointer(this.a7, 2, 5126, false, 0, (Buffer) this.h8);
                        GLES20.glEnableVertexAttribArray(this.a7);
                        synchronized (this.h0) {
                            try {
                                GLES20.glUniform1f(this.i7, this.N8);
                                GLES20.glUniform1f(this.j7, this.O8);
                                int i26 = this.l9 - this.m9;
                                if (i26 < 0) {
                                    i26 += 360;
                                }
                                GLES20.glUniform1i(this.f7, i26);
                                int i27 = this.l9;
                                if (i27 == 0 || i27 == 180) {
                                    GLES20.glUniform1f(this.d7, this.q9);
                                    GLES20.glUniform1f(this.e7, this.r9);
                                    GLES20.glUniform1f(this.g7, ((this.N8 * 0.5f) + this.L8) / this.q9);
                                    i12 = this.h7;
                                    f3 = (this.O8 * 0.5f) + this.M8;
                                    i13 = this.r9;
                                } else {
                                    GLES20.glUniform1f(this.d7, this.r9);
                                    GLES20.glUniform1f(this.e7, this.q9);
                                    GLES20.glUniform1f(this.g7, ((this.N8 * 0.5f) + this.L8) / this.r9);
                                    i12 = this.h7;
                                    f3 = (this.O8 * 0.5f) + this.M8;
                                    i13 = this.q9;
                                }
                                GLES20.glUniform1f(i12, f3 / i13);
                                GLES20.glUniform1i(this.c7, this.v9 / 2);
                                if (i2 != i9) {
                                    GLES20.glActiveTexture(33984);
                                    GLES20.glBindTexture(3553, i2);
                                    GLES20.glUniform1i(this.b7, 0);
                                }
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                        GLES20.glDrawArrays(5, 0, 4);
                        GLES20.glDisableVertexAttribArray(this.Y6);
                        GLES20.glDisableVertexAttribArray(this.Z6);
                        GLES20.glDisableVertexAttribArray(this.a7);
                        GLES20.glBindFramebuffer(36160, intBufferAllocate7.get(0));
                        GLES20.glViewport(intBufferAllocate8.get(0), intBufferAllocate8.get(1), intBufferAllocate8.get(i25), intBufferAllocate8.get(3));
                        IntBuffer intBufferAllocate9 = IntBuffer.allocate(1024);
                        GLES20.glGetIntegerv(36006, intBufferAllocate9);
                        IntBuffer intBufferAllocate10 = IntBuffer.allocate(4);
                        GLES20.glGetIntegerv(2978, intBufferAllocate10);
                        GLES20.glUseProgram(this.l7);
                        GLES20.glViewport(0, 0, this.g, this.f25446h);
                        GLES20.glBindFramebuffer(36160, this.k7.frame_buffer[0]);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        floatBuffer.position(0);
                        GLES20.glVertexAttribPointer(this.m7, 2, 5126, false, 0, (Buffer) floatBuffer);
                        GLES20.glEnableVertexAttribArray(this.m7);
                        this.o.position(0);
                        GLES20.glVertexAttribPointer(this.o7, 2, 5126, false, 0, (Buffer) this.o);
                        GLES20.glEnableVertexAttribArray(this.o7);
                        floatBuffer2.position(0);
                        GLES20.glVertexAttribPointer(this.n7, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.n7);
                        synchronized (this.h0) {
                            try {
                                GLES20.glUniform1f(this.H7, this.R8);
                                GLES20.glUniform1f(this.I7, this.S8);
                                GLES20.glUniform1f(this.J7, this.T8);
                                GLES20.glUniform1f(this.K7, this.V8);
                                GLES20.glUniform1f(this.L7, this.U8);
                                GLES20.glUniform1f(this.M7, this.W8);
                                GLES20.glUniform1f(this.A7, this.N8);
                                GLES20.glUniform1f(this.B7, this.O8);
                                int i28 = this.l9;
                                if (i28 == 0 || i28 == 180) {
                                    GLES20.glUniform1f(this.C7, this.q9);
                                    GLES20.glUniform1f(this.D7, this.r9);
                                    GLES20.glUniform1f(this.y7, ((this.N8 * 0.5f) + this.L8) / this.q9);
                                    i14 = this.z7;
                                    f4 = (this.O8 * 0.5f) + this.M8;
                                    i15 = this.r9;
                                } else {
                                    GLES20.glUniform1f(this.C7, this.r9);
                                    GLES20.glUniform1f(this.D7, this.q9);
                                    GLES20.glUniform1f(this.y7, ((this.N8 * 0.5f) + this.L8) / this.r9);
                                    i14 = this.z7;
                                    f4 = (this.O8 * 0.5f) + this.M8;
                                    i15 = this.q9;
                                }
                                GLES20.glUniform1f(i14, f4 / i15);
                                GLES20.glUniform1i(this.E7, this.f9);
                                GLES20.glUniform1i(this.G7, this.g9);
                                for (int i29 = 0; i29 < 2; i29++) {
                                    GLES20.glUniform3fv(this.F7[i29], 1, FloatBuffer.wrap(this.h9[i29]));
                                }
                                GLES20.glUniform1i(this.O7, this.j9);
                                GLES20.glUniform3fv(this.P7, 1, FloatBuffer.wrap(this.i9));
                                GLES20.glUniform1f(this.Q7, this.k9);
                                GLES20.glUniform1i(this.N7, this.n9 ? 1 : 0);
                                GLES20.glUniform1f(this.S7, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                GLES20.glUniform1f(this.R7, this.x9 ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                float[] fArr8 = this.G9;
                                GLES20.glUniform1f(this.T7, (fArr8[2] * 0.114f) + (fArr8[1] * 0.587f) + (fArr8[0] * 0.299f));
                                GLES20.glUniform1f(this.U7, this.s9 * 0.01f * this.t9);
                                GLES20.glUniform1i(this.V7, this.v9 / 2);
                                GLES20.glUniform1f(this.X7, this.w9 * 0.01f);
                                int i30 = this.l9 - this.m9;
                                if (i30 < 0) {
                                    i30 += 360;
                                }
                                GLES20.glUniform1i(this.W7, i30);
                                GLES20.glUniform1f(this.Y7, this.s9 * 0.01f * this.u9);
                                GLES20.glUniform2fv(this.Z7, 1, this.m, 0);
                                GLES20.glUniform2fv(this.a8, 1, this.n, 0);
                                this.h8.clear();
                                FloatBuffer floatBuffer8 = this.h8;
                                fArr2 = K9;
                                floatBuffer8.put(o0(fArr2, this.l9));
                                this.h8.position(0);
                                GLES20.glVertexAttribPointer(this.p7, 2, 5126, false, 0, (Buffer) this.h8);
                                GLES20.glEnableVertexAttribArray(this.p7);
                                if (this.p6.frame_buffer_texture[0] != i9) {
                                    GLES20.glActiveTexture(33984);
                                    GLES20.glBindTexture(3553, this.p6.frame_buffer_texture[0]);
                                    GLES20.glUniform1i(this.q7, 0);
                                }
                                if (this.b8 != i9) {
                                    GLES20.glActiveTexture(i7);
                                    GLES20.glBindTexture(3553, this.b8);
                                    GLES20.glTexImage2D(3553, 0, 6408, this.J8, this.K8, 0, 6408, 5121, this.b9);
                                    GLES20.glUniform1i(this.r7, 1);
                                }
                                if (this.c8 != i9) {
                                    GLES20.glActiveTexture(i6);
                                    GLES20.glBindTexture(3553, this.c8);
                                    GLES20.glTexImage2D(3553, 0, 6408, this.J8, this.K8, 0, 6408, 5121, this.c9);
                                    GLES20.glUniform1i(this.s7, 2);
                                }
                                if (this.e8 != i9) {
                                    GLES20.glActiveTexture(i5);
                                    GLES20.glBindTexture(3553, this.e8);
                                    GLES20.glTexImage2D(3553, 0, 6408, 256, 1, 0, 6408, 5121, this.e9);
                                    GLES20.glUniform1i(this.u7, 3);
                                }
                                if (this.p.frame_buffer_texture[0] != i9) {
                                    GLES20.glActiveTexture(i8);
                                    GLES20.glBindTexture(3553, this.p.frame_buffer_texture[0]);
                                    GLES20.glUniform1i(this.w7, 4);
                                }
                                if (this.d8 != i9) {
                                    GLES20.glActiveTexture(33989);
                                    GLES20.glBindTexture(3553, this.d8);
                                    GLES20.glTexImage2D(3553, 0, 6409, this.P8, this.Q8, 0, 6409, 5121, this.d9);
                                    GLES20.glUniform1i(this.t7, 5);
                                }
                                if (this.W6.frame_buffer_texture[0] != i9) {
                                    GLES20.glActiveTexture(33990);
                                    GLES20.glBindTexture(3553, this.W6.frame_buffer_texture[0]);
                                    GLES20.glUniform1i(this.v7, 6);
                                }
                                if (this.R5.frame_buffer_texture[0] != i9) {
                                    GLES20.glActiveTexture(33991);
                                    GLES20.glBindTexture(3553, this.R5.frame_buffer_texture[0]);
                                    GLES20.glUniform1i(this.x7, 7);
                                }
                            } catch (Throwable th5) {
                                throw th5;
                            }
                        }
                        GLES20.glDrawArrays(5, 0, 4);
                        GLES20.glDisableVertexAttribArray(this.m7);
                        GLES20.glDisableVertexAttribArray(this.o7);
                        GLES20.glDisableVertexAttribArray(this.n7);
                        GLES20.glBindTexture(3553, 0);
                        GLES20.glBindFramebuffer(36160, intBufferAllocate9.get(0));
                        GLES20.glViewport(intBufferAllocate10.get(0), intBufferAllocate10.get(1), intBufferAllocate10.get(2), intBufferAllocate10.get(3));
                        GLES20.glUseProgram(this.mGLProgId);
                        IntBuffer intBufferAllocate11 = IntBuffer.allocate(1);
                        if (this.J9.is_valid) {
                            GLES20.glGetIntegerv(36006, intBufferAllocate11);
                            GLES20.glBindFramebuffer(36160, this.I8.frame_buffer[0]);
                        }
                        floatBuffer.position(0);
                        GLES20.glVertexAttribPointer(this.i8, 2, 5126, false, 0, (Buffer) floatBuffer);
                        GLES20.glEnableVertexAttribArray(this.i8);
                        this.o.position(0);
                        GLES20.glVertexAttribPointer(this.k8, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.k8);
                        floatBuffer2.position(0);
                        GLES20.glVertexAttribPointer(this.j8, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.j8);
                        synchronized (this.h0) {
                            try {
                                this.h8.clear();
                                this.h8.put(o0(fArr2, this.l9));
                                this.h8.position(0);
                                GLES20.glVertexAttribPointer(this.l8, 2, 5126, false, 0, (Buffer) this.h8);
                                GLES20.glEnableVertexAttribArray(this.l8);
                                GLES20.glUniform1f(this.t8, this.N8);
                                GLES20.glUniform1f(this.u8, this.O8);
                                int i31 = this.l9;
                                if (i31 == 0 || i31 == 180) {
                                    GLES20.glUniform1f(this.p8, this.q9);
                                    GLES20.glUniform1f(this.q8, this.r9);
                                    GLES20.glUniform1f(this.r8, ((this.N8 * 0.5f) + this.L8) / this.q9);
                                    i16 = this.s8;
                                    f5 = (this.O8 * 0.5f) + this.M8;
                                    i17 = this.r9;
                                } else {
                                    GLES20.glUniform1f(this.p8, this.r9);
                                    GLES20.glUniform1f(this.q8, this.q9);
                                    GLES20.glUniform1f(this.r8, ((this.N8 * 0.5f) + this.L8) / this.r9);
                                    i16 = this.s8;
                                    f5 = (this.O8 * 0.5f) + this.M8;
                                    i17 = this.q9;
                                }
                                GLES20.glUniform1f(i16, f5 / i17);
                                GLES20.glUniform1f(this.v8, this.s9 * 0.01f * this.t9);
                                GLES20.glUniform1f(this.w8, this.s9 * 0.01f * this.u9);
                                GLES20.glUniform2fv(this.x8, 1, this.m, 0);
                                GLES20.glUniform2fv(this.y8, 1, this.n, 0);
                                if (this.k7.frame_buffer_texture[0] != i9) {
                                    GLES20.glActiveTexture(33984);
                                    GLES20.glBindTexture(3553, this.k7.frame_buffer_texture[0]);
                                    GLES20.glUniform1i(this.m8, 0);
                                }
                                if (this.b8 != i9) {
                                    GLES20.glActiveTexture(i7);
                                    GLES20.glBindTexture(3553, this.b8);
                                    GLES20.glTexImage2D(3553, 0, 6408, this.J8, this.K8, 0, 6408, 5121, this.b9);
                                    GLES20.glUniform1i(this.n8, 1);
                                }
                                if (this.E5.frame_buffer_texture[0] != i9) {
                                    GLES20.glActiveTexture(i6);
                                    GLES20.glBindTexture(3553, this.E5.frame_buffer_texture[0]);
                                    i18 = 2;
                                    GLES20.glUniform1i(this.o8, 2);
                                } else {
                                    i18 = 2;
                                }
                            } catch (Throwable th6) {
                                throw th6;
                            }
                        }
                        GLES20.glDrawArrays(5, 0, 4);
                        GLES20.glDisableVertexAttribArray(this.i8);
                        GLES20.glDisableVertexAttribArray(this.k8);
                        GLES20.glDisableVertexAttribArray(this.j8);
                        GLES20.glBindTexture(3553, 0);
                        if (this.J9.is_valid) {
                            GLES20.glBindFramebuffer(36160, intBufferAllocate11.get(0));
                        }
                        if (this.J9.is_valid) {
                            GLES20.glUseProgram(this.z8);
                            floatBuffer.position(0);
                            GLES20.glVertexAttribPointer(this.A8, 2, 5126, false, 0, (Buffer) floatBuffer);
                            GLES20.glEnableVertexAttribArray(this.A8);
                            floatBuffer2.position(0);
                            GLES20.glVertexAttribPointer(this.B8, 2, 5126, false, 0, (Buffer) floatBuffer2);
                            GLES20.glEnableVertexAttribArray(this.B8);
                            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            GLES20.glClear(16640);
                            GLES20.glUniform1i(this.H8, this.J9.is_valid ? 1 : 0);
                            int i32 = this.G8;
                            CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata liveFaceRegionOccludeMetadata = this.J9;
                            GLES20.glUniform4f(i32, liveFaceRegionOccludeMetadata.mask_roi_normalized_left, liveFaceRegionOccludeMetadata.mask_roi_normalized_right, 1.0f - liveFaceRegionOccludeMetadata.mask_roi_normalized_bottom, 1.0f - liveFaceRegionOccludeMetadata.mask_roi_normalized_top);
                            if (i2 != i9) {
                                GLES20.glActiveTexture(i7);
                                GLES20.glBindTexture(3553, i2);
                                GLES20.glUniform1i(this.C8, 1);
                                i19 = i18;
                            } else {
                                i6 = i7;
                                i19 = 1;
                            }
                            if (this.I8.frame_buffer_texture[0] != i9) {
                                GLES20.glActiveTexture(i6);
                                GLES20.glBindTexture(3553, this.I8.frame_buffer_texture[0]);
                                GLES20.glUniform1i(this.D8, i19);
                                i6++;
                                i19++;
                            }
                            if (this.E8 != i9) {
                                GLES20.glActiveTexture(i6);
                                GLES20.glBindTexture(3553, this.E8);
                                IntBuffer intBufferAllocate12 = IntBuffer.allocate(1);
                                GLES20.glGetIntegerv(3317, intBufferAllocate12);
                                GLES20.glPixelStorei(3317, 1);
                                CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata liveFaceRegionOccludeMetadata2 = this.J9;
                                GLES20.glTexImage2D(3553, 0, 6406, liveFaceRegionOccludeMetadata2.width, liveFaceRegionOccludeMetadata2.height, 0, 6406, 5121, ByteBuffer.wrap(liveFaceRegionOccludeMetadata2.p_buffer));
                                GLES20.glPixelStorei(3317, intBufferAllocate12.get(0));
                                GLES20.glUniform1i(this.F8, i19);
                            }
                            GLES20.glDrawArrays(5, 0, 4);
                            GLES20.glDisableVertexAttribArray(this.A8);
                            GLES20.glDisableVertexAttribArray(this.B8);
                            GLES20.glBindTexture(3553, 0);
                        }
                        f();
                    }
                } catch (Throwable th7) {
                    throw th7;
                }
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter, com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        this.D5 = GLES20.glGetUniformLocation(this.a0, "replay_stroke_texture");
        int iD = OpenGlUtils.d(CLMakeupLiveDecode.a(f.f25708a), CLMakeupLiveDecode.a(f.f25709b));
        this.F5 = iD;
        this.G5 = GLES20.glGetAttribLocation(iD, "position");
        this.H5 = GLES20.glGetAttribLocation(this.F5, "inputTextureCoordinate");
        this.I5 = GLES20.glGetUniformLocation(this.F5, "modelViewProjMatrix");
        this.J5 = GLES20.glGetUniformLocation(this.F5, "normalTransformMatrix");
        this.K5 = GLES20.glGetUniformLocation(this.F5, "projectMatrix");
        this.L5 = GLES20.glGetUniformLocation(this.F5, "inputImageTexture");
        int iD2 = OpenGlUtils.d(CLMakeupLiveDecode.a(d.f25704a), CLMakeupLiveDecode.a(d.f25705b));
        this.S5 = iD2;
        this.T5 = GLES20.glGetAttribLocation(iD2, "position");
        this.U5 = GLES20.glGetAttribLocation(this.S5, "input_texcoord");
        this.V5 = GLES20.glGetUniformLocation(this.S5, "model_view_matrix");
        this.W5 = GLES20.glGetUniformLocation(this.S5, "project_matrix");
        this.X5 = GLES20.glGetUniformLocation(this.S5, "lip_shape_texture_mask");
        this.Y5 = GLES20.glGetUniformLocation(this.S5, "lip_shape_texture_shadow");
        this.Z5 = GLES20.glGetUniformLocation(this.S5, "lip_shape_texture_highlight");
        this.a6 = GLES20.glGetUniformLocation(this.S5, "lip_shape_texture_ombre");
        this.b6 = GLES20.glGetUniformLocation(this.S5, "lip_shape_roi_start_x");
        this.c6 = GLES20.glGetUniformLocation(this.S5, "lip_shape_roi_start_y");
        this.d6 = GLES20.glGetUniformLocation(this.S5, "lip_shape_texture_width");
        this.e6 = GLES20.glGetUniformLocation(this.S5, "lip_shape_texture_height");
        this.f6 = GLES20.glGetUniformLocation(this.S5, "shadow_intensity");
        this.g6 = GLES20.glGetUniformLocation(this.S5, "highlight_intensity");
        int iD3 = OpenGlUtils.d(CLMakeupLiveDecode.a(c.f25702a), CLMakeupLiveDecode.a(c.f25703b));
        this.q6 = iD3;
        this.r6 = GLES20.glGetAttribLocation(iD3, "position");
        this.s6 = GLES20.glGetAttribLocation(this.q6, "inputTextureCoordinate");
        this.t6 = GLES20.glGetAttribLocation(this.q6, "input_lipstick_texture_coordinate");
        this.u6 = GLES20.glGetAttribLocation(this.q6, "input_three_dim_pass_texture_coordinate");
        this.v6 = GLES20.glGetUniformLocation(this.q6, "lip_primer_texture");
        this.x6 = GLES20.glGetUniformLocation(this.q6, "blend_weight_and_level_map_texture");
        this.w6 = GLES20.glGetUniformLocation(this.q6, "lip_shape_pass_texture");
        this.z6 = GLES20.glGetUniformLocation(this.q6, "inputImageTexture");
        this.A6 = GLES20.glGetUniformLocation(this.q6, "rootImageTexture");
        this.y6 = GLES20.glGetUniformLocation(this.q6, "lipstick_texture");
        this.C6 = GLES20.glGetUniformLocation(this.q6, "grid_roi_start");
        this.D6 = GLES20.glGetUniformLocation(this.q6, "grid_roi_end");
        this.I6 = GLES20.glGetUniformLocation(this.q6, "center_x");
        this.J6 = GLES20.glGetUniformLocation(this.q6, "center_y");
        this.K6 = GLES20.glGetUniformLocation(this.q6, "lipstick_width");
        this.L6 = GLES20.glGetUniformLocation(this.q6, "lipstick_height");
        this.E6 = GLES20.glGetUniformLocation(this.q6, "primer_center_x");
        this.F6 = GLES20.glGetUniformLocation(this.q6, "primer_center_y");
        this.G6 = GLES20.glGetUniformLocation(this.q6, "lip_primer_width");
        this.H6 = GLES20.glGetUniformLocation(this.q6, "lip_primer_height");
        this.M6 = GLES20.glGetUniformLocation(this.q6, "background_image_width");
        this.N6 = GLES20.glGetUniformLocation(this.q6, "background_image_height");
        this.B6 = GLES20.glGetUniformLocation(this.q6, "rotation");
        this.O6 = GLES20.glGetUniformLocation(this.q6, "lipstick_color");
        this.P6 = GLES20.glGetUniformLocation(this.q6, "enable_lip_shape");
        this.Q6 = GLES20.glGetUniformLocation(this.q6, "apply_on_original_lips");
        this.R6 = GLES20.glGetUniformLocation(this.q6, "lipstick_layer_count");
        this.S6 = GLES20.glGetUniformLocation(this.q6, "lipstick_blend_weight_and_level_map_texture");
        int iD4 = OpenGlUtils.d(CLMakeupLiveDecode.a(h.f25712a), CLMakeupLiveDecode.a(h.f25713b));
        this.X6 = iD4;
        this.Y6 = GLES20.glGetAttribLocation(iD4, "position");
        this.Z6 = GLES20.glGetAttribLocation(this.X6, "inputTextureCoordinate");
        this.a7 = GLES20.glGetAttribLocation(this.X6, "input_lipstick_texture_coordinate");
        this.b7 = GLES20.glGetUniformLocation(this.X6, "inputImageTexture");
        this.c7 = GLES20.glGetUniformLocation(this.X6, "half_kernel_size");
        this.d7 = GLES20.glGetUniformLocation(this.X6, "frame_width");
        this.e7 = GLES20.glGetUniformLocation(this.X6, "frame_height");
        this.f7 = GLES20.glGetUniformLocation(this.X6, "rotation");
        this.g7 = GLES20.glGetUniformLocation(this.X6, "center_x");
        this.h7 = GLES20.glGetUniformLocation(this.X6, "center_y");
        this.i7 = GLES20.glGetUniformLocation(this.X6, "lipstick_width");
        this.j7 = GLES20.glGetUniformLocation(this.X6, "lipstick_height");
        int iD5 = OpenGlUtils.d(CLMakeupLiveDecode.a(i.f25714a), CLMakeupLiveDecode.a(a.f25700a).concat(CLMakeupLiveDecode.a(b.f25701a)));
        this.l7 = iD5;
        this.m7 = GLES20.glGetAttribLocation(iD5, "position");
        this.n7 = GLES20.glGetAttribLocation(this.l7, "inputTextureCoordinate");
        this.o7 = GLES20.glGetAttribLocation(this.l7, "input_three_dim_pass_texture_coordinate");
        this.p7 = GLES20.glGetAttribLocation(this.l7, "input_lipstick_texture_coordinate");
        this.q7 = GLES20.glGetUniformLocation(this.l7, "inputImageTexture");
        this.r7 = GLES20.glGetUniformLocation(this.l7, "lipstick_texture");
        this.s7 = GLES20.glGetUniformLocation(this.l7, "lipstick_layer_texture");
        this.t7 = GLES20.glGetUniformLocation(this.l7, "lipstick_shimmer_texture");
        this.u7 = GLES20.glGetUniformLocation(this.l7, "blend_weight_and_level_map_texture");
        this.v7 = GLES20.glGetUniformLocation(this.l7, "morphology_pass_texture");
        this.w7 = GLES20.glGetUniformLocation(this.l7, "three_dim_replay_pass_texture");
        this.x7 = GLES20.glGetUniformLocation(this.l7, "lip_shape_pass_texture");
        this.y7 = GLES20.glGetUniformLocation(this.l7, "center_x");
        this.z7 = GLES20.glGetUniformLocation(this.l7, "center_y");
        this.A7 = GLES20.glGetUniformLocation(this.l7, "lipstick_width");
        this.B7 = GLES20.glGetUniformLocation(this.l7, "lipstick_height");
        this.C7 = GLES20.glGetUniformLocation(this.l7, "background_image_width");
        this.D7 = GLES20.glGetUniformLocation(this.l7, "background_image_height");
        this.E7 = GLES20.glGetUniformLocation(this.l7, "lipstick_layer_count");
        this.G7 = GLES20.glGetUniformLocation(this.l7, "lipstick_is_upper_lower_omber");
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.l7, "lipstick_color_0");
        int[] iArr = this.F7;
        iArr[0] = iGlGetUniformLocation;
        iArr[1] = GLES20.glGetUniformLocation(this.l7, "lipstick_color_1");
        this.H7 = GLES20.glGetUniformLocation(this.l7, "gloss_contrast_scale");
        this.I7 = GLES20.glGetUniformLocation(this.l7, "gloss_contrast_shift");
        this.J7 = GLES20.glGetUniformLocation(this.l7, "gloss_contrast_shrink");
        this.K7 = GLES20.glGetUniformLocation(this.l7, "force_bright_threshold");
        this.L7 = GLES20.glGetUniformLocation(this.l7, "use_median");
        this.M7 = GLES20.glGetUniformLocation(this.l7, "shimmer_normalize_factor");
        this.N7 = GLES20.glGetUniformLocation(this.l7, "enable_lipstick");
        this.O7 = GLES20.glGetUniformLocation(this.l7, "enable_color_shimmer");
        this.P7 = GLES20.glGetUniformLocation(this.l7, "shimmer_color");
        this.Q7 = GLES20.glGetUniformLocation(this.l7, "shimmer_intensity");
        this.S7 = GLES20.glGetUniformLocation(this.l7, "enable_replay");
        this.R7 = GLES20.glGetUniformLocation(this.l7, "is_lip_shape");
        this.T7 = GLES20.glGetUniformLocation(this.l7, "primer_gray");
        this.U7 = GLES20.glGetUniformLocation(this.l7, "fullness_strength");
        this.V7 = GLES20.glGetUniformLocation(this.l7, "half_kernel_size");
        this.W7 = GLES20.glGetUniformLocation(this.l7, "rotation");
        this.X7 = GLES20.glGetUniformLocation(this.l7, "wrinkless_strength");
        this.Y7 = GLES20.glGetUniformLocation(this.l7, "fullness_shadow_strength");
        this.Z7 = GLES20.glGetUniformLocation(this.l7, "grid_roi_start");
        this.a8 = GLES20.glGetUniformLocation(this.l7, "grid_roi_end");
        this.i8 = GLES20.glGetAttribLocation(getProgram(), "position");
        this.j8 = GLES20.glGetAttribLocation(getProgram(), "inputTextureCoordinate");
        this.k8 = GLES20.glGetAttribLocation(getProgram(), "input_three_dim_pass_texture_coordinate");
        this.l8 = GLES20.glGetAttribLocation(getProgram(), "input_lipstick_texture_coordinate");
        this.m8 = GLES20.glGetUniformLocation(getProgram(), "inputImageTexture");
        this.n8 = GLES20.glGetUniformLocation(getProgram(), "lipstick_texture");
        this.o8 = GLES20.glGetUniformLocation(getProgram(), "three_dim_pass_texture");
        this.r8 = GLES20.glGetUniformLocation(getProgram(), "center_x");
        this.s8 = GLES20.glGetUniformLocation(getProgram(), "center_y");
        this.t8 = GLES20.glGetUniformLocation(getProgram(), "lipstick_width");
        this.u8 = GLES20.glGetUniformLocation(getProgram(), "lipstick_height");
        this.p8 = GLES20.glGetUniformLocation(getProgram(), "background_image_width");
        this.q8 = GLES20.glGetUniformLocation(getProgram(), "background_image_height");
        this.v8 = GLES20.glGetUniformLocation(getProgram(), "fullness_strength");
        this.w8 = GLES20.glGetUniformLocation(getProgram(), "fullness_shadow_strength");
        this.x8 = GLES20.glGetUniformLocation(getProgram(), "grid_roi_start");
        this.y8 = GLES20.glGetUniformLocation(getProgram(), "grid_roi_end");
        int[] iArr2 = new int[8];
        GLES20.glGenTextures(8, iArr2, 0);
        GLES20.glBindTexture(3553, iArr2[0]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.b8 = iArr2[0];
        GLES20.glBindTexture(3553, iArr2[1]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.c8 = iArr2[1];
        GLES20.glBindTexture(3553, iArr2[2]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.e8 = iArr2[2];
        GLES20.glBindTexture(3553, iArr2[3]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.d8 = iArr2[3];
        GLES20.glBindTexture(3553, iArr2[4]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.C5 = iArr2[4];
        GLES20.glBindTexture(3553, iArr2[5]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.T6 = iArr2[5];
        GLES20.glBindTexture(3553, iArr2[6]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.U6 = iArr2[6];
        GLES20.glBindTexture(3553, iArr2[7]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.V6 = iArr2[7];
        int iD6 = OpenGlUtils.d(CLMakeupLiveDecode.a(L9), CLMakeupLiveDecode.a(M9));
        this.z8 = iD6;
        this.A8 = GLES20.glGetAttribLocation(iD6, "position");
        this.B8 = GLES20.glGetAttribLocation(this.z8, "inputTextureCoordinate");
        this.C8 = GLES20.glGetUniformLocation(this.z8, "inputImageTexture");
        this.D8 = GLES20.glGetUniformLocation(this.z8, "lipstickMakeupTexture");
        this.F8 = GLES20.glGetUniformLocation(this.z8, "makeupMaskTexture");
        this.G8 = GLES20.glGetUniformLocation(this.z8, "makeup_region_roi");
        this.H8 = GLES20.glGetUniformLocation(this.z8, "is_makeup_region_mask_valid");
        GLES20.glGetUniformLocation(this.z8, "is_show_makeup_region_mask");
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter, com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        this.g = i2;
        this.f25446h = i3;
    }

    public final void p0(int i2) {
        this.f8 = i2;
    }

    public final void q0(CLShare3DRelatedClasses.Pass1BufferData pass1BufferData) {
        synchronized (this.v) {
            this.I8 = pass1BufferData;
        }
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter
    public final void r(int i2) {
        this.m9 = i2;
    }

    public final void r0(CLShare3DRelatedClasses.Pass1BufferData pass1BufferData, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData6) {
        synchronized (this.v) {
            this.W6 = pass1BufferData;
            this.p = pass1BufferData2;
            this.E5 = pass1BufferData3;
            this.k7 = pass1BufferData4;
            this.R5 = pass1BufferData5;
            this.p6 = pass1BufferData6;
        }
    }

    public final void s0(int i2) {
        this.E8 = i2;
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class LipStickProfile {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25699b;
        public int feather_strength;
        public int g;
        public int gloss;
        public int level;
        public int level_default;
        public int level_max;
        public int r;
        public int ratio;
        public int shimmer_b;
        public int shimmer_density;
        public int shimmer_g;
        public int shimmer_granularity;
        public int shimmer_intensity;
        public int shimmer_r;
        public int transparency;
        public BlendMode type;

        public LipStickProfile(LipStickProfile lipStickProfile) {
            this.type = lipStickProfile.type;
            this.r = lipStickProfile.r;
            this.g = lipStickProfile.g;
            this.f25699b = lipStickProfile.f25699b;
            this.level = lipStickProfile.level;
            this.level_max = lipStickProfile.level_max;
            this.level_default = lipStickProfile.level_default;
            this.ratio = lipStickProfile.ratio;
            this.feather_strength = lipStickProfile.feather_strength;
            this.gloss = lipStickProfile.gloss;
            this.shimmer_r = lipStickProfile.shimmer_r;
            this.shimmer_g = lipStickProfile.shimmer_g;
            this.shimmer_b = lipStickProfile.shimmer_b;
        }

        public LipStickProfile(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.r = i2;
            this.g = i3;
            this.f25699b = i4;
            this.level_max = i5;
            this.level_default = i6;
            this.ratio = i7;
            this.feather_strength = i8;
            this.level = 0;
            this.gloss = 0;
            this.shimmer_r = 255;
            this.shimmer_g = 255;
            this.shimmer_b = 255;
        }

        public LipStickProfile(BlendMode blendMode, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
            this.type = blendMode;
            this.r = i2;
            this.g = i3;
            this.f25699b = i4;
            this.level = i5;
            this.level_max = i6;
            this.level_default = i7;
            this.ratio = 100;
            this.feather_strength = 0;
            this.gloss = i8;
            this.shimmer_r = i9;
            this.shimmer_g = i10;
            this.shimmer_b = i11;
        }

        public LipStickProfile(BlendMode blendMode, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.type = blendMode;
            this.r = i2;
            this.g = i3;
            this.f25699b = i4;
            this.level = i5;
            this.level_max = i6;
            this.level_default = i7;
            this.ratio = i8;
            this.feather_strength = i9;
            this.gloss = i10;
            this.transparency = i11;
            this.shimmer_r = i12;
            this.shimmer_g = i13;
            this.shimmer_b = i14;
            this.shimmer_intensity = i15;
            this.shimmer_granularity = i16;
            this.shimmer_density = i17;
        }

        public LipStickProfile(int i2, int i3, int i4, int i5, int i6) {
            this.type = BlendMode.values()[0];
            this.r = i2;
            this.g = i3;
            this.f25699b = i4;
            this.level = 0;
            this.level_max = i5;
            this.level_default = i6;
            this.ratio = 100;
            this.feather_strength = 0;
            this.gloss = 0;
            this.shimmer_r = 255;
            this.shimmer_g = 255;
            this.shimmer_b = 255;
        }
    }
}
