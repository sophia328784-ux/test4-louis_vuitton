package com.cyberlink.clgpuimage.cosmetic;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.opengl.GLUtils;
import com.cyberlink.clgpuimage.CLMakeupLiveDecode;
import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.cyberlink.clgpuimage.IBeautyFilter2;
import com.cyberlink.clgpuimage.OpenGlUtils;
import defpackage.tr;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public class CLMakeupLiveFilter extends GPUImageFilter {
    public final h A;
    public final CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[][] A0;
    public int A1;
    public final ByteBuffer[][] A2;
    public final byte[][] A3;
    public final HashMap A4;
    public int A5;
    public int A6;
    public final h B;
    public final CLMakeupLiveEyeFilter.LiveEye3DMetadata[] B0;
    public final int[] B1;
    public final int[] B2;
    public final float[] B3;
    public final ArrayList B4;
    public int B5;
    public final ByteBuffer[] B6;
    public final boolean[] C;
    public final CLMakeupLiveLipStickFilter.LipstickData[] C0;
    public final int[] C1;
    public final ByteBuffer[] C2;
    public final float[] C3;
    public boolean C4;
    public boolean C5;
    public final ByteBuffer[] C6;
    public final CLMakeupLiveEyeContactFilter[] D;
    public final CLMakeupLiveLiplinerFilter.LiplinerData[] D0;
    public final boolean[] D1;
    public final int[][] D2;
    public float[] D3;
    public boolean D4;
    public final CLShare3DRelatedClasses.Pass1BufferData D5;
    public final int[] D6;
    public final CLMakeupLiveEyeFilter[] E;
    public final CLMakeupLiveTeethWhitenFilter.TeethWhitenMetaData[] E0;
    public final Object E1;
    public final ByteBuffer[][] E2;
    public float[] E3;
    public boolean E4;
    public final CLShare3DRelatedClasses.Pass1BufferData E5;
    public final int[] E6;
    public final CLMakeupLiveEyeFilter[] F;
    public final CLMakeupLiveBlushFilter.LiveBlushMakeupdata[] F0;
    public final Object F1;
    public final int[] F2;
    public float F3;
    public boolean F4;
    public final CLShare3DRelatedClasses.Pass1BufferData F5;
    public final boolean[] F6;
    public final l[] G;
    public final CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata[] G0;
    public final Object G1;
    public final ByteBuffer[] G2;
    public float[] G3;
    public CLMakeupLive3DFilter.Object3DEyewearSetting G4;
    public final CLShare3DRelatedClasses.Pass1BufferData G5;
    public boolean G6;
    public final l[] H;
    public final CLMakeupLiveSmoothFilter$LiveSmoothMetadata[] H0;
    public boolean H1;
    public final int[][] H2;
    public float[] H3;
    public CLMakeupLive3DFilter.Object3DEyewearGlassInfo H4;
    public final CLShare3DRelatedClasses.Pass1BufferData H5;
    public IBeautyFilter2.FilterType H6;
    public final CLMakeupLiveBlushFilter[] I;
    public final CLMakeupLiveConcealerFilter.LiveConcealerMetadata[] I0;
    public final int[] I1;
    public final ByteBuffer[][] I2;
    public float I3;
    public final Object I4;
    public final CLShare3DRelatedClasses.Pass1BufferData I5;
    public final HashSet I6;
    public final CLMakeupLiveBlush3DFilter[] J;
    public final CLMakeupLiveFoundationFilter.LiveFoundationData[] J0;
    public final int[] J1;
    public final int[] J2;
    public float[] J3;
    public CLShare3DRelatedClasses.Live3DRenderData[] J4;
    public byte[] J5;
    public final boolean J6;
    public final i[] K;
    public final CLMakeupLiveFoundationFilter.LiveFoundationMeshData[] K0;
    public int K1;
    public final Bitmap[] K2;
    public float[] K3;
    public Bitmap K4;
    public byte[] K5;
    public final Object K6;
    public final CLMakeupLiveBlush3DFilter[][] L;
    public final CLMakeupLiveFaceReshapeFilter.LiveFaceReshapeMetadata[] L0;
    public int L1;
    public final int[][] L2;
    public float L3;
    public int L4;
    public byte[] L5;
    public CLMakeupLiveBlush3DFilter.a[] L6;
    public final i[][] M;
    public final CLMakeupLiveFaceDistortionFilter.LiveFaceDistortionMetadata[] M0;
    public final boolean[] M1;
    public final Bitmap[][] M2;
    public boolean M3;
    public boolean M4;
    public byte[] M5;
    public int[] M6;
    public final CLMakeupLiveLipStickFilter[] N;
    public final CLMakeupLive3DFilter.LiveObject3DMetadata[] N0;
    public final boolean[] N1;
    public CLMakeupLiveEyeFilter.f[] N2;
    public float N3;
    public boolean N4;
    public int N5;
    public final boolean[] N6;
    public final ab[] O;
    public final CLMakeupLive3DFilter.LiveEarringMetadata[] O0;
    public final boolean[] O1;
    public boolean O2;
    public float O3;
    public final CLShare3DRelatedClasses.Pass1BufferData O4;
    public int O5;
    public final boolean[] O6;
    public final CLMakeupLiveLiplinerFilter[] P;
    public final CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata[] P0;
    public final boolean[][] P1;
    public final CLShare3DRelatedClasses.Pass1BufferData P2;
    public boolean P3;
    public final int P4;
    public final Object P5;
    public final byte[][] P6;
    public final CLMakeupLiveTeethWhitenFilter[] Q;
    public final CLStickerLiveFilter.StickerData[] Q0;
    public final boolean[][] Q1;
    public final int Q2;
    public float Q3;
    public final Object Q4;
    public int Q5;
    public final CLShare3DRelatedClasses.Pass1BufferData Q6;
    public final CLMakeupLiveConcealerFilter[] R;
    public final LiveFrameInformation[] R0;
    public final boolean[][] R1;
    public final Object R2;
    public float R3;
    public CLShare3DRelatedClasses.Live3DRenderData[] R4;
    public final int R5;
    public final Object R6;
    public final CLMakeupLiveBronzerFilter[] S;
    public final x.b[] S0;
    public final ByteBuffer[] S1;
    public Bitmap S2;
    public boolean S3;
    public Bitmap S4;
    public final CLShare3DRelatedClasses.Pass1BufferData S5;
    public i.a[] S6;
    public final CLMakeupLiveFoundationFilter[] T;
    public final LiveDynamicRangeMetadata[] T0;
    public final Rect[] T1;
    public CLShare3DRelatedClasses.Live3DHDRTextureData T2;
    public final Object T3;
    public int T4;
    public final CLShare3DRelatedClasses.Pass1BufferData T5;
    public int T6;
    public final CLMakeupLiveFaceReshapeFilter[] U;
    public final CLMakeupLiveHairDyeFilter.HairDyeData[] U0;
    public final Rect[] U1;
    public boolean U2;
    public CLShare3DRelatedClasses.Live3DRenderData[] U3;
    public boolean U4;
    public final boolean[] U5;
    public final CLShare3DRelatedClasses.Pass1BufferData U6;
    public final CLMakeupLiveFaceDistortionFilter[] V;
    public final CLMakeupLive3DEyebrowFilter.LiveEyebrow3DMetadata[] V0;
    public final int[] V1;
    public final CLShare3DRelatedClasses.Pass1BufferData V2;
    public ByteBuffer V3;
    public boolean V4;
    public final CLShare3DRelatedClasses.Pass1BufferData V5;
    public final Object V6;
    public final CLMakeupLive3DFilter[] W;
    public final CLMakeupLive3DEyebrowWarpFilter.LiveEyebrowWarp3DMetadata[] W0;
    public final ByteBuffer[][] W1;
    public final CLShare3DRelatedClasses.Pass1BufferData W2;
    public int W3;
    public final CLShare3DRelatedClasses.Pass1BufferData W4;
    public final CLShare3DRelatedClasses.Pass1BufferData W5;
    public CLMakeupLiveBlush3DFilter.a[][] W6;
    public final CLMakeupLiveFaceArtFilter[] X;
    public final CLMakeupLiveFaceContourFilter.LiveFaceContourMetadata[] X0;
    public final Rect[][] X1;
    public final CLShare3DRelatedClasses.Pass1BufferData X2;
    public int X3;
    public final Object X4;
    public final CLShare3DRelatedClasses.Pass1BufferData X5;
    public int[] X6;
    public final m[] Y;
    public final CLMakeupLiveBronzerFilter.LiveBronzerMetadata[] Y0;
    public final Rect[][] Y1;
    public final Object Y2;
    public int Y3;
    public CLMakeupLiveBronzerFilter.a[] Y4;
    public final CLShare3DRelatedClasses.Pass1BufferData Y5;
    public final boolean[] Y6;
    public final CLMakeupLive3DEyebrowFilter[] Z;
    public final boolean[] Z0;
    public final int[][] Z1;
    public CLShare3DRelatedClasses.Live3DRenderData[] Z2;
    public boolean Z3;
    public Bitmap Z4;
    public final CLShare3DRelatedClasses.Pass1BufferData Z5;
    public Bitmap[] Z6;
    public final CLMakeupLive3DEyebrowWarpFilter[] a0;
    public final int[] a1;
    public final boolean[][] a2;
    public CLShare3DRelatedClasses.Live3DRenderData[] a3;
    public boolean a4;
    public int a5;
    public final CLShare3DRelatedClasses.Pass1BufferData a6;
    public final CLShare3DRelatedClasses.Pass1BufferData a7;
    public final CLMakeupLiveFaceContourFilter[] b0;
    public boolean b1;
    public final Bitmap[] b2;
    public final CLShare3DRelatedClasses.Pass1BufferData b3;
    public CLShare3DRelatedClasses.Live3DRenderData[] b4;
    public boolean b5;
    public final int b6;
    public final Object b7;
    public final n[] c0;
    public final CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearMetaData[] c1;
    public final Rect[] c2;
    public final CLShare3DRelatedClasses.Pass1BufferData c3;
    public ByteBuffer c4;
    public final CLShare3DRelatedClasses.Pass1BufferData c5;
    public final Object c6;
    public int[] c7;
    public final CLStickerLiveFilter[] d0;
    public final LiveFaceRegionOccludeMetadata[] d1;
    public final Rect[] d2;
    public final CLShare3DRelatedClasses.Pass1BufferData d3;
    public int d4;
    public final CLShare3DRelatedClasses.Pass1BufferData d5;
    public boolean d6;
    public final boolean[] d7;
    public final CLMakeupLiveCubeEyewearFilter[] e0;
    public x.a e1;
    public final int[] e2;
    public final CLShare3DRelatedClasses.Pass1BufferData e3;
    public int e4;
    public final CLShare3DRelatedClasses.Pass1BufferData e5;
    public boolean e6;
    public ByteBuffer[] e7;
    public final com.cyberlink.clgpuimage.cosmetic.e[] f0;
    public final Object f1;
    public final Bitmap[][] f2;
    public final CLShare3DRelatedClasses.Pass1BufferData f3;
    public int f4;
    public final CLShare3DRelatedClasses.Pass1BufferData f5;
    public final boolean[] f6;
    public final CLShare3DRelatedClasses.Pass1BufferData f7;
    public final com.cyberlink.clgpuimage.cosmetic.a g0;
    public boolean g1;
    public final Rect[][] g2;
    public final CLShare3DRelatedClasses.Pass1BufferData g3;
    public boolean g4;
    public final CLShare3DRelatedClasses.Pass1BufferData g5;
    public int g6;
    public final Object g7;
    public final com.cyberlink.clgpuimage.cosmetic.a h0;
    public x.a h1;
    public final Rect[][] h2;
    public final int h3;
    public boolean h4;
    public final int h5;
    public int h6;
    public n.a[] h7;
    public final GPUImageFilter i0;
    public final Object i1;
    public final int[][] i2;
    public int i3;
    public final CLShare3DRelatedClasses.Pass1BufferData i4;
    public final Object i5;
    public boolean i6;
    public int i7;
    public final k j0;
    public boolean j1;
    public final boolean[][] j2;
    public int j3;
    public final CLShare3DRelatedClasses.Pass1BufferData j4;
    public CLMakeupLiveFaceContourFilter.a[] j5;
    public final boolean[] j6;
    public int j7;
    public final GPUImageFilter k0;
    public final boolean k1;
    public final Bitmap[] k2;
    public final Object k3;
    public final int k4;
    public Bitmap k5;
    public int k6;
    public final CLShare3DRelatedClasses.Pass1BufferData k7;
    public final x l0;
    public float l1;
    public final Rect[] l2;
    public CLShare3DRelatedClasses.Live3DRenderData[][] l3;
    public final CLShare3DRelatedClasses.Pass1BufferData l4;
    public int l5;
    public final int[] l6;
    public final Object l7;
    public final x m0;
    public float m1;
    public final Rect[] m2;
    public CLShare3DRelatedClasses.Live3DRenderData[] m3;
    public final CLShare3DRelatedClasses.Pass1BufferData m4;
    public Bitmap m5;
    public Bitmap[] m6;
    public final Object m7;
    public final CLMakeupLiveLeftRightFlipFilter n0;
    public final Bitmap[] n1;
    public final int[] n2;
    public final CLShare3DRelatedClasses.Pass1BufferData n3;
    public final int n4;
    public int n5;
    public final Bitmap[][] n6;
    public int n7;
    public int[] o;
    public final CLShowAlignFilter o0;
    public final Bitmap[][] o1;
    public final Bitmap[][] o2;
    public final int o3;
    public final Object o4;
    public Bitmap o5;
    public int[] o6;
    public final Rect o7;
    public int[] p;
    public final j p0;
    public final Object p1;
    public final Rect[][] p2;
    public int[] p3;
    public final ArrayList p4;
    public int p5;
    public final int[][] p6;
    public int p7;
    public int[] q;
    public final CLMakeupLiveHairDyeFilter q0;
    public final Object q1;
    public final Rect[][] q2;
    public final byte[][] q3;
    public final ArrayList q4;
    public Bitmap q5;
    public final boolean[] q6;
    public final Rect q7;
    public int[] r;
    public List r0;
    public final boolean[][] r1;
    public final int[][] r2;
    public final int[] r3;
    public final ArrayList r4;
    public int r5;
    public final Object r6;
    public final Object r7;
    public boolean s;
    public List s0;
    public final boolean[] s1;
    public final boolean[][] s2;
    public final int[] s3;
    public final ArrayList s4;
    public int s5;
    public int s6;
    public int s7;
    public boolean t;
    public List t0;
    public final int[][] t1;
    public final int[][] t2;
    public boolean t3;
    public final ArrayList t4;
    public boolean t5;
    public int t6;
    public final CLShare3DRelatedClasses.Pass1BufferData t7;
    public int[] u;
    public List u0;
    public final int[] u1;
    public final ByteBuffer[][] u2;
    public boolean u3;
    public final ArrayList u4;
    public final CLShare3DRelatedClasses.Pass1BufferData u5;
    public boolean u6;
    public final CLShare3DRelatedClasses.Pass1BufferData u7;
    public volatile int v;
    public List v0;
    public final Object v1;
    public final int[][][] v2;
    public boolean v3;
    public boolean v4;
    public final int v5;
    public final boolean[] v6;
    public final CLShare3DRelatedClasses.Pass1BufferData v7;
    public final int w;
    public final ArrayList w0;
    public final boolean[] w1;
    public final ByteBuffer[][][] w2;
    public boolean w3;
    public boolean w4;
    public final int w5;
    public boolean w6;
    public final CLShare3DRelatedClasses.Pass1BufferData w7;
    public int x;
    public final Object x0;
    public final Bitmap[] x1;
    public final int[] x2;
    public CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo x3;
    public final boolean[][] x4;
    public final Object x5;
    public ByteBuffer x6;
    public int y;
    public final Object y0;
    public final Bitmap[] y1;
    public final ByteBuffer[] y2;
    public final CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo y3;
    public final boolean[][] y4;
    public int y5;
    public ByteBuffer y6;
    public final int z;
    public final CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata[] z0;
    public int z1;
    public final int[][] z2;
    public byte[] z3;
    public final HashMap z4;
    public int z5;
    public int z6;
    public static final int x7 = MakeupLiveFeatures.EYECONTACTS.ordinal();
    public static final int y7 = MakeupLiveFeatures.EYELINER.ordinal();
    public static final int z7 = MakeupLiveFeatures.EYESHADOW.ordinal();
    public static final int A7 = MakeupLiveFeatures.EYELINER_PROTECT_MASK.ordinal();
    public static final int B7 = MakeupLiveFeatures.EYESHADOW_PROTECT_MASK.ordinal();
    public static final int C7 = MakeupLiveFeatures.LIPSTICK.ordinal();
    public static final int D7 = MakeupLiveFeatures.LIPLINER.ordinal();
    public static final int E7 = MakeupLiveFeatures.SMOOTH.ordinal();
    public static final int F7 = MakeupLiveFeatures.SMOOTH_V2.ordinal();
    public static final int G7 = MakeupLiveFeatures.BLUSH.ordinal();
    public static final int H7 = MakeupLiveFeatures.BLUSH3D.ordinal();
    public static final int I7 = MakeupLiveFeatures.BLUSH3DV2_LAYER1.ordinal();
    public static final int J7 = MakeupLiveFeatures.BLUSH3DV2_LAYER2.ordinal();
    public static final int K7 = MakeupLiveFeatures.BLUSH3DV2_LAYER3.ordinal();
    public static final int L7 = MakeupLiveFeatures.BLUSH3D_PROTECT_MASK.ordinal();
    public static final int M7 = MakeupLiveFeatures.BLUSH3DV2_LAYER1_PROTECT_MASK.ordinal();
    public static final int N7 = MakeupLiveFeatures.BLUSH3DV2_LAYER2_PROTECT_MASK.ordinal();
    public static final int O7 = MakeupLiveFeatures.BLUSH3DV2_LAYER3_PROTECT_MASK.ordinal();
    public static final int P7 = MakeupLiveFeatures.EYELASH.ordinal();
    public static final int Q7 = MakeupLiveFeatures.EYEBROW_WARP.ordinal();
    public static final int R7 = MakeupLiveFeatures.EYEBROW.ordinal();
    public static final int S7 = MakeupLiveFeatures.FACE_CONTOUR.ordinal();
    public static final int T7 = MakeupLiveFeatures.FACE_CONTOUR_PROTECT_MASK.ordinal();
    public static final int U7 = MakeupLiveFeatures.CONCEALER.ordinal();
    public static final int V7 = MakeupLiveFeatures.BRONZER.ordinal();
    public static final int W7 = MakeupLiveFeatures.FOUNDATION.ordinal();
    public static final int X7 = MakeupLiveFeatures.FACEART.ordinal();
    public static final int Y7 = MakeupLiveFeatures.FACEART_LAYER2.ordinal();
    public static final int Z7 = MakeupLiveFeatures.TEETH_WHITEN.ordinal();
    public static final int a8 = MakeupLiveFeatures.FACE_RESHAPE.ordinal();
    public static final int b8 = MakeupLiveFeatures.FACE_DISTORTION.ordinal();
    public static final int c8 = MakeupLiveFeatures.OBJECT3D.ordinal();
    public static final int d8 = MakeupLiveFeatures.STICKER.ordinal();
    public static final int e8 = MakeupLiveFeatures.COLOR.ordinal();
    public static final int f8 = MakeupLiveFeatures.EXPOSURE.ordinal();
    public static final int g8 = MakeupLiveFeatures.HAIR_DYE.ordinal();
    public static final int h8 = MakeupLiveFeatures.CUBE_EYEWEAR.ordinal();
    public static final int i8 = MakeupLiveFeatures.EARRING.ordinal();

    public static class LiveDynamicRangeMetadata {
        float min_luma = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float max_luma = 1.0f;
        float min_luma_for_earring = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float max_luma_for_earring = 1.0f;
        float[] min_rgb = new float[3];
        float[] max_rgb = new float[3];
        float[] left_min_rgb = new float[3];
        float[] left_max_rgb = new float[3];
        float[] right_min_rgb = new float[3];
        float[] right_max_rgb = new float[3];

        public LiveDynamicRangeMetadata() {
            for (int i2 = 0; i2 < 3; i2++) {
                float[] fArr = this.min_rgb;
                float[] fArr2 = this.left_min_rgb;
                this.right_min_rgb[i2] = 0.0f;
                fArr2[i2] = 0.0f;
                fArr[i2] = 0.0f;
                float[] fArr3 = this.max_rgb;
                float[] fArr4 = this.left_max_rgb;
                this.right_max_rgb[i2] = 1.0f;
                fArr4[i2] = 1.0f;
                fArr3[i2] = 1.0f;
            }
        }

        public void Copy(LiveDynamicRangeMetadata liveDynamicRangeMetadata) {
            this.min_luma = liveDynamicRangeMetadata.min_luma;
            this.max_luma = liveDynamicRangeMetadata.max_luma;
            this.min_luma_for_earring = liveDynamicRangeMetadata.min_luma_for_earring;
            this.max_luma_for_earring = liveDynamicRangeMetadata.max_luma_for_earring;
            System.arraycopy(liveDynamicRangeMetadata.min_rgb, 0, this.min_rgb, 0, 3);
            System.arraycopy(liveDynamicRangeMetadata.max_rgb, 0, this.max_rgb, 0, 3);
            System.arraycopy(liveDynamicRangeMetadata.left_min_rgb, 0, this.left_min_rgb, 0, 3);
            System.arraycopy(liveDynamicRangeMetadata.left_max_rgb, 0, this.left_max_rgb, 0, 3);
            System.arraycopy(liveDynamicRangeMetadata.right_min_rgb, 0, this.right_min_rgb, 0, 3);
            System.arraycopy(liveDynamicRangeMetadata.right_max_rgb, 0, this.right_max_rgb, 0, 3);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class LiveEyebrow3DTemplate {
        public ByteBuffer eyebrow3d_template;
        public int texture_height;
        public int texture_width;

        public LiveEyebrow3DTemplate() {
            Clear();
        }

        public void Clear() {
            this.eyebrow3d_template = null;
            this.texture_width = 0;
            this.texture_height = 0;
        }

        public boolean IsUseTexture() {
            return this.texture_width > 0 && this.texture_height > 0 && this.eyebrow3d_template != null;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class LiveFaceArtTemplate {
        public Bitmap faceart_template;
        public int texture_height;
        public int texture_width;

        public LiveFaceArtTemplate() {
            Clear();
        }

        public void Clear() {
            this.faceart_template = null;
            this.texture_width = 0;
            this.texture_height = 0;
        }

        public boolean IsUseTexture() {
            return this.texture_width > 0 && this.texture_height > 0 && this.faceart_template != null;
        }
    }

    public static class LiveFaceRegionOccludeMetadata {
        public boolean is_valid = false;
        int height = 0;
        int width = 0;
        public byte[] p_buffer = null;
        float mask_roi_normalized_left = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float mask_roi_normalized_top = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float mask_roi_normalized_right = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float mask_roi_normalized_bottom = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        public void AllocByteArray(int i2, int i3) {
            this.width = i2;
            this.height = i3;
            this.p_buffer = new byte[i2 * i3];
        }

        public void Copy(LiveFaceRegionOccludeMetadata liveFaceRegionOccludeMetadata) {
            this.is_valid = liveFaceRegionOccludeMetadata.is_valid;
            if (!liveFaceRegionOccludeMetadata.is_valid || liveFaceRegionOccludeMetadata.p_buffer == null) {
                return;
            }
            int i2 = this.width;
            int i3 = liveFaceRegionOccludeMetadata.width;
            if (i2 != i3 || this.height != liveFaceRegionOccludeMetadata.height || this.p_buffer == null) {
                AllocByteArray(i3, liveFaceRegionOccludeMetadata.height);
            }
            byte[] bArr = liveFaceRegionOccludeMetadata.p_buffer;
            byte[] bArr2 = this.p_buffer;
            int i4 = this.width * this.height;
            int i5 = CLMakeupLiveFilter.x7;
            System.arraycopy(bArr, 0, bArr2, 0, i4);
            this.mask_roi_normalized_left = liveFaceRegionOccludeMetadata.mask_roi_normalized_left;
            this.mask_roi_normalized_top = liveFaceRegionOccludeMetadata.mask_roi_normalized_top;
            this.mask_roi_normalized_right = liveFaceRegionOccludeMetadata.mask_roi_normalized_right;
            this.mask_roi_normalized_bottom = liveFaceRegionOccludeMetadata.mask_roi_normalized_bottom;
        }
    }

    public static class LiveFrameInformation {
        public int face_size;
        public ArrayList<PointF> feature_points = new ArrayList<>();
        public boolean is_flipped;
        public boolean is_mask_detected;
        public int rotation;

        public void Copy(LiveFrameInformation liveFrameInformation) {
            this.feature_points = new ArrayList<>(liveFrameInformation.feature_points);
            this.rotation = liveFrameInformation.rotation;
            this.is_flipped = liveFrameInformation.is_flipped;
            this.face_size = liveFrameInformation.face_size;
            this.is_mask_detected = liveFrameInformation.is_mask_detected;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MakeupLiveFeatures {
        public static final MakeupLiveFeatures BLUSH;
        public static final MakeupLiveFeatures BLUSH3D;
        public static final MakeupLiveFeatures BLUSH3DV2_LAYER1;
        public static final MakeupLiveFeatures BLUSH3DV2_LAYER1_PROTECT_MASK;
        public static final MakeupLiveFeatures BLUSH3DV2_LAYER2;
        public static final MakeupLiveFeatures BLUSH3DV2_LAYER2_PROTECT_MASK;
        public static final MakeupLiveFeatures BLUSH3DV2_LAYER3;
        public static final MakeupLiveFeatures BLUSH3DV2_LAYER3_PROTECT_MASK;
        public static final MakeupLiveFeatures BLUSH3D_PROTECT_MASK;
        public static final MakeupLiveFeatures BRONZER;
        public static final MakeupLiveFeatures COLOR;
        public static final MakeupLiveFeatures CONCEALER;
        public static final MakeupLiveFeatures CUBE_EYEWEAR;
        public static final MakeupLiveFeatures EARRING;
        public static final MakeupLiveFeatures EXPOSURE;
        public static final MakeupLiveFeatures EYEBROW;
        public static final MakeupLiveFeatures EYEBROW_WARP;
        public static final MakeupLiveFeatures EYECONTACTS;
        public static final MakeupLiveFeatures EYELASH;
        public static final MakeupLiveFeatures EYELINER;
        public static final MakeupLiveFeatures EYELINER_PROTECT_MASK;
        public static final MakeupLiveFeatures EYESHADOW;
        public static final MakeupLiveFeatures EYESHADOW_PROTECT_MASK;
        public static final MakeupLiveFeatures FACEART;
        public static final MakeupLiveFeatures FACEART_LAYER2;
        public static final MakeupLiveFeatures FACE_CONTOUR;
        public static final MakeupLiveFeatures FACE_CONTOUR_PROTECT_MASK;
        public static final MakeupLiveFeatures FACE_DISTORTION;
        public static final MakeupLiveFeatures FACE_RESHAPE;
        public static final MakeupLiveFeatures FOUNDATION;
        public static final MakeupLiveFeatures HAIR_DYE;
        public static final MakeupLiveFeatures LIPLINER;
        public static final MakeupLiveFeatures LIPSTICK;
        public static final MakeupLiveFeatures OBJECT3D;
        public static final MakeupLiveFeatures SMOOTH;
        public static final MakeupLiveFeatures SMOOTH_V2;
        public static final MakeupLiveFeatures STICKER;
        public static final MakeupLiveFeatures TEETH_WHITEN;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ MakeupLiveFeatures[] f25659a;

        static {
            MakeupLiveFeatures makeupLiveFeatures = new MakeupLiveFeatures("EYECONTACTS", 0);
            EYECONTACTS = makeupLiveFeatures;
            MakeupLiveFeatures makeupLiveFeatures2 = new MakeupLiveFeatures("EYELINER", 1);
            EYELINER = makeupLiveFeatures2;
            MakeupLiveFeatures makeupLiveFeatures3 = new MakeupLiveFeatures("EYELINER_PROTECT_MASK", 2);
            EYELINER_PROTECT_MASK = makeupLiveFeatures3;
            MakeupLiveFeatures makeupLiveFeatures4 = new MakeupLiveFeatures("EYESHADOW", 3);
            EYESHADOW = makeupLiveFeatures4;
            MakeupLiveFeatures makeupLiveFeatures5 = new MakeupLiveFeatures("EYESHADOW_PROTECT_MASK", 4);
            EYESHADOW_PROTECT_MASK = makeupLiveFeatures5;
            MakeupLiveFeatures makeupLiveFeatures6 = new MakeupLiveFeatures("LIPLINER", 5);
            LIPLINER = makeupLiveFeatures6;
            MakeupLiveFeatures makeupLiveFeatures7 = new MakeupLiveFeatures("LIPSTICK", 6);
            LIPSTICK = makeupLiveFeatures7;
            MakeupLiveFeatures makeupLiveFeatures8 = new MakeupLiveFeatures("HAIR_DYE", 7);
            HAIR_DYE = makeupLiveFeatures8;
            MakeupLiveFeatures makeupLiveFeatures9 = new MakeupLiveFeatures("SMOOTH", 8);
            SMOOTH = makeupLiveFeatures9;
            MakeupLiveFeatures makeupLiveFeatures10 = new MakeupLiveFeatures("SMOOTH_V2", 9);
            SMOOTH_V2 = makeupLiveFeatures10;
            MakeupLiveFeatures makeupLiveFeatures11 = new MakeupLiveFeatures("BLUSH", 10);
            BLUSH = makeupLiveFeatures11;
            MakeupLiveFeatures makeupLiveFeatures12 = new MakeupLiveFeatures("BLUSH3D", 11);
            BLUSH3D = makeupLiveFeatures12;
            MakeupLiveFeatures makeupLiveFeatures13 = new MakeupLiveFeatures("BLUSH3DV2_LAYER1", 12);
            BLUSH3DV2_LAYER1 = makeupLiveFeatures13;
            MakeupLiveFeatures makeupLiveFeatures14 = new MakeupLiveFeatures("BLUSH3DV2_LAYER2", 13);
            BLUSH3DV2_LAYER2 = makeupLiveFeatures14;
            MakeupLiveFeatures makeupLiveFeatures15 = new MakeupLiveFeatures("BLUSH3DV2_LAYER3", 14);
            BLUSH3DV2_LAYER3 = makeupLiveFeatures15;
            MakeupLiveFeatures makeupLiveFeatures16 = new MakeupLiveFeatures("BLUSH3D_PROTECT_MASK", 15);
            BLUSH3D_PROTECT_MASK = makeupLiveFeatures16;
            MakeupLiveFeatures makeupLiveFeatures17 = new MakeupLiveFeatures("BLUSH3DV2_LAYER1_PROTECT_MASK", 16);
            BLUSH3DV2_LAYER1_PROTECT_MASK = makeupLiveFeatures17;
            MakeupLiveFeatures makeupLiveFeatures18 = new MakeupLiveFeatures("BLUSH3DV2_LAYER2_PROTECT_MASK", 17);
            BLUSH3DV2_LAYER2_PROTECT_MASK = makeupLiveFeatures18;
            MakeupLiveFeatures makeupLiveFeatures19 = new MakeupLiveFeatures("BLUSH3DV2_LAYER3_PROTECT_MASK", 18);
            BLUSH3DV2_LAYER3_PROTECT_MASK = makeupLiveFeatures19;
            MakeupLiveFeatures makeupLiveFeatures20 = new MakeupLiveFeatures("EYELASH", 19);
            EYELASH = makeupLiveFeatures20;
            MakeupLiveFeatures makeupLiveFeatures21 = new MakeupLiveFeatures("EYEBROW_WARP", 20);
            EYEBROW_WARP = makeupLiveFeatures21;
            MakeupLiveFeatures makeupLiveFeatures22 = new MakeupLiveFeatures("EYEBROW", 21);
            EYEBROW = makeupLiveFeatures22;
            MakeupLiveFeatures makeupLiveFeatures23 = new MakeupLiveFeatures("FACE_CONTOUR", 22);
            FACE_CONTOUR = makeupLiveFeatures23;
            MakeupLiveFeatures makeupLiveFeatures24 = new MakeupLiveFeatures("FACE_CONTOUR_PROTECT_MASK", 23);
            FACE_CONTOUR_PROTECT_MASK = makeupLiveFeatures24;
            MakeupLiveFeatures makeupLiveFeatures25 = new MakeupLiveFeatures("CONCEALER", 24);
            CONCEALER = makeupLiveFeatures25;
            MakeupLiveFeatures makeupLiveFeatures26 = new MakeupLiveFeatures("BRONZER", 25);
            BRONZER = makeupLiveFeatures26;
            MakeupLiveFeatures makeupLiveFeatures27 = new MakeupLiveFeatures("FOUNDATION", 26);
            FOUNDATION = makeupLiveFeatures27;
            MakeupLiveFeatures makeupLiveFeatures28 = new MakeupLiveFeatures("FACEART", 27);
            FACEART = makeupLiveFeatures28;
            MakeupLiveFeatures makeupLiveFeatures29 = new MakeupLiveFeatures("FACEART_LAYER2", 28);
            FACEART_LAYER2 = makeupLiveFeatures29;
            MakeupLiveFeatures makeupLiveFeatures30 = new MakeupLiveFeatures("TEETH_WHITEN", 29);
            TEETH_WHITEN = makeupLiveFeatures30;
            MakeupLiveFeatures makeupLiveFeatures31 = new MakeupLiveFeatures("FACE_RESHAPE", 30);
            FACE_RESHAPE = makeupLiveFeatures31;
            MakeupLiveFeatures makeupLiveFeatures32 = new MakeupLiveFeatures("FACE_DISTORTION", 31);
            FACE_DISTORTION = makeupLiveFeatures32;
            MakeupLiveFeatures makeupLiveFeatures33 = new MakeupLiveFeatures("OBJECT3D", 32);
            OBJECT3D = makeupLiveFeatures33;
            MakeupLiveFeatures makeupLiveFeatures34 = new MakeupLiveFeatures("CUBE_EYEWEAR", 33);
            CUBE_EYEWEAR = makeupLiveFeatures34;
            MakeupLiveFeatures makeupLiveFeatures35 = new MakeupLiveFeatures("STICKER", 34);
            STICKER = makeupLiveFeatures35;
            MakeupLiveFeatures makeupLiveFeatures36 = new MakeupLiveFeatures("COLOR", 35);
            COLOR = makeupLiveFeatures36;
            MakeupLiveFeatures makeupLiveFeatures37 = new MakeupLiveFeatures("EXPOSURE", 36);
            EXPOSURE = makeupLiveFeatures37;
            MakeupLiveFeatures makeupLiveFeatures38 = new MakeupLiveFeatures("EARRING", 37);
            EARRING = makeupLiveFeatures38;
            f25659a = new MakeupLiveFeatures[]{makeupLiveFeatures, makeupLiveFeatures2, makeupLiveFeatures3, makeupLiveFeatures4, makeupLiveFeatures5, makeupLiveFeatures6, makeupLiveFeatures7, makeupLiveFeatures8, makeupLiveFeatures9, makeupLiveFeatures10, makeupLiveFeatures11, makeupLiveFeatures12, makeupLiveFeatures13, makeupLiveFeatures14, makeupLiveFeatures15, makeupLiveFeatures16, makeupLiveFeatures17, makeupLiveFeatures18, makeupLiveFeatures19, makeupLiveFeatures20, makeupLiveFeatures21, makeupLiveFeatures22, makeupLiveFeatures23, makeupLiveFeatures24, makeupLiveFeatures25, makeupLiveFeatures26, makeupLiveFeatures27, makeupLiveFeatures28, makeupLiveFeatures29, makeupLiveFeatures30, makeupLiveFeatures31, makeupLiveFeatures32, makeupLiveFeatures33, makeupLiveFeatures34, makeupLiveFeatures35, makeupLiveFeatures36, makeupLiveFeatures37, makeupLiveFeatures38};
        }

        public static MakeupLiveFeatures valueOf(String str) {
            return (MakeupLiveFeatures) Enum.valueOf(MakeupLiveFeatures.class, str);
        }

        public static MakeupLiveFeatures[] values() {
            return (MakeupLiveFeatures[]) f25659a.clone();
        }
    }

    /* JADX WARN: Enum class init method not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f25660a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f25661b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f25662c = 3;
        public static final int d = 4;
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ArrayList f25663a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public HashMap f25664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public HashMap f25665c;
    }

    /* JADX WARN: Enum class init method not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f25666a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static int f25667b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static int f25668c = 3;
    }

    /* JADX WARN: Enum class init method not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f25669a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f25670b = 2;
    }

    /* JADX WARN: Enum class init method not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f25671a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f25672b = 2;
    }

    public class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Bitmap f25673a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f25675c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f25674b = new ArrayList();
        public int d = -1;

        public f(Bitmap bitmap, int i2) {
            this.f25673a = bitmap;
            this.f25675c = i2;
        }
    }

    /* JADX WARN: Enum class init method not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f25676a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f25677b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f25678c = 3;
        public static final int d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f25679e = 5;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f25680f = 6;
    }

    public class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f25681a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean[] f25682b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean[] f25683c = new boolean[MakeupLiveFeatures.values().length];
        public int d = a.f25660a;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f25684e = false;
    }

    public CLMakeupLiveFilter(int i2, int i3, PointF[] pointFArr) {
        this.u = null;
        this.v = -1;
        this.w = c.f25666a;
        this.x = 0;
        this.y = 0;
        this.z = 3;
        this.C = new boolean[3];
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.o0 = null;
        this.p0 = null;
        this.q0 = null;
        this.r0 = null;
        this.s0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        this.x0 = new Object();
        this.y0 = new Object();
        this.b1 = false;
        this.f1 = new Object();
        this.g1 = false;
        this.i1 = new Object();
        this.j1 = false;
        this.k1 = true;
        this.l1 = 1.0f;
        this.m1 = 0.5f;
        this.n1 = new Bitmap[2];
        this.o1 = new Bitmap[3][];
        this.p1 = new Object();
        this.q1 = new Object();
        this.r1 = new boolean[3][];
        this.s1 = new boolean[2];
        this.t1 = new int[3][];
        this.u1 = new int[2];
        this.v1 = new Object();
        this.w1 = new boolean[3];
        this.x1 = new Bitmap[3];
        this.y1 = new Bitmap[3];
        this.z1 = -1;
        this.A1 = -1;
        this.B1 = new int[3];
        this.C1 = new int[3];
        this.D1 = new boolean[3];
        this.E1 = new Object();
        this.F1 = new Object();
        this.G1 = new Object();
        this.H1 = false;
        this.I1 = new int[2];
        this.J1 = new int[2];
        this.M1 = new boolean[2];
        this.N1 = new boolean[2];
        this.O1 = new boolean[2];
        Class cls = Boolean.TYPE;
        this.P1 = (boolean[][]) Array.newInstance((Class<?>) cls, 3, 2);
        this.Q1 = (boolean[][]) Array.newInstance((Class<?>) cls, 3, 2);
        this.R1 = (boolean[][]) Array.newInstance((Class<?>) cls, 3, 2);
        this.S1 = new ByteBuffer[2];
        this.T1 = new Rect[2];
        this.U1 = new Rect[2];
        this.V1 = new int[2];
        this.W1 = (ByteBuffer[][]) Array.newInstance((Class<?>) ByteBuffer.class, 3, 2);
        this.X1 = (Rect[][]) Array.newInstance((Class<?>) Rect.class, 3, 2);
        this.Y1 = (Rect[][]) Array.newInstance((Class<?>) Rect.class, 3, 2);
        Class cls2 = Integer.TYPE;
        this.Z1 = (int[][]) Array.newInstance((Class<?>) cls2, 3, 2);
        this.a2 = (boolean[][]) Array.newInstance((Class<?>) cls, 3, 2);
        this.b2 = new Bitmap[2];
        this.c2 = new Rect[2];
        this.d2 = new Rect[2];
        this.e2 = new int[2];
        this.f2 = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 3, 2);
        this.g2 = (Rect[][]) Array.newInstance((Class<?>) Rect.class, 3, 2);
        this.h2 = (Rect[][]) Array.newInstance((Class<?>) Rect.class, 3, 2);
        this.i2 = (int[][]) Array.newInstance((Class<?>) cls2, 3, 2);
        this.j2 = (boolean[][]) Array.newInstance((Class<?>) cls, 3, 2);
        this.k2 = new Bitmap[2];
        this.l2 = new Rect[2];
        this.m2 = new Rect[2];
        this.n2 = new int[2];
        this.o2 = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 3, 2);
        this.p2 = (Rect[][]) Array.newInstance((Class<?>) Rect.class, 3, 2);
        this.q2 = (Rect[][]) Array.newInstance((Class<?>) Rect.class, 3, 2);
        this.r2 = (int[][]) Array.newInstance((Class<?>) cls2, 3, 2);
        this.s2 = (boolean[][]) Array.newInstance((Class<?>) cls, 3, 2);
        this.t2 = new int[2][];
        this.u2 = new ByteBuffer[2][];
        this.v2 = (int[][][]) Array.newInstance((Class<?>) int[].class, 3, 2);
        this.w2 = (ByteBuffer[][][]) Array.newInstance((Class<?>) ByteBuffer[].class, 3, 2);
        this.x2 = new int[2];
        this.y2 = new ByteBuffer[2];
        this.z2 = (int[][]) Array.newInstance((Class<?>) cls2, 3, 2);
        this.A2 = (ByteBuffer[][]) Array.newInstance((Class<?>) ByteBuffer.class, 3, 2);
        this.B2 = new int[2];
        this.C2 = new ByteBuffer[2];
        this.D2 = (int[][]) Array.newInstance((Class<?>) cls2, 3, 2);
        this.E2 = (ByteBuffer[][]) Array.newInstance((Class<?>) ByteBuffer.class, 3, 2);
        this.F2 = new int[2];
        this.G2 = new ByteBuffer[2];
        this.H2 = (int[][]) Array.newInstance((Class<?>) cls2, 3, 2);
        this.I2 = (ByteBuffer[][]) Array.newInstance((Class<?>) ByteBuffer.class, 3, 2);
        this.J2 = new int[2];
        this.K2 = new Bitmap[2];
        this.L2 = (int[][]) Array.newInstance((Class<?>) cls2, 3, 2);
        this.M2 = (Bitmap[][]) Array.newInstance((Class<?>) Bitmap.class, 3, 2);
        this.P2 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.R2 = new Object();
        this.V2 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.W2 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.X2 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.Y2 = new Object();
        this.b3 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.c3 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.d3 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.e3 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.f3 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.g3 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.i3 = 0;
        this.j3 = 0;
        this.k3 = new Object();
        this.n3 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.p3 = new int[]{-1, -1, -1, -1, -1, -1};
        this.q3 = new byte[][]{null, null, null, null, null, null};
        this.r3 = new int[]{0, 0, 0, 0, 0, 0};
        this.s3 = new int[]{0, 0, 0, 0, 0, 0};
        this.t3 = false;
        this.u3 = false;
        this.v3 = false;
        this.w3 = false;
        this.y3 = new CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo();
        this.z3 = null;
        this.A3 = new byte[][]{null, null, null};
        this.B3 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 50.0f, 100.0f};
        this.C3 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 50.0f, 100.0f};
        this.D3 = null;
        this.E3 = null;
        this.F3 = -1.0f;
        this.G3 = null;
        this.H3 = null;
        this.I3 = -1.0f;
        this.J3 = null;
        this.K3 = null;
        this.L3 = -1.0f;
        this.M3 = false;
        this.N3 = -1.0f;
        this.O3 = -1.0f;
        this.P3 = false;
        this.Q3 = -1.0f;
        this.R3 = -1.0f;
        this.S3 = true;
        this.T3 = new Object();
        this.Y3 = -1;
        this.Z3 = false;
        this.a4 = false;
        this.f4 = -1;
        this.g4 = false;
        this.h4 = false;
        this.i4 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.j4 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.l4 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.m4 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.o4 = new Object();
        this.p4 = new ArrayList();
        this.q4 = new ArrayList();
        this.r4 = new ArrayList();
        this.s4 = new ArrayList();
        this.t4 = new ArrayList();
        this.u4 = new ArrayList();
        this.v4 = false;
        this.w4 = false;
        this.x4 = (boolean[][]) Array.newInstance((Class<?>) cls, 3, MakeupLiveFeatures.values().length);
        this.y4 = (boolean[][]) Array.newInstance((Class<?>) cls, 3, MakeupLiveFeatures.values().length);
        this.z4 = new HashMap();
        this.A4 = new HashMap();
        this.B4 = new ArrayList();
        this.C4 = false;
        this.D4 = false;
        this.E4 = false;
        this.F4 = false;
        this.G4 = new CLMakeupLive3DFilter.Object3DEyewearSetting();
        this.H4 = new CLMakeupLive3DFilter.Object3DEyewearGlassInfo();
        this.I4 = new Object();
        this.L4 = -1;
        this.M4 = false;
        this.N4 = false;
        this.O4 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.Q4 = new Object();
        this.T4 = -1;
        this.U4 = false;
        this.V4 = false;
        this.W4 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.X4 = new Object();
        this.a5 = -1;
        this.b5 = false;
        this.c5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.d5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.e5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.f5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.g5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.i5 = new Object();
        this.l5 = -1;
        this.n5 = -1;
        this.p5 = -1;
        this.r5 = -1;
        this.s5 = -1;
        this.t5 = false;
        this.u5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.x5 = new Object();
        this.y5 = -1;
        this.z5 = -1;
        this.A5 = -1;
        this.B5 = -1;
        this.C5 = false;
        this.D5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.E5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.F5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.G5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.H5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.I5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.J5 = null;
        this.K5 = null;
        this.L5 = null;
        this.M5 = null;
        this.N5 = 0;
        this.O5 = 0;
        this.P5 = new Object();
        this.Q5 = -1;
        this.S5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.T5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.U5 = new boolean[3];
        this.V5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.W5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.X5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.Y5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.Z5 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.a6 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.c6 = new Object();
        this.d6 = false;
        this.e6 = false;
        this.f6 = new boolean[3];
        this.g6 = 0;
        this.h6 = 0;
        this.i6 = false;
        this.j6 = new boolean[3];
        this.l6 = new int[3];
        this.n6 = new Bitmap[3][];
        this.p6 = new int[3][];
        this.q6 = new boolean[3];
        this.r6 = new Object();
        this.u6 = false;
        this.v6 = new boolean[3];
        this.w6 = false;
        this.z6 = -1;
        this.A6 = -1;
        this.F6 = new boolean[3];
        this.G6 = true;
        this.H6 = IBeautyFilter2.FilterType.LIVE_SMOOTH;
        this.I6 = new HashSet();
        this.J6 = false;
        this.K6 = new Object();
        this.M6 = new int[]{-1, -1, -1};
        this.N6 = new boolean[]{false, false, false};
        this.O6 = new boolean[]{false, false, false};
        this.P6 = new byte[][]{null, null, null};
        this.Q6 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.R6 = new Object();
        this.T6 = -1;
        this.U6 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.V6 = new Object();
        this.X6 = new int[3];
        this.Y6 = new boolean[3];
        this.Z6 = new Bitmap[3];
        this.a7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.b7 = new Object();
        this.c7 = new int[3];
        this.d7 = new boolean[3];
        this.e7 = new ByteBuffer[3];
        this.f7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.g7 = new Object();
        this.i7 = -1;
        this.j7 = -1;
        this.k7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.l7 = new Object();
        this.m7 = new Object();
        this.n7 = -1;
        this.o7 = new Rect();
        new Rect();
        this.p7 = -1;
        this.q7 = new Rect();
        new Rect();
        this.r7 = new Object();
        this.s7 = -1;
        this.t7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.u7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.v7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.w7 = new CLShare3DRelatedClasses.Pass1BufferData();
        for (int i4 = 0; i4 < 3; i4++) {
            for (int i5 = 0; i5 < MakeupLiveFeatures.values().length; i5++) {
                this.x4[i4][i5] = true;
                this.y4[i4][i5] = true;
            }
        }
        this.B6 = new ByteBuffer[3];
        this.C6 = new ByteBuffer[3];
        this.D6 = new int[3];
        this.E6 = new int[3];
        for (int i6 = 0; i6 < 3; i6++) {
            this.D6[i6] = -1;
            this.E6[i6] = -1;
        }
        for (int i7 = 0; i7 < 3; i7++) {
            this.B1[i7] = -1;
            this.C1[i7] = -1;
        }
        h hVar = new h();
        this.A = hVar;
        h hVar2 = new h();
        this.B = hVar2;
        this.w0 = new ArrayList();
        hVar.f25682b = new boolean[3];
        hVar2.f25682b = new boolean[3];
        hVar.f25683c[x7] = false;
        hVar.f25683c[y7] = false;
        hVar.f25683c[z7] = false;
        hVar.f25683c[C7] = false;
        hVar.f25683c[D7] = false;
        hVar.f25683c[g8] = false;
        hVar.f25683c[E7] = false;
        hVar.f25683c[F7] = false;
        hVar.f25683c[G7] = false;
        hVar.f25683c[H7] = false;
        hVar.f25683c[I7] = false;
        hVar.f25683c[J7] = false;
        hVar.f25683c[K7] = false;
        hVar.f25683c[P7] = false;
        hVar.f25683c[U7] = false;
        hVar.f25683c[W7] = false;
        hVar.f25683c[Z7] = false;
        hVar.f25683c[a8] = false;
        hVar.f25683c[b8] = false;
        hVar.f25683c[c8] = false;
        hVar.f25683c[i8] = false;
        hVar.f25683c[d8] = false;
        hVar.f25683c[e8] = false;
        hVar.f25683c[f8] = false;
        hVar.f25683c[X7] = false;
        hVar.f25683c[Y7] = false;
        hVar.f25683c[h8] = false;
        hVar.f25683c[V7] = false;
        hVar.f25683c[L7] = false;
        hVar.f25683c[M7] = false;
        hVar.f25683c[N7] = false;
        hVar.f25683c[O7] = false;
        this.D = new CLMakeupLiveEyeContactFilter[3];
        this.E = new CLMakeupLiveEyeFilter[3];
        this.F = new CLMakeupLiveEyeFilter[3];
        this.G = new l[3];
        this.H = new l[3];
        this.N = new CLMakeupLiveLipStickFilter[3];
        this.O = new ab[3];
        this.P = new CLMakeupLiveLiplinerFilter[3];
        this.Q = new CLMakeupLiveTeethWhitenFilter[3];
        this.I = new CLMakeupLiveBlushFilter[3];
        this.J = new CLMakeupLiveBlush3DFilter[3];
        this.K = new i[3];
        this.R = new CLMakeupLiveConcealerFilter[3];
        this.T = new CLMakeupLiveFoundationFilter[3];
        this.U = new CLMakeupLiveFaceReshapeFilter[3];
        this.V = new CLMakeupLiveFaceDistortionFilter[3];
        this.Z = new CLMakeupLive3DEyebrowFilter[3];
        this.a0 = new CLMakeupLive3DEyebrowWarpFilter[3];
        this.d0 = new CLStickerLiveFilter[3];
        this.f0 = new com.cyberlink.clgpuimage.cosmetic.e[3];
        int i9 = (i2 != d.f25669a && i2 == d.f25670b) ? 3 : 2;
        this.W = new CLMakeupLive3DFilter[i9];
        this.X = new CLMakeupLiveFaceArtFilter[i9];
        this.Y = new m[i9];
        this.b0 = new CLMakeupLiveFaceContourFilter[i9];
        this.c0 = new n[i9];
        this.e0 = new CLMakeupLiveCubeEyewearFilter[i9];
        this.S = new CLMakeupLiveBronzerFilter[i9];
        this.L = (CLMakeupLiveBlush3DFilter[][]) Array.newInstance((Class<?>) CLMakeupLiveBlush3DFilter.class, 3, i9);
        this.M = (i[][]) Array.newInstance((Class<?>) i.class, 3, i9);
        this.h3 = 4;
        if (i3 <= 1) {
            this.h3 = 1;
        } else if (i3 <= 2) {
            this.h3 = 2;
        }
        this.o3 = 4;
        if (i3 <= 1) {
            this.o3 = 1;
        } else if (i3 <= 2) {
            this.o3 = 2;
        }
        this.P4 = 2;
        this.k4 = 1;
        this.n4 = 1;
        this.v5 = 1;
        this.w5 = 1;
        this.Q2 = 2;
        this.b6 = 1;
        this.h5 = 1;
        this.R5 = 1;
        for (int i10 = 0; i10 < 3; i10++) {
            this.D[i10] = new CLMakeupLiveEyeContactFilter();
            this.E[i10] = new CLMakeupLiveEyeFilter(true);
            this.F[i10] = new CLMakeupLiveEyeFilter(false);
            this.G[i10] = new l(true);
            this.H[i10] = new l(false);
            this.N[i10] = new CLMakeupLiveLipStickFilter();
            this.O[i10] = new ab();
            this.P[i10] = new CLMakeupLiveLiplinerFilter();
            this.Q[i10] = new CLMakeupLiveTeethWhitenFilter();
            this.I[i10] = new CLMakeupLiveBlushFilter();
            this.J[i10] = new CLMakeupLiveBlush3DFilter();
            this.K[i10] = new i();
            this.R[i10] = new CLMakeupLiveConcealerFilter();
            this.T[i10] = new CLMakeupLiveFoundationFilter();
            this.U[i10] = new CLMakeupLiveFaceReshapeFilter(true);
            this.V[i10] = new CLMakeupLiveFaceDistortionFilter(true);
            this.Z[i10] = new CLMakeupLive3DEyebrowFilter();
            this.a0[i10] = new CLMakeupLive3DEyebrowWarpFilter();
            this.d0[i10] = new CLStickerLiveFilter();
            this.f0[i10] = new com.cyberlink.clgpuimage.cosmetic.e(IBeautyFilter2.FilterType.LIVE_SMOOTH, null, IBeautyFilter2.EffectMode.PORTRAIT_NATURAL);
        }
        for (int i11 = 0; i11 < i9; i11++) {
            this.W[i11] = new CLMakeupLive3DFilter();
            this.X[i11] = new CLMakeupLiveFaceArtFilter();
            this.Y[i11] = new m();
            this.b0[i11] = new CLMakeupLiveFaceContourFilter();
            this.c0[i11] = new n();
            this.e0[i11] = new CLMakeupLiveCubeEyewearFilter();
            this.S[i11] = new CLMakeupLiveBronzerFilter();
        }
        for (int i12 = 0; i12 < 3; i12++) {
            for (int i13 = 0; i13 < i9; i13++) {
                this.L[i12][i13] = new CLMakeupLiveBlush3DFilter();
            }
        }
        for (int i14 = 0; i14 < 3; i14++) {
            for (int i15 = 0; i15 < i9; i15++) {
                this.M[i14][i15] = new i();
            }
        }
        this.k0 = new GPUImageFilter();
        IBeautyFilter2.FilterType filterType = IBeautyFilter2.FilterType.LIVE_SMOOTH;
        IBeautyFilter2.EffectMode effectMode = IBeautyFilter2.EffectMode.PORTRAIT_NATURAL;
        this.g0 = new com.cyberlink.clgpuimage.cosmetic.a(filterType, null, effectMode);
        this.h0 = new com.cyberlink.clgpuimage.cosmetic.a(IBeautyFilter2.FilterType.ENABLE_SMOOTH, null, effectMode);
        this.i0 = new GPUImageFilter();
        this.j0 = new k();
        this.l0 = new x();
        this.m0 = new x();
        this.n0 = new CLMakeupLiveLeftRightFlipFilter();
        this.p0 = new j();
        this.q0 = new CLMakeupLiveHairDyeFilter();
        this.o0 = new CLShowAlignFilter(3);
        this.S0 = new x.b[3];
        this.z0 = new CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata[3];
        this.A0 = new CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[3][];
        this.B0 = new CLMakeupLiveEyeFilter.LiveEye3DMetadata[3];
        this.C0 = new CLMakeupLiveLipStickFilter.LipstickData[3];
        this.D0 = new CLMakeupLiveLiplinerFilter.LiplinerData[3];
        this.E0 = new CLMakeupLiveTeethWhitenFilter.TeethWhitenMetaData[3];
        this.F0 = new CLMakeupLiveBlushFilter.LiveBlushMakeupdata[3];
        this.G0 = new CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata[3];
        this.H0 = new CLMakeupLiveSmoothFilter$LiveSmoothMetadata[3];
        this.I0 = new CLMakeupLiveConcealerFilter.LiveConcealerMetadata[3];
        this.J0 = new CLMakeupLiveFoundationFilter.LiveFoundationData[3];
        this.K0 = new CLMakeupLiveFoundationFilter.LiveFoundationMeshData[3];
        this.L0 = new CLMakeupLiveFaceReshapeFilter.LiveFaceReshapeMetadata[3];
        this.M0 = new CLMakeupLiveFaceDistortionFilter.LiveFaceDistortionMetadata[3];
        this.N0 = new CLMakeupLive3DFilter.LiveObject3DMetadata[3];
        this.O0 = new CLMakeupLive3DFilter.LiveEarringMetadata[3];
        this.Q0 = new CLStickerLiveFilter.StickerData[3];
        this.R0 = new LiveFrameInformation[3];
        this.T0 = new LiveDynamicRangeMetadata[3];
        this.U0 = new CLMakeupLiveHairDyeFilter.HairDyeData[3];
        this.X0 = new CLMakeupLiveFaceContourFilter.LiveFaceContourMetadata[3];
        this.Z0 = new boolean[3];
        this.V0 = new CLMakeupLive3DEyebrowFilter.LiveEyebrow3DMetadata[3];
        this.W0 = new CLMakeupLive3DEyebrowWarpFilter.LiveEyebrowWarp3DMetadata[3];
        this.U3 = new CLShare3DRelatedClasses.Live3DRenderData[3];
        this.b4 = new CLShare3DRelatedClasses.Live3DRenderData[3];
        this.P0 = new CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata[3];
        this.J4 = new CLShare3DRelatedClasses.Live3DRenderData[3];
        this.R4 = new CLShare3DRelatedClasses.Live3DRenderData[3];
        this.c1 = new CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearMetaData[3];
        this.S6 = new i.a[3];
        this.h7 = new n.a[3];
        this.Y0 = new CLMakeupLiveBronzerFilter.LiveBronzerMetadata[3];
        this.d1 = new LiveFaceRegionOccludeMetadata[3];
        this.a1 = new int[3];
        for (int i16 = 0; i16 < 3; i16++) {
            this.a1[i16] = i16;
        }
        this.j5 = new CLMakeupLiveFaceContourFilter.a[3];
        this.L6 = new CLMakeupLiveBlush3DFilter.a[3];
        this.W6 = (CLMakeupLiveBlush3DFilter.a[][]) Array.newInstance((Class<?>) CLMakeupLiveBlush3DFilter.a.class, 3, 3);
        this.Y4 = new CLMakeupLiveBronzerFilter.a[3];
        this.N2 = new CLMakeupLiveEyeFilter.f[3];
        this.O2 = false;
        for (int i17 = 0; i17 < 3; i17++) {
            this.S0[i17] = new x.b();
            this.z0[i17] = new CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata();
            CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[] liveEyeMakeupMetadataArr = new CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[2];
            this.A0[i17] = liveEyeMakeupMetadataArr;
            liveEyeMakeupMetadataArr[0] = new CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata();
            this.A0[i17][1] = new CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata();
            this.B0[i17] = new CLMakeupLiveEyeFilter.LiveEye3DMetadata();
            this.C0[i17] = new CLMakeupLiveLipStickFilter.LipstickData();
            this.D0[i17] = new CLMakeupLiveLiplinerFilter.LiplinerData();
            this.E0[i17] = new CLMakeupLiveTeethWhitenFilter.TeethWhitenMetaData();
            this.F0[i17] = new CLMakeupLiveBlushFilter.LiveBlushMakeupdata();
            this.G0[i17] = new CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata();
            this.H0[i17] = new CLMakeupLiveSmoothFilter$LiveSmoothMetadata();
            this.I0[i17] = new CLMakeupLiveConcealerFilter.LiveConcealerMetadata();
            this.J0[i17] = new CLMakeupLiveFoundationFilter.LiveFoundationData();
            this.K0[i17] = new CLMakeupLiveFoundationFilter.LiveFoundationMeshData();
            this.L0[i17] = new CLMakeupLiveFaceReshapeFilter.LiveFaceReshapeMetadata();
            this.M0[i17] = new CLMakeupLiveFaceDistortionFilter.LiveFaceDistortionMetadata();
            this.N0[i17] = new CLMakeupLive3DFilter.LiveObject3DMetadata();
            this.O0[i17] = new CLMakeupLive3DFilter.LiveEarringMetadata();
            this.Q0[i17] = new CLStickerLiveFilter.StickerData();
            this.R0[i17] = new LiveFrameInformation();
            this.T0[i17] = new LiveDynamicRangeMetadata();
            this.U0[i17] = new CLMakeupLiveHairDyeFilter.HairDyeData();
            this.V0[i17] = new CLMakeupLive3DEyebrowFilter.LiveEyebrow3DMetadata();
            this.W0[i17] = new CLMakeupLive3DEyebrowWarpFilter.LiveEyebrowWarp3DMetadata();
            this.P0[i17] = new CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata();
            this.X0[i17] = new CLMakeupLiveFaceContourFilter.LiveFaceContourMetadata();
            this.Y0[i17] = new CLMakeupLiveBronzerFilter.LiveBronzerMetadata();
            this.c1[i17] = new CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearMetaData();
            this.S6[i17] = new i.a();
            this.h7[i17] = new n.a();
            this.d1[i17] = new LiveFaceRegionOccludeMetadata();
            this.C[i17] = false;
        }
        for (int i18 = 0; i18 < 3; i18++) {
            this.o1[i18] = new Bitmap[4];
            this.t1[i18] = new int[4];
            this.r1[i18] = new boolean[4];
            for (int i19 = 0; i19 < 4; i19++) {
                this.t1[i18][i19] = -1;
            }
        }
        for (int i20 = 0; i20 < 2; i20++) {
            this.u1[i20] = -1;
        }
        for (int i21 = 0; i21 < 2; i21++) {
            this.u2[i21] = new ByteBuffer[2];
            this.l2[i21] = new Rect();
            this.c2[i21] = new Rect();
            this.T1[i21] = new Rect();
            this.m2[i21] = new Rect();
            this.d2[i21] = new Rect();
            this.U1[i21] = new Rect();
            this.n2[i21] = -1;
            this.e2[i21] = -1;
            this.V1[i21] = -1;
            this.t2[i21] = new int[2];
            for (int i22 = 0; i22 < 2; i22++) {
                this.t2[i21][i22] = -1;
            }
            this.y2[i21] = null;
            this.x2[i21] = -1;
            this.C2[i21] = null;
            this.B2[i21] = -1;
            this.G2[i21] = null;
            this.F2[i21] = -1;
            this.K2[i21] = null;
            this.J2[i21] = -1;
            for (int i23 = 0; i23 < 3; i23++) {
                this.X1[i23][i21] = new Rect();
                this.Y1[i23][i21] = new Rect();
                this.Z1[i23][i21] = -1;
                this.g2[i23][i21] = new Rect();
                this.h2[i23][i21] = new Rect();
                this.i2[i23][i21] = -1;
                this.p2[i23][i21] = new Rect();
                this.q2[i23][i21] = new Rect();
                this.r2[i23][i21] = -1;
                this.w2[i23][i21] = new ByteBuffer[2];
                this.v2[i23][i21] = new int[2];
                for (int i24 = 0; i24 < 2; i24++) {
                    this.v2[i23][i21][i24] = -1;
                }
                this.A2[i23][i21] = null;
                this.z2[i23][i21] = -1;
                this.E2[i23][i21] = null;
                this.D2[i23][i21] = -1;
                this.I2[i23][i21] = null;
                this.H2[i23][i21] = -1;
            }
        }
        P(450, 300, pointFArr);
        G0();
        J0();
        this.s = false;
        this.t = false;
        for (int i25 = 0; i25 < 3; i25++) {
            this.U5[i25] = false;
        }
    }

    public static float[] C0(float f2, float f3, float f4) {
        float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        fArr[0] = h0(f2, f3, f4);
        fArr[1] = (f4 * 0.5f) + (((-0.169f) * f2) - (0.331f * f3)) + 127.5f;
        fArr[2] = (((f2 * 0.5f) - (f3 * 0.419f)) - (f4 * 0.081f)) + 127.5f;
        return fArr;
    }

    public static float H(int[] iArr, int i2, int i3, float f2) {
        int i4 = 0;
        int i5 = i2;
        while (i5 <= i3) {
            int i6 = iArr[i5] + i4;
            float f3 = i4;
            if (f2 >= f3 && f2 < i6) {
                float f4 = i5;
                float f5 = f4 - 0.5f;
                float f6 = 0.5f + f4;
                if (i5 == i2) {
                    f5 = f4;
                }
                if (i5 != i3) {
                    f4 = f6;
                }
                return tr.a(f4, f5, (f2 - f3) / (i6 - i4), f5);
            }
            i5++;
            i4 = i6;
        }
        return i3;
    }

    public static boolean e0(CLShare3DRelatedClasses.Pass1BufferData pass1BufferData) {
        return pass1BufferData.width > 0 && pass1BufferData.height > 0;
    }

    public static boolean f0(CLMakeupLiveFoundationFilter.LiveFoundationData[] liveFoundationDataArr, boolean z) {
        if (z) {
            return true;
        }
        for (int i2 = 0; i2 < 3; i2++) {
            if (liveFoundationDataArr[i2].is_enabled) {
                if (liveFoundationDataArr[0].smooth_intensity >= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int[] g0(CLMakeupLiveFoundationFilter.LiveFoundationData[] liveFoundationDataArr, int i2, int i3) {
        for (int i4 = 0; i4 < 3; i4++) {
            if (liveFoundationDataArr[i4].is_enabled) {
                int i5 = liveFoundationDataArr[0].smooth_intensity;
                if (i5 < 0) {
                    break;
                }
                return new int[]{i5, Math.min(70, i5)};
            }
        }
        return new int[]{i2, i3};
    }

    public static float h0(float f2, float f3, float f4) {
        return (f4 * 0.114f) + (f3 * 0.587f) + (f2 * 0.299f);
    }

    public static Bitmap h1() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(16, 16, Bitmap.Config.ALPHA_8);
        byte[] bArr = new byte[bitmapCreateBitmap.getHeight() * bitmapCreateBitmap.getRowBytes()];
        Arrays.fill(bArr, (byte) 0);
        bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(bArr));
        return bitmapCreateBitmap;
    }

    public static void i0(int i2, int i3, int i4, int i5) {
        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
        GLES20.glGetIntegerv(36006, intBufferAllocate);
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
        GLES20.glBindTexture(3553, i3);
        GLES20.glCopyTexImage2D(3553, 0, 6408, 0, 0, i4, i5, 0);
        GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
        GLES20.glBindTexture(3553, 0);
        GLES20.glDeleteFramebuffers(1, iArr, 0);
    }

    public static void l0(int[] iArr, int i2, CLMakeupLiveCubeEyewearFilter.b bVar) {
        float f2;
        float f3;
        float fH;
        int i3 = 0;
        int iMax = -1;
        int i4 = 0;
        int iMin = 256;
        for (int i5 = 0; i5 < 256; i5++) {
            int i6 = iArr[i5];
            if (i6 > 0) {
                i4 += i6;
                iMin = Math.min(iMin, i5);
                iMax = Math.max(iMax, i5);
            }
        }
        if (iMin == iMax) {
            fH = iMin;
            f2 = fH;
            f3 = f2;
        } else if (iMin < iMax) {
            for (int i7 = iMin; i7 <= iMax; i7++) {
                i3 += iArr[i7] * i7;
            }
            float f4 = ((double) i4) > 0.0d ? i3 / i4 : (iMin + iMax) * 0.5f;
            float f5 = i4;
            float fH2 = H(iArr, iMin, iMax, 0.2f * f5);
            f3 = f4;
            fH = H(iArr, iMin, iMax, f5 * 0.8f);
            f2 = fH2;
        } else {
            f2 = 51.0f;
            f3 = 127.5f;
            fH = 204.0f;
        }
        if (fH - f2 < 3.0f) {
            float f6 = (f2 + fH) * 0.5f;
            fH = 1.5f + f6;
            f2 = f6 - 1.5f;
        }
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fH -= f2;
            f2 = 0.0f;
        }
        if (fH > 255.0f) {
            f2 -= fH - 255.0f;
            fH = 255.0f;
        }
        float fMin = Math.min(Math.max(f3, f2 + 0.5f), fH - 0.5f);
        float f7 = 255.0f - fH;
        float fMin2 = Math.min(4.0f * f2, 0.8f * f7);
        float fMax = Math.max((-0.8f) * f2, f7 * (-4.0f));
        bVar.f25622a = fMin;
        bVar.f25623b = f2;
        bVar.f25624c = fH;
        bVar.d = fMax;
        bVar.f25625e = fMin2;
        if (i2 == e.f25672b) {
            bVar.f25626f = iMin == iMax ? iMin : iMin < iMax ? H(iArr, iMin, iMax, i4 * 0.005f) : 16.0f;
        }
    }

    public final void A() {
        synchronized (this.r6) {
            try {
                if (this.u6) {
                    this.x6.rewind();
                    GLES20.glBindTexture(3553, this.z6);
                    GLES20.glTexImage2D(3553, 0, 6408, this.s6, this.t6, 0, 6408, 5121, this.x6);
                    this.y6.rewind();
                    GLES20.glBindTexture(3553, this.A6);
                    GLES20.glTexImage2D(3553, 0, 6408, this.s6, this.t6, 0, 6408, 5121, this.y6);
                    GLES20.glBindTexture(3553, 0);
                    b1(-1);
                    this.u6 = false;
                }
                for (int i2 = 0; i2 < 3; i2++) {
                    if (this.F6[i2] && this.v6[i2]) {
                        this.B6[i2].rewind();
                        GLES20.glBindTexture(3553, this.D6[i2]);
                        GLES20.glTexImage2D(3553, 0, 6408, this.s6, this.t6, 0, 6408, 5121, this.B6[i2]);
                        this.C6[i2].rewind();
                        GLES20.glBindTexture(3553, this.E6[i2]);
                        GLES20.glTexImage2D(3553, 0, 6408, this.s6, this.t6, 0, 6408, 5121, this.C6[i2]);
                        GLES20.glBindTexture(3553, 0);
                        b1(i2);
                        this.v6[i2] = false;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void A0(ArrayList arrayList) {
        e(new r(this, arrayList));
    }

    public final void B(int i2, byte[] bArr) {
        int i3 = 3;
        if (i2 >= 3 || i2 < -1) {
            return;
        }
        synchronized (this.K6) {
            try {
                int iMax = Math.max(0, i2);
                int i4 = iMax + 1;
                if (iMax == i2) {
                    i3 = i4;
                }
                while (iMax < i3) {
                    this.P6[iMax] = bArr;
                    CLMakeupLiveBlush3DFilter.a[] aVarArr = this.L6;
                    if (aVarArr[iMax] == null) {
                        aVarArr[iMax] = new CLMakeupLiveBlush3DFilter.a();
                    }
                    CLMakeupLiveBlush3DFilter.a aVar = this.L6[iMax];
                    int i5 = this.M6[iMax];
                    aVar.f25568a = 0;
                    aVar.f25569b = 0;
                    aVar.f25570c = i5;
                    aVar.d = 1160;
                    aVar.f25571e = Sink.Screenshare.MAX_DIMENSION_LOW;
                    this.N6[iMax] = true;
                    this.O6[iMax] = true;
                    iMax++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void B0(boolean z) {
        synchronized (this.x0) {
            try {
                if (this.B.f25683c[E7]) {
                    if (z || IBeautyFilter2.FilterType.ENABLE_SMOOTH == this.H6) {
                        this.h0.m(this.U0[0]);
                    }
                    this.g0.m(this.U0[0]);
                }
                if (this.B.f25683c[F7]) {
                    for (int i2 = 0; i2 < 3; i2++) {
                        this.f0[i2].m(this.U0[i2]);
                        com.cyberlink.clgpuimage.cosmetic.e eVar = this.f0[i2];
                        CLMakeupLiveFoundationFilter.LiveFoundationData liveFoundationData = this.J0[i2];
                        synchronized (eVar.t0) {
                            eVar.i0.Copy(liveFoundationData);
                        }
                        eVar.h0 = liveFoundationData.is_front_camera;
                    }
                }
                if (this.B.f25683c[g8]) {
                    this.q0.j(this.U0[0]);
                }
                for (int i3 = 0; i3 < 3; i3++) {
                    if (this.B.f25682b[i3]) {
                        if (this.B.f25683c[x7]) {
                            if (this.k1) {
                                this.D[i3].l(this.z0[i3], this.T0[i3]);
                            } else {
                                this.D[i3].l(this.z0[i3], new LiveDynamicRangeMetadata());
                            }
                        }
                        if (this.B.f25683c[y7] || this.B.f25683c[z7] || this.B.f25683c[P7]) {
                            CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[] liveEyeMakeupMetadataArr = this.A0[i3];
                            CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata liveEyeMakeupMetadata = liveEyeMakeupMetadataArr[0];
                            float f2 = liveEyeMakeupMetadata.m_target_eye_lower_lid_luma;
                            float f3 = liveEyeMakeupMetadataArr[1].m_target_eye_lower_lid_luma;
                            float f4 = (f2 + f3) / 2.0f;
                            this.E[i3].n0(liveEyeMakeupMetadata, this.T0[i3], f4, (f3 * 0.25f) + (f2 * 0.75f), this.B0[i3]);
                            CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter = this.E[i3];
                            LiveFaceRegionOccludeMetadata liveFaceRegionOccludeMetadata = this.d1[i3];
                            synchronized (cLMakeupLiveEyeFilter.e7) {
                                cLMakeupLiveEyeFilter.F7.Copy(liveFaceRegionOccludeMetadata);
                            }
                            CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[] liveEyeMakeupMetadataArr2 = this.A0[i3];
                            float f5 = liveEyeMakeupMetadataArr2[0].m_target_eye_lower_lid_luma * 0.25f;
                            CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata liveEyeMakeupMetadata2 = liveEyeMakeupMetadataArr2[1];
                            this.F[i3].n0(liveEyeMakeupMetadata2, this.T0[i3], f4, (liveEyeMakeupMetadata2.m_target_eye_lower_lid_luma * 0.75f) + f5, this.B0[i3]);
                            CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter2 = this.F[i3];
                            LiveFaceRegionOccludeMetadata liveFaceRegionOccludeMetadata2 = this.d1[i3];
                            synchronized (cLMakeupLiveEyeFilter2.e7) {
                                cLMakeupLiveEyeFilter2.F7.Copy(liveFaceRegionOccludeMetadata2);
                            }
                        }
                        if (this.B.f25683c[A7] || this.B.f25683c[B7]) {
                            l lVar = this.G[i3];
                            CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata liveEyeMakeupMetadata3 = this.A0[i3][0];
                            synchronized (lVar.e7) {
                                lVar.f7.Copy(liveEyeMakeupMetadata3);
                            }
                            l lVar2 = this.H[i3];
                            CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata liveEyeMakeupMetadata4 = this.A0[i3][1];
                            synchronized (lVar2.e7) {
                                lVar2.f7.Copy(liveEyeMakeupMetadata4);
                            }
                        }
                        boolean[] zArr = this.B.f25683c;
                        int i4 = C7;
                        if (zArr[i4]) {
                            CLMakeupLiveLipStickFilter.LipstickData lipstickData = this.C0[i3];
                            if (lipstickData.m_is_valid) {
                                if (lipstickData.m_version == 0) {
                                    this.N[i3].k0(this.T0[i3], lipstickData, this.D0[i3]);
                                    this.N[i3].m0(this.B.f25683c[i4]);
                                    this.N[i3].p0(this.u[0]);
                                    this.N[i3].l0(this.d1[i3]);
                                } else {
                                    this.O[i3].k0(this.T0[i3], lipstickData, this.D0[i3]);
                                    this.O[i3].m0(this.B.f25683c[i4]);
                                    this.O[i3].p0(this.u[0]);
                                    this.O[i3].l0(this.d1[i3]);
                                }
                            }
                        }
                        boolean[] zArr2 = this.B.f25683c;
                        int i5 = D7;
                        if (zArr2[i5]) {
                            this.P[i3].k0(this.T0[i3], this.C0[i3], this.D0[i3]);
                            this.P[i3].m0(this.B.f25683c[i5]);
                            this.P[i3].l0(this.d1[i3]);
                        }
                        if (this.B.f25683c[Z7]) {
                            this.Q[i3].j(this.E0[i3]);
                        }
                        if (this.B.f25683c[G7]) {
                            this.I[i3].l(this.F0[i3], this.T0[i3]);
                        }
                        if (this.B.f25683c[H7]) {
                            k1();
                            this.J[i3].k0(this.G0[i3], this.T0[i3], this.J0[i3]);
                        }
                        if (this.B.f25683c[L7]) {
                            k();
                            this.K[i3].k0(this.G0[i3]);
                        }
                        if (this.B.f25683c[I7]) {
                            l1();
                            this.L[0][i3].k0(this.G0[i3], this.T0[i3], this.J0[i3]);
                        }
                        if (this.B.f25683c[J7]) {
                            l1();
                            this.L[1][i3].k0(this.G0[i3], this.T0[i3], this.J0[i3]);
                        }
                        if (this.B.f25683c[K7]) {
                            l1();
                            this.L[2][i3].k0(this.G0[i3], this.T0[i3], this.J0[i3]);
                        }
                        if (this.B.f25683c[M7]) {
                            l();
                            this.M[0][i3].k0(this.G0[i3]);
                        }
                        if (this.B.f25683c[N7]) {
                            l();
                            this.M[1][i3].k0(this.G0[i3]);
                        }
                        if (this.B.f25683c[O7]) {
                            l();
                            this.M[2][i3].k0(this.G0[i3]);
                        }
                        boolean z2 = this.B.f25683c[E7];
                        float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        if (z2) {
                            this.g0.o(this.H0[i3].m_intensity);
                            this.g0.n(this.G6 ? this.H0[i3].m_color_intensity : 0.0f);
                            if (z || IBeautyFilter2.FilterType.ENABLE_SMOOTH == this.H6) {
                                this.h0.o(this.H0[i3].m_intensity);
                                this.h0.n(this.G6 ? this.H0[i3].m_color_intensity : 0.0f);
                            }
                        }
                        if (this.B.f25683c[F7] && i3 < this.z) {
                            this.f0[i3].o(this.H0[i3].m_v2_intensity);
                            this.f0[i3].n(this.G6 ? this.H0[i3].m_v2_color_intensity : 0.0f);
                        }
                        this.h0.o(this.H0[0].m_intensity);
                        this.h0.n(this.G6 ? this.H0[0].m_color_intensity : 0.0f);
                        CLMakeupLiveFoundationFilter.LiveFoundationData[] liveFoundationDataArr = this.J0;
                        CLMakeupLiveSmoothFilter$LiveSmoothMetadata cLMakeupLiveSmoothFilter$LiveSmoothMetadata = this.H0[0];
                        int[] iArrG0 = g0(liveFoundationDataArr, (int) cLMakeupLiveSmoothFilter$LiveSmoothMetadata.m_intensity, (int) cLMakeupLiveSmoothFilter$LiveSmoothMetadata.m_color_intensity);
                        this.g0.o(iArrG0[0]);
                        this.g0.n(this.G6 ? iArrG0[1] : 0.0f);
                        CLMakeupLiveFoundationFilter.LiveFoundationData[] liveFoundationDataArr2 = this.J0;
                        CLMakeupLiveSmoothFilter$LiveSmoothMetadata cLMakeupLiveSmoothFilter$LiveSmoothMetadata2 = this.H0[i3];
                        int[] iArrG1 = g0(liveFoundationDataArr2, (int) cLMakeupLiveSmoothFilter$LiveSmoothMetadata2.m_v2_intensity, (int) cLMakeupLiveSmoothFilter$LiveSmoothMetadata2.m_v2_color_intensity);
                        this.f0[i3].o(iArrG1[0]);
                        com.cyberlink.clgpuimage.cosmetic.e eVar2 = this.f0[i3];
                        if (this.G6) {
                            f6 = iArrG1[1];
                        }
                        eVar2.n(f6);
                        boolean[] zArr3 = this.B.f25683c;
                        int i6 = U7;
                        if (zArr3[i6]) {
                            CLMakeupLiveConcealerFilter.LiveConcealerMetadata liveConcealerMetadata = this.I0[i3];
                            if (liveConcealerMetadata.is_valid) {
                                this.R[i3].k(liveConcealerMetadata, this.J0[i3], this.T0[i3], this.R0[i3], this.U5[i3]);
                            }
                        }
                        this.U5[i3] = this.B.f25683c[i6] && this.I0[i3].is_valid;
                        if (this.B.f25683c[W7]) {
                            CLMakeupLiveFoundationFilter.LiveFoundationData liveFoundationData2 = this.J0[i3];
                            if (liveFoundationData2.is_enabled) {
                                this.T[i3].k(liveFoundationData2, this.T0[i3], this.K0[i3], this.R0[i3]);
                            }
                        }
                        if (this.B.f25683c[a8]) {
                            this.U[i3].j(this.L0[i3]);
                        }
                        if (this.B.f25683c[b8]) {
                            this.V[i3].j(this.M0[i3]);
                        }
                        if (this.B.f25683c[d8]) {
                            LiveDynamicRangeMetadata liveDynamicRangeMetadata = new LiveDynamicRangeMetadata();
                            CLStickerLiveFilter.StickerData stickerData = this.Q0[i3];
                            if (stickerData.is_enabled) {
                                this.d0[i3].j(stickerData, liveDynamicRangeMetadata);
                            }
                        }
                        if (this.B.f25683c[Q7]) {
                            this.a0[i3].n(this.W0[i3]);
                        }
                        if (this.B.f25683c[R7]) {
                            i1();
                            j1();
                            synchronized (this.T3) {
                                this.Z[i3].l(this.V0[i3], this.T0[i3], this.W0[i3].rotation_degree[0]);
                                this.V0[i3].is_texcoord_changed = false;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        this.U5[i3] = false;
                    }
                }
                for (int i7 = 0; i7 < this.W.length; i7++) {
                    int iM0 = M0(i7);
                    if (this.B.f25682b[iM0]) {
                        if (this.B.f25683c[c8] || this.B.f25683c[i8]) {
                            this.W[i7].w(this.N0[iM0], this.i3, this.O0[iM0]);
                        }
                        if (this.B.f25683c[i8]) {
                            this.W[i7].A(this.T0[iM0]);
                        }
                    }
                }
                for (int i9 = 0; i9 < this.e0.length; i9++) {
                    int iM1 = M0(i9);
                    if (this.B.f25682b[iM1] && this.B.f25683c[h8]) {
                        this.e0[i9].r(this.c1[iM1]);
                    }
                }
                for (int i10 = 0; i10 < this.X.length; i10++) {
                    int iM2 = M0(i10);
                    if (this.B.f25682b[iM2] && this.B.f25683c[X7]) {
                        m1();
                        synchronized (this.I4) {
                            this.P0[iM2].is_texcoord_changed = !this.X[i10].k0(this.P0[iM2], this.J0[iM2], this.T0[iM2]);
                        }
                    }
                }
                for (int i11 = 0; i11 < this.Y.length; i11++) {
                    int iM3 = M0(i11);
                    if (this.B.f25682b[iM3] && this.B.f25683c[Y7]) {
                        n1();
                        synchronized (this.Q4) {
                            this.P0[iM3].is_layer2_texcoord_changed = !this.Y[i11].k0(this.P0[iM3], this.J0[iM3], this.T0[iM3]);
                        }
                    }
                }
                for (int i12 = 0; i12 < this.c0.length; i12++) {
                    int iM4 = M0(i12);
                    if (this.B.f25682b[iM4] && !this.R0[iM4].is_mask_detected && this.B.f25683c[T7]) {
                        m();
                        synchronized (this.g7) {
                            this.c0[i12].k0(this.X0[iM4], this.J0[iM4]);
                        }
                    }
                }
                for (int i13 = 0; i13 < this.b0.length; i13++) {
                    int iM5 = M0(i13);
                    if (this.B.f25682b[iM5] && !this.R0[iM5].is_mask_detected && this.B.f25683c[S7]) {
                        j();
                        synchronized (this.i5) {
                            this.b0[i13].k0(this.X0[iM5], this.J0[iM5], this.T0[iM5]);
                            this.X0[iM5].is_texcoord_changed = false;
                        }
                    }
                }
                for (int i14 = 0; i14 < this.S.length; i14++) {
                    int iM6 = M0(i14);
                    if (this.B.f25682b[iM6] && !this.R0[iM6].is_mask_detected && this.B.f25683c[V7]) {
                        p();
                        synchronized (this.X4) {
                            this.S[i14].k0(this.Y0[iM6], this.J0[iM6], this.T0[iM6]);
                            this.Y0[iM6].is_texcoord_changed = false;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void C(boolean z, int[] iArr, byte[] bArr, byte[] bArr2, int[] iArr2, byte[] bArr3, int i2) {
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        ByteBuffer[][] byteBufferArr;
        int[] iArr3;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        ByteBuffer[] byteBufferArr2;
        int[] iArr4;
        boolean z2 = this.H1;
        if (i2 != -1) {
            if (!z2 || i2 < 0 || i2 >= 3 || iArr.length != this.K1 * this.L1) {
                return;
            }
            synchronized (this.F1) {
                int i3 = !z ? 1 : 0;
                try {
                    N0(i3, i2);
                    this.f2[i2][i3] = Bitmap.createBitmap(iArr, this.K1, this.L1, Bitmap.Config.ARGB_8888);
                    if (this.f2[i2][i3].getWidth() == this.K1 && this.f2[i2][i3].getHeight() == this.L1) {
                        b0(iArr, this.h2[i2][i3]);
                        if (bArr3 == null) {
                            bArr4 = new byte[this.K1 * this.L1];
                            Arrays.fill(bArr4, (byte) 0);
                        } else {
                            bArr4 = bArr3;
                        }
                        int i4 = this.K1 * this.L1;
                        ByteBuffer byteBuffer = this.E2[i2][i3];
                        if (byteBuffer == null || byteBuffer.array().length != i4) {
                            this.E2[i2][i3] = ByteBuffer.allocate(i4);
                        }
                        this.C2[i3] = null;
                        this.E2[i2][i3] = ByteBuffer.wrap(bArr4);
                        if (bArr == null) {
                            bArr5 = new byte[this.K1 * this.L1];
                            Arrays.fill(bArr5, (byte) 0);
                        } else {
                            bArr5 = bArr;
                        }
                        if (bArr2 == null) {
                            bArr6 = new byte[this.K1 * this.L1];
                            Arrays.fill(bArr6, (byte) 0);
                        } else {
                            bArr6 = bArr2;
                        }
                        int i5 = (this.K1 * this.L1) << 2;
                        ByteBuffer byteBuffer2 = this.I2[i2][i3];
                        if (byteBuffer2 == null || byteBuffer2.array().length != i5) {
                            this.I2[i2][i3] = ByteBuffer.allocate(i5);
                        }
                        this.G2[i3] = null;
                        for (int i6 = 0; i6 < 3; i6++) {
                            this.I2[i6][i3] = null;
                        }
                        int i7 = i5 / 4;
                        int i9 = 0;
                        while (true) {
                            byteBufferArr = this.I2;
                            if (i9 >= i7) {
                                break;
                            }
                            byteBufferArr[i2][i3].put(bArr5[i9]);
                            this.I2[i2][i3].put(bArr6[i9]);
                            this.I2[i2][i3].put((byte) 0);
                            this.I2[i2][i3].put((byte) -1);
                            i9++;
                        }
                        byteBufferArr[i2][i3].flip();
                        if (iArr2 == null) {
                            iArr3 = new int[this.K1 * this.L1];
                            Arrays.fill(iArr3, 0);
                        } else {
                            iArr3 = iArr2;
                        }
                        this.M2[i2][i3] = Bitmap.createBitmap(iArr3, this.K1, this.L1, Bitmap.Config.ARGB_8888);
                        if (this.M2[i2][i3].getWidth() == this.K1 && this.M2[i2][i3].getHeight() == this.L1) {
                            this.j2[i2][i3] = true;
                            this.Q1[i2][i3] = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (z2 && iArr.length == this.K1 * this.L1) {
            synchronized (this.F1) {
                int i10 = !z ? 1 : 0;
                try {
                    N0(i10, -1);
                    for (int i11 = 0; i11 < 3; i11++) {
                        N0(i10, -1);
                    }
                    this.b2[i10] = Bitmap.createBitmap(iArr, this.K1, this.L1, Bitmap.Config.ARGB_8888);
                    if (this.b2[i10].getWidth() == this.K1 && this.b2[i10].getHeight() == this.L1) {
                        b0(iArr, this.d2[i10]);
                        if (bArr3 == null) {
                            bArr7 = new byte[this.K1 * this.L1];
                            Arrays.fill(bArr7, (byte) 0);
                        } else {
                            bArr7 = bArr3;
                        }
                        int i12 = this.K1 * this.L1;
                        ByteBuffer byteBuffer3 = this.C2[i10];
                        if (byteBuffer3 == null || byteBuffer3.array().length != i12) {
                            this.C2[i10] = ByteBuffer.allocate(i12);
                        }
                        for (int i13 = 0; i13 < 3; i13++) {
                            this.E2[i13][i10] = null;
                        }
                        this.C2[i10] = ByteBuffer.wrap(bArr7);
                        if (bArr == null) {
                            bArr8 = new byte[this.K1 * this.L1];
                            Arrays.fill(bArr8, (byte) 0);
                        } else {
                            bArr8 = bArr;
                        }
                        if (bArr2 == null) {
                            bArr9 = new byte[this.K1 * this.L1];
                            Arrays.fill(bArr9, (byte) 0);
                        } else {
                            bArr9 = bArr2;
                        }
                        int i14 = (this.K1 * this.L1) << 2;
                        ByteBuffer byteBuffer4 = this.G2[i10];
                        if (byteBuffer4 == null || byteBuffer4.array().length != i14) {
                            this.G2[i10] = ByteBuffer.allocate(i14);
                        }
                        for (int i15 = 0; i15 < 3; i15++) {
                            this.I2[i15][i10] = null;
                        }
                        int i16 = i14 / 4;
                        int i17 = 0;
                        while (true) {
                            byteBufferArr2 = this.G2;
                            if (i17 >= i16) {
                                break;
                            }
                            byteBufferArr2[i10].put(bArr8[i17]);
                            this.G2[i10].put(bArr9[i17]);
                            this.G2[i10].put((byte) 0);
                            this.G2[i10].put((byte) -1);
                            i17++;
                        }
                        byteBufferArr2[i10].flip();
                        if (iArr2 == null) {
                            iArr4 = new int[this.K1 * this.L1];
                            Arrays.fill(iArr4, 0);
                        } else {
                            iArr4 = iArr2;
                        }
                        this.K2[i10] = Bitmap.createBitmap(iArr4, this.K1, this.L1, Bitmap.Config.ARGB_8888);
                        if (this.K2[i10].getWidth() == this.K1 && this.K2[i10].getHeight() == this.L1) {
                            for (int i18 = 0; i18 < 3; i18++) {
                                this.j2[i18][i10] = false;
                            }
                            this.N1[i10] = true;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void D(boolean z, int[] iArr, byte[] bArr, byte[] bArr2, int i2, int i3, byte[] bArr3, int i4) {
        byte[] bArr4;
        byte[] bArr5;
        boolean z2 = this.H1;
        if (i4 != -1) {
            if (!z2 || i4 < 0 || i4 >= 3 || iArr.length != this.K1 * this.L1) {
                return;
            }
            synchronized (this.E1) {
                int i5 = !z ? 1 : 0;
                try {
                    L0(i5, i4);
                    this.o2[i4][i5] = Bitmap.createBitmap(iArr, this.K1, this.L1, Bitmap.Config.ARGB_8888);
                    if (this.o2[i4][i5].getWidth() == this.K1 && this.o2[i4][i5].getHeight() == this.L1) {
                        b0(iArr, this.q2[i4][i5]);
                        this.I1[i5] = i2;
                        this.J1[i5] = i3;
                        for (int i6 = 0; i6 < 2; i6++) {
                            int i7 = (i2 >> i6) * (i3 >> i6);
                            ByteBuffer byteBuffer = this.w2[i4][i5][i6];
                            if (byteBuffer == null || byteBuffer.array().length != (i7 << 2)) {
                                this.w2[i4][i5][i6] = ByteBuffer.allocate(i7 << 2);
                            }
                            this.u2[i5][i6] = null;
                        }
                        int i9 = 0;
                        for (int i10 = 0; i10 < 2; i10++) {
                            int i11 = this.I1[i5] >> i10;
                            int i12 = this.J1[i5] >> i10;
                            this.w2[i4][i5][i10].clear();
                            this.w2[i4][i5][i10].position(0);
                            byte[] bArrArray = this.w2[i4][i5][i10].array();
                            for (int i13 = 0; i13 < i12; i13++) {
                                for (int i14 = 0; i14 < i11; i14++) {
                                    int i15 = (i13 * i11) + i14;
                                    int i16 = i15 << 2;
                                    int i17 = i15 + i9;
                                    bArrArray[i16] = bArr[i17];
                                    bArrArray[i16 + 1] = bArr2[i17];
                                }
                            }
                            i9 += i11 * i12;
                        }
                        if (bArr3 == null) {
                            bArr4 = new byte[this.K1 * this.L1];
                            Arrays.fill(bArr4, (byte) 0);
                        } else {
                            bArr4 = bArr3;
                        }
                        int i18 = this.K1 * this.L1;
                        ByteBuffer byteBuffer2 = this.A2[i4][i5];
                        if (byteBuffer2 == null || byteBuffer2.array().length != i18) {
                            this.A2[i4][i5] = ByteBuffer.allocate(i18);
                        }
                        this.y2[i5] = null;
                        this.A2[i4][i5] = ByteBuffer.wrap(bArr4);
                        this.s2[i4][i5] = true;
                        this.P1[i4][i5] = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (z2 && iArr.length == this.K1 * this.L1) {
            synchronized (this.E1) {
                int i19 = !z ? 1 : 0;
                try {
                    L0(i19, -1);
                    for (int i20 = 0; i20 < 3; i20++) {
                        L0(i19, i20);
                    }
                    this.k2[i19] = Bitmap.createBitmap(iArr, this.K1, this.L1, Bitmap.Config.ARGB_8888);
                    if (this.k2[i19].getWidth() == this.K1 && this.k2[i19].getHeight() == this.L1) {
                        b0(iArr, this.m2[i19]);
                        this.I1[i19] = i2;
                        this.J1[i19] = i3;
                        for (int i21 = 0; i21 < 2; i21++) {
                            int i22 = (i2 >> i21) * (i3 >> i21);
                            ByteBuffer byteBuffer3 = this.u2[i19][i21];
                            if (byteBuffer3 == null || byteBuffer3.array().length != (i22 << 2)) {
                                this.u2[i19][i21] = ByteBuffer.allocate(i22 << 2);
                            }
                            for (int i23 = 0; i23 < 3; i23++) {
                                this.w2[i23][i19][i21] = null;
                            }
                        }
                        int i24 = 0;
                        for (int i25 = 0; i25 < 2; i25++) {
                            int i26 = this.I1[i19] >> i25;
                            int i27 = this.J1[i19] >> i25;
                            this.u2[i19][i25].clear();
                            this.u2[i19][i25].position(0);
                            byte[] bArrArray2 = this.u2[i19][i25].array();
                            for (int i28 = 0; i28 < i27; i28++) {
                                for (int i29 = 0; i29 < i26; i29++) {
                                    int i30 = (i28 * i26) + i29;
                                    int i31 = i30 << 2;
                                    int i32 = i30 + i24;
                                    bArrArray2[i31] = bArr[i32];
                                    bArrArray2[i31 + 1] = bArr2[i32];
                                }
                            }
                            i24 += i26 * i27;
                        }
                        if (bArr3 == null) {
                            bArr5 = new byte[this.K1 * this.L1];
                            Arrays.fill(bArr5, (byte) 0);
                        } else {
                            bArr5 = bArr3;
                        }
                        int i33 = this.K1 * this.L1;
                        ByteBuffer byteBuffer4 = this.y2[i19];
                        if (byteBuffer4 == null || byteBuffer4.array().length != i33) {
                            this.y2[i19] = ByteBuffer.allocate(i33);
                        }
                        for (int i34 = 0; i34 < 3; i34++) {
                            this.A2[i34][i19] = null;
                        }
                        this.y2[i19] = ByteBuffer.wrap(bArr5);
                        for (int i35 = 0; i35 < 3; i35++) {
                            this.s2[i35][i19] = false;
                        }
                        this.M1[i19] = true;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final x.a D0(int i2) {
        x.a aVar;
        x.a aVar2;
        try {
            if (i2 == a.f25661b) {
                synchronized (this.f1) {
                    try {
                        if (!this.g1) {
                            this.f1.wait();
                        }
                        this.g1 = false;
                        aVar2 = this.e1;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return aVar2;
            }
            if (i2 != a.f25662c) {
                return null;
            }
            synchronized (this.i1) {
                try {
                    if (!this.j1) {
                        this.i1.wait();
                    }
                    this.j1 = false;
                    aVar = this.h1;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return aVar;
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            Thread.currentThread().interrupt();
            return null;
        }
        e2.printStackTrace();
        Thread.currentThread().interrupt();
        return null;
    }

    public final void E(MakeupLiveFeatures makeupLiveFeatures, boolean z) {
        synchronized (this.y0) {
            if (makeupLiveFeatures.ordinal() != c8 && makeupLiveFeatures.ordinal() != g8 && makeupLiveFeatures.ordinal() != R7 && makeupLiveFeatures.ordinal() != Q7 && makeupLiveFeatures.ordinal() != h8) {
                this.A.f25683c[makeupLiveFeatures.ordinal()] = z;
            }
        }
    }

    public final void E0(float f2) {
        e(new v(this, f2));
    }

    public final void F(MakeupLiveFeatures makeupLiveFeatures, int i2, boolean z) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        int iOrdinal = makeupLiveFeatures.ordinal();
        boolean[][] zArr = this.x4;
        if (i2 != -1) {
            zArr[i2][iOrdinal] = z;
            return;
        }
        for (int i3 = 0; i3 < 3; i3++) {
            zArr[i3][iOrdinal] = z;
        }
    }

    public final void F0(List list) {
        if (list == null) {
            return;
        }
        e(new s(this, list));
    }

    public final void G() {
        if (this.d1[0].is_valid) {
            synchronized (this.r7) {
                try {
                    if (this.s7 == -1) {
                        int[] iArr = new int[1];
                        GLES20.glGenTextures(1, iArr, 0);
                        int i2 = iArr[0];
                        this.s7 = i2;
                        GLES20.glBindTexture(3553, i2);
                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void G0() {
        synchronized (this.c6) {
            try {
                if (this.g6 != 200 || this.h6 != 200) {
                    this.g6 = 200;
                    this.h6 = 200;
                    y();
                    this.i6 = false;
                    for (int i2 = 0; i2 < 3; i2++) {
                        CLMakeupLiveEyeContactFilter cLMakeupLiveEyeContactFilter = this.D[i2];
                        synchronized (cLMakeupLiveEyeContactFilter.g0) {
                            cLMakeupLiveEyeContactFilter.o = 200;
                            cLMakeupLiveEyeContactFilter.p = 200;
                        }
                    }
                    this.d6 = true;
                    this.e6 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void H0() {
        this.o = new int[2];
        this.p = new int[2];
        int outputWidth = getOutputWidth();
        int outputHeight = getOutputHeight();
        for (int i2 = 0; i2 < 2; i2++) {
            GLES20.glGenFramebuffers(1, this.o, i2);
            GLES20.glGenTextures(1, this.p, i2);
            if (this.J6 && i2 == 1) {
                break;
            }
            GLES20.glBindTexture(3553, this.p[i2]);
            GLES20.glTexImage2D(3553, 0, 6408, outputWidth, outputHeight, 0, 6408, 5121, null);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glBindFramebuffer(36160, this.o[i2]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.p[i2], 0);
            GLES20.glBindTexture(3553, 0);
            GLES20.glBindFramebuffer(36160, 0);
        }
        if (this.t) {
            K0();
        }
    }

    public final void I(float f2, float f3, float f4, int i2) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        float fMax = Math.max(f2, Math.max(f3, f4));
        CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
        if (i2 != -1) {
            cLMakeupLiveBlush3DFilterArr[0][i2].X5 = f2 / fMax;
            cLMakeupLiveBlush3DFilterArr[1][i2].X5 = f3 / fMax;
            cLMakeupLiveBlush3DFilterArr[2][i2].X5 = f4 / fMax;
            return;
        }
        int i3 = 0;
        while (true) {
            CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr2 = cLMakeupLiveBlush3DFilterArr[0];
            if (i3 >= cLMakeupLiveBlush3DFilterArr2.length) {
                return;
            }
            cLMakeupLiveBlush3DFilterArr2[i3].X5 = f2 / fMax;
            cLMakeupLiveBlush3DFilterArr[1][i3].X5 = f3 / fMax;
            cLMakeupLiveBlush3DFilterArr[2][i3].X5 = f4 / fMax;
            i3++;
        }
    }

    public final void I0(int i2) {
        this.v = i2;
        for (int i3 = 0; i3 < 3; i3++) {
            this.D[i3].j0 = i2;
            this.E[i3].o0 = i2;
            this.F[i3].o0 = i2;
            this.G[i3].o0 = i2;
            this.H[i3].o0 = i2;
            this.N[i3].m9 = i2;
            this.O[i3].n9 = i2;
            this.P[i3].b7 = i2;
            this.Q[i3].N = i2;
            this.I[i3].L = i2;
            this.R[i3].e1 = i2;
            this.T[i3].H1 = i2;
            this.U[i3].q = i2;
            this.V[i3].q = i2;
            this.Z[i3].D0 = i2;
            this.a0[i3].u1 = i2;
            this.d0[i3].M = i2;
            this.J[i3].o0 = i2;
            this.K[i3].o0 = i2;
        }
        int i4 = 0;
        while (true) {
            CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr = this.W;
            if (i4 >= cLMakeupLive3DFilterArr.length) {
                break;
            }
            cLMakeupLive3DFilterArr[i4].r(i2);
            i4++;
        }
        int i5 = 0;
        while (true) {
            CLMakeupLiveFaceArtFilter[] cLMakeupLiveFaceArtFilterArr = this.X;
            if (i5 >= cLMakeupLiveFaceArtFilterArr.length) {
                break;
            }
            cLMakeupLiveFaceArtFilterArr[i5].o0 = i2;
            i5++;
        }
        int i6 = 0;
        while (true) {
            m[] mVarArr = this.Y;
            if (i6 >= mVarArr.length) {
                break;
            }
            mVarArr[i6].o0 = i2;
            i6++;
        }
        int i7 = 0;
        while (true) {
            CLMakeupLiveFaceContourFilter[] cLMakeupLiveFaceContourFilterArr = this.b0;
            if (i7 >= cLMakeupLiveFaceContourFilterArr.length) {
                break;
            }
            cLMakeupLiveFaceContourFilterArr[i7].o0 = i2;
            i7++;
        }
        int i9 = 0;
        while (true) {
            CLMakeupLiveCubeEyewearFilter[] cLMakeupLiveCubeEyewearFilterArr = this.e0;
            if (i9 >= cLMakeupLiveCubeEyewearFilterArr.length) {
                break;
            }
            cLMakeupLiveCubeEyewearFilterArr[i9].u0 = i2;
            i9++;
        }
        for (int i10 = 0; i10 < this.c0.length; i10++) {
            this.b0[i10].o0 = i2;
        }
        int i11 = 0;
        while (true) {
            CLMakeupLiveBronzerFilter[] cLMakeupLiveBronzerFilterArr = this.S;
            if (i11 >= cLMakeupLiveBronzerFilterArr.length) {
                break;
            }
            cLMakeupLiveBronzerFilterArr[i11].o0 = i2;
            i11++;
        }
        int i12 = 0;
        while (true) {
            com.cyberlink.clgpuimage.cosmetic.e[] eVarArr = this.f0;
            if (i12 >= eVarArr.length) {
                break;
            }
            eVarArr[i12].V = i2;
            i12++;
        }
        for (int i13 = 0; i13 < 3; i13++) {
            int i14 = 0;
            while (true) {
                CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
                if (i14 < cLMakeupLiveBlush3DFilterArr[0].length) {
                    cLMakeupLiveBlush3DFilterArr[i13][i14].o0 = i2;
                    i14++;
                }
            }
        }
        for (int i15 = 0; i15 < 3; i15++) {
            int i16 = 0;
            while (true) {
                i[][] iVarArr = this.M;
                if (i16 < iVarArr[0].length) {
                    iVarArr[i15][i16].o0 = i2;
                    i16++;
                }
            }
        }
        this.l0.q = i2;
        this.m0.q = i2;
        this.g0.V = i2;
        this.h0.V = i2;
        this.q0.q = i2;
        this.o0.p = i2;
    }

    public final void J(float f2, int i2) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr = this.J;
        if (i2 != -1) {
            cLMakeupLiveBlush3DFilterArr[i2].V5 = f2 / 100.0f;
            return;
        }
        for (int i3 = 0; i3 < 3; i3++) {
            cLMakeupLiveBlush3DFilterArr[i3].V5 = f2 / 100.0f;
        }
    }

    public final void J0() {
        synchronized (this.r6) {
            try {
                if (this.s6 != 300 || this.t6 != 300) {
                    this.s6 = 300;
                    this.t6 = 300;
                    this.u6 = false;
                    for (int i2 = 0; i2 < 3; i2++) {
                        this.v6[i2] = false;
                    }
                    this.w6 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void K(float f2, boolean z) {
        float fMin = Math.min(Math.max(this.l1, Call.Parameters.DEFAULT_CAMERA_ZOOM), 1.0f);
        float[] fArr = {fMin, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        float[] fArr2 = {1.0f, fMin};
        if (!z) {
            fArr[1] = 0.0f;
            fArr[0] = 0.0f;
            fArr2[1] = 1.0f;
            fArr2[0] = 1.0f;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            this.R[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.T[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.b0[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.I[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.E[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.F[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.J[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.S[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.a0[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.Z[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.X[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.Y[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.P[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.N[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.O[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.D[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.U[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.V[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.W[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.e0[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            this.Q[i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            for (int i3 = 0; i3 < 3; i3++) {
                this.L[i3][i2].SetProcessRange(fArr[i2], fArr2[i2], f2);
            }
        }
    }

    public final void K0() {
        if (this.g <= 0 || this.f25446h <= 0) {
            this.s = false;
            return;
        }
        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
        GLES20.glGetIntegerv(36183, intBufferAllocate);
        if (intBufferAllocate.get(0) < 4) {
            this.s = false;
            return;
        }
        int[] iArr = new int[1];
        this.q = iArr;
        this.r = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glBindFramebuffer(36160, this.q[0]);
        GLES20.glGenRenderbuffers(1, this.r, 0);
        GLES20.glBindRenderbuffer(36161, this.r[0]);
        GLES30.glRenderbufferStorageMultisample(36161, 4, 32856, this.g, this.f25446h);
        GLES20.glFramebufferRenderbuffer(36160, 36064, 36161, this.r[0]);
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glBindRenderbuffer(36161, 0);
        this.s = true;
    }

    public final void L(int i2) {
        synchronized (this.y0) {
            this.A.d = i2;
        }
    }

    public final void L0(int i2, int i3) {
        int i4 = 0;
        if (i3 == -1) {
            Bitmap[] bitmapArr = this.k2;
            Bitmap bitmap = bitmapArr[i2];
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmapArr[i2].recycle();
            }
            bitmapArr[i2] = null;
            while (i4 < 2) {
                this.u2[i2][i4] = null;
                i4++;
            }
            this.y2[i2] = null;
            return;
        }
        Bitmap[][] bitmapArr2 = this.o2;
        Bitmap bitmap2 = bitmapArr2[i3][i2];
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            bitmapArr2[i3][i2].recycle();
        }
        bitmapArr2[i3][i2] = null;
        while (i4 < 2) {
            this.w2[i3][i2][i4] = null;
            i4++;
        }
        this.A2[i3][i2] = null;
    }

    public final void M(int i2, int i3) {
        if (i3 < -1 || i3 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr = this.J;
        if (i3 != -1) {
            cLMakeupLiveBlush3DFilterArr[i3].T5 = i2;
            return;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            cLMakeupLiveBlush3DFilterArr[i4].T5 = i2;
        }
    }

    public final int M0(int i2) {
        return this.a1[2 - i2];
    }

    public final void N(int i2, int i3, float f2) {
        if (i3 < -1 || i3 >= 3 || i2 < -1 || i2 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
        if (i3 != -1) {
            cLMakeupLiveBlush3DFilterArr[i2][i3].V5 = f2 / 100.0f;
            return;
        }
        for (int i4 = 0; i4 < cLMakeupLiveBlush3DFilterArr[0].length; i4++) {
            cLMakeupLiveBlush3DFilterArr[i2][i4].V5 = f2 / 100.0f;
        }
    }

    public final void N0(int i2, int i3) {
        if (i3 == -1) {
            Bitmap[] bitmapArr = this.b2;
            Bitmap bitmap = bitmapArr[i2];
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmapArr[i2].recycle();
            }
            bitmapArr[i2] = null;
            Bitmap[] bitmapArr2 = this.K2;
            Bitmap bitmap2 = bitmapArr2[i2];
            if (bitmap2 != null && !bitmap2.isRecycled()) {
                bitmapArr2[i2].recycle();
            }
            bitmapArr2[i2] = null;
            this.C2[i2] = null;
            this.G2[i2] = null;
            return;
        }
        Bitmap[][] bitmapArr3 = this.f2;
        Bitmap bitmap3 = bitmapArr3[i3][i2];
        if (bitmap3 != null && !bitmap3.isRecycled()) {
            bitmapArr3[i3][i2].recycle();
        }
        bitmapArr3[i3][i2] = null;
        Bitmap[][] bitmapArr4 = this.M2;
        Bitmap bitmap4 = bitmapArr4[i3][i2];
        if (bitmap4 != null && !bitmap4.isRecycled()) {
            bitmapArr4[i3][i2].recycle();
        }
        bitmapArr4[i3][i2] = null;
        this.E2[i3][i2] = null;
        this.I2[i3][i2] = null;
    }

    public final void O(int i2, int i3, int i4) {
        if (i4 < -1 || i4 >= 3 || i3 < -1 || i3 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
        if (i4 != -1) {
            cLMakeupLiveBlush3DFilterArr[i3][i4].T5 = i2;
            return;
        }
        for (int i5 = 0; i5 < cLMakeupLiveBlush3DFilterArr[0].length; i5++) {
            cLMakeupLiveBlush3DFilterArr[i3][i5].T5 = i2;
        }
    }

    public final void O0() {
        int outputWidth = getOutputWidth();
        int outputHeight = getOutputHeight();
        int[] iArr = new int[1];
        this.u = iArr;
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(3553, this.u[0]);
        GLES20.glTexImage2D(3553, 0, 6408, outputWidth, outputHeight, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glBindTexture(3553, 0);
    }

    public final void P(int i2, int i3, PointF[] pointFArr) {
        this.K1 = i2;
        this.L1 = i3;
        PointF pointF = new PointF(pointFArr[1].x, pointFArr[0].y);
        for (int i4 = 0; i4 < 2; i4++) {
            this.l2[i4].set(Math.round(pointF.x), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
            this.c2[i4].set(Math.round(pointF.x), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
            this.T1[i4].set(Math.round(pointF.x), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
            for (int i5 = 0; i5 < 3; i5++) {
                this.X1[i5][i4].set(Math.round(pointF.x), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
                this.g2[i5][i4].set(Math.round(pointF.x), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
                this.p2[i5][i4].set(Math.round(pointF.x), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
            }
        }
        this.H1 = true;
        for (int i6 = 0; i6 < 3; i6++) {
            this.E[i6].l0(i2, i3, pointFArr);
            this.F[i6].l0(i2, i3, pointFArr);
            this.G[i6].l0(i2, i3, pointFArr);
            this.H[i6].l0(i2, i3, pointFArr);
        }
    }

    public final void P0(int i2) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        int i3 = 0;
        if (i2 == -1) {
            Bitmap[] bitmapArr = this.m6;
            int length = bitmapArr != null ? bitmapArr.length : 0;
            if (length != 0) {
                while (i3 < length) {
                    this.m6[i3].recycle();
                    i3++;
                }
                this.m6 = null;
                return;
            }
            return;
        }
        Bitmap[][] bitmapArr2 = this.n6;
        Bitmap[] bitmapArr3 = bitmapArr2[i2];
        int length2 = bitmapArr3 != null ? bitmapArr3.length : 0;
        if (length2 != 0) {
            while (i3 < length2) {
                bitmapArr2[i2][i3].recycle();
                i3++;
            }
            bitmapArr2[i2] = null;
        }
    }

    public final void Q(int i2, boolean z) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        boolean[] zArr = this.C;
        if (i2 != -1) {
            zArr[i2] = z;
            return;
        }
        for (int i3 = 0; i3 < 3; i3++) {
            zArr[i3] = z;
        }
    }

    public final void Q0(int i2, int i3) {
        if (i3 >= 3 || i3 < -1) {
            return;
        }
        if (i3 == -1) {
            this.S1[i2] = null;
        } else {
            this.W1[i3][i2] = null;
        }
    }

    public final void R(Bitmap bitmap, int i2, int i3, int i4, int i5) {
        int i6 = 3;
        if (i5 >= 3 || i5 < -1 || i4 >= 3) {
            return;
        }
        if (bitmap == null) {
            bitmap = h1();
        }
        synchronized (this.V6) {
            try {
                if (this.W6 == null) {
                    this.W6 = (CLMakeupLiveBlush3DFilter.a[][]) Array.newInstance((Class<?>) CLMakeupLiveBlush3DFilter.a.class, 3, 3);
                }
                int iMax = Math.max(0, i5);
                int i7 = iMax + 1;
                if (iMax == i5) {
                    i6 = i7;
                }
                while (iMax < i6) {
                    this.Z6[i4] = bitmap;
                    CLMakeupLiveBlush3DFilter.a[] aVarArr = this.W6[i4];
                    if (aVarArr[iMax] == null) {
                        aVarArr[iMax] = new CLMakeupLiveBlush3DFilter.a();
                    }
                    CLMakeupLiveBlush3DFilter.a aVar = this.W6[i4][iMax];
                    int i9 = this.X6[i4];
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    aVar.f25568a = i2;
                    aVar.f25569b = i3;
                    aVar.f25570c = i9;
                    aVar.d = height;
                    aVar.f25571e = width;
                    this.Y6[i4] = true;
                    iMax++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void R0() {
        this.b3.DestroyData();
        this.c3.DestroyData();
        this.d3.DestroyData();
        this.e3.DestroyData();
        this.f3.DestroyData();
        this.g3.DestroyData();
        this.i4.DestroyData();
        this.j4.DestroyData();
        this.m4.DestroyData();
        this.l4.DestroyData();
        this.O4.DestroyData();
        this.W4.DestroyData();
        this.u5.DestroyData();
        this.U6.DestroyData();
        this.k7.DestroyData();
        this.n3.DestroyData();
        this.c5.DestroyData();
        this.a7.DestroyData();
        this.f7.DestroyData();
        this.V2.DestroyData();
        this.P2.DestroyData();
        this.W2.DestroyData();
        this.X2.DestroyData();
        this.t7.DestroyData();
        this.V5.DestroyData();
        this.W5.DestroyData();
        this.X5.DestroyData();
        this.Y5.DestroyData();
        this.Z5.DestroyData();
        this.a6.DestroyData();
        this.d5.DestroyData();
        this.e5.DestroyData();
        this.f5.DestroyData();
        this.g5.DestroyData();
        this.D5.DestroyData();
        this.E5.DestroyData();
        this.F5.DestroyData();
        this.G5.DestroyData();
        this.H5.DestroyData();
        this.I5.DestroyData();
        this.u7.DestroyData();
        this.v7.DestroyData();
        this.w7.DestroyData();
        this.S5.DestroyData();
        this.T5.DestroyData();
    }

    public final void S(Rect rect, byte[] bArr) {
        int i2;
        if (rect == null) {
            return;
        }
        rect.top = this.L1;
        rect.bottom = -1;
        rect.left = this.K1;
        rect.right = -1;
        int i3 = 0;
        while (true) {
            i2 = this.L1;
            if (i3 >= i2) {
                break;
            }
            int i4 = this.K1 * i3;
            int i5 = 0;
            while (i5 < this.K1) {
                if ((bArr[i4 + i5] & 255) > 0) {
                    rect.top = Math.min(rect.top, i3);
                    rect.bottom = Math.max(rect.bottom, i3);
                    rect.left = Math.min(rect.left, i5);
                    break;
                }
                i5++;
            }
            for (int i6 = this.K1 - 1; i6 >= i5; i6--) {
                if ((bArr[i4 + i6] & 255) > 0) {
                    rect.right = Math.max(rect.right, i6);
                    break;
                }
            }
            i3++;
        }
        if (rect.top == i2 || rect.bottom == -1 || rect.left == this.K1 || rect.right == -1) {
            rect.top = 0;
            rect.bottom = i2;
            rect.left = 0;
            rect.right = this.K1;
        }
    }

    public final void S0(int i2) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        if (i2 == -1) {
            int[] iArr = this.o6;
            int length = iArr != null ? iArr.length : 0;
            if (length != 0) {
                for (int i3 = 0; i3 < length; i3++) {
                    int[] iArr2 = this.o6;
                    if (iArr2[i3] != -1) {
                        GLES20.glDeleteTextures(1, iArr2, i3);
                        this.o6[i3] = -1;
                    }
                }
                this.o6 = null;
            }
            this.e6 = false;
            return;
        }
        int[][] iArr3 = this.p6;
        int[] iArr4 = iArr3[i2];
        int length2 = iArr4 != null ? iArr4.length : 0;
        if (length2 != 0) {
            for (int i4 = 0; i4 < length2; i4++) {
                int[] iArr5 = iArr3[i2];
                if (iArr5[i4] != -1) {
                    GLES20.glDeleteTextures(1, iArr5, i4);
                    iArr3[i2][i4] = -1;
                }
            }
            iArr3[i2] = null;
        }
        this.f6[i2] = false;
    }

    public final void T(CLShare3DRelatedClasses.Pass1BufferData pass1BufferData, int i2, boolean z) {
        int outputWidth = getOutputWidth();
        int outputHeight = getOutputHeight();
        if (outputWidth <= 0 || outputHeight <= 0) {
            return;
        }
        int i3 = outputWidth * i2;
        int i4 = outputHeight * i2;
        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
        GLES20.glGetIntegerv(3379, intBufferAllocate);
        while (true) {
            if (pass1BufferData.CreateData(i3, i4, z) && i3 <= intBufferAllocate.get(0) && i4 <= intBufferAllocate.get(0)) {
                return;
            }
            pass1BufferData.DestroyData();
            i3 >>= 1;
            i4 >>= 1;
        }
    }

    public final void T0(int i2, int i3) {
        if (i3 == -1) {
            int[] iArr = this.n2;
            int i4 = iArr[i2];
            if (i4 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i4}, 0);
                iArr[i2] = -1;
            }
            for (int i5 = 0; i5 < 2; i5++) {
                int[][] iArr2 = this.t2;
                int i6 = iArr2[i2][i5];
                if (i6 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i6}, 0);
                    iArr2[i2][i5] = -1;
                }
            }
            int[] iArr3 = this.x2;
            int i7 = iArr3[i2];
            if (i7 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i7}, 0);
                iArr3[i2] = -1;
                return;
            }
            return;
        }
        int[][] iArr4 = this.r2;
        int i9 = iArr4[i3][i2];
        if (i9 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i9}, 0);
            iArr4[i3][i2] = -1;
        }
        for (int i10 = 0; i10 < 2; i10++) {
            int[][][] iArr5 = this.v2;
            int i11 = iArr5[i3][i2][i10];
            if (i11 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i11}, 0);
                iArr5[i3][i2][i10] = -1;
            }
        }
        int[][] iArr6 = this.z2;
        int i12 = iArr6[i3][i2];
        if (i12 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i12}, 0);
            iArr6[i3][i2] = -1;
        }
    }

    public final void U(ByteBuffer byteBuffer, int i2, int i3, int i4) {
        synchronized (this.p1) {
            try {
                int iMin = Math.min(i4, 1);
                this.s1[iMin] = true;
                Bitmap bitmap = this.n1[iMin];
                if (bitmap == null || i2 != bitmap.getWidth() || i3 != this.n1[iMin].getHeight()) {
                    this.n1[iMin] = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                }
                byteBuffer.rewind();
                this.n1[iMin].copyPixelsFromBuffer(byteBuffer);
                for (int i5 = 0; i5 < 3; i5++) {
                    CLStickerLiveFilter cLStickerLiveFilter = this.d0[i5];
                    int width = this.n1[iMin].getWidth();
                    int height = this.n1[iMin].getHeight();
                    cLStickerLiveFilter.getClass();
                    int iMin2 = Math.min(iMin, 1);
                    cLStickerLiveFilter.I[iMin2] = width;
                    cLStickerLiveFilter.J[iMin2] = height;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void U0() {
        synchronized (this.q1) {
            for (int i2 = 0; i2 < 3; i2++) {
                for (int i3 = 0; i3 < 4; i3++) {
                    try {
                        if (this.r1[i2][i3]) {
                            int i4 = this.t1[i2][i3];
                            if (i4 != -1) {
                                GLES20.glDeleteTextures(1, new int[]{i4}, 0);
                                this.t1[i2][i3] = -1;
                            }
                            Bitmap bitmap = this.o1[i2][i3];
                            if (bitmap != null && !bitmap.isRecycled()) {
                                this.t1[i2][i3] = OpenGlUtils.f(this.o1[i2][i3], -1);
                            }
                            this.r1[i2][i3] = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public final void V(ByteBuffer byteBuffer, int i2, int i3, int i4, int i5) {
        synchronized (this.q1) {
            try {
                int iMin = Math.min(i4, 3);
                this.r1[i5][iMin] = true;
                Bitmap bitmap = this.o1[i5][iMin];
                if (bitmap == null || i2 != bitmap.getWidth() || i3 != this.o1[i5][iMin].getHeight()) {
                    this.o1[i5][iMin] = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                }
                byteBuffer.rewind();
                this.o1[i5][iMin].copyPixelsFromBuffer(byteBuffer);
                CLStickerLiveFilter cLStickerLiveFilter = this.d0[i5];
                int width = this.o1[i5][iMin].getWidth();
                int height = this.o1[i5][iMin].getHeight();
                cLStickerLiveFilter.getClass();
                int iMin2 = Math.min(iMin, 3);
                cLStickerLiveFilter.G[iMin2] = width;
                cLStickerLiveFilter.H[iMin2] = height;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void V0(int i2) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        if (i2 == -1) {
            int i3 = this.z1;
            if (i3 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i3}, 0);
                this.z1 = -1;
            }
            int i4 = this.A1;
            if (i4 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i4}, 0);
                this.A1 = -1;
                return;
            }
            return;
        }
        int[] iArr = this.B1;
        int i5 = iArr[i2];
        if (i5 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i5}, 0);
            iArr[i2] = -1;
        }
        int[] iArr2 = this.C1;
        int i6 = iArr2[i2];
        if (i6 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i6}, 0);
            iArr2[i2] = -1;
        }
    }

    public final void W(ArrayList arrayList, HashMap map, ArrayList arrayList2, CLMakeupLive3DFilter.Object3DEyewearGlassInfo object3DEyewearGlassInfo, CLMakeupLive3DFilter.Object3DEyewearSetting object3DEyewearSetting, int i2, HashMap map2) {
        int size;
        Bitmap bitmap;
        Bitmap bitmap2;
        int i3;
        ArrayList arrayList3;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        int size2 = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i4 = 0; i4 < size; i4++) {
            CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList.get(i4);
            if (liveObject3DModel != null && liveObject3DModel.IsValid()) {
                arrayList4.add(Integer.valueOf(i4));
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (int i5 = 0; i5 < size2; i5++) {
            CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel2 = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList2.get(i5);
            if (liveObject3DModel2 != null && liveObject3DModel2.IsValid()) {
                arrayList5.add(Integer.valueOf(i5));
            }
        }
        int size3 = arrayList4.size();
        int size4 = arrayList5.size();
        if (size3 != 0) {
            synchronized (this.Y2) {
                try {
                    this.Z2 = new CLShare3DRelatedClasses.Live3DRenderData[size3];
                    this.a3 = null;
                    if (size4 > 0) {
                        this.a3 = new CLShare3DRelatedClasses.Live3DRenderData[size4];
                    }
                    this.j3 = i2;
                    for (String str : this.z4.keySet()) {
                        if (str.endsWith(".hdr")) {
                            i3 = ((CLShare3DRelatedClasses.Live3DHDRTextureData) this.A4.get(str)).texture_id;
                            if (i3 != -1) {
                                arrayList3 = this.B4;
                                arrayList3.add(Integer.valueOf(i3));
                            }
                        } else {
                            i3 = ((f) this.z4.get(str)).d;
                            if (i3 != -1) {
                                arrayList3 = this.B4;
                                arrayList3.add(Integer.valueOf(i3));
                            }
                        }
                    }
                    this.z4.clear();
                    this.A4.clear();
                    HashMap map3 = new HashMap();
                    int i6 = 0;
                    while (i6 < size3) {
                        CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel3 = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList.get(((Integer) arrayList4.get(i6)).intValue());
                        if (liveObject3DModel3.IsUseAmbientTexture()) {
                            String str2 = liveObject3DModel3.ambient_data.texture_image;
                            if (!this.z4.containsKey(str2)) {
                                this.z4.put(str2, new f((Bitmap) map.get(str2), g.f25676a));
                            }
                            ((f) this.z4.get(str2)).f25674b.add(Integer.valueOf(i6));
                        } else {
                            i6 = i6;
                        }
                        if (liveObject3DModel3.IsUseDiffuseTexture()) {
                            String str3 = liveObject3DModel3.diffuse_data.texture_image;
                            if (this.z4.containsKey(str3)) {
                                bitmap2 = null;
                            } else {
                                f fVar = new f((Bitmap) map.get(str3), g.f25677b);
                                bitmap2 = fVar.f25673a;
                                this.z4.put(str3, fVar);
                            }
                            ((f) this.z4.get(str3)).f25674b.add(Integer.valueOf(i6));
                            bitmap = bitmap2;
                        } else {
                            bitmap = null;
                        }
                        if (liveObject3DModel3.IsUseSpecularTexture()) {
                            String str4 = liveObject3DModel3.specular_data.texture_image;
                            if (!this.z4.containsKey(str4)) {
                                this.z4.put(str4, new f((Bitmap) map.get(str4), g.f25678c));
                            }
                            ((f) this.z4.get(str4)).f25674b.add(Integer.valueOf(i6));
                        }
                        if (liveObject3DModel3.IsUseEnvironmentTexture()) {
                            String str5 = liveObject3DModel3.environment_data.texture_image;
                            if (str5.endsWith(".hdr")) {
                                if (!this.A4.containsKey(str5)) {
                                    CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData = (CLShare3DRelatedClasses.Live3DHDRTextureData) map2.get(str5);
                                    this.z4.put(str5, null);
                                    this.A4.put(str5, live3DHDRTextureData);
                                }
                                ((CLShare3DRelatedClasses.Live3DHDRTextureData) this.A4.get(str5)).object_indices.add(Integer.valueOf(i6));
                            } else {
                                if (!this.z4.containsKey(str5)) {
                                    this.z4.put(str5, new f((Bitmap) map.get(str5), g.d));
                                }
                                ((f) this.z4.get(str5)).f25674b.add(Integer.valueOf(i6));
                            }
                        }
                        if (liveObject3DModel3.IsUseNormalMapTexture()) {
                            String str6 = liveObject3DModel3.normal_map_data.texture_image;
                            if (!this.z4.containsKey(str6)) {
                                this.z4.put(str6, new f((Bitmap) map.get(str6), g.f25679e));
                            }
                            ((f) this.z4.get(str6)).f25674b.add(Integer.valueOf(i6));
                        }
                        if (liveObject3DModel3.IsUseOrmTexture()) {
                            String str7 = liveObject3DModel3.orm_data.texture_image;
                            if (!this.z4.containsKey(str7)) {
                                this.z4.put(str7, new f((Bitmap) map.get(str7), g.f25680f));
                            }
                            ((f) this.z4.get(str7)).f25674b.add(Integer.valueOf(i6));
                        }
                        liveObject3DModel3.SetTangentArray();
                        this.Z2[i6] = new CLShare3DRelatedClasses.Live3DRenderData(liveObject3DModel3.vertex_array, liveObject3DModel3.normal_array, liveObject3DModel3.texcoord_array, liveObject3DModel3.tangent_array, liveObject3DModel3.ambient_data.color, liveObject3DModel3.diffuse_data.color, liveObject3DModel3.specular_data.color, liveObject3DModel3.dissolve, liveObject3DModel3.transmission_filter, liveObject3DModel3.environment_mode, liveObject3DModel3.environment_intensity, liveObject3DModel3.environment_tile_x, liveObject3DModel3.environment_tile_y, liveObject3DModel3.is_lens, bitmap, liveObject3DModel3.isPBR, liveObject3DModel3.exposure, liveObject3DModel3.hori_orien, liveObject3DModel3.vert_orien, liveObject3DModel3.is_enable_mirror_hdr, liveObject3DModel3.isGem, liveObject3DModel3.gem_center_x, liveObject3DModel3.gem_center_y, liveObject3DModel3.gem_center_z, liveObject3DModel3.gem_pos_scale_x, liveObject3DModel3.gem_pos_scale_y, liveObject3DModel3.gem_pos_scale_z, liveObject3DModel3.gem_pos_shift_x, liveObject3DModel3.gem_pos_shift_y, liveObject3DModel3.gem_pos_shift_z, liveObject3DModel3.gem_absorption, liveObject3DModel3.gem_bounces, liveObject3DModel3.gem_color_x, liveObject3DModel3.gem_color_y, liveObject3DModel3.gem_color_z, liveObject3DModel3.gem_dispersion, liveObject3DModel3.gem_ior, liveObject3DModel3.fresnel_intensity, liveObject3DModel3.isSmallGem, liveObject3DModel3.bloom_scale, liveObject3DModel3.bloom_intensity, CLShare3DRelatedClasses.LiveObject3DModel.brdf_lut_width, CLShare3DRelatedClasses.LiveObject3DModel.brdf_lut_height, CLShare3DRelatedClasses.LiveObject3DModel.m_brdf_texture_buffer, liveObject3DModel3.small_gem_rotation_mat, liveObject3DModel3.is_referenced_small_gem);
                        if (liveObject3DModel3.is_referenced_small_gem) {
                            map3.put(Integer.valueOf(liveObject3DModel3.small_gem_id), this.Z2[i6]);
                        }
                        i6++;
                    }
                    for (int i7 = 0; i7 < size3; i7++) {
                        CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel4 = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList.get(((Integer) arrayList4.get(i7)).intValue());
                        if (liveObject3DModel4.isSmallGem) {
                            this.Z2[i7].referencing_small_gem = (CLShare3DRelatedClasses.Live3DRenderData) map3.get(Integer.valueOf(liveObject3DModel4.referencing_small_gem_id));
                        }
                    }
                    for (int i9 = 0; i9 < size4; i9++) {
                        CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel5 = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList2.get(((Integer) arrayList5.get(i9)).intValue());
                        this.a3[i9] = new CLShare3DRelatedClasses.Live3DRenderData(liveObject3DModel5.vertex_array, liveObject3DModel5.normal_array, liveObject3DModel5.texcoord_array, liveObject3DModel5.ambient_data.color, liveObject3DModel5.diffuse_data.color, liveObject3DModel5.specular_data.color, liveObject3DModel5.dissolve, liveObject3DModel5.transmission_filter, liveObject3DModel5.environment_mode, liveObject3DModel5.environment_intensity, liveObject3DModel5.environment_tile_x, liveObject3DModel5.environment_tile_y);
                    }
                    this.C4 = true;
                    this.D4 = true;
                    if (object3DEyewearGlassInfo != null) {
                        this.H4 = object3DEyewearGlassInfo;
                        this.F4 = true;
                    }
                    if (object3DEyewearSetting != null) {
                        this.G4 = object3DEyewearSetting;
                        this.E4 = true;
                    }
                    map.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void W0(int i2, int i3) {
        if (i3 == -1) {
            int[] iArr = this.V1;
            int i4 = iArr[i2];
            if (i4 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i4}, 0);
                iArr[i2] = -1;
                return;
            }
            return;
        }
        int[][] iArr2 = this.Z1;
        int i5 = iArr2[i3][i2];
        if (i5 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i5}, 0);
            iArr2[i3][i2] = -1;
        }
    }

    public final void X(List list) {
        int i2;
        Iterator it;
        ArrayList<Integer> arrayList;
        synchronized (this.o4) {
            try {
                for (Map map : this.q4) {
                    Iterator it2 = map.keySet().iterator();
                    while (it2.hasNext()) {
                        f fVar = (f) map.get((String) it2.next());
                        int i3 = fVar != null ? fVar.d : -1;
                        if (i3 != -1) {
                            this.s4.add(Integer.valueOf(i3));
                        }
                    }
                }
                for (Map map2 : this.r4) {
                    Iterator it3 = map2.keySet().iterator();
                    while (it3.hasNext()) {
                        CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData = (CLShare3DRelatedClasses.Live3DHDRTextureData) map2.get((String) it3.next());
                        int i4 = live3DHDRTextureData != null ? live3DHDRTextureData.texture_id : -1;
                        if (i4 != -1) {
                            this.t4.add(Integer.valueOf(i4));
                        }
                    }
                }
                Iterator it4 = this.p4.iterator();
                while (true) {
                    i2 = 0;
                    if (!it4.hasNext()) {
                        break;
                    }
                    for (CLShare3DRelatedClasses.Live3DRenderData live3DRenderData : (CLShare3DRelatedClasses.Live3DRenderData[]) it4.next()) {
                        this.u4.add(Integer.valueOf(live3DRenderData.gemMeshNormEnvTexture[0]));
                        this.u4.add(Integer.valueOf(live3DRenderData.gemMeshPosEnvTexture[0]));
                    }
                }
                this.p4.clear();
                this.q4.clear();
                this.r4.clear();
                this.v4 = false;
                Iterator it5 = ((ArrayList) list).iterator();
                while (it5.hasNext()) {
                    b bVar = (b) it5.next();
                    ArrayList arrayList2 = bVar.f25663a;
                    HashMap map3 = bVar.f25664b;
                    HashMap map4 = bVar.f25665c;
                    if (arrayList2 == null || map3 == null) {
                        it = it5;
                        this.p4.add(null);
                    } else {
                        int size = arrayList2.size();
                        if (size == 0) {
                            it = it5;
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            for (int i5 = i2; i5 < size; i5++) {
                                CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList2.get(i5);
                                if (liveObject3DModel != null && liveObject3DModel.IsValid()) {
                                    arrayList3.add(Integer.valueOf(i5));
                                }
                            }
                            int size2 = arrayList3.size();
                            if (size2 == 0) {
                                it = it5;
                            } else {
                                HashMap map5 = new HashMap();
                                HashMap map6 = new HashMap();
                                CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = new CLShare3DRelatedClasses.Live3DRenderData[size2];
                                HashMap map7 = new HashMap();
                                int i6 = i2;
                                while (i6 < size2) {
                                    CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel2 = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList2.get(((Integer) arrayList3.get(i6)).intValue());
                                    if (liveObject3DModel2.IsUseAmbientTexture()) {
                                        String str = liveObject3DModel2.ambient_data.texture_image;
                                        if (!map5.containsKey(str)) {
                                            map5.put(str, new f((Bitmap) map3.get(str), g.f25676a));
                                        }
                                        ((f) map5.get(str)).f25674b.add(Integer.valueOf(i6));
                                    } else {
                                        it5 = it5;
                                        i6 = i6;
                                    }
                                    if (liveObject3DModel2.IsUseDiffuseTexture()) {
                                        String str2 = liveObject3DModel2.diffuse_data.texture_image;
                                        if (!map5.containsKey(str2)) {
                                            map5.put(str2, new f((Bitmap) map3.get(str2), g.f25677b));
                                        }
                                        ((f) map5.get(str2)).f25674b.add(Integer.valueOf(i6));
                                    }
                                    if (liveObject3DModel2.IsUseSpecularTexture()) {
                                        String str3 = liveObject3DModel2.specular_data.texture_image;
                                        if (!map5.containsKey(str3)) {
                                            map5.put(str3, new f((Bitmap) map3.get(str3), g.f25678c));
                                        }
                                        ((f) map5.get(str3)).f25674b.add(Integer.valueOf(i6));
                                    }
                                    if (liveObject3DModel2.IsUseEnvironmentTexture()) {
                                        String str4 = liveObject3DModel2.environment_data.texture_image;
                                        if (str4.endsWith(".hdr")) {
                                            if (!map6.containsKey(str4)) {
                                                CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData2 = (CLShare3DRelatedClasses.Live3DHDRTextureData) map4.get(str4);
                                                map5.put(str4, null);
                                                map6.put(str4, live3DHDRTextureData2);
                                            }
                                            arrayList = ((CLShare3DRelatedClasses.Live3DHDRTextureData) map6.get(str4)).object_indices;
                                        } else {
                                            if (!map5.containsKey(str4)) {
                                                map5.put(str4, new f((Bitmap) map3.get(str4), g.d));
                                            }
                                            arrayList = ((f) map5.get(str4)).f25674b;
                                        }
                                        arrayList.add(Integer.valueOf(i6));
                                    }
                                    if (liveObject3DModel2.IsUseNormalMapTexture()) {
                                        String str5 = liveObject3DModel2.normal_map_data.texture_image;
                                        if (!map5.containsKey(str5)) {
                                            map5.put(str5, new f((Bitmap) map3.get(str5), g.f25679e));
                                        }
                                        ((f) map5.get(str5)).f25674b.add(Integer.valueOf(i6));
                                    }
                                    if (liveObject3DModel2.IsUseOrmTexture()) {
                                        String str6 = liveObject3DModel2.orm_data.texture_image;
                                        if (!map5.containsKey(str6)) {
                                            map5.put(str6, new f((Bitmap) map3.get(str6), g.f25680f));
                                        }
                                        ((f) map5.get(str6)).f25674b.add(Integer.valueOf(i6));
                                    }
                                    liveObject3DModel2.SetTangentArray();
                                    live3DRenderDataArr[i6] = new CLShare3DRelatedClasses.Live3DRenderData(liveObject3DModel2.vertex_array, liveObject3DModel2.normal_array, liveObject3DModel2.texcoord_array, liveObject3DModel2.tangent_array, liveObject3DModel2.ambient_data.color, liveObject3DModel2.diffuse_data.color, liveObject3DModel2.specular_data.color, liveObject3DModel2.dissolve, liveObject3DModel2.transmission_filter, liveObject3DModel2.environment_mode, liveObject3DModel2.environment_intensity, liveObject3DModel2.environment_tile_x, liveObject3DModel2.environment_tile_y, liveObject3DModel2.earring_matrix_index, liveObject3DModel2.isPBR, liveObject3DModel2.exposure, liveObject3DModel2.hori_orien, liveObject3DModel2.vert_orien, liveObject3DModel2.is_enable_mirror_hdr, liveObject3DModel2.isGem, liveObject3DModel2.gem_center_x, liveObject3DModel2.gem_center_y, liveObject3DModel2.gem_center_z, liveObject3DModel2.gem_pos_scale_x, liveObject3DModel2.gem_pos_scale_y, liveObject3DModel2.gem_pos_scale_z, liveObject3DModel2.gem_pos_shift_x, liveObject3DModel2.gem_pos_shift_y, liveObject3DModel2.gem_pos_shift_z, liveObject3DModel2.gem_absorption, liveObject3DModel2.gem_bounces, liveObject3DModel2.gem_color_x, liveObject3DModel2.gem_color_y, liveObject3DModel2.gem_color_z, liveObject3DModel2.gem_dispersion, liveObject3DModel2.gem_ior, liveObject3DModel2.fresnel_intensity, liveObject3DModel2.isSmallGem, liveObject3DModel2.bloom_scale, liveObject3DModel2.bloom_intensity, CLShare3DRelatedClasses.LiveObject3DModel.brdf_lut_width, CLShare3DRelatedClasses.LiveObject3DModel.brdf_lut_height, CLShare3DRelatedClasses.LiveObject3DModel.m_brdf_texture_buffer, liveObject3DModel2.small_gem_rotation_mat, liveObject3DModel2.is_referenced_small_gem);
                                    if (liveObject3DModel2.is_referenced_small_gem) {
                                        map7.put(Integer.valueOf(liveObject3DModel2.small_gem_id), live3DRenderDataArr[i6]);
                                    }
                                    i6++;
                                    it5 = it5;
                                }
                                it = it5;
                                for (int i7 = 0; i7 < size2; i7++) {
                                    CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel3 = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList2.get(((Integer) arrayList3.get(i7)).intValue());
                                    if (liveObject3DModel3.isSmallGem) {
                                        live3DRenderDataArr[i7].referencing_small_gem = (CLShare3DRelatedClasses.Live3DRenderData) map7.get(Integer.valueOf(liveObject3DModel3.referencing_small_gem_id));
                                    }
                                }
                                this.p4.add(live3DRenderDataArr);
                                this.q4.add(map5);
                                this.r4.add(map6);
                                map3.clear();
                                this.v4 = true;
                            }
                        }
                    }
                    it5 = it;
                    i2 = 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void X0() {
        synchronized (this.p1) {
            for (int i2 = 0; i2 < 2; i2++) {
                try {
                    if (this.s1[i2]) {
                        int i3 = this.u1[i2];
                        if (i3 != -1) {
                            GLES20.glDeleteTextures(1, new int[]{i3}, 0);
                            this.u1[i2] = -1;
                        }
                        Bitmap bitmap = this.n1[i2];
                        if (bitmap != null && !bitmap.isRecycled()) {
                            this.u1[i2] = OpenGlUtils.f(this.n1[i2], -1);
                        }
                        this.s1[i2] = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void Y(boolean z, int i2, int i3, byte[] bArr) {
        boolean z2 = this.H1;
        if (i3 != -1) {
            if (z2) {
                for (int i4 = 0; i4 < 3; i4++) {
                    if (bArr.length != this.K1 * this.L1) {
                        return;
                    }
                }
                synchronized (this.G1) {
                    int i5 = !z ? 1 : 0;
                    try {
                        Q0(i5, i3);
                        this.W1[i3][i5] = ByteBuffer.wrap(bArr);
                        S(this.Y1[i3][i5], bArr);
                        (z ? this.E[i3] : this.F[i3]).p0(i2);
                        this.a2[i3][i5] = true;
                        this.R1[i3][i5] = true;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            }
            return;
        }
        if (z2 && bArr.length == this.K1 * this.L1) {
            synchronized (this.G1) {
                int i6 = !z ? 1 : 0;
                try {
                    Q0(i6, -1);
                    for (int i7 = 0; i7 < 3; i7++) {
                        Q0(i6, i7);
                    }
                    this.S1[i6] = ByteBuffer.wrap(bArr);
                    S(this.U1[i6], bArr);
                    for (int i9 = 0; i9 < 3; i9++) {
                        (z ? this.E[i9] : this.F[i9]).p0(i2);
                    }
                    for (int i10 = 0; i10 < 3; i10++) {
                        this.a2[i10][i6] = false;
                    }
                    this.O1[i6] = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void Y0(int i2) {
        if (i2 < -1 || i2 >= 3 || i2 == -1) {
            return;
        }
        Bitmap[] bitmapArr = this.x1;
        Bitmap bitmap = bitmapArr[i2];
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmapArr[i2].recycle();
            bitmapArr[i2] = null;
        }
        Bitmap[] bitmapArr2 = this.y1;
        Bitmap bitmap2 = bitmapArr2[i2];
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        bitmapArr2[i2].recycle();
        bitmapArr2[i2] = null;
    }

    public final void Z(byte[] bArr, int[] iArr, int i2) {
        if (bArr == null) {
            return;
        }
        int i3 = this.r3[i2];
        int i4 = this.s3[i2];
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i5 * i3) << 2;
            for (int i7 = 0; i7 < i3; i7++) {
                int i9 = bArr[(i7 << 2) + i6 + 3] & 255;
                if (i9 >= 4) {
                    iArr[i9] = (int) (((double) iArr[i9]) + 1.0d);
                }
            }
        }
    }

    public final void Z0(int i2, int i3) {
        if (i3 == -1) {
            int[] iArr = this.e2;
            int i4 = iArr[i2];
            if (i4 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i4}, 0);
                iArr[i2] = -1;
            }
            int[] iArr2 = this.B2;
            int i5 = iArr2[i2];
            if (i5 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i5}, 0);
                iArr2[i2] = -1;
            }
            int[] iArr3 = this.F2;
            int i6 = iArr3[i2];
            if (i6 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i6}, 0);
                iArr3[i2] = -1;
            }
            int[] iArr4 = this.J2;
            int i7 = iArr4[i2];
            if (i7 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i7}, 0);
                iArr4[i2] = -1;
                return;
            }
            return;
        }
        int[][] iArr5 = this.i2;
        int i9 = iArr5[i3][i2];
        if (i9 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i9}, 0);
            iArr5[i3][i2] = -1;
        }
        int[][] iArr6 = this.D2;
        int i10 = iArr6[i3][i2];
        if (i10 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i10}, 0);
            iArr6[i3][i2] = -1;
        }
        int[][] iArr7 = this.H2;
        int i11 = iArr7[i3][i2];
        if (i11 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i11}, 0);
            iArr7[i3][i2] = -1;
        }
        int[][] iArr8 = this.L2;
        int i12 = iArr8[i3][i2];
        if (i12 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i12}, 0);
            iArr8[i3][i2] = -1;
        }
    }

    public final void a0(int[] iArr, int i2, int i3, int i4, int i5) {
        if (this.d6 && i2 >= 0 && i3 >= 2 && i5 >= -1 && i5 < 3) {
            int i6 = this.g6;
            int i7 = this.h6;
            int iM = 0;
            for (int i9 = i2; i9 < i2 + i3; i9++) {
                iM += CLMakeupLiveEyeContactFilter.m(i7, i9) * CLMakeupLiveEyeContactFilter.m(i6, i9);
            }
            int[] iArr2 = iArr;
            if (iArr2.length < iM) {
                return;
            }
            synchronized (this.c6) {
                try {
                    if (i5 == -1) {
                        y();
                        this.m6 = new Bitmap[i3];
                        int i10 = 0;
                        int i11 = 0;
                        while (i10 < i3) {
                            int i12 = i2 + i10;
                            int iM2 = CLMakeupLiveEyeContactFilter.m(this.g6, i12);
                            int iM3 = CLMakeupLiveEyeContactFilter.m(this.h6, i12);
                            this.m6[i10] = Bitmap.createBitmap(iM2, iM3, Bitmap.Config.ARGB_8888);
                            this.m6[i10].setPixels(iArr2, i11, iM2, 0, 0, iM2, iM3);
                            i11 += iM2 * iM3;
                            i10++;
                            iArr2 = iArr;
                        }
                        for (int i13 = 0; i13 < 3; i13++) {
                            this.D[i13].k(i2, i3, i4);
                        }
                        this.k6 = i3;
                        for (int i14 = 0; i14 < 3; i14++) {
                            this.q6[i14] = false;
                            this.j6[i14] = false;
                        }
                        this.i6 = true;
                    } else {
                        P0(i5);
                        this.n6[i5] = new Bitmap[i3];
                        int i15 = 0;
                        for (int i16 = 0; i16 < i3; i16++) {
                            int i17 = i2 + i16;
                            int iM4 = CLMakeupLiveEyeContactFilter.m(this.g6, i17);
                            int iM5 = CLMakeupLiveEyeContactFilter.m(this.h6, i17);
                            this.n6[i5][i16] = Bitmap.createBitmap(iM4, iM5, Bitmap.Config.ARGB_8888);
                            this.n6[i5][i16].setPixels(iArr, i15, iM4, 0, 0, iM4, iM5);
                            i15 += iM4 * iM5;
                        }
                        this.D[i5].k(i2, i3, i4);
                        this.l6[i5] = i3;
                        this.q6[i5] = true;
                        this.j6[i5] = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void a1() {
        this.D3 = null;
        this.E3 = null;
        this.F3 = -1.0f;
        this.G3 = null;
        this.H3 = null;
        this.I3 = -1.0f;
        this.J3 = null;
        this.K3 = null;
        this.L3 = -1.0f;
        this.M3 = false;
        this.N3 = -1.0f;
        this.O3 = -1.0f;
        float[] fArr = this.B3;
        fArr[0] = 0.0f;
        fArr[1] = 50.0f;
        fArr[2] = 100.0f;
        this.P3 = false;
        this.Q3 = -1.0f;
        this.R3 = -1.0f;
        float[] fArr2 = this.C3;
        fArr2[0] = 0.0f;
        fArr2[1] = 50.0f;
        fArr2[2] = 100.0f;
        this.S3 = true;
    }

    public final void b0(int[] iArr, Rect rect) {
        int i2;
        if (rect == null) {
            return;
        }
        rect.top = this.L1;
        rect.bottom = -1;
        rect.left = this.K1;
        rect.right = -1;
        int i3 = 0;
        while (true) {
            i2 = this.L1;
            if (i3 >= i2) {
                break;
            }
            int i4 = this.K1 * i3;
            int i5 = 0;
            while (i5 < this.K1) {
                if ((iArr[i4 + i5] >>> 24) > 0) {
                    rect.top = Math.min(rect.top, i3);
                    rect.bottom = Math.max(rect.bottom, i3);
                    rect.left = Math.min(rect.left, i5);
                    break;
                }
                i5++;
            }
            for (int i6 = this.K1 - 1; i6 >= i5; i6--) {
                if ((iArr[i4 + i6] >>> 24) > 0) {
                    rect.right = Math.max(rect.right, i6);
                    break;
                }
            }
            i3++;
        }
        if (rect.top == i2 || rect.bottom == -1 || rect.left == this.K1 || rect.right == -1) {
            rect.top = 0;
            rect.bottom = i2;
            rect.left = 0;
            rect.right = this.K1;
        }
    }

    public final void b1(int i2) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        if (i2 == -1) {
            this.x6 = null;
            this.y6 = null;
        } else {
            this.B6[i2] = null;
            this.C6[i2] = null;
        }
    }

    public final void c0(CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata[] liveEyeContactMetadataArr, CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[][] liveEyeMakeupMetadataArr, CLMakeupLiveLipStickFilter.LipstickData[] lipstickDataArr, CLMakeupLiveLiplinerFilter.LiplinerData[] liplinerDataArr, CLMakeupLiveTeethWhitenFilter.TeethWhitenMetaData[] teethWhitenMetaDataArr, CLMakeupLiveBlushFilter.LiveBlushMakeupdata[] liveBlushMakeupdataArr, CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata[] liveBlush3DMetadataArr, CLMakeupLiveSmoothFilter$LiveSmoothMetadata[] cLMakeupLiveSmoothFilter$LiveSmoothMetadataArr, LiveFrameInformation[] liveFrameInformationArr, CLMakeupLiveConcealerFilter.LiveConcealerMetadata[] liveConcealerMetadataArr, CLMakeupLiveFoundationFilter.LiveFoundationData[] liveFoundationDataArr, CLMakeupLiveFoundationFilter.LiveFoundationMeshData[] liveFoundationMeshDataArr, CLMakeupLiveFaceReshapeFilter.LiveFaceReshapeMetadata[] liveFaceReshapeMetadataArr, CLMakeupLiveFaceDistortionFilter.LiveFaceDistortionMetadata[] liveFaceDistortionMetadataArr, CLMakeupLive3DFilter.LiveObject3DMetadata[] liveObject3DMetadataArr, CLMakeupLive3DFilter.LiveEarringMetadata[] liveEarringMetadataArr, CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata[] liveFaceArtMetadataArr, LiveDynamicRangeMetadata[] liveDynamicRangeMetadataArr, CLStickerLiveFilter.StickerData[] stickerDataArr, CLMakeupLiveHairDyeFilter.HairDyeData[] hairDyeDataArr, CLMakeupLive3DEyebrowFilter.LiveEyebrow3DMetadata[] liveEyebrow3DMetadataArr, CLMakeupLive3DEyebrowWarpFilter.LiveEyebrowWarp3DMetadata[] liveEyebrowWarp3DMetadataArr, CLMakeupLiveFaceContourFilter.LiveFaceContourMetadata[] liveFaceContourMetadataArr, CLMakeupLiveBronzerFilter.LiveBronzerMetadata[] liveBronzerMetadataArr, CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearMetaData[] liveCubeEyewearMetaDataArr, CLMakeupLiveEyeFilter.LiveEye3DMetadata[] liveEye3DMetadataArr, LiveFaceRegionOccludeMetadata[] liveFaceRegionOccludeMetadataArr, boolean[] zArr, boolean[] zArr2) {
        boolean z;
        boolean z2;
        synchronized (this.x0) {
            try {
                synchronized (this.x0) {
                    try {
                        boolean z3 = zArr2[0];
                        int i2 = 0;
                        while (true) {
                            z = true;
                            if (i2 >= 3) {
                                break;
                            }
                            this.z0[i2].Copy(liveEyeContactMetadataArr[i2]);
                            this.A0[i2][0].Copy(liveEyeMakeupMetadataArr[i2][0]);
                            this.A0[i2][1].Copy(liveEyeMakeupMetadataArr[i2][1]);
                            this.B0[i2].Copy(liveEye3DMetadataArr[i2]);
                            this.C0[i2].Copy(lipstickDataArr[i2]);
                            this.D0[i2].Copy(liplinerDataArr[i2]);
                            this.E0[i2].Copy(teethWhitenMetaDataArr[i2]);
                            this.F0[i2].Copy(liveBlushMakeupdataArr[i2]);
                            this.H0[i2].Copy(cLMakeupLiveSmoothFilter$LiveSmoothMetadataArr[i2]);
                            this.I0[i2].Copy(liveConcealerMetadataArr[i2]);
                            this.J0[i2].Copy(liveFoundationDataArr[i2]);
                            this.K0[i2].Copy(liveFoundationMeshDataArr[i2]);
                            this.L0[i2].Copy(liveFaceReshapeMetadataArr[i2]);
                            this.M0[i2].Copy(liveFaceDistortionMetadataArr[i2]);
                            this.N0[i2].Copy(liveObject3DMetadataArr[i2]);
                            this.Q0[i2].Copy(stickerDataArr[i2]);
                            this.R0[i2].Copy(liveFrameInformationArr[i2]);
                            this.T0[i2].Copy(liveDynamicRangeMetadataArr[i2]);
                            this.Z0[i2] = zArr[i2];
                            this.U0[i2].Copy(hairDyeDataArr[i2]);
                            this.c1[i2].Copy(liveCubeEyewearMetaDataArr[i2]);
                            this.O0[i2].Copy(liveEarringMetadataArr[i2]);
                            CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata liveBlush3DMetadata = this.G0[i2];
                            boolean z4 = liveBlush3DMetadata.is_texcoord_changed || liveBlush3DMetadataArr[i2].is_texcoord_changed;
                            liveBlush3DMetadata.Copy(liveBlush3DMetadataArr[i2]);
                            this.G0[i2].is_texcoord_changed = z4;
                            CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata liveFaceArtMetadata = this.P0[i2];
                            boolean z5 = liveFaceArtMetadata.is_texcoord_changed || liveFaceArtMetadataArr[i2].is_texcoord_changed;
                            liveFaceArtMetadata.Copy(liveFaceArtMetadataArr[i2]);
                            CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata liveFaceArtMetadata2 = this.P0[i2];
                            liveFaceArtMetadata2.is_texcoord_changed = z5;
                            liveFaceArtMetadata2.is_layer2_texcoord_changed = liveFaceArtMetadata2.is_layer2_texcoord_changed || liveFaceArtMetadataArr[i2].is_texcoord_changed;
                            this.X0[i2].Copy(liveFaceContourMetadataArr[i2]);
                            CLMakeupLiveBronzerFilter.LiveBronzerMetadata liveBronzerMetadata = this.Y0[i2];
                            if (!liveBronzerMetadata.is_texcoord_changed && !liveBronzerMetadataArr[i2].is_texcoord_changed) {
                                z = false;
                            }
                            liveBronzerMetadata.Copy(liveBronzerMetadataArr[i2]);
                            liveBronzerMetadataArr[i2].is_texcoord_changed = z;
                            x.b bVar = this.S0[i2];
                            CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata liveEyeContactMetadata = liveEyeContactMetadataArr[i2];
                            boolean z6 = liveEyeContactMetadata.m_is_valid;
                            bVar.getClass();
                            PointF pointF = bVar.f25831a;
                            PointF pointF2 = liveEyeContactMetadata.m_left_eye_info.eye_center_in_image;
                            pointF.x = pointF2.x;
                            pointF.y = pointF2.y;
                            PointF pointF3 = bVar.f25832b;
                            PointF pointF4 = liveEyeContactMetadata.m_right_eye_info.eye_center_in_image;
                            pointF3.x = pointF4.x;
                            pointF3.y = pointF4.y;
                            this.d1[i2].Copy(liveFaceRegionOccludeMetadataArr[i2]);
                            i2++;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                synchronized (this.y0) {
                    try {
                        this.A.f25682b = (boolean[]) zArr.clone();
                        this.A.f25684e = zArr2[0];
                        int i3 = 0;
                        while (true) {
                            if (i3 >= 3) {
                                z2 = false;
                                break;
                            } else {
                                if (zArr[i3]) {
                                    z2 = true;
                                    break;
                                }
                                i3++;
                            }
                        }
                        this.A.f25681a = z2;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                for (int i4 = 0; i4 < 3; i4++) {
                    CLMakeupLive3DEyebrowFilter.LiveEyebrow3DMetadata liveEyebrow3DMetadata = this.V0[i4];
                    boolean z8 = liveEyebrow3DMetadata.is_texcoord_changed || liveEyebrow3DMetadataArr[i4].is_texcoord_changed;
                    liveEyebrow3DMetadata.Copy(liveEyebrow3DMetadataArr[i4]);
                    this.V0[i4].is_texcoord_changed = z8;
                    this.W0[i4].Copy(liveEyebrowWarp3DMetadataArr[i4]);
                }
                synchronized (this.y0) {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= 3) {
                            i5 = -1;
                            break;
                        } else if (zArr[i5]) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    h hVar = this.A;
                    if (i5 == -1) {
                        boolean[] zArr3 = hVar.f25683c;
                        zArr3[x7] = false;
                        zArr3[U7] = false;
                        zArr3[W7] = false;
                        zArr3[a8] = false;
                        zArr3[b8] = false;
                        zArr3[c8] = false;
                        zArr3[i8] = false;
                        zArr3[X7] = false;
                        zArr3[Y7] = false;
                        zArr3[h8] = false;
                    } else {
                        boolean[] zArr4 = hVar.f25683c;
                        zArr4[x7] = this.z0[i5].m_is_valid;
                        zArr4[U7] = this.I0[i5].is_valid;
                        zArr4[W7] = this.J0[i5].is_enabled;
                        zArr4[a8] = this.L0[i5].is_valid;
                        zArr4[b8] = this.M0[i5].is_valid;
                        zArr4[c8] = this.N0[i5].is_valid && this.D4;
                        zArr4[i8] = this.O0[i5].is_valid && this.p4.size() > 0;
                        boolean[] zArr5 = this.A.f25683c;
                        zArr5[R7] = this.V0[i5].is_valid && (this.a4 || this.h4);
                        zArr5[Q7] = this.W0[i5].is_valid;
                        int i6 = X7;
                        CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata liveFaceArtMetadata3 = this.P0[i5];
                        zArr5[i6] = liveFaceArtMetadata3.is_valid && this.N4;
                        int i7 = Y7;
                        if (!liveFaceArtMetadata3.is_layer2_valid || !this.V4) {
                            z = false;
                        }
                        zArr5[i7] = z;
                        zArr5[h8] = this.c1[i5].is_valid;
                    }
                    h hVar2 = this.A;
                    boolean[] zArr6 = hVar2.f25683c;
                    zArr6[d8] = this.Q0[0].is_enabled;
                    zArr6[g8] = this.U0[0].m_is_enabled;
                    hVar2.f25684e = zArr2[0];
                    for (int i9 = 0; i9 < 3; i9++) {
                        for (int i10 = 0; i10 < MakeupLiveFeatures.values().length; i10++) {
                            this.y4[i9][i10] = this.x4[i9][i10];
                        }
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void c1() {
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo = this.x3;
        if (liveCubeEyewearInfo == null) {
            return;
        }
        if (liveCubeEyewearInfo.z != null) {
            if (this.D3 == null) {
                this.D3 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            }
            int i2 = 0;
            while (true) {
                fArr3 = this.D3;
                if (i2 >= 3) {
                    break;
                }
                fArr3[i2] = Math.min(Math.max(this.x3.z[i2], Call.Parameters.DEFAULT_CAMERA_ZOOM), 255.0f);
                i2++;
            }
            this.E3 = C0(fArr3[0], fArr3[1], fArr3[2]);
        }
        if (this.x3.B != null) {
            if (this.G3 == null) {
                this.G3 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            }
            int i3 = 0;
            while (true) {
                fArr2 = this.G3;
                if (i3 >= 3) {
                    break;
                }
                fArr2[i3] = Math.min(Math.max(this.x3.B[i3], Call.Parameters.DEFAULT_CAMERA_ZOOM), 255.0f);
                i3++;
            }
            this.H3 = C0(fArr2[0], fArr2[1], fArr2[2]);
        }
        if (this.x3.D != null) {
            if (this.J3 == null) {
                this.J3 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            }
            int i4 = 0;
            while (true) {
                fArr = this.J3;
                if (i4 >= 3) {
                    break;
                }
                fArr[i4] = Math.min(Math.max(this.x3.D[i4], Call.Parameters.DEFAULT_CAMERA_ZOOM), 255.0f);
                i4++;
            }
            this.K3 = C0(fArr[0], fArr[1], fArr[2]);
        }
        float f2 = this.x3.A;
        if (f2 != -1.0f) {
            this.F3 = Math.min(Math.max(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM), 100.0f);
        }
        float f3 = this.x3.C;
        if (f3 != -1.0f) {
            this.I3 = Math.min(Math.max(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM), 100.0f);
        }
        float f4 = this.x3.E;
        if (f4 != -1.0f) {
            this.L3 = Math.min(Math.max(f4, Call.Parameters.DEFAULT_CAMERA_ZOOM), 100.0f);
        }
        CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo2 = this.x3;
        this.M3 = liveCubeEyewearInfo2.F;
        this.P3 = liveCubeEyewearInfo2.I;
        float f5 = liveCubeEyewearInfo2.G;
        if (f5 != -1.0f) {
            this.N3 = Math.min(Math.max(f5, Call.Parameters.DEFAULT_CAMERA_ZOOM), 100.0f);
        }
        float f6 = this.x3.H;
        if (f6 != -1.0f) {
            this.O3 = Math.min(Math.max(f6, Call.Parameters.DEFAULT_CAMERA_ZOOM), 100.0f);
        }
        float f7 = this.x3.J;
        if (f7 != -1.0f) {
            this.Q3 = Math.min(Math.max(f7, Call.Parameters.DEFAULT_CAMERA_ZOOM), 100.0f);
        }
        float f9 = this.x3.K;
        if (f9 != -1.0f) {
            this.R3 = Math.min(Math.max(f9, Call.Parameters.DEFAULT_CAMERA_ZOOM), 100.0f);
        }
        this.S3 = this.x3.L;
    }

    public final void d0(CLShowAlignFilter.ShowAlignData[] showAlignDataArr) {
        synchronized (this.x0) {
            this.o0.j(showAlignDataArr);
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:55:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:56:0x0109  */
    /* JADX WARN: Code duplicated, block: B:59:0x010e  */
    /* JADX WARN: Code duplicated, block: B:60:0x011d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    public final void d1() {
        float f2;
        float fMin;
        float fMin2;
        float fMin3;
        float fMax;
        float f3;
        int i2;
        CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo = this.x3;
        ?? r1 = liveCubeEyewearInfo.F;
        boolean z = r1 != 0 && liveCubeEyewearInfo.I;
        this.P3 = z;
        ?? r2 = r1;
        if (z) {
            i2 = r1 + 1;
        }
        if (r2 == 0) {
            r2 = i2;
            return;
        }
        float[] fArr = this.B3;
        float fMin4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f4 = 100.0f;
        if (r2 == 1) {
            if (liveCubeEyewearInfo.G == -1.0f) {
                r2 = i2;
                this.N3 = 55.0f;
            }
            r2 = i2;
            if (liveCubeEyewearInfo.H == -1.0f) {
                this.O3 = 70.0f;
            }
            float fMax2 = Math.max(this.O3, 8.0f);
            this.O3 = fMax2;
            float f5 = this.N3;
            float f6 = f5 - (fMax2 * 0.5f);
            float fMax3 = (fMax2 * 0.5f) + f5;
            if (f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fMax3 = Math.max(fMax3, 8.0f);
            } else {
                fMin4 = f6;
            }
            if (fMax3 > 100.0f) {
                fMin4 = Math.min(fMin4, 92.0f);
            } else {
                f4 = fMax3;
            }
            float fMin5 = Math.min(Math.max(this.N3, fMin4 + 4.0f), f4 - 4.0f);
            fArr[0] = fMin4;
            fArr[1] = fMin5;
            fArr[2] = f4;
            return;
        }
        if (r2 == 2) {
            float f7 = liveCubeEyewearInfo.G;
            if (f7 != -1.0f || liveCubeEyewearInfo.J != -1.0f) {
                if (f7 == -1.0f) {
                    this.N3 = this.Q3 / 3.0f;
                } else {
                    f3 = liveCubeEyewearInfo.J == -1.0f ? (this.N3 + 200.0f) / 3.0f : 75.0f;
                }
                f2 = (this.N3 + this.Q3) * 0.5f;
                if (liveCubeEyewearInfo.H == -1.0f) {
                    this.O3 = f2;
                }
                if (liveCubeEyewearInfo.K == -1.0f) {
                    this.R3 = 100.0f - f2;
                }
                this.O3 = Math.max(this.O3, 8.0f);
                float fMax4 = Math.max(this.R3, 8.0f);
                this.R3 = fMax4;
                float f9 = this.N3;
                float f10 = this.O3;
                float f11 = f9 - (f10 * 0.5f);
                fMin = (f10 * 0.5f) + f9;
                float f12 = this.Q3;
                fMin2 = f12 - (fMax4 * 0.5f);
                float f13 = (fMax4 * 0.5f) + f12;
                if (fMin > fMin2) {
                    fMin = (fMin2 + fMin) * 0.5f;
                    fMin2 = fMin;
                }
                fMin3 = Math.min(f11, fMin - 8.0f);
                fMax = Math.max(f13, fMin2 + 8.0f);
                if (fMin3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fMin = Math.max(fMin, 8.0f);
                    fMin2 = Math.max(fMin2, 8.0f);
                    fMax = Math.max(fMax, fMin2 + 8.0f);
                } else {
                    fMin4 = fMin3;
                }
                if (fMax > 100.0f) {
                    fMin2 = Math.min(fMin2, 92.0f);
                    fMin = Math.min(fMin, 92.0f);
                    fMin4 = Math.min(fMin4, fMin - 8.0f);
                } else {
                    f4 = fMax;
                }
                float fMin6 = Math.min(Math.max(this.N3, fMin4 + 4.0f), fMin - 4.0f);
                float fMin7 = Math.min(Math.max(this.Q3, fMin2 + 4.0f), f4 - 4.0f);
                fArr[0] = fMin4;
                fArr[1] = fMin6;
                fArr[2] = fMin;
                float[] fArr2 = this.C3;
                fArr2[0] = fMin2;
                fArr2[1] = fMin7;
                fArr2[2] = f4;
            }
            this.N3 = 25.0f;
            this.Q3 = f3;
            f2 = (this.N3 + this.Q3) * 0.5f;
            if (liveCubeEyewearInfo.H == -1.0f) {
                this.O3 = f2;
            }
            if (liveCubeEyewearInfo.K == -1.0f) {
                this.R3 = 100.0f - f2;
            }
            this.O3 = Math.max(this.O3, 8.0f);
            float fMax5 = Math.max(this.R3, 8.0f);
            this.R3 = fMax5;
            float f14 = this.N3;
            float f15 = this.O3;
            float f16 = f14 - (f15 * 0.5f);
            fMin = (f15 * 0.5f) + f14;
            float f17 = this.Q3;
            fMin2 = f17 - (fMax5 * 0.5f);
            float f18 = (fMax5 * 0.5f) + f17;
            if (fMin > fMin2) {
                fMin = (fMin2 + fMin) * 0.5f;
                fMin2 = fMin;
            }
            fMin3 = Math.min(f16, fMin - 8.0f);
            fMax = Math.max(f18, fMin2 + 8.0f);
            if (fMin3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fMin = Math.max(fMin, 8.0f);
                fMin2 = Math.max(fMin2, 8.0f);
                fMax = Math.max(fMax, fMin2 + 8.0f);
            } else {
                fMin4 = fMin3;
            }
            if (fMax > 100.0f) {
                fMin2 = Math.min(fMin2, 92.0f);
                fMin = Math.min(fMin, 92.0f);
                fMin4 = Math.min(fMin4, fMin - 8.0f);
            } else {
                f4 = fMax;
            }
            float fMin8 = Math.min(Math.max(this.N3, fMin4 + 4.0f), fMin - 4.0f);
            float fMin9 = Math.min(Math.max(this.Q3, fMin2 + 4.0f), f4 - 4.0f);
            fArr[0] = fMin4;
            fArr[1] = fMin8;
            fArr[2] = fMin;
            float[] fArr3 = this.C3;
            fArr3[0] = fMin2;
            fArr3[1] = fMin9;
            fArr3[2] = f4;
        }
    }

    public final void e1() {
        boolean z;
        synchronized (this.k3) {
            try {
                CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo = this.x3;
                boolean z2 = false;
                if (liveCubeEyewearInfo == null) {
                    z = false;
                } else {
                    CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo2 = this.y3;
                    boolean z3 = (liveCubeEyewearInfo2.z != liveCubeEyewearInfo.z) | (liveCubeEyewearInfo2.B != liveCubeEyewearInfo.B) | (liveCubeEyewearInfo2.D != liveCubeEyewearInfo.D) | (liveCubeEyewearInfo2.A != liveCubeEyewearInfo.A) | (liveCubeEyewearInfo2.C != liveCubeEyewearInfo.C) | (liveCubeEyewearInfo2.E != liveCubeEyewearInfo.E) | (liveCubeEyewearInfo2.F != liveCubeEyewearInfo.F) | (liveCubeEyewearInfo2.I != liveCubeEyewearInfo.I);
                    float f2 = liveCubeEyewearInfo2.G;
                    float f3 = liveCubeEyewearInfo.G;
                    boolean z4 = z3 | (f2 != f3);
                    float f4 = liveCubeEyewearInfo2.H;
                    float f5 = liveCubeEyewearInfo.H;
                    z = (liveCubeEyewearInfo2.L != liveCubeEyewearInfo.L) | z4 | (f4 != f5) | (f2 != f3) | (f4 != f5);
                }
                if (this.t3) {
                    for (int i2 = 0; i2 < 6; i2++) {
                        if (this.q3[i2] != null && this.p3[i2] != -1) {
                            IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                            GLES20.glGetIntegerv(3317, intBufferAllocate);
                            GLES20.glPixelStorei(3317, 1);
                            GLES20.glBindTexture(3553, this.p3[i2]);
                            GLES20.glTexParameterf(3553, 10240, 9729.0f);
                            GLES20.glTexParameterf(3553, 10241, 9729.0f);
                            GLES20.glTexParameterf(3553, 10242, 33071.0f);
                            GLES20.glTexParameterf(3553, 10243, 33071.0f);
                            GLES20.glTexImage2D(3553, 0, 6408, this.r3[i2], this.s3[i2], 0, 6408, 5121, ByteBuffer.wrap(this.q3[i2]));
                            GLES20.glBindTexture(3553, 0);
                            GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                            if (i2 == 1) {
                                if (this.z3 != null) {
                                    this.z3 = null;
                                }
                                this.z3 = this.q3[i2];
                            } else if (i2 < 4) {
                                byte[][] bArr = this.A3;
                                int i3 = new int[]{0, 0, 1, 2}[i2];
                                if (bArr[i3] != null) {
                                    bArr[i3] = null;
                                }
                                bArr[i3] = this.q3[i2];
                            }
                            this.q3[i2] = null;
                        }
                    }
                    if (this.l3 != null && this.m3 != null) {
                        a1();
                        c1();
                        d1();
                        CLMakeupLiveCubeEyewearFilter.b bVar = new CLMakeupLiveCubeEyewearFilter.b();
                        CLMakeupLiveCubeEyewearFilter.b bVar2 = new CLMakeupLiveCubeEyewearFilter.b();
                        if (this.z3 != null) {
                            j0(bVar, bVar2);
                        }
                        CLMakeupLiveCubeEyewearFilter.b bVar3 = new CLMakeupLiveCubeEyewearFilter.b();
                        CLMakeupLiveCubeEyewearFilter.b bVar4 = new CLMakeupLiveCubeEyewearFilter.b();
                        byte[][] bArr2 = this.A3;
                        if (bArr2[0] != null && bArr2[1] != null && bArr2[2] != null) {
                            int[] iArr = new int[256];
                            for (int i4 = 0; i4 < 256; i4++) {
                                iArr[i4] = 0;
                            }
                            Z(this.A3[0], iArr, 0);
                            Z(this.A3[1], iArr, 2);
                            Z(this.A3[2], iArr, 3);
                            int[] iArr2 = new int[256];
                            for (int i5 = 0; i5 < 255; i5++) {
                                iArr2[i5] = iArr[i5];
                            }
                            iArr2[255] = 0;
                            int i6 = e.f25672b;
                            l0(iArr, i6, bVar3);
                            l0(iArr2, i6, bVar4);
                        }
                        int i7 = 0;
                        while (true) {
                            CLMakeupLiveCubeEyewearFilter[] cLMakeupLiveCubeEyewearFilterArr = this.e0;
                            if (i7 >= cLMakeupLiveCubeEyewearFilterArr.length) {
                                break;
                            }
                            cLMakeupLiveCubeEyewearFilterArr[i7].q(this.x3, this.r3, this.s3);
                            this.e0[i7].v(this.l3[i7], this.m3);
                            CLMakeupLiveCubeEyewearFilter.b bVar5 = bVar4;
                            CLMakeupLiveCubeEyewearFilter.b bVar6 = bVar;
                            CLMakeupLiveCubeEyewearFilter.b bVar7 = bVar2;
                            CLMakeupLiveCubeEyewearFilter.b bVar8 = bVar3;
                            this.e0[i7].t(this.E3, this.H3, this.K3, this.F3, this.I3, this.L3, this.M3, this.P3, this.S3, this.B3, this.C3, bVar6, bVar7);
                            this.e0[i7].s(bVar8, bVar5);
                            CLMakeupLiveCubeEyewearFilter cLMakeupLiveCubeEyewearFilter = this.e0[i7];
                            boolean z5 = this.u3;
                            boolean z6 = this.w3;
                            boolean z8 = this.v3;
                            cLMakeupLiveCubeEyewearFilter.v0 = z5;
                            cLMakeupLiveCubeEyewearFilter.x0 = z6;
                            cLMakeupLiveCubeEyewearFilter.w0 = z8;
                            i7++;
                            bVar3 = bVar8;
                            bVar4 = bVar5;
                            bVar = bVar6;
                            bVar2 = bVar7;
                            z2 = false;
                        }
                    }
                    this.t3 = z2;
                } else if (z) {
                    a1();
                    c1();
                    d1();
                    CLMakeupLiveCubeEyewearFilter.b bVar9 = new CLMakeupLiveCubeEyewearFilter.b();
                    CLMakeupLiveCubeEyewearFilter.b bVar10 = new CLMakeupLiveCubeEyewearFilter.b();
                    if (this.z3 != null) {
                        j0(bVar9, bVar10);
                    }
                    int i9 = 0;
                    while (true) {
                        CLMakeupLiveCubeEyewearFilter[] cLMakeupLiveCubeEyewearFilterArr2 = this.e0;
                        if (i9 >= cLMakeupLiveCubeEyewearFilterArr2.length) {
                            break;
                        }
                        cLMakeupLiveCubeEyewearFilterArr2[i9].t(this.E3, this.H3, this.K3, this.F3, this.I3, this.L3, this.M3, this.P3, this.S3, this.B3, this.C3, bVar9, bVar10);
                        i9++;
                    }
                }
                CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo3 = this.x3;
                if (liveCubeEyewearInfo3 != null) {
                    CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo4 = this.y3;
                    liveCubeEyewearInfo4.z = liveCubeEyewearInfo3.z;
                    liveCubeEyewearInfo4.B = liveCubeEyewearInfo3.B;
                    liveCubeEyewearInfo4.D = liveCubeEyewearInfo3.D;
                    liveCubeEyewearInfo4.A = liveCubeEyewearInfo3.A;
                    liveCubeEyewearInfo4.C = liveCubeEyewearInfo3.C;
                    liveCubeEyewearInfo4.E = liveCubeEyewearInfo3.E;
                    liveCubeEyewearInfo4.F = liveCubeEyewearInfo3.F;
                    liveCubeEyewearInfo4.I = liveCubeEyewearInfo3.I;
                    liveCubeEyewearInfo4.G = liveCubeEyewearInfo3.G;
                    liveCubeEyewearInfo4.H = liveCubeEyewearInfo3.H;
                    liveCubeEyewearInfo4.J = liveCubeEyewearInfo3.J;
                    liveCubeEyewearInfo4.K = liveCubeEyewearInfo3.K;
                    liveCubeEyewearInfo4.L = liveCubeEyewearInfo3.L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f1() {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        synchronized (this.o4) {
            try {
                Iterator it = this.p4.iterator();
                while (true) {
                    i2 = 0;
                    if (it.hasNext()) {
                        if (((CLShare3DRelatedClasses.Live3DRenderData[]) it.next()) != null) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (this.v4 && z) {
                    if (!this.s4.isEmpty()) {
                        int size = this.s4.size();
                        int[] iArr = new int[size];
                        for (int i6 = 0; i6 < size; i6++) {
                            iArr[i6] = ((Integer) this.s4.get(i6)).intValue();
                        }
                        GLES20.glDeleteTextures(size, iArr, 0);
                        this.s4.clear();
                    }
                    if (!this.t4.isEmpty()) {
                        int size2 = this.t4.size();
                        int[] iArr2 = new int[size2];
                        for (int i7 = 0; i7 < size2; i7++) {
                            iArr2[i7] = ((Integer) this.t4.get(i7)).intValue();
                        }
                        GLES20.glDeleteTextures(size2, iArr2, 0);
                        this.t4.clear();
                    }
                    if (!this.u4.isEmpty()) {
                        int size3 = this.u4.size();
                        int[] iArr3 = new int[size3];
                        for (int i9 = 0; i9 < size3; i9++) {
                            iArr3[i9] = ((Integer) this.u4.get(i9)).intValue();
                        }
                        GLES20.glDeleteTextures(size3, iArr3, 0);
                        this.u4.clear();
                    }
                    Iterator it2 = this.p4.iterator();
                    int i10 = 0;
                    while (it2.hasNext()) {
                        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = (CLShare3DRelatedClasses.Live3DRenderData[]) it2.next();
                        Map map = (Map) this.q4.get(i10);
                        int i11 = i10 + 1;
                        Map map2 = (Map) this.r4.get(i10);
                        if (!map.isEmpty() && live3DRenderDataArr != null) {
                            int size4 = map.size();
                            int[] iArr4 = new int[size4];
                            GLES20.glGenTextures(size4, iArr4, i2);
                            int i12 = i2;
                            for (String str : map.keySet()) {
                                int i13 = iArr4[i12];
                                f fVar = (f) map.get(str);
                                CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData = (CLShare3DRelatedClasses.Live3DHDRTextureData) map2.get(str);
                                if (live3DHDRTextureData != null) {
                                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate((live3DHDRTextureData.width * live3DHDRTextureData.height) << 2);
                                    byteBufferAllocate.put(live3DHDRTextureData.hdrBuffer);
                                    byteBufferAllocate.position(i2);
                                    GLES20.glBindTexture(3553, iArr4[i12]);
                                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                    GLES20.glTexImage2D(3553, 0, 6408, live3DHDRTextureData.width, live3DHDRTextureData.height, 0, 6408, 5121, byteBufferAllocate);
                                } else {
                                    GLES20.glBindTexture(3553, iArr4[i12]);
                                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                    GLUtils.texImage2D(3553, 0, fVar.f25673a, 0);
                                }
                                if (live3DHDRTextureData != null) {
                                    int i14 = live3DHDRTextureData.width;
                                    int i15 = live3DHDRTextureData.height;
                                    boolean z2 = i14 != 0 && (i14 & (i14 + (-1))) == 0;
                                    boolean z3 = i15 != 0 && (i15 & (i15 + (-1))) == 0;
                                    if (z2 && z3) {
                                        i5 = 3553;
                                        GLES20.glTexParameteri(3553, 10241, 9987);
                                        GLES20.glGenerateMipmap(i5);
                                    }
                                    i4 = 0;
                                    i3 = 3553;
                                } else if (fVar.f25675c == g.d) {
                                    int width = fVar.f25673a.getWidth();
                                    int height = fVar.f25673a.getHeight();
                                    boolean z4 = width != 0 && (width & (width + (-1))) == 0;
                                    boolean z5 = height != 0 && (height & (height + (-1))) == 0;
                                    if (z4 && z5) {
                                        i5 = 3553;
                                        GLES20.glTexParameteri(3553, 10241, 9987);
                                        GLES20.glGenerateMipmap(i5);
                                    }
                                    i4 = 0;
                                    i3 = 3553;
                                } else {
                                    i3 = 3553;
                                    GLES20.glTexParameteri(3553, 10241, 9729);
                                    i4 = 0;
                                }
                                GLES20.glBindTexture(i3, i4);
                                if (live3DHDRTextureData != null) {
                                    live3DHDRTextureData.texture_id = i13;
                                    live3DHDRTextureData.hdrBuffer = null;
                                    for (int i16 = 0; i16 < live3DHDRTextureData.object_indices.size(); i16++) {
                                        live3DRenderDataArr[live3DHDRTextureData.object_indices.get(i16).intValue()].SetEnvironmentTextureID(i13);
                                    }
                                } else {
                                    fVar.d = i13;
                                    fVar.f25673a = null;
                                    int i17 = fVar.f25675c;
                                    if (i17 == g.f25676a) {
                                        for (int i18 = 0; i18 < fVar.f25674b.size(); i18++) {
                                            live3DRenderDataArr[((Integer) fVar.f25674b.get(i18)).intValue()].SetAmbientTextureID(i13);
                                        }
                                    } else if (i17 == g.f25677b) {
                                        for (int i19 = 0; i19 < fVar.f25674b.size(); i19++) {
                                            live3DRenderDataArr[((Integer) fVar.f25674b.get(i19)).intValue()].SetDiffuseTextureID(i13);
                                        }
                                    } else if (i17 == g.f25678c) {
                                        for (int i20 = 0; i20 < fVar.f25674b.size(); i20++) {
                                            live3DRenderDataArr[((Integer) fVar.f25674b.get(i20)).intValue()].SetSpecularTextureID(i13);
                                        }
                                    } else if (i17 == g.d) {
                                        for (int i21 = 0; i21 < fVar.f25674b.size(); i21++) {
                                            live3DRenderDataArr[((Integer) fVar.f25674b.get(i21)).intValue()].SetEnvironmentTextureID(i13);
                                        }
                                    } else if (i17 == g.f25679e) {
                                        for (int i22 = 0; i22 < fVar.f25674b.size(); i22++) {
                                            live3DRenderDataArr[((Integer) fVar.f25674b.get(i22)).intValue()].SetNormalMapTextureID(i13);
                                        }
                                    } else if (i17 == g.f25680f) {
                                        for (int i23 = 0; i23 < fVar.f25674b.size(); i23++) {
                                            live3DRenderDataArr[((Integer) fVar.f25674b.get(i23)).intValue()].SetOrmTextureID(i13);
                                        }
                                    }
                                }
                                i12++;
                                it2 = it2;
                                i2 = 0;
                            }
                        }
                        i10 = i11;
                        it2 = it2;
                        i2 = 0;
                    }
                    int i24 = 0;
                    while (true) {
                        CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr = this.W;
                        if (i24 >= cLMakeupLive3DFilterArr.length) {
                            break;
                        }
                        CLMakeupLive3DFilter cLMakeupLive3DFilter = cLMakeupLive3DFilterArr[i24];
                        ArrayList arrayList = this.p4;
                        synchronized (cLMakeupLive3DFilter.h0) {
                            try {
                                cLMakeupLive3DFilter.r0.clear();
                                Iterator it3 = arrayList.iterator();
                                while (it3.hasNext()) {
                                    cLMakeupLive3DFilter.r0.add((CLShare3DRelatedClasses.Live3DRenderData[]) it3.next());
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        i24++;
                    }
                    this.v4 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void g1() {
        synchronized (this.Y2) {
            try {
                if (this.C4 && this.Z2 != null) {
                    if (!this.B4.isEmpty()) {
                        int size = this.B4.size();
                        int[] iArr = new int[size];
                        for (int i2 = 0; i2 < size; i2++) {
                            iArr[i2] = ((Integer) this.B4.get(i2)).intValue();
                        }
                        GLES20.glDeleteTextures(size, iArr, 0);
                        this.B4.clear();
                    }
                    if (!this.z4.isEmpty()) {
                        int size2 = this.z4.size();
                        int[] iArr2 = new int[size2];
                        GLES20.glGenTextures(size2, iArr2, 0);
                        int i3 = 0;
                        for (String str : this.z4.keySet()) {
                            int i4 = iArr2[i3];
                            f fVar = (f) this.z4.get(str);
                            CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData = (CLShare3DRelatedClasses.Live3DHDRTextureData) this.A4.get(str);
                            if (live3DHDRTextureData != null) {
                                ByteBuffer byteBufferAllocate = ByteBuffer.allocate((live3DHDRTextureData.width * live3DHDRTextureData.height) << 2);
                                byteBufferAllocate.put(live3DHDRTextureData.hdrBuffer);
                                byteBufferAllocate.position(0);
                                GLES20.glBindTexture(3553, iArr2[i3]);
                                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                GLES20.glTexImage2D(3553, 0, 6408, live3DHDRTextureData.width, live3DHDRTextureData.height, 0, 6408, 5121, byteBufferAllocate);
                            } else {
                                GLES20.glBindTexture(3553, iArr2[i3]);
                                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                GLUtils.texImage2D(3553, 0, fVar.f25673a, 0);
                            }
                            boolean z = true;
                            if (live3DHDRTextureData != null) {
                                int i5 = live3DHDRTextureData.width;
                                int i6 = live3DHDRTextureData.height;
                                boolean z2 = i5 != 0 && (i5 & (i5 + (-1))) == 0;
                                if (i6 == 0 || (i6 & (i6 - 1)) != 0) {
                                    z = false;
                                }
                                if (z2 && z) {
                                    GLES20.glTexParameteri(3553, 10241, 9987);
                                    GLES20.glGenerateMipmap(3553);
                                }
                            } else if (fVar.f25675c == g.d) {
                                int width = fVar.f25673a.getWidth();
                                int height = fVar.f25673a.getHeight();
                                boolean z3 = width != 0 && (width & (width + (-1))) == 0;
                                if (height == 0 || (height & (height - 1)) != 0) {
                                    z = false;
                                }
                                if (z3 && z) {
                                    GLES20.glTexParameteri(3553, 10241, 9987);
                                    GLES20.glGenerateMipmap(3553);
                                }
                            } else {
                                GLES20.glTexParameteri(3553, 10241, 9729);
                            }
                            GLES20.glBindTexture(3553, 0);
                            if (live3DHDRTextureData != null) {
                                live3DHDRTextureData.texture_id = i4;
                                live3DHDRTextureData.hdrBuffer = null;
                                for (int i7 = 0; i7 < live3DHDRTextureData.object_indices.size(); i7++) {
                                    this.Z2[live3DHDRTextureData.object_indices.get(i7).intValue()].SetEnvironmentTextureID(i4);
                                }
                            } else {
                                fVar.d = i4;
                                fVar.f25673a = null;
                                int i9 = fVar.f25675c;
                                if (i9 == g.f25676a) {
                                    for (int i10 = 0; i10 < fVar.f25674b.size(); i10++) {
                                        this.Z2[((Integer) fVar.f25674b.get(i10)).intValue()].SetAmbientTextureID(i4);
                                    }
                                } else if (i9 == g.f25677b) {
                                    for (int i11 = 0; i11 < fVar.f25674b.size(); i11++) {
                                        this.Z2[((Integer) fVar.f25674b.get(i11)).intValue()].SetDiffuseTextureID(i4);
                                    }
                                } else if (i9 == g.f25678c) {
                                    for (int i12 = 0; i12 < fVar.f25674b.size(); i12++) {
                                        this.Z2[((Integer) fVar.f25674b.get(i12)).intValue()].SetSpecularTextureID(i4);
                                    }
                                } else if (i9 == g.d) {
                                    for (int i13 = 0; i13 < fVar.f25674b.size(); i13++) {
                                        this.Z2[((Integer) fVar.f25674b.get(i13)).intValue()].SetEnvironmentTextureID(i4);
                                    }
                                } else if (i9 == g.f25679e) {
                                    for (int i14 = 0; i14 < fVar.f25674b.size(); i14++) {
                                        this.Z2[((Integer) fVar.f25674b.get(i14)).intValue()].SetNormalMapTextureID(i4);
                                    }
                                } else if (i9 == g.f25680f) {
                                    for (int i15 = 0; i15 < fVar.f25674b.size(); i15++) {
                                        this.Z2[((Integer) fVar.f25674b.get(i15)).intValue()].SetOrmTextureID(i4);
                                    }
                                }
                            }
                            i3++;
                        }
                    }
                    int i16 = 0;
                    while (true) {
                        CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr = this.W;
                        if (i16 >= cLMakeupLive3DFilterArr.length) {
                            break;
                        }
                        cLMakeupLive3DFilterArr[i16].F(this.Z2, this.a3);
                        i16++;
                    }
                    this.i3 = this.j3;
                    this.C4 = false;
                }
                if (this.E4 && this.Z2 != null) {
                    int i17 = 0;
                    while (true) {
                        CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr2 = this.W;
                        if (i17 >= cLMakeupLive3DFilterArr2.length) {
                            break;
                        }
                        cLMakeupLive3DFilterArr2[i17].y(this.G4);
                        i17++;
                    }
                    this.E4 = false;
                }
                if (this.F4 && this.Z2 != null) {
                    int i18 = 0;
                    while (true) {
                        CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr3 = this.W;
                        if (i18 >= cLMakeupLive3DFilterArr3.length) {
                            break;
                        }
                        cLMakeupLive3DFilterArr3[i18].x(this.H4);
                        i18++;
                    }
                    this.F4 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i1() {
        synchronized (this.T3) {
            try {
                if (this.Z3) {
                    if (this.V3 != null && this.Y3 != -1) {
                        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                        GLES20.glGetIntegerv(3317, intBufferAllocate);
                        GLES20.glPixelStorei(3317, 1);
                        GLES20.glBindTexture(3553, this.Y3);
                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                        GLES20.glTexImage2D(3553, 0, 6410, this.W3, this.X3, 0, 6410, 5121, this.V3);
                        GLES20.glBindTexture(3553, 0);
                        GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                        this.V3 = null;
                    }
                    if (this.U3 != null) {
                        for (int i2 = 0; i2 < 3; i2++) {
                            CLMakeupLive3DEyebrowFilter cLMakeupLive3DEyebrowFilter = this.Z[i2];
                            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.U3[i2];
                            if (live3DRenderData == null) {
                                cLMakeupLive3DEyebrowFilter.getClass();
                            } else {
                                CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = {live3DRenderData};
                                synchronized (cLMakeupLive3DEyebrowFilter.z0) {
                                    cLMakeupLive3DEyebrowFilter.y0 = live3DRenderDataArr;
                                }
                            }
                        }
                    }
                    this.Z3 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j() {
        int i2;
        int i3;
        int i4;
        int i5;
        synchronized (this.i5) {
            try {
                if (this.t5) {
                    IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                    GLES20.glGetIntegerv(3317, intBufferAllocate);
                    GLES20.glPixelStorei(3317, 1);
                    if (this.k5 != null && (i5 = this.l5) != -1) {
                        GLES20.glBindTexture(3553, i5);
                        GLUtils.texImage2D(3553, 0, this.k5, 0);
                        GLES20.glBindTexture(3553, 0);
                        this.k5 = null;
                    }
                    if (this.m5 != null && (i4 = this.n5) != -1) {
                        GLES20.glBindTexture(3553, i4);
                        GLUtils.texImage2D(3553, 0, this.m5, 0);
                        GLES20.glBindTexture(3553, 0);
                        this.m5 = null;
                    }
                    if (this.o5 != null && (i3 = this.p5) != -1) {
                        GLES20.glBindTexture(3553, i3);
                        GLUtils.texImage2D(3553, 0, this.o5, 0);
                        GLES20.glBindTexture(3553, 0);
                        this.o5 = null;
                    }
                    if (this.q5 != null && (i2 = this.r5) != -1) {
                        GLES20.glBindTexture(3553, i2);
                        GLUtils.texImage2D(3553, 0, this.q5, 0);
                        GLES20.glBindTexture(3553, 0);
                        this.q5 = null;
                    }
                    GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                    if (this.j5 != null) {
                        for (int i6 = 0; i6 < this.b0.length; i6++) {
                            this.b0[i6].O(this.j5[M0(i6)]);
                        }
                    }
                    this.t5 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j0(CLMakeupLiveCubeEyewearFilter.b bVar, CLMakeupLiveCubeEyewearFilter.b bVar2) {
        byte[] bArr = this.z3;
        if (bArr == null) {
            return;
        }
        int[] iArr = new int[bArr.length];
        boolean z = true;
        int i2 = this.r3[1];
        int i3 = this.s3[1];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * i2) << 2;
            int i6 = 0;
            while (i6 < i2) {
                int i7 = (i6 << 2) + i5;
                byte[] bArr2 = this.z3;
                int i9 = i7 + 3;
                int i10 = bArr2[i9] & 255;
                int i11 = bArr2[i7] & 255;
                int i12 = i7 + 1;
                boolean z2 = z;
                int i13 = bArr2[i12] & 255;
                int i14 = i7 + 2;
                int i15 = bArr2[i14] & 255;
                if (i10 != 0) {
                    iArr[i7] = (i11 * 255) / i10;
                    iArr[i12] = (i13 * 255) / i10;
                    iArr[i14] = (i15 * 255) / i10;
                    iArr[i9] = i10;
                } else {
                    iArr[i7] = 0;
                    iArr[i12] = 0;
                    iArr[i14] = 0;
                    iArr[i9] = i10;
                }
                i6++;
                z = z2;
            }
        }
        boolean z3 = z;
        int[] iArr2 = new int[256];
        int[] iArr3 = new int[256];
        for (int i16 = 0; i16 < 256; i16++) {
            iArr2[i16] = 0;
            iArr3[i16] = 0;
        }
        int[] iArr4 = new int[i3];
        for (int i17 = 0; i17 < i3; i17++) {
            iArr4[i17] = 0;
        }
        for (int i18 = 0; i18 < i3; i18++) {
            int i19 = (i18 * i2) << 2;
            for (int i20 = 0; i20 < i2; i20++) {
                int i21 = (i20 << 2) + i19;
                int i22 = iArr[i21 + 3];
                if (i22 > 0) {
                    int iRound = Math.round(h0(iArr[i21], iArr[i21 + 1], iArr[i21 + 2]));
                    iArr2[iRound] = iArr2[iRound] + i22;
                    if (i22 >= 4) {
                        iArr3[i22] = (int) (((double) iArr3[i22]) + 1.0d);
                        iArr4[i18] = iArr4[i18] + i22;
                    }
                }
            }
        }
        float[] fArr = new float[2];
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        fArr[0] = 0.0f;
        fArr[z3 ? 1 : 0] = 0.0f;
        int iMax = -1;
        int iMin = i3;
        int i23 = 0;
        for (int i24 = 0; i24 < i3; i24++) {
            int i25 = iArr4[i24];
            if (i25 > 0) {
                i23 += i25;
                iMin = Math.min(iMin, i24);
                iMax = Math.max(iMax, i24);
            }
        }
        float f3 = i3;
        float fH = f3 - 1.0f;
        if (iMin == iMax) {
            f2 = iMin;
            fH = f2;
        } else if (iMin < iMax) {
            float f4 = i23;
            float fH2 = H(iArr4, iMin, iMax, 0.001f * f4);
            fH = H(iArr4, iMin, iMax, f4 * 0.999f);
            f2 = fH2;
        }
        fArr[0] = f2 / f3;
        fArr[z3 ? 1 : 0] = (fH + 1.0f) / f3;
        l0(iArr2, e.f25671a, bVar2);
        l0(iArr3, e.f25672b, bVar);
        bVar.g = fArr[0];
        bVar.f25627h = fArr[z3 ? 1 : 0];
    }

    public final void j1() {
        synchronized (this.T3) {
            try {
                if (this.g4) {
                    if (this.c4 != null && this.f4 != -1) {
                        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                        GLES20.glGetIntegerv(3317, intBufferAllocate);
                        GLES20.glPixelStorei(3317, 1);
                        GLES20.glBindTexture(3553, this.f4);
                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                        GLES20.glTexImage2D(3553, 0, 6408, this.d4, this.e4, 0, 6408, 5121, this.c4);
                        GLES20.glBindTexture(3553, 0);
                        GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                        this.c4 = null;
                    }
                    if (this.b4 != null) {
                        for (int i2 = 0; i2 < 3; i2++) {
                            CLMakeupLive3DEyebrowFilter cLMakeupLive3DEyebrowFilter = this.Z[i2];
                            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.b4[i2];
                            if (live3DRenderData == null) {
                                cLMakeupLive3DEyebrowFilter.getClass();
                            } else {
                                CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = {live3DRenderData};
                                synchronized (cLMakeupLive3DEyebrowFilter.z0) {
                                    cLMakeupLive3DEyebrowFilter.A0 = live3DRenderDataArr;
                                }
                            }
                        }
                    }
                    this.g4 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k() {
        synchronized (this.R6) {
        }
    }

    public final void k0(List list) {
        if (list == null) {
            return;
        }
        e(new o(this, list, false));
    }

    public final void k1() {
        synchronized (this.K6) {
            for (int i2 = 0; i2 < 3; i2++) {
                try {
                    if (this.N6[i2]) {
                        if (this.P6[i2] != null && this.M6[i2] != -1) {
                            IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                            GLES20.glGetIntegerv(3317, intBufferAllocate);
                            GLES20.glPixelStorei(3317, 1);
                            GLES20.glBindTexture(3553, this.M6[i2]);
                            GLES20.glTexImage2D(3553, 0, 6406, Sink.Screenshare.MAX_DIMENSION_LOW, 1160, 0, 6406, 5121, ByteBuffer.wrap(this.P6[i2]));
                            GLES20.glBindTexture(3553, 0);
                            GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                            this.P6[i2] = null;
                        }
                        if (this.L6 != null) {
                            this.J[i2].O(this.L6[M0(i2)]);
                        }
                    }
                    this.N6[i2] = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void l() {
        ByteBuffer[] byteBufferArr;
        synchronized (this.b7) {
            for (int i2 = 0; i2 < 3; i2++) {
                try {
                    if (this.d7[i2] && (byteBufferArr = this.e7) != null && byteBufferArr[i2] != null && this.c7[i2] != -1) {
                        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                        GLES20.glGetIntegerv(3317, intBufferAllocate);
                        GLES20.glPixelStorei(3317, 1);
                        GLES20.glBindTexture(3553, this.c7[i2]);
                        GLES20.glTexImage2D(3553, 0, 6408, 0, 0, 0, 6408, 5121, this.e7[i2]);
                        GLES20.glBindTexture(3553, 0);
                        GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                        this.e7[i2] = null;
                    }
                    this.d7[i2] = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void l1() {
        synchronized (this.V6) {
            for (int i2 = 0; i2 < 3; i2++) {
                try {
                    if (this.Y6[i2]) {
                        Bitmap[] bitmapArr = this.Z6;
                        if (bitmapArr != null && bitmapArr[i2] != null && this.X6[i2] != -1) {
                            IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                            GLES20.glGetIntegerv(3317, intBufferAllocate);
                            GLES20.glPixelStorei(3317, 1);
                            GLES20.glBindTexture(3553, this.X6[i2]);
                            GLUtils.texImage2D(3553, 0, this.Z6[i2], 0);
                            GLES20.glBindTexture(3553, 0);
                            GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                            this.Z6[i2] = null;
                        }
                        CLMakeupLiveBlush3DFilter.a[][] aVarArr = this.W6;
                        if (aVarArr != null && aVarArr[i2] != null) {
                            int i3 = 0;
                            while (true) {
                                CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
                                if (i3 < cLMakeupLiveBlush3DFilterArr[0].length) {
                                    cLMakeupLiveBlush3DFilterArr[i2][i3].O(this.W6[i2][i3]);
                                    i3++;
                                }
                            }
                        }
                    }
                    this.Y6[i2] = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void m() {
        synchronized (this.g7) {
        }
    }

    public final void m0() {
        byte[] bArr = new byte[256];
        for (int i2 = 0; i2 < 256; i2++) {
            bArr[i2] = 0;
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(256);
        byteBufferAllocateDirect.put(bArr);
        for (int i3 = 0; i3 < 2; i3++) {
            byteBufferAllocateDirect.rewind();
            U(byteBufferAllocateDirect, 8, 8, i3);
        }
        for (int i4 = 0; i4 < 3; i4++) {
            for (int i5 = 0; i5 < 4; i5++) {
                byteBufferAllocateDirect.rewind();
                V(byteBufferAllocateDirect, 8, 8, i5, i4);
            }
        }
    }

    public final void m1() {
        int i2;
        synchronized (this.I4) {
            try {
                if (this.M4) {
                    if (this.K4 != null && (i2 = this.L4) != -1) {
                        GLES20.glBindTexture(3553, i2);
                        GLUtils.texImage2D(3553, 0, this.K4, 0);
                        GLES20.glBindTexture(3553, 0);
                        this.K4 = null;
                    }
                    if (this.J4 != null) {
                        for (int i3 = 0; i3 < this.X.length; i3++) {
                            this.X[i3].O(this.J4[M0(i3)]);
                        }
                    }
                    this.M4 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n() {
        synchronized (this.l7) {
        }
    }

    public final void n0(float f2, int i2) {
        if (i2 < -1 || i2 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr = this.J;
        if (i2 != -1) {
            cLMakeupLiveBlush3DFilterArr[i2].W5 = f2 / 100.0f;
            return;
        }
        for (int i3 = 0; i3 < 3; i3++) {
            cLMakeupLiveBlush3DFilterArr[i3].W5 = f2 / 100.0f;
        }
    }

    public final void n1() {
        int i2;
        synchronized (this.Q4) {
            try {
                if (this.U4) {
                    if (this.S4 != null && (i2 = this.T4) != -1) {
                        GLES20.glBindTexture(3553, i2);
                        GLUtils.texImage2D(3553, 0, this.S4, 0);
                        GLES20.glBindTexture(3553, 0);
                        this.S4 = null;
                    }
                    if (this.R4 != null) {
                        for (int i3 = 0; i3 < this.Y.length; i3++) {
                            this.Y[i3].O(this.R4[M0(i3)]);
                        }
                    }
                    this.U4 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o() {
        synchronized (this.m7) {
        }
    }

    public final void o0(int i2, int i3) {
        if (i3 < -1 || i3 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr = this.J;
        if (i3 != -1) {
            cLMakeupLiveBlush3DFilterArr[i3].l0(i2);
            return;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            cLMakeupLiveBlush3DFilterArr[i4].l0(i2);
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        for (int i2 = 0; i2 < 3; i2++) {
            this.D[i2].destroy();
            this.E[i2].destroy();
            this.F[i2].destroy();
            this.G[i2].destroy();
            this.H[i2].destroy();
            this.N[i2].destroy();
            this.O[i2].destroy();
            this.P[i2].destroy();
            this.Q[i2].destroy();
            this.I[i2].destroy();
            this.J[i2].destroy();
            this.K[i2].destroy();
            this.R[i2].destroy();
            this.T[i2].destroy();
            this.U[i2].destroy();
            this.V[i2].destroy();
            this.Z[i2].destroy();
            this.a0[i2].destroy();
            this.d0[i2].destroy();
        }
        int i3 = 0;
        while (true) {
            CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr = this.W;
            if (i3 >= cLMakeupLive3DFilterArr.length) {
                break;
            }
            cLMakeupLive3DFilterArr[i3].destroy();
            i3++;
        }
        int i4 = 0;
        while (true) {
            CLMakeupLiveCubeEyewearFilter[] cLMakeupLiveCubeEyewearFilterArr = this.e0;
            if (i4 >= cLMakeupLiveCubeEyewearFilterArr.length) {
                break;
            }
            cLMakeupLiveCubeEyewearFilterArr[i4].destroy();
            i4++;
        }
        int i5 = 0;
        while (true) {
            CLMakeupLiveFaceArtFilter[] cLMakeupLiveFaceArtFilterArr = this.X;
            if (i5 >= cLMakeupLiveFaceArtFilterArr.length) {
                break;
            }
            cLMakeupLiveFaceArtFilterArr[i5].destroy();
            i5++;
        }
        int i6 = 0;
        while (true) {
            m[] mVarArr = this.Y;
            if (i6 >= mVarArr.length) {
                break;
            }
            mVarArr[i6].destroy();
            i6++;
        }
        int i7 = 0;
        while (true) {
            CLMakeupLiveBronzerFilter[] cLMakeupLiveBronzerFilterArr = this.S;
            if (i7 >= cLMakeupLiveBronzerFilterArr.length) {
                break;
            }
            cLMakeupLiveBronzerFilterArr[i7].destroy();
            i7++;
        }
        int i9 = 0;
        while (true) {
            CLMakeupLiveFaceContourFilter[] cLMakeupLiveFaceContourFilterArr = this.b0;
            if (i9 >= cLMakeupLiveFaceContourFilterArr.length) {
                break;
            }
            cLMakeupLiveFaceContourFilterArr[i9].destroy();
            i9++;
        }
        int i10 = 0;
        while (true) {
            n[] nVarArr = this.c0;
            if (i10 >= nVarArr.length) {
                break;
            }
            nVarArr[i10].destroy();
            i10++;
        }
        int i11 = 0;
        while (true) {
            com.cyberlink.clgpuimage.cosmetic.e[] eVarArr = this.f0;
            if (i11 >= eVarArr.length) {
                break;
            }
            eVarArr[i11].destroy();
            i11++;
        }
        for (int i12 = 0; i12 < 3; i12++) {
            int i13 = 0;
            while (true) {
                CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
                if (i13 < cLMakeupLiveBlush3DFilterArr[0].length) {
                    cLMakeupLiveBlush3DFilterArr[i12][i13].destroy();
                    i13++;
                }
            }
        }
        for (int i14 = 0; i14 < 3; i14++) {
            int i15 = 0;
            while (true) {
                i[][] iVarArr = this.M;
                if (i15 < iVarArr[0].length) {
                    iVarArr[i14][i15].destroy();
                    i15++;
                }
            }
        }
        this.k0.destroy();
        this.g0.destroy();
        this.h0.destroy();
        this.i0.destroy();
        this.j0.destroy();
        this.l0.destroy();
        this.m0.destroy();
        this.n0.destroy();
        this.p0.destroy();
        this.q0.destroy();
        this.o0.destroy();
        for (int i16 = 0; i16 < 2; i16++) {
            GLES20.glDeleteTextures(1, new int[]{this.u1[i16]}, 0);
            this.u1[i16] = -1;
        }
        V0(-1);
        for (int i17 = 0; i17 < 3; i17++) {
            V0(i17);
        }
        Y0(-1);
        for (int i18 = 0; i18 < 3; i18++) {
            Y0(i18);
        }
        synchronized (this.R2) {
            try {
                if (this.N2 != null) {
                    for (int i19 = 0; i19 < 3; i19++) {
                        this.N2[i19] = null;
                    }
                }
                this.N2 = null;
                this.O2 = false;
                this.T2 = null;
                this.S2 = null;
                this.U2 = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        for (int i20 = 0; i20 < 2; i20++) {
            for (int i21 = 0; i21 < 2; i21++) {
                int i22 = this.t2[i20][i21];
                if (i22 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i22}, 0);
                    this.t2[i20][i21] = -1;
                }
                for (int i23 = 0; i23 < 3; i23++) {
                    int i24 = this.v2[i23][i20][i21];
                    if (i24 != -1) {
                        GLES20.glDeleteTextures(1, new int[]{i24}, 0);
                        this.v2[i23][i20][i21] = -1;
                    }
                }
            }
            T0(i20, -1);
            for (int i25 = 0; i25 < 3; i25++) {
                T0(i20, i25);
            }
            for (int i26 = 0; i26 < 3; i26++) {
                int i27 = this.Z1[i26][i20];
                if (i27 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i27}, 0);
                    this.Z1[i26][i20] = -1;
                }
            }
            int i28 = this.V1[i20];
            if (i28 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i28}, 0);
                this.V1[i20] = -1;
            }
            for (int i29 = 0; i29 < 3; i29++) {
                int i30 = this.i2[i29][i20];
                if (i30 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i30}, 0);
                    this.i2[i29][i20] = -1;
                }
            }
            int i31 = this.e2[i20];
            if (i31 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i31}, 0);
                this.e2[i20] = -1;
            }
            L0(i20, -1);
            for (int i32 = 0; i32 < 3; i32++) {
                L0(i20, i32);
            }
            N0(i20, -1);
            for (int i33 = 0; i33 < 3; i33++) {
                N0(i20, -1);
            }
            Q0(i20, -1);
            for (int i34 = 0; i34 < 3; i34++) {
                Q0(i20, i34);
            }
        }
        synchronized (this.Y2) {
            try {
                int size = this.B4.size();
                int[] iArr = new int[this.z4.size() + size];
                for (int i35 = 0; i35 < size; i35++) {
                    iArr[i35] = ((Integer) this.B4.get(i35)).intValue();
                }
                for (String str : this.z4.keySet()) {
                    int i36 = str.endsWith(".hdr") ? ((CLShare3DRelatedClasses.Live3DHDRTextureData) this.A4.get(str)).texture_id : ((f) this.z4.get(str)).d;
                    if (i36 != -1) {
                        iArr[size] = i36;
                        size++;
                    }
                }
                if (size > 0) {
                    GLES20.glDeleteTextures(size, iArr, 0);
                }
                this.B4.clear();
                this.z4.clear();
                this.A4.clear();
                this.Z2 = null;
                this.a3 = null;
                this.C4 = false;
                this.D4 = false;
                this.E4 = false;
                this.F4 = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (this.o4) {
            try {
                int size2 = this.s4.size();
                Iterator it = this.q4.iterator();
                int size3 = 0;
                while (it.hasNext()) {
                    size3 += ((Map) it.next()).size();
                }
                int[] iArr2 = new int[size3 + size2];
                for (int i37 = 0; i37 < size2; i37++) {
                    iArr2[i37] = ((Integer) this.s4.get(i37)).intValue();
                }
                for (Map map : this.q4) {
                    if (!map.isEmpty()) {
                        Iterator it2 = map.keySet().iterator();
                        while (it2.hasNext()) {
                            f fVar = (f) map.get((String) it2.next());
                            int i38 = fVar != null ? fVar.d : -1;
                            if (i38 != -1) {
                                iArr2[size2] = i38;
                                size2++;
                            }
                        }
                    }
                }
                if (size2 > 0) {
                    GLES20.glDeleteTextures(size2, iArr2, 0);
                }
                this.s4.clear();
                this.q4.clear();
                this.v4 = false;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        synchronized (this.k3) {
            try {
                GLES20.glDeleteTextures(6, this.p3, 0);
                this.p3 = new int[]{-1, -1, -1, -1, -1, -1};
                if (this.l3 != null) {
                    for (int i39 = 0; i39 < this.e0.length; i39++) {
                        this.l3[i39] = null;
                    }
                }
                this.l3 = null;
                this.m3 = null;
                for (int i40 = 0; i40 < 3; i40++) {
                    this.q3[i40] = null;
                }
                this.t3 = false;
            } catch (Throwable th4) {
                throw th4;
            }
        }
        synchronized (this.K6) {
            try {
                GLES20.glDeleteTextures(3, this.M6, 0);
                this.M6 = new int[]{-1, -1, -1};
                this.L6 = null;
                for (int i41 = 0; i41 < 3; i41++) {
                    this.P6[i41] = null;
                    this.N6[i41] = false;
                    this.O6[i41] = false;
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
        synchronized (this.V6) {
            try {
                GLES20.glDeleteTextures(3, this.X6, 0);
                this.X6 = new int[3];
                for (int i42 = 0; i42 < 3; i42++) {
                    this.X6[i42] = -1;
                }
                if (this.W6 != null) {
                    for (int i43 = 0; i43 < 3; i43++) {
                        if (this.W6[i43] != null) {
                            for (int i44 = 0; i44 < this.L[0].length; i44++) {
                                this.W6[i43][i44] = null;
                            }
                        }
                    }
                }
                this.W6 = null;
                if (this.Z6 != null) {
                    for (int i45 = 0; i45 < 3; i45++) {
                        this.Z6[i45] = null;
                        this.Y6[i45] = false;
                    }
                }
                this.Z6 = null;
            } catch (Throwable th6) {
                throw th6;
            }
        }
        synchronized (this.I4) {
            GLES20.glDeleteTextures(1, new int[]{this.L4}, 0);
            this.L4 = -1;
            this.J4 = null;
            this.K4 = null;
            this.M4 = false;
            this.N4 = false;
        }
        synchronized (this.Q4) {
            GLES20.glDeleteTextures(1, new int[]{this.T4}, 0);
            this.T4 = -1;
            this.R4 = null;
            this.S4 = null;
            this.U4 = false;
            this.V4 = false;
        }
        synchronized (this.X4) {
            GLES20.glDeleteTextures(1, new int[]{this.a5}, 0);
            this.a5 = -1;
            this.Y4 = null;
            this.Z4 = null;
            this.b5 = false;
        }
        synchronized (this.i5) {
            GLES20.glDeleteTextures(1, new int[]{this.l5}, 0);
            this.l5 = -1;
            GLES20.glDeleteTextures(1, new int[]{this.n5}, 0);
            this.n5 = -1;
            GLES20.glDeleteTextures(1, new int[]{this.p5}, 0);
            this.p5 = -1;
            GLES20.glDeleteTextures(1, new int[]{this.r5}, 0);
            this.r5 = -1;
            GLES20.glDeleteTextures(1, new int[]{this.s5}, 0);
            this.s5 = -1;
            this.j5 = null;
            this.k5 = null;
            this.m5 = null;
            this.o5 = null;
            this.q5 = null;
            this.t5 = false;
        }
        synchronized (this.R6) {
            GLES20.glDeleteTextures(1, new int[]{this.T6}, 0);
            this.T6 = -1;
            this.S6 = null;
        }
        synchronized (this.b7) {
            try {
                GLES20.glDeleteTextures(3, this.c7, 0);
                this.c7 = new int[3];
                for (int i46 = 0; i46 < 3; i46++) {
                    this.c7[i46] = -1;
                }
                if (this.e7 != null) {
                    for (int i47 = 0; i47 < 3; i47++) {
                        this.e7[i47] = null;
                        this.d7[i47] = false;
                    }
                }
                this.e7 = null;
            } catch (Throwable th7) {
                throw th7;
            }
        }
        synchronized (this.g7) {
            GLES20.glDeleteTextures(1, new int[]{this.i7}, 0);
            this.i7 = -1;
            GLES20.glDeleteTextures(1, new int[]{this.j7}, 0);
            this.j7 = -1;
            this.h7 = null;
        }
        synchronized (this.m7) {
            GLES20.glDeleteTextures(1, new int[]{this.n7}, 0);
            this.n7 = -1;
        }
        synchronized (this.l7) {
            GLES20.glDeleteTextures(1, new int[]{this.p7}, 0);
            this.p7 = -1;
        }
        synchronized (this.c6) {
            try {
                y();
                S0(-1);
                for (int i48 = 0; i48 < 3; i48++) {
                    S0(i48);
                }
            } catch (Throwable th8) {
                throw th8;
            }
        }
        synchronized (this.r6) {
            try {
                this.x6 = null;
                this.y6 = null;
                for (int i49 = 0; i49 < 3; i49++) {
                    this.B6[i49] = null;
                    this.C6[i49] = null;
                }
                int i50 = this.z6;
                if (i50 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i50}, 0);
                    this.z6 = -1;
                }
                int i51 = this.A6;
                if (i51 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i51}, 0);
                    this.A6 = -1;
                }
                for (int i52 = 0; i52 < 3; i52++) {
                    int i53 = this.D6[i52];
                    if (i53 != -1) {
                        GLES20.glDeleteTextures(1, new int[]{i53}, 0);
                        this.D6[i52] = -1;
                    }
                    int i54 = this.E6[i52];
                    if (i54 != -1) {
                        GLES20.glDeleteTextures(1, new int[]{i54}, 0);
                        this.E6[i52] = -1;
                    }
                }
            } catch (Throwable th9) {
                throw th9;
            }
        }
        synchronized (this.T3) {
            GLES20.glDeleteTextures(1, new int[]{this.Y3}, 0);
            this.Y3 = -1;
            this.U3 = null;
            this.V3 = null;
            this.Z3 = false;
            this.a4 = false;
            GLES20.glDeleteTextures(1, new int[]{this.f4}, 0);
            this.f4 = -1;
            this.b4 = null;
            this.c4 = null;
            this.g4 = false;
            this.h4 = false;
        }
        synchronized (this.x5) {
            GLES20.glDeleteTextures(1, new int[]{this.y5}, 0);
            this.y5 = -1;
            GLES20.glDeleteTextures(1, new int[]{this.z5}, 0);
            this.z5 = -1;
            GLES20.glDeleteTextures(1, new int[]{this.A5}, 0);
            this.A5 = -1;
            GLES20.glDeleteTextures(1, new int[]{this.B5}, 0);
            this.B5 = -1;
            this.J5 = null;
            this.K5 = null;
            this.L5 = null;
            this.M5 = null;
            this.C5 = false;
        }
        synchronized (this.P5) {
            GLES20.glDeleteTextures(1, new int[]{this.Q5}, 0);
            this.Q5 = -1;
        }
        synchronized (this.r7) {
            GLES20.glDeleteTextures(1, new int[]{this.s7}, 0);
            this.s7 = -1;
        }
        int[] iArr3 = this.p;
        if (iArr3 != null) {
            GLES20.glDeleteTextures(iArr3.length, iArr3, 0);
            this.p = null;
        }
        int[] iArr4 = this.o;
        if (iArr4 != null) {
            GLES20.glDeleteFramebuffers(iArr4.length, iArr4, 0);
            this.o = null;
        }
        int[] iArr5 = this.r;
        if (iArr5 != null) {
            GLES20.glDeleteRenderbuffers(iArr5.length, iArr5, 0);
            this.r = null;
        }
        int[] iArr6 = this.q;
        if (iArr6 != null) {
            GLES20.glDeleteFramebuffers(iArr6.length, iArr6, 0);
            this.q = null;
        }
        this.s = false;
        R0();
    }

    /* JADX WARN: Code duplicated, block: B:1421:0x1b50  */
    /* JADX WARN: Code duplicated, block: B:1614:0x1fd8  */
    /* JADX WARN: Code duplicated, block: B:1615:0x1ffb  */
    /* JADX WARN: Code duplicated, block: B:1617:0x2003  */
    /* JADX WARN: Code duplicated, block: B:1618:0x200e  */
    /* JADX WARN: Code duplicated, block: B:1620:0x201e  */
    /* JADX WARN: Code duplicated, block: B:1681:0x2157  */
    /* JADX WARN: Code duplicated, block: B:1682:0x217f  */
    /* JADX WARN: Code duplicated, block: B:1684:0x2188  */
    /* JADX WARN: Code duplicated, block: B:1686:0x2196  */
    /* JADX WARN: Code duplicated, block: B:1688:0x21a4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v189 */
    /* JADX WARN: Type inference failed for: r14v190, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v193 */
    /* JADX WARN: Type inference failed for: r14v210 */
    /* JADX WARN: Type inference failed for: r14v211, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v215 */
    /* JADX WARN: Type inference failed for: r14v233 */
    /* JADX WARN: Type inference failed for: r14v234, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v237 */
    /* JADX WARN: Type inference failed for: r27v10 */
    /* JADX WARN: Type inference failed for: r27v11 */
    /* JADX WARN: Type inference failed for: r27v13 */
    /* JADX WARN: Type inference failed for: r27v14 */
    /* JADX WARN: Type inference failed for: r27v15 */
    /* JADX WARN: Type inference failed for: r27v9 */
    /* JADX WARN: Type inference failed for: r55v0, types: [com.cyberlink.clgpuimage.GPUImageFilter, com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter] */
    /* JADX WARN: Type inference failed for: r6v63 */
    /* JADX WARN: Type inference failed for: r6v64, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v69 */
    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        int i9;
        int i10;
        int[] iArr2;
        int i11;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        int i12;
        boolean z19;
        boolean[][] zArr;
        boolean z20;
        ?? r6;
        int i13;
        boolean z21;
        boolean z22;
        boolean z23;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        boolean z30;
        boolean z31;
        boolean z32;
        boolean z33;
        boolean z34;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        CLStickerLiveFilter cLStickerLiveFilter;
        boolean z35;
        boolean z36;
        boolean z37;
        boolean z38;
        boolean z39;
        int i23;
        int i24;
        ?? r14;
        boolean z40;
        ?? r15;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData;
        ?? r16;
        ArrayList arrayList;
        CLMakeupLiveEyeContactFilter cLMakeupLiveEyeContactFilter;
        int i25;
        boolean z41;
        int i26;
        int i27;
        int i28;
        boolean z42;
        boolean z43;
        boolean z44;
        boolean z45;
        GPUImageFilter gPUImageFilter;
        List list;
        List list2;
        List list3;
        f();
        boolean z46 = false;
        if (this.w4 || true == this.B.f25683c[z7] || true == this.B.f25683c[C7]) {
            i0(i2, this.u[0], this.g, this.f25446h);
        }
        boolean[][] zArr2 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 3, MakeupLiveFeatures.values().length);
        synchronized (this.y0) {
            try {
                this.B.f25681a = this.A.f25681a;
                this.B.f25682b = (boolean[]) this.A.f25682b.clone();
                this.B.f25683c = (boolean[]) this.A.f25683c.clone();
                h hVar = this.B;
                h hVar2 = this.A;
                hVar.d = hVar2.d;
                hVar2.d = a.f25660a;
                hVar.f25684e = hVar2.f25684e;
                int i29 = 90;
                int i30 = (this.v == 0 || this.v == 90 || this.v == 180 || this.v == 270) ? this.v : this.R0[0].rotation;
                if (this.g <= this.f25446h || (i30 != 0 && i30 != 180)) {
                    i29 = i30;
                }
                if (this.w4) {
                    this.p0.j(this.m1, i29);
                }
                K(i29, this.B.f25684e);
                for (int i31 = 0; i31 < 3; i31++) {
                    for (int i32 = 0; i32 < MakeupLiveFeatures.values().length; i32++) {
                        zArr2[i31][i32] = this.y4[i31][i32];
                    }
                }
                Iterator it = this.I6.iterator();
                while (it.hasNext()) {
                    this.B.f25683c[((MakeupLiveFeatures) it.next()).ordinal()] = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        h hVar3 = this.B;
        int i33 = hVar3.d;
        boolean z47 = i33 == a.f25661b || i33 == a.d;
        boolean z48 = i33 == a.f25662c || i33 == a.d;
        if (hVar3.f25681a && this.B.f25683c[c8]) {
            g1();
        }
        if (this.B.f25681a && this.B.f25683c[i8]) {
            f1();
        }
        if (this.B.f25681a && ((this.B.f25683c[y7] || this.B.f25683c[z7] || this.B.f25683c[P7]) && this.H1 && this.N2 != null)) {
            if (!this.O2) {
                for (int i34 = 0; i34 < 3; i34++) {
                    CLMakeupLiveEyeFilter.f[] fVarArr = this.N2;
                    if (fVarArr[i34] == null) {
                        fVarArr[i34] = new CLMakeupLiveEyeFilter.f();
                    }
                }
                this.O2 = true;
            }
            u();
            int i35 = 0;
            while (true) {
                CLMakeupLiveEyeFilter[] cLMakeupLiveEyeFilterArr = this.E;
                if (i35 >= cLMakeupLiveEyeFilterArr.length) {
                    break;
                }
                cLMakeupLiveEyeFilterArr[i35].O(this.N2[i35]);
                i35++;
            }
            int i36 = 0;
            while (true) {
                CLMakeupLiveEyeFilter[] cLMakeupLiveEyeFilterArr2 = this.F;
                if (i36 >= cLMakeupLiveEyeFilterArr2.length) {
                    break;
                }
                cLMakeupLiveEyeFilterArr2[i36].O(this.N2[i36]);
                i36++;
            }
        }
        synchronized (this.x0) {
            try {
                s();
                if (this.B.f25681a) {
                    B0(z48);
                } else {
                    if (this.B.f25683c[E7]) {
                        if (z48 || IBeautyFilter2.FilterType.ENABLE_SMOOTH == this.H6) {
                            this.h0.m(this.U0[0]);
                        }
                        this.g0.m(this.U0[0]);
                    }
                    if (this.B.f25683c[F7]) {
                        for (int i37 = 0; i37 < 3; i37++) {
                            this.f0[i37].m(this.U0[i37]);
                            com.cyberlink.clgpuimage.cosmetic.e eVar = this.f0[i37];
                            CLMakeupLiveFoundationFilter.LiveFoundationData liveFoundationData = this.J0[i37];
                            synchronized (eVar.t0) {
                                eVar.i0.Copy(liveFoundationData);
                            }
                            eVar.h0 = liveFoundationData.is_front_camera;
                        }
                    }
                    if (this.B.f25683c[g8]) {
                        this.q0.j(this.U0[0]);
                    }
                    if (this.B.f25683c[d8]) {
                        LiveDynamicRangeMetadata liveDynamicRangeMetadata = new LiveDynamicRangeMetadata();
                        for (int i38 = 0; i38 < 3; i38++) {
                            this.d0[i38].j(this.Q0[i38], liveDynamicRangeMetadata);
                        }
                    }
                    float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    if (z48 || IBeautyFilter2.FilterType.ENABLE_SMOOTH == this.H6) {
                        this.h0.o(this.H0[0].m_intensity);
                        com.cyberlink.clgpuimage.cosmetic.a aVar = this.h0;
                        if (this.G6) {
                            f2 = this.H0[0].m_color_intensity;
                        }
                        aVar.n(f2);
                    } else {
                        CLMakeupLiveFoundationFilter.LiveFoundationData[] liveFoundationDataArr = this.J0;
                        CLMakeupLiveSmoothFilter$LiveSmoothMetadata cLMakeupLiveSmoothFilter$LiveSmoothMetadata = this.H0[0];
                        int[] iArrG0 = g0(liveFoundationDataArr, (int) cLMakeupLiveSmoothFilter$LiveSmoothMetadata.m_intensity, (int) cLMakeupLiveSmoothFilter$LiveSmoothMetadata.m_color_intensity);
                        this.g0.o(iArrG0[0]);
                        this.g0.n(this.G6 ? iArrG0[1] : 0.0f);
                        CLMakeupLiveFoundationFilter.LiveFoundationData[] liveFoundationDataArr2 = this.J0;
                        CLMakeupLiveSmoothFilter$LiveSmoothMetadata cLMakeupLiveSmoothFilter$LiveSmoothMetadata2 = this.H0[0];
                        int[] iArrG1 = g0(liveFoundationDataArr2, (int) cLMakeupLiveSmoothFilter$LiveSmoothMetadata2.m_v2_intensity, (int) cLMakeupLiveSmoothFilter$LiveSmoothMetadata2.m_v2_color_intensity);
                        for (int i39 = 0; i39 < 3; i39++) {
                            this.f0[i39].o(iArrG1[0]);
                            this.f0[i39].n(this.G6 ? iArrG1[1] : 0.0f);
                        }
                    }
                }
                if (z47) {
                    x xVar = this.l0;
                    ArrayList<PointF> arrayList2 = this.R0[0].feature_points;
                    xVar.getClass();
                    xVar.o = new ArrayList(arrayList2);
                    x xVar2 = this.l0;
                    xVar2.p = this.R0[0].rotation;
                    xVar2.r.Copy(this.T0[0]);
                    this.l0.s.a(this.S0[0]);
                    this.l0.t.Copy(this.U0[0]);
                }
                if (z48) {
                    x xVar3 = this.m0;
                    ArrayList<PointF> arrayList3 = this.R0[0].feature_points;
                    xVar3.getClass();
                    xVar3.o = new ArrayList(arrayList3);
                    x xVar4 = this.m0;
                    xVar4.p = this.R0[0].rotation;
                    xVar4.r.Copy(this.T0[0]);
                    this.m0.s.a(this.S0[0]);
                    this.m0.t.Copy(this.U0[0]);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
        GLES20.glGetIntegerv(36006, intBufferAllocate);
        IntBuffer intBufferAllocate2 = IntBuffer.allocate(4);
        GLES20.glGetIntegerv(2978, intBufferAllocate2);
        if (this.B.f25681a) {
            for (int i40 = 0; i40 < 3; i40++) {
                boolean[] zArr3 = this.B.f25683c;
                int i41 = y7;
                if (true == zArr3[i41] || true == this.B.f25683c[z7] || true == this.B.f25683c[P7]) {
                    this.E[i40].J6 = this.B.f25683c[i41];
                    this.F[i40].J6 = this.B.f25683c[i41];
                    CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter = this.E[i40];
                    boolean[] zArr4 = this.B.f25683c;
                    int i42 = z7;
                    cLMakeupLiveEyeFilter.I6 = zArr4[i42];
                    this.F[i40].I6 = this.B.f25683c[i42];
                    CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter2 = this.E[i40];
                    boolean[] zArr5 = this.B.f25683c;
                    int i43 = P7;
                    cLMakeupLiveEyeFilter2.K6 = zArr5[i43];
                    this.F[i40].K6 = this.B.f25683c[i43];
                }
            }
            List list4 = this.r0;
            if (list4 == null) {
                z = false;
                break;
            }
            Iterator it2 = list4.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((CLMakeupLivePluginFilter) it2.next()).GetEnabled()) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            List list5 = this.s0;
            if (list5 != null) {
                Iterator it3 = list5.iterator();
                while (it3.hasNext()) {
                    if (((CLMakeupLivePluginFilter) it3.next()).GetEnabled()) {
                        z = true;
                        break;
                    }
                }
            }
            if (!z && (list3 = this.t0) != null) {
                Iterator it4 = list3.iterator();
                while (it4.hasNext()) {
                    if (((CLMakeupLivePluginFilter) it4.next()).GetEnabled()) {
                        z = true;
                        break;
                    }
                }
            }
            if (!z && (list2 = this.u0) != null) {
                Iterator it5 = list2.iterator();
                while (it5.hasNext()) {
                    if (((CLMakeupLivePluginFilter) it5.next()).GetEnabled()) {
                        z = true;
                        break;
                    }
                }
            }
            if (!z && (list = this.v0) != null) {
                Iterator it6 = list.iterator();
                while (it6.hasNext()) {
                    if (((CLMakeupLivePluginFilter) it6.next()).GetEnabled()) {
                        z = true;
                        break;
                    }
                }
            }
            if (this.B.f25683c[x7] || this.B.f25683c[y7] || this.B.f25683c[z7] || this.B.f25683c[C7] || this.B.f25683c[E7] || this.B.f25683c[F7] || this.B.f25683c[D7] || this.B.f25683c[G7] || this.B.f25683c[P7] || this.B.f25683c[U7] || this.B.f25683c[W7] || this.B.f25683c[Q7] || this.B.f25683c[R7] || this.B.f25683c[Z7] || this.B.f25683c[a8] || this.B.f25683c[b8] || this.B.f25683c[c8] || this.B.f25683c[i8] || this.B.f25683c[X7] || this.B.f25683c[Y7] || this.B.f25683c[d8] || this.B.f25683c[e8] || this.B.f25683c[f8] || this.B.f25683c[g8] || this.B.f25683c[h8] || this.B.f25683c[B7] || this.B.f25683c[A7] || this.B.f25683c[L7] || this.B.f25683c[T7] || this.B.f25683c[V7] || this.B.f25683c[I7] || this.B.f25683c[J7] || this.B.f25683c[K7] || z) {
                this.w0.clear();
                ArrayList arrayList4 = new ArrayList();
                if (z47) {
                    this.w0.add(this.l0);
                }
                List<CLMakeupLivePluginFilter> list6 = this.t0;
                if (list6 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter : list6) {
                        if (cLMakeupLivePluginFilter.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter);
                        }
                    }
                }
                List<CLMakeupLivePluginFilter> list7 = this.r0;
                if (list7 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter2 : list7) {
                        if (cLMakeupLivePluginFilter2.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter2);
                        }
                    }
                }
                if (!z48 && IBeautyFilter2.FilterType.ENABLE_SMOOTH != this.H6) {
                    if (f0(this.J0, this.B.f25683c[E7])) {
                        this.w0.add(this.g0);
                    }
                    if (f0(this.J0, this.B.f25683c[F7])) {
                        for (int i44 = 0; i44 < Math.min(3, this.z); i44++) {
                            if (this.B.f25682b[i44]) {
                                this.w0.add(this.f0[i44]);
                            }
                        }
                    }
                } else if (this.B.f25683c[E7]) {
                    this.w0.add(this.h0);
                }
                G();
                boolean[] zArr6 = new boolean[3];
                for (int i45 = 0; i45 < 3; i45++) {
                    zArr6[i45] = false;
                }
                if (this.B.f25683c[U7]) {
                    int i46 = 0;
                    z2 = false;
                    for (int i47 = 3; i46 < i47; i47 = 3) {
                        int i48 = this.a1[i46];
                        if (i48 < this.z && this.B.f25682b[i48] && this.I0[i48].is_valid && zArr2[i48][U7]) {
                            this.w0.add(this.R[i48]);
                            zArr6[i48] = true;
                            z2 = true;
                        }
                        i46++;
                    }
                    if (z2) {
                        if (!e0(this.V5)) {
                            T(this.V5, this.b6, true);
                        }
                        if (e0(this.W5)) {
                            z45 = false;
                        } else {
                            z45 = false;
                            T(this.W5, this.b6, false);
                        }
                        if (!e0(this.X5)) {
                            T(this.X5, this.b6, z45);
                        }
                        if (!e0(this.Y5)) {
                            T(this.Y5, this.b6, z45);
                        }
                        if (!e0(this.Z5)) {
                            T(this.Z5, this.b6, z45);
                        }
                        if (!e0(this.a6)) {
                            T(this.a6, this.b6, z45);
                        }
                        int i49 = 0;
                        while (true) {
                            CLMakeupLiveConcealerFilter[] cLMakeupLiveConcealerFilterArr = this.R;
                            if (i49 >= cLMakeupLiveConcealerFilterArr.length) {
                                break;
                            }
                            cLMakeupLiveConcealerFilterArr[i49].j(this.V5, this.W5, this.X5, this.Y5, this.Z5, this.a6);
                            i49++;
                        }
                    }
                } else {
                    z2 = false;
                }
                for (int i50 = 0; i50 < 3; i50++) {
                    boolean[] zArr7 = this.U5;
                    zArr7[i50] = zArr7[i50] & zArr6[i50];
                }
                if (this.B.f25683c[W7]) {
                    boolean z49 = false;
                    for (int i51 = 0; i51 < 3; i51++) {
                        int i52 = this.a1[i51];
                        if (i52 < this.z && this.B.f25682b[i52] && this.J0[i52].is_enabled && zArr2[i52][W7]) {
                            this.w0.add(this.T[i52]);
                            z49 = true;
                        }
                    }
                    if (z49) {
                        if (e0(this.d5)) {
                            z44 = false;
                        } else {
                            z44 = false;
                            T(this.d5, this.h5, false);
                        }
                        if (!e0(this.e5)) {
                            T(this.e5, this.h5, z44);
                        }
                        if (!e0(this.f5)) {
                            T(this.f5, this.h5, z44);
                        }
                        if (!e0(this.g5)) {
                            T(this.g5, this.h5, true);
                        }
                        int i53 = 0;
                        while (i53 < this.R.length) {
                            this.T[i53].j(this.d5, this.e5, this.f5, this.g5);
                            i53++;
                            z49 = z49;
                        }
                    }
                    z3 = z49;
                } else {
                    z3 = false;
                }
                if (this.B.f25683c[H7]) {
                    z4 = false;
                    for (int i54 = 0; i54 < this.J.length; i54++) {
                        int iM0 = M0(i54);
                        if (iM0 < this.z && this.B.f25682b[iM0] && this.L6[i54] != null && zArr2[iM0][H7] && !this.R0[iM0].is_mask_detected) {
                            this.w0.add(this.J[i54]);
                            z4 = true;
                        }
                    }
                    if (z4) {
                        if (!e0(this.Q6)) {
                            T(this.Q6, 1, true);
                        }
                        int i55 = 0;
                        while (true) {
                            CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr = this.J;
                            if (i55 >= cLMakeupLiveBlush3DFilterArr.length) {
                                break;
                            }
                            cLMakeupLiveBlush3DFilterArr[i55].u(this.Q6);
                            i55++;
                        }
                    }
                } else {
                    z4 = false;
                }
                if (this.B.f25683c[I7]) {
                    z5 = false;
                    for (int i56 = 0; i56 < this.L[0].length; i56++) {
                        int iM1 = M0(i56);
                        if (iM1 < this.z && this.B.f25682b[iM1] && zArr2[iM1][I7] && !this.R0[iM1].is_mask_detected) {
                            this.w0.add(this.L[0][i56]);
                            z5 = true;
                        }
                    }
                    if (z5) {
                        if (!e0(this.a7)) {
                            T(this.a7, 1, true);
                        }
                        int i57 = 0;
                        while (true) {
                            CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr2 = this.L[0];
                            if (i57 >= cLMakeupLiveBlush3DFilterArr2.length) {
                                break;
                            }
                            cLMakeupLiveBlush3DFilterArr2[i57].u(this.a7);
                            i57++;
                        }
                    }
                } else {
                    z5 = false;
                }
                if (this.B.f25683c[J7]) {
                    int i58 = 0;
                    z8 = false;
                    while (i58 < this.L[0].length) {
                        int iM2 = M0(i58);
                        int i59 = i58;
                        if (iM2 < this.z && this.B.f25682b[iM2] && zArr2[iM2][J7] && !this.R0[iM2].is_mask_detected) {
                            this.w0.add(this.L[1][i59]);
                            z8 = true;
                        }
                        i58 = i59 + 1;
                    }
                    if (z8) {
                        if (e0(this.a7)) {
                            z43 = true;
                        } else {
                            z43 = true;
                            T(this.a7, 1, true);
                        }
                        ?? r27 = z43;
                        int i60 = 0;
                        while (true) {
                            CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr3 = this.L;
                            z6 = z4;
                            if (i60 >= cLMakeupLiveBlush3DFilterArr3[0].length) {
                                break;
                            }
                            cLMakeupLiveBlush3DFilterArr3[r27][i60].u(this.a7);
                            i60++;
                            z4 = z6;
                            r27 = 1;
                        }
                    } else {
                        z6 = z4;
                    }
                } else {
                    z6 = z4;
                    z8 = false;
                }
                if (this.B.f25683c[K7]) {
                    int i61 = 0;
                    boolean z50 = false;
                    while (i61 < this.L[0].length) {
                        int iM3 = M0(i61);
                        int i62 = i61;
                        if (iM3 < this.z && this.B.f25682b[iM3] && zArr2[iM3][K7] && !this.R0[iM3].is_mask_detected) {
                            this.w0.add(this.L[2][i62]);
                            z50 = true;
                        }
                        i61 = i62 + 1;
                    }
                    if (z50) {
                        if (!e0(this.a7)) {
                            T(this.a7, 1, true);
                        }
                        int i63 = 0;
                        while (true) {
                            CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr4 = this.L;
                            z9 = z50;
                            if (i63 >= cLMakeupLiveBlush3DFilterArr4[0].length) {
                                break;
                            }
                            cLMakeupLiveBlush3DFilterArr4[2][i63].u(this.a7);
                            i63++;
                            z50 = z9;
                        }
                    } else {
                        z9 = z50;
                    }
                } else {
                    z9 = false;
                }
                if (this.B.f25683c[L7]) {
                    int i64 = 0;
                    boolean z51 = false;
                    while (i64 < this.K.length) {
                        int iM4 = M0(i64);
                        int i65 = i64;
                        if (iM4 < this.z && this.B.f25682b[iM4] && this.S6[i65] != null && zArr2[iM4][L7] && !this.R0[iM4].is_mask_detected) {
                            this.w0.add(this.K[i65]);
                            z51 = true;
                        }
                        i64 = i65 + 1;
                    }
                    if (z51) {
                        if (!e0(this.U6)) {
                            T(this.U6, 1, true);
                        }
                        int i66 = 0;
                        while (true) {
                            i[] iVarArr = this.K;
                            z10 = z51;
                            if (i66 >= iVarArr.length) {
                                break;
                            }
                            iVarArr[i66].u(this.U6);
                            i66++;
                            z51 = z10;
                        }
                    } else {
                        z10 = z51;
                    }
                } else {
                    z10 = false;
                }
                if (this.B.f25683c[M7]) {
                    int i67 = 0;
                    boolean z52 = false;
                    while (i67 < this.M[0].length) {
                        int iM5 = M0(i67);
                        int i68 = i67;
                        if (iM5 < this.z && this.B.f25682b[iM5] && zArr2[iM5][M7] && !this.R0[iM5].is_mask_detected) {
                            this.w0.add(this.M[0][i68]);
                            z52 = true;
                        }
                        i67 = i68 + 1;
                    }
                    if (z52) {
                        if (!e0(this.f7)) {
                            T(this.f7, 1, true);
                        }
                        int i69 = 0;
                        while (true) {
                            i[] iVarArr2 = this.M[0];
                            z11 = z52;
                            if (i69 >= iVarArr2.length) {
                                break;
                            }
                            iVarArr2[i69].u(this.f7);
                            i69++;
                            z52 = z11;
                        }
                    } else {
                        z11 = z52;
                    }
                } else {
                    z11 = false;
                }
                if (this.B.f25683c[N7]) {
                    int i70 = 0;
                    boolean z53 = false;
                    while (i70 < this.M[0].length) {
                        int iM6 = M0(i70);
                        int i71 = i70;
                        if (iM6 < this.z && this.B.f25682b[iM6] && zArr2[iM6][M7] && !this.R0[iM6].is_mask_detected) {
                            this.w0.add(this.M[1][i71]);
                            z53 = true;
                        }
                        i70 = i71 + 1;
                    }
                    if (z53) {
                        if (e0(this.f7)) {
                            z42 = true;
                        } else {
                            z42 = true;
                            T(this.f7, 1, true);
                        }
                        ?? r28 = z42;
                        int i72 = 0;
                        while (true) {
                            i[][] iVarArr3 = this.M;
                            z12 = z53;
                            if (i72 >= iVarArr3[0].length) {
                                break;
                            }
                            iVarArr3[r28][i72].u(this.f7);
                            i72++;
                            z53 = z12;
                            r28 = 1;
                        }
                    } else {
                        z12 = z53;
                    }
                } else {
                    z12 = false;
                }
                if (this.B.f25683c[O7]) {
                    int i73 = 0;
                    boolean z54 = false;
                    while (i73 < this.M[0].length) {
                        int iM7 = M0(i73);
                        int i74 = i73;
                        if (iM7 < this.z && this.B.f25682b[iM7] && zArr2[iM7][M7] && !this.R0[iM7].is_mask_detected) {
                            this.w0.add(this.M[2][i74]);
                            z54 = true;
                        }
                        i73 = i74 + 1;
                    }
                    if (z54) {
                        if (!e0(this.f7)) {
                            T(this.f7, 1, true);
                        }
                        int i75 = 0;
                        while (true) {
                            i[][] iVarArr4 = this.M;
                            z13 = z54;
                            if (i75 >= iVarArr4[0].length) {
                                break;
                            }
                            iVarArr4[2][i75].u(this.f7);
                            i75++;
                            z54 = z13;
                        }
                    } else {
                        z13 = z54;
                    }
                } else {
                    z13 = false;
                }
                if (this.B.f25683c[V7]) {
                    p();
                    int i76 = 0;
                    z14 = false;
                    while (i76 < this.S.length) {
                        int iM8 = M0(i76);
                        int i77 = i76;
                        if (iM8 < this.z && this.B.f25682b[iM8] && zArr2[iM8][V7] && !this.R0[iM8].is_mask_detected) {
                            this.w0.add(this.S[i77]);
                            z14 = true;
                        }
                        i76 = i77 + 1;
                    }
                    if (z14) {
                        if (!e0(this.c5)) {
                            float fMin = 300.0f / Math.min(getOutputWidth(), getOutputHeight());
                            this.c5.CreateData(Math.round(getOutputWidth() * fMin), Math.round(getOutputHeight() * fMin), true);
                        }
                        int i78 = 0;
                        while (true) {
                            CLMakeupLiveBronzerFilter[] cLMakeupLiveBronzerFilterArr = this.S;
                            if (i78 >= cLMakeupLiveBronzerFilterArr.length) {
                                break;
                            }
                            cLMakeupLiveBronzerFilterArr[i78].u(this.c5);
                            i78++;
                        }
                    } else {
                        z14 = z14;
                        z5 = z5;
                    }
                } else {
                    z5 = z5;
                    z14 = false;
                }
                if (this.B.f25683c[S7]) {
                    z15 = false;
                    for (int i79 = 0; i79 < this.b0.length; i79++) {
                        int iM9 = M0(i79);
                        if (iM9 < this.z && this.B.f25682b[iM9] && zArr2[iM9][S7] && !this.R0[iM9].is_mask_detected) {
                            this.w0.add(this.b0[i79]);
                            z15 = true;
                        }
                    }
                    if (z15) {
                        if (!e0(this.u5)) {
                            T(this.u5, this.v5, true);
                        }
                        int i80 = 0;
                        while (true) {
                            CLMakeupLiveFaceContourFilter[] cLMakeupLiveFaceContourFilterArr = this.b0;
                            if (i80 >= cLMakeupLiveFaceContourFilterArr.length) {
                                break;
                            }
                            cLMakeupLiveFaceContourFilterArr[i80].u(this.u5);
                            i80++;
                        }
                    }
                } else {
                    z15 = false;
                }
                if (this.B.f25683c[T7]) {
                    int i81 = 0;
                    z16 = false;
                    while (i81 < this.c0.length) {
                        int iM10 = M0(i81);
                        int i82 = i81;
                        if (iM10 < this.z && this.B.f25682b[iM10] && zArr2[iM10][T7] && !this.R0[iM10].is_mask_detected) {
                            this.w0.add(this.c0[i82]);
                            z16 = true;
                        }
                        i81 = i82 + 1;
                    }
                    if (z16) {
                        if (!e0(this.k7)) {
                            T(this.k7, this.v5, true);
                        }
                        int i83 = 0;
                        while (true) {
                            n[] nVarArr = this.c0;
                            if (i83 >= nVarArr.length) {
                                break;
                            }
                            nVarArr[i83].u(this.k7);
                            i83++;
                        }
                    } else {
                        z15 = z15;
                    }
                } else {
                    z15 = z15;
                    z16 = false;
                }
                if (this.B.f25683c[G7]) {
                    t();
                    int i84 = 3;
                    boolean[] zArr8 = new boolean[3];
                    int i85 = 0;
                    while (i85 < i84) {
                        boolean z55 = this.D1[i85];
                        if (z55) {
                            int i86 = this.B1[i85];
                            i25 = i85;
                            z41 = z16;
                            if (-1 != i86 && -1 != (i28 = this.C1[i25])) {
                                CLMakeupLiveBlushFilter cLMakeupLiveBlushFilter = this.I[i25];
                                cLMakeupLiveBlushFilter.A = i86;
                                cLMakeupLiveBlushFilter.E = i28;
                                zArr8[i25] = true;
                            }
                            i85 = i25 + 1;
                            z16 = z41;
                            i84 = 3;
                        } else {
                            i25 = i85;
                            z41 = z16;
                        }
                        if (!z55 && -1 != (i26 = this.z1) && -1 != (i27 = this.A1)) {
                            CLMakeupLiveBlushFilter cLMakeupLiveBlushFilter2 = this.I[i25];
                            cLMakeupLiveBlushFilter2.A = i26;
                            cLMakeupLiveBlushFilter2.E = i27;
                            zArr8[i25] = true;
                        }
                        i85 = i25 + 1;
                        z16 = z41;
                        i84 = 3;
                    }
                    z17 = z16;
                    int i87 = 0;
                    for (int i88 = i84; i87 < i88; i88 = 3) {
                        int i89 = this.a1[i87];
                        if (i89 < this.z && this.B.f25682b[i89] && zArr8[i89] && zArr2[i89][G7] && !this.R0[i89].is_mask_detected) {
                            this.w0.add(this.I[i89]);
                        }
                        i87++;
                    }
                } else {
                    z17 = z16;
                }
                if (this.B.f25683c[x7] && this.d6) {
                    z();
                    for (int i90 = 0; i90 < 3; i90++) {
                        int i91 = this.a1[i90];
                        boolean z56 = this.q6[i91];
                        if (z56 && this.f6[i91]) {
                            CLMakeupLiveEyeContactFilter cLMakeupLiveEyeContactFilter2 = this.D[i91];
                            int[] iArr3 = this.p6[i91];
                            cLMakeupLiveEyeContactFilter2.getClass();
                            cLMakeupLiveEyeContactFilter2.b0 = (int[]) iArr3.clone();
                            if (i91 < this.z && this.B.f25682b[i91] && zArr2[i91][x7]) {
                                arrayList = this.w0;
                                cLMakeupLiveEyeContactFilter = this.D[i91];
                                arrayList.add(cLMakeupLiveEyeContactFilter);
                            }
                        } else if (!z56 && this.e6) {
                            CLMakeupLiveEyeContactFilter cLMakeupLiveEyeContactFilter3 = this.D[i91];
                            int[] iArr4 = this.o6;
                            cLMakeupLiveEyeContactFilter3.getClass();
                            cLMakeupLiveEyeContactFilter3.b0 = (int[]) iArr4.clone();
                            if (i91 < this.z && this.B.f25682b[i91] && zArr2[i91][x7]) {
                                arrayList = this.w0;
                                cLMakeupLiveEyeContactFilter = this.D[i91];
                                arrayList.add(cLMakeupLiveEyeContactFilter);
                            }
                        }
                    }
                }
                if (this.B.f25683c[X7]) {
                    z18 = false;
                    for (int i92 = 0; i92 < this.X.length; i92++) {
                        int iM11 = M0(i92);
                        if (iM11 < this.z && this.B.f25682b[iM11] && zArr2[iM11][X7] && !this.R0[iM11].is_mask_detected) {
                            this.w0.add(this.X[i92]);
                            z18 = true;
                        }
                    }
                    if (z18) {
                        if (!e0(this.O4)) {
                            T(this.O4, this.P4, true);
                        }
                        int i93 = 0;
                        while (true) {
                            CLMakeupLiveFaceArtFilter[] cLMakeupLiveFaceArtFilterArr = this.X;
                            if (i93 >= cLMakeupLiveFaceArtFilterArr.length) {
                                break;
                            }
                            cLMakeupLiveFaceArtFilterArr[i93].u(this.O4);
                            i93++;
                        }
                    }
                } else {
                    z18 = false;
                }
                if ((this.B.f25683c[y7] || this.B.f25683c[z7] || this.B.f25683c[P7]) && this.H1) {
                    v();
                    w();
                    x();
                    int i94 = 0;
                    while (true) {
                        if (i94 >= 3) {
                            break;
                        }
                        boolean z57 = this.a2[i94][0];
                        int[] iArr5 = z57 ? this.Z1[i94] : this.V1;
                        int i95 = i94;
                        boolean z58 = this.j2[i95][0];
                        int[] iArr6 = z58 ? this.i2[i95] : this.e2;
                        boolean z59 = this.s2[i95][0];
                        int[] iArr7 = z59 ? this.r2[i95] : this.n2;
                        Rect[] rectArr = z57 ? this.X1[i95] : this.T1;
                        int[] iArr8 = iArr7;
                        Rect[] rectArr2 = z58 ? this.g2[i95] : this.c2;
                        Rect[] rectArr3 = z59 ? this.p2[i95] : this.l2;
                        this.E[i95].k0(iArr8[0], iArr6[0], iArr5[0], (z59 ? this.v2[i95] : this.t2)[0], (z59 ? this.z2[i95] : this.x2)[0], (z58 ? this.D2[i95] : this.B2)[0], (z58 ? this.H2[i95] : this.F2)[0], (z58 ? this.L2[i95] : this.J2)[0], this.u[0], this.s7);
                        CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter3 = this.E[i95];
                        Rect rect = rectArr3[0];
                        boolean z60 = z18;
                        Rect rect2 = rectArr2[0];
                        Rect rect3 = rectArr[0];
                        boolean[][] zArr9 = zArr2;
                        cLMakeupLiveEyeFilter3.l6.set(rect);
                        cLMakeupLiveEyeFilter3.m6.set(rect2);
                        cLMakeupLiveEyeFilter3.n6.set(rect3);
                        boolean z61 = this.a2[i95][1];
                        int[] iArr9 = z61 ? this.Z1[i95] : this.V1;
                        boolean z62 = this.j2[i95][1];
                        int[] iArr10 = z62 ? this.i2[i95] : this.e2;
                        boolean z63 = this.s2[i95][1];
                        int[] iArr11 = z63 ? this.r2[i95] : this.n2;
                        Rect[] rectArr4 = z61 ? this.X1[i95] : this.T1;
                        Rect[] rectArr5 = z62 ? this.g2[i95] : this.c2;
                        Rect[] rectArr6 = z63 ? this.p2[i95] : this.l2;
                        this.F[i95].k0(iArr11[1], iArr10[1], iArr9[1], (z63 ? this.v2[i95] : this.t2)[1], (z63 ? this.z2[i95] : this.x2)[1], (z62 ? this.D2[i95] : this.B2)[1], (z62 ? this.H2[i95] : this.F2)[1], (z62 ? this.L2[i95] : this.J2)[1], this.u[0], this.s7);
                        CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter4 = this.F[i95];
                        Rect rect4 = rectArr6[1];
                        Rect rect5 = rectArr5[1];
                        Rect rect6 = rectArr4[1];
                        cLMakeupLiveEyeFilter4.l6.set(rect4);
                        cLMakeupLiveEyeFilter4.m6.set(rect5);
                        cLMakeupLiveEyeFilter4.n6.set(rect6);
                        i94 = i95 + 1;
                        z18 = z60;
                        zArr2 = zArr9;
                    }
                    z19 = z18;
                    zArr = zArr2;
                    int i96 = 0;
                    z20 = false;
                    for (i12 = 3; i96 < i12; i12 = 3) {
                        int i97 = this.a1[i96];
                        if (i97 < this.z && this.B.f25682b[i97]) {
                            boolean[] zArr10 = zArr[i97];
                            if (zArr10[y7] || zArr10[P7] || zArr10[z7]) {
                                this.w0.add(this.E[i97]);
                                this.w0.add(this.F[i97]);
                                z20 = true;
                            }
                        }
                        i96++;
                    }
                    if (z20) {
                        if (e0(this.V2)) {
                            r6 = 1;
                        } else {
                            r6 = 1;
                            T(this.V2, 1, false);
                        }
                        if (!e0(this.P2)) {
                            T(this.P2, this.Q2, r6);
                        }
                        if (!e0(this.W2)) {
                            T(this.W2, r6, false);
                        }
                        if (!e0(this.X2)) {
                            T(this.X2, this.Q2, r6);
                        }
                        if (this.d1[0].is_valid == r6 && !e0(this.t7)) {
                            T(this.t7, r6, false);
                        }
                        int i98 = 0;
                        while (i98 < 3) {
                            int i99 = i98;
                            this.E[i98].m0(this.V2, this.P2, this.W2, this.X2, this.t7);
                            this.F[i99].m0(this.V2, this.P2, this.W2, this.X2, this.t7);
                            i98 = i99 + 1;
                        }
                    }
                } else {
                    z19 = z18;
                    zArr = zArr2;
                    z20 = false;
                }
                if ((this.B.f25683c[A7] || this.B.f25683c[B7]) && this.H1) {
                    n();
                    o();
                    int i100 = 0;
                    while (true) {
                        if (i100 >= 3) {
                            break;
                        }
                        l lVar = this.G[i100];
                        int i101 = this.p7;
                        int i102 = this.n7;
                        lVar.I5 = i101;
                        lVar.N5 = i102;
                        int i103 = i100;
                        l lVar2 = this.H[i103];
                        lVar2.I5 = i101;
                        lVar2.N5 = i102;
                        Rect rect7 = this.q7;
                        Rect rect8 = this.o7;
                        lVar.l6.set(rect7);
                        lVar.m6.set(rect8);
                        l lVar3 = this.H[i103];
                        Rect rect9 = this.q7;
                        Rect rect10 = this.o7;
                        lVar3.l6.set(rect9);
                        lVar3.m6.set(rect10);
                        i100 = i103 + 1;
                    }
                    int i104 = 0;
                    for (i13 = 3; i104 < i13; i13 = 3) {
                        int i105 = this.a1[i104];
                        if (i105 < this.z && this.B.f25682b[i105]) {
                            boolean[] zArr11 = zArr[i105];
                            if (zArr11[A7] || zArr11[B7]) {
                                this.w0.add(this.G[i105]);
                                this.w0.add(this.H[i105]);
                            }
                        }
                        i104++;
                    }
                }
                boolean z64 = true;
                if (this.B.f25683c[D7]) {
                    r();
                    int i106 = 0;
                    while (i106 < 3) {
                        if (this.d1[0].is_valid == z64) {
                            this.P[i106].o0(this.s7);
                        }
                        i106++;
                        z64 = true;
                    }
                    int i107 = 0;
                    z22 = false;
                    for (int i108 = 3; i107 < i108; i108 = 3) {
                        int i109 = this.a1[i107];
                        if (i109 < this.z && this.B.f25682b[i109] && zArr[i109][D7] && !this.R0[i109].is_mask_detected && !this.C[i109]) {
                            this.w0.add(this.P[i109]);
                            z22 = true;
                        }
                        i107++;
                    }
                    if (z22) {
                        if (!e0(this.S5)) {
                            T(this.S5, this.R5, true);
                        }
                        if (e0(this.T5)) {
                            r16 = 0;
                        } else {
                            r16 = 0;
                            T(this.T5, this.R5, false);
                        }
                        if (this.d1[r16].is_valid && !e0(this.w7)) {
                            T(this.w7, 1, r16);
                        }
                        int i110 = 0;
                        while (true) {
                            CLMakeupLiveLiplinerFilter[] cLMakeupLiveLiplinerFilterArr = this.P;
                            if (i110 >= cLMakeupLiveLiplinerFilterArr.length) {
                                break;
                            }
                            CLMakeupLiveLiplinerFilter cLMakeupLiveLiplinerFilter = cLMakeupLiveLiplinerFilterArr[i110];
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2 = this.S5;
                            int i111 = i110;
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3 = this.T5;
                            boolean z65 = z20;
                            synchronized (cLMakeupLiveLiplinerFilter.v) {
                                cLMakeupLiveLiplinerFilter.C5 = pass1BufferData2;
                                cLMakeupLiveLiplinerFilter.O5 = pass1BufferData3;
                            }
                            CLMakeupLiveLiplinerFilter cLMakeupLiveLiplinerFilter2 = this.P[i111];
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4 = this.w7;
                            synchronized (cLMakeupLiveLiplinerFilter2.v) {
                                cLMakeupLiveLiplinerFilter2.N6 = pass1BufferData4;
                            }
                            i110 = i111 + 1;
                            z20 = z65;
                        }
                    }
                    z21 = z20;
                } else {
                    z21 = z20;
                    z22 = false;
                }
                boolean z66 = true;
                if (this.B.f25683c[C7]) {
                    q();
                    int i112 = 0;
                    while (i112 < 3) {
                        if (this.d1[0].is_valid == z66) {
                            this.N[i112].s0(this.s7);
                            this.O[i112].s0(this.s7);
                        }
                        i112++;
                        z66 = true;
                    }
                    int i113 = 0;
                    z23 = false;
                    for (int i114 = 3; i113 < i114; i114 = 3) {
                        int i115 = this.a1[i113];
                        if (i115 < this.z && this.B.f25682b[i115] && zArr[i115][C7] && !this.R0[i115].is_mask_detected) {
                            CLMakeupLiveLipStickFilter.LipstickData lipstickData = this.C0[i115];
                            if (lipstickData.m_is_valid) {
                                this.w0.add(lipstickData.m_version == 0 ? this.N[i115] : this.O[i115]);
                            }
                            z23 = true;
                        }
                        i113++;
                    }
                    if (z23) {
                        if (!e0(this.D5)) {
                            T(this.D5, this.w5, false);
                        }
                        if (e0(this.E5)) {
                            z40 = true;
                        } else {
                            z40 = true;
                            T(this.E5, this.w5, true);
                        }
                        if (!e0(this.F5)) {
                            T(this.F5, this.w5, z40);
                        }
                        if (!e0(this.G5)) {
                            T(this.G5, this.w5, false);
                        }
                        if (!e0(this.H5)) {
                            T(this.H5, this.w5, true);
                        }
                        if (e0(this.I5)) {
                            r15 = 0;
                        } else {
                            r15 = 0;
                            T(this.I5, this.w5, false);
                        }
                        if (this.d1[r15].is_valid) {
                            if (this.C0[r15].m_version == 0) {
                                if (!e0(this.u7)) {
                                    pass1BufferData = this.u7;
                                    T(pass1BufferData, 1, r15);
                                }
                            } else if (!e0(this.v7)) {
                                pass1BufferData = this.v7;
                                T(pass1BufferData, 1, r15);
                            }
                        }
                        int i116 = 0;
                        while (true) {
                            CLMakeupLiveLipStickFilter[] cLMakeupLiveLipStickFilterArr = this.N;
                            if (i116 >= cLMakeupLiveLipStickFilterArr.length) {
                                break;
                            }
                            int i117 = i116;
                            cLMakeupLiveLipStickFilterArr[i116].r0(this.D5, this.E5, this.F5, this.G5, this.H5, this.I5);
                            this.N[i117].q0(this.u7);
                            this.O[i117].r0(this.D5, this.E5, this.F5, this.G5, this.H5, this.I5);
                            this.O[i117].q0(this.v7);
                            i116 = i117 + 1;
                        }
                    }
                } else {
                    z23 = false;
                }
                if (this.B.f25683c[D7]) {
                    for (int i118 = 0; i118 < 3; i118++) {
                        int i119 = this.a1[i118];
                        if (i119 < this.z && this.B.f25682b[i119] && zArr[i119][D7] && !this.R0[i119].is_mask_detected && this.C[i119]) {
                            this.w0.add(this.P[i119]);
                            z22 = true;
                        }
                    }
                    if (z22) {
                        if (!e0(this.S5)) {
                            T(this.S5, this.R5, true);
                        }
                        if (e0(this.T5)) {
                            r14 = 0;
                        } else {
                            r14 = 0;
                            T(this.T5, this.R5, false);
                        }
                        if (this.d1[r14].is_valid && !e0(this.w7)) {
                            T(this.w7, 1, r14);
                        }
                        int i120 = 0;
                        while (true) {
                            CLMakeupLiveLiplinerFilter[] cLMakeupLiveLiplinerFilterArr2 = this.P;
                            if (i120 >= cLMakeupLiveLiplinerFilterArr2.length) {
                                break;
                            }
                            CLMakeupLiveLiplinerFilter cLMakeupLiveLiplinerFilter3 = cLMakeupLiveLiplinerFilterArr2[i120];
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5 = this.S5;
                            int i121 = i120;
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData6 = this.T5;
                            boolean z67 = z23;
                            synchronized (cLMakeupLiveLiplinerFilter3.v) {
                                cLMakeupLiveLiplinerFilter3.C5 = pass1BufferData5;
                                cLMakeupLiveLiplinerFilter3.O5 = pass1BufferData6;
                            }
                            CLMakeupLiveLiplinerFilter cLMakeupLiveLiplinerFilter4 = this.P[i121];
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData7 = this.w7;
                            synchronized (cLMakeupLiveLiplinerFilter4.v) {
                                cLMakeupLiveLiplinerFilter4.N6 = pass1BufferData7;
                            }
                            i120 = i121 + 1;
                            z23 = z67;
                        }
                    }
                }
                z24 = z23;
                if (this.B.f25683c[Z7]) {
                    for (int i122 = 0; i122 < 3; i122++) {
                        int i123 = this.a1[i122];
                        if (i123 < this.z && this.B.f25682b[i123] && zArr[i123][Z7] && !this.R0[i123].is_mask_detected) {
                            this.w0.add(this.Q[i123]);
                        }
                    }
                }
                if (this.B.f25683c[Y7]) {
                    z25 = false;
                    for (int i124 = 0; i124 < this.Y.length; i124++) {
                        int iM12 = M0(i124);
                        if (iM12 < this.z && this.B.f25682b[iM12] && zArr[iM12][Y7] && !this.R0[iM12].is_mask_detected) {
                            this.w0.add(this.Y[i124]);
                            z25 = true;
                        }
                    }
                    if (z25) {
                        if (!e0(this.W4)) {
                            T(this.W4, this.P4, true);
                        }
                        int i125 = 0;
                        while (true) {
                            m[] mVarArr = this.Y;
                            if (i125 >= mVarArr.length) {
                                break;
                            }
                            mVarArr[i125].u(this.W4);
                            i125++;
                        }
                    }
                } else {
                    z25 = false;
                }
                if (this.B.f25683c[g8]) {
                    this.w0.add(this.q0);
                }
                if (this.B.f25683c[a8]) {
                    for (int i126 = 0; i126 < 3; i126++) {
                        int i127 = this.a1[i126];
                        if (i127 < this.z && this.B.f25682b[i127] && zArr[i127][a8]) {
                            this.w0.add(this.U[i127]);
                        }
                    }
                }
                if (this.B.f25683c[b8]) {
                    A();
                    int i128 = 3;
                    boolean[] zArr12 = new boolean[3];
                    int i129 = 0;
                    while (i129 < i128) {
                        boolean z68 = this.F6[i129];
                        boolean[] zArr13 = zArr12;
                        if (z68) {
                            int i130 = this.D6[i129];
                            z38 = z25;
                            z39 = z22;
                            if (-1 != i130 && -1 != (i24 = this.E6[i129])) {
                                CLMakeupLiveFaceDistortionFilter cLMakeupLiveFaceDistortionFilter = this.V[i129];
                                cLMakeupLiveFaceDistortionFilter.R = i130;
                                cLMakeupLiveFaceDistortionFilter.S = i24;
                                zArr13[i129] = true;
                            }
                            i129++;
                            zArr12 = zArr13;
                            z25 = z38;
                            z22 = z39;
                            i128 = 3;
                        } else {
                            z38 = z25;
                            z39 = z22;
                        }
                        if (!z68) {
                            int i131 = this.z6;
                            if (-1 != i131 && -1 != (i23 = this.A6)) {
                                CLMakeupLiveFaceDistortionFilter cLMakeupLiveFaceDistortionFilter2 = this.V[i129];
                                cLMakeupLiveFaceDistortionFilter2.R = i131;
                                cLMakeupLiveFaceDistortionFilter2.S = i23;
                                zArr13[i129] = true;
                            }
                        }
                        i129++;
                        zArr12 = zArr13;
                        z25 = z38;
                        z22 = z39;
                        i128 = 3;
                    }
                    boolean[] zArr14 = zArr12;
                    z26 = z25;
                    z27 = z22;
                    int i132 = 0;
                    for (int i133 = i128; i132 < i133; i133 = 3) {
                        int i134 = this.a1[i132];
                        if (i134 < this.z && this.B.f25682b[i134] && zArr14[i134] && zArr[i134][b8]) {
                            this.w0.add(this.V[i134]);
                        }
                        i132++;
                    }
                } else {
                    z26 = z25;
                    z27 = z22;
                }
                if (this.B.f25683c[Q7]) {
                    z28 = false;
                    for (int i135 = 0; i135 < Math.min(3, this.z); i135++) {
                        if (this.B.f25682b[i135] && zArr[i135][Q7]) {
                            this.w0.add(this.a0[i135]);
                            z28 = true;
                        }
                    }
                    if (z28) {
                        if (e0(this.l4)) {
                            z37 = true;
                        } else {
                            z37 = true;
                            T(this.l4, 1, false);
                        }
                        if (!e0(this.m4)) {
                            T(this.m4, this.n4, z37);
                        }
                        for (int i136 = 0; i136 < 3; i136++) {
                            this.a0[i136].m(this.l4, this.m4, this.n4);
                        }
                    }
                } else {
                    z28 = false;
                }
                if (this.B.f25683c[R7]) {
                    z29 = false;
                    for (int i137 = 0; i137 < 3; i137++) {
                        int i138 = this.a1[i137];
                        if (i138 < this.z && this.B.f25682b[i138] && zArr[i138][R7]) {
                            this.w0.add(this.Z[i138]);
                            z29 = true;
                        }
                    }
                    if (z29) {
                        if (e0(this.i4)) {
                            z36 = true;
                        } else {
                            z36 = true;
                            T(this.i4, this.k4, true);
                        }
                        if (!e0(this.j4)) {
                            T(this.j4, this.k4, z36);
                        }
                        for (int i139 = 0; i139 < 3; i139++) {
                            this.Z[i139].k(this.i4, this.j4);
                        }
                    }
                } else {
                    z29 = false;
                }
                if (this.B.f25683c[c8] || this.B.f25683c[i8]) {
                    int i140 = 0;
                    z30 = false;
                    while (i140 < this.W.length) {
                        int iM13 = M0(i140);
                        int i141 = i140;
                        if (iM13 < this.z && this.B.f25682b[iM13]) {
                            boolean[] zArr15 = zArr[iM13];
                            if (zArr15[c8] || zArr15[i8]) {
                                this.w0.add(this.W[i141]);
                                z30 = true;
                            }
                        }
                        i140 = i141 + 1;
                    }
                    if (z30) {
                        synchronized (this.Y2) {
                            try {
                                if (!e0(this.b3)) {
                                    T(this.b3, this.h3, true);
                                }
                                if (!e0(this.c3)) {
                                    T(this.c3, 1, true);
                                }
                                if (!e0(this.d3)) {
                                    T(this.d3, 1, true);
                                }
                                if (!e0(this.e3)) {
                                    T(this.e3, 1, true);
                                }
                                if (!e0(this.f3)) {
                                    T(this.f3, 1, true);
                                }
                                if (!e0(this.g3)) {
                                    T(this.g3, 1, true);
                                }
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                        int i142 = 0;
                        while (true) {
                            CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr = this.W;
                            if (i142 >= cLMakeupLive3DFilterArr.length) {
                                break;
                            }
                            cLMakeupLive3DFilterArr[i142].v(this.b3, this.c3, this.d3, this.e3, this.f3, this.g3);
                            i142++;
                        }
                    } else {
                        z28 = z28;
                        z29 = z29;
                    }
                } else {
                    z28 = z28;
                    z29 = z29;
                    z30 = false;
                }
                if (this.B.f25683c[h8]) {
                    e1();
                    z31 = false;
                    for (int i143 = 0; i143 < this.e0.length; i143++) {
                        int iM14 = M0(i143);
                        if (iM14 < this.z && this.B.f25682b[iM14] && zArr[iM14][h8]) {
                            this.w0.add(this.e0[i143]);
                            z31 = true;
                        }
                    }
                    if (z31) {
                        if (!e0(this.n3)) {
                            T(this.n3, this.o3, true);
                        }
                        int i144 = 0;
                        while (true) {
                            CLMakeupLiveCubeEyewearFilter[] cLMakeupLiveCubeEyewearFilterArr = this.e0;
                            if (i144 >= cLMakeupLiveCubeEyewearFilterArr.length) {
                                break;
                            }
                            cLMakeupLiveCubeEyewearFilterArr[i144].p(this.n3);
                            i144++;
                        }
                    }
                } else {
                    z31 = false;
                }
                if (this.B.f25683c[f8]) {
                    this.w0.add(this.j0);
                }
                if (this.B.f25683c[d8]) {
                    U0();
                    X0();
                    for (int i145 = 0; i145 < 3; i145++) {
                        this.d0[i145].k(this.t1[i145], this.u1);
                    }
                    int i146 = 3;
                    int i147 = 0;
                    int iMax = 0;
                    while (i147 < i146) {
                        int i148 = this.a1[i147];
                        int i149 = i147;
                        if (i148 < this.z && this.B.f25682b[i148] && zArr[i148][d8]) {
                            iMax = Math.max(iMax, i148);
                        }
                        i147 = i149 + 1;
                        i146 = 3;
                    }
                    int i150 = 0;
                    while (i150 < i146) {
                        int i151 = this.a1[i150];
                        int i152 = i150;
                        if (i151 < this.z && this.B.f25682b[i151] && zArr[i151][d8]) {
                            CLStickerLiveFilter[] cLStickerLiveFilterArr = this.d0;
                            if (i151 == iMax) {
                                cLStickerLiveFilter = cLStickerLiveFilterArr[i151];
                                z35 = this.b1;
                            } else {
                                cLStickerLiveFilter = cLStickerLiveFilterArr[i151];
                                z35 = false;
                            }
                            cLStickerLiveFilter.C = z35;
                            this.w0.add(cLStickerLiveFilterArr[i151]);
                        } else {
                            z31 = z31;
                        }
                        i150 = i152 + 1;
                        z31 = z31;
                        i146 = 3;
                    }
                }
                z32 = z31;
                if (this.B.f25683c[e8]) {
                    this.w0.add(this.i0);
                }
                if (this.w4) {
                    this.w0.add(this.p0);
                    this.p0.o = this.u[0];
                }
                List<CLMakeupLivePluginFilter> list8 = this.s0;
                if (list8 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter3 : list8) {
                        if (cLMakeupLivePluginFilter3.GetEnabled()) {
                            if (this.s && this.t) {
                                arrayList4.add(Integer.valueOf(this.w0.size()));
                            }
                            this.w0.add(cLMakeupLivePluginFilter3);
                        }
                    }
                }
                List<CLMakeupLivePluginFilter> list9 = this.v0;
                if (list9 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter4 : list9) {
                        if (cLMakeupLivePluginFilter4.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter4);
                        }
                    }
                }
                List<CLMakeupLivePluginFilter> list10 = this.u0;
                if (list10 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter5 : list10) {
                        if (cLMakeupLivePluginFilter5.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter5);
                        }
                    }
                }
                if (z48) {
                    this.w0.add(this.m0);
                }
                if (this.w != c.f25666a) {
                    this.w0.add(this.n0);
                }
                int size = this.w0.size();
                boolean[] zArr16 = new boolean[size];
                for (int i153 = 0; i153 < size; i153++) {
                    zArr16[i153] = false;
                }
                int i154 = 0;
                while (i154 < arrayList4.size()) {
                    boolean[] zArr17 = zArr16;
                    zArr17[((Integer) arrayList4.get(i154)).intValue()] = true;
                    i154++;
                    zArr16 = zArr17;
                }
                boolean[] zArr18 = zArr16;
                int i155 = 0;
                while (i155 < size) {
                    boolean z69 = zArr18[i155];
                    if (i155 == 0) {
                        i14 = i2;
                    } else if (i155 % 2 == 1) {
                        i14 = this.p[0];
                    } else if (this.J6) {
                        i14 = i2;
                    } else {
                        i14 = this.p[1];
                    }
                    if (i155 == size - 1) {
                        int i156 = intBufferAllocate2.get(0);
                        int i157 = intBufferAllocate2.get(1);
                        int i158 = intBufferAllocate2.get(2);
                        int i159 = intBufferAllocate2.get(3);
                        i15 = size;
                        i20 = intBufferAllocate.get(0);
                        i18 = i156;
                        i19 = i157;
                        i21 = i158;
                        i22 = i159;
                        z30 = z30;
                        z69 = z69;
                        i16 = 0;
                        i17 = 36160;
                    } else {
                        int i160 = this.g;
                        i15 = size;
                        int i161 = this.f25446h;
                        int i162 = i155 % 2;
                        int[] iArr12 = this.o;
                        if (i162 == 0) {
                            i20 = iArr12[0];
                            i21 = i160;
                            z30 = z30;
                            i18 = 0;
                            i19 = 0;
                            i22 = i161;
                            i17 = 36160;
                            z69 = z69;
                            i16 = 0;
                        } else {
                            int i163 = iArr12[1];
                            if (this.J6) {
                                i17 = 36160;
                                GLES20.glBindFramebuffer(36160, i163);
                                i16 = 0;
                                GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
                            } else {
                                i16 = 0;
                                i17 = 36160;
                            }
                            i18 = i16;
                            i19 = i18;
                            i20 = i163;
                            i21 = i160;
                            i22 = i161;
                        }
                    }
                    if (z69) {
                        GLES20.glBindFramebuffer(i17, this.q[i16]);
                        GLES20.glViewport(i16, i16, this.g, this.f25446h);
                        ((GPUImageFilter) this.w0.get(i155)).onDraw(i14, floatBuffer, floatBuffer2);
                        GLES20.glBindFramebuffer(36009, i20);
                        GLES20.glBindFramebuffer(36008, this.q[i16]);
                        GLES30.glReadBuffer(36064);
                        GLES30.glBlitFramebuffer(0, 0, this.g, this.f25446h, i18, i19, i21, i22, 16384, 9728);
                    } else {
                        GLES20.glBindFramebuffer(i17, i20);
                        GLES20.glViewport(i18, i19, i21, i22);
                        ((GPUImageFilter) this.w0.get(i155)).onDraw(i14, floatBuffer, floatBuffer2);
                    }
                    i155++;
                    size = i15;
                    z8 = z8;
                    z2 = z2;
                    z30 = z30;
                }
                z33 = z8;
                z34 = z2;
                z46 = z30;
            } else {
                GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
                GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(1), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
                if (z47 || z48 || this.w != c.f25666a) {
                    if (z47) {
                        this.l0.onDraw(i2, floatBuffer, floatBuffer2);
                    }
                    if (z48) {
                        this.m0.onDraw(i2, floatBuffer, floatBuffer2);
                    }
                    if (this.w != c.f25666a) {
                        gPUImageFilter = this.n0;
                    }
                    z6 = false;
                    z3 = false;
                    z9 = false;
                    z10 = false;
                    z11 = false;
                    z12 = false;
                    z13 = false;
                    z14 = false;
                    z5 = false;
                    z15 = false;
                    z28 = false;
                    z29 = false;
                    z19 = false;
                    z17 = false;
                    z21 = false;
                    z24 = false;
                    z26 = false;
                    z27 = false;
                    z33 = false;
                    z32 = false;
                    z34 = false;
                } else {
                    gPUImageFilter = this.k0;
                }
                gPUImageFilter.onDraw(i2, floatBuffer, floatBuffer2);
                z6 = false;
                z3 = false;
                z9 = false;
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
                z5 = false;
                z15 = false;
                z28 = false;
                z29 = false;
                z19 = false;
                z17 = false;
                z21 = false;
                z24 = false;
                z26 = false;
                z27 = false;
                z33 = false;
                z32 = false;
                z34 = false;
            }
            if (!z46) {
                this.b3.DestroyData();
                this.c3.DestroyData();
                this.d3.DestroyData();
                this.e3.DestroyData();
                this.f3.DestroyData();
                this.g3.DestroyData();
            }
            if (!z19) {
                this.O4.DestroyData();
            }
            if (!z26) {
                this.W4.DestroyData();
            }
            if (!z15) {
                this.u5.DestroyData();
            }
            if (!z29) {
                this.i4.DestroyData();
                this.j4.DestroyData();
            }
            if (!z6) {
                this.Q6.DestroyData();
            }
            if (!z5 && !z33 && !z9) {
                this.a7.DestroyData();
            }
            if (!z28) {
                this.l4.DestroyData();
                this.m4.DestroyData();
            }
            if (!z32) {
                this.n3.DestroyData();
            }
            if (!z14) {
                this.c5.DestroyData();
            }
            if (!z10) {
                this.U6.DestroyData();
            }
            if (!z17) {
                this.k7.DestroyData();
            }
            if (!z11 && !z12 && !z13) {
                this.f7.DestroyData();
            }
            if (!z21) {
                this.V2.DestroyData();
                this.P2.DestroyData();
                this.W2.DestroyData();
                this.X2.DestroyData();
                this.t7.DestroyData();
            }
            if (!z34) {
                this.V5.DestroyData();
                this.W5.DestroyData();
                this.X5.DestroyData();
                this.Y5.DestroyData();
                this.Z5.DestroyData();
                this.a6.DestroyData();
            }
            if (!z3) {
                this.d5.DestroyData();
                this.e5.DestroyData();
                this.f5.DestroyData();
                this.g5.DestroyData();
            }
            if (!z24) {
                this.D5.DestroyData();
                this.E5.DestroyData();
                this.F5.DestroyData();
                this.G5.DestroyData();
                this.I5.DestroyData();
                this.H5.DestroyData();
                this.u7.DestroyData();
                this.v7.DestroyData();
                this.w7.DestroyData();
            }
            if (!z27) {
                this.S5.DestroyData();
                this.T5.DestroyData();
            }
        } else {
            this.w0.clear();
            if (z47) {
                this.w0.add(this.l0);
            }
            List<CLMakeupLivePluginFilter> list11 = this.t0;
            if (list11 != null) {
                for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter6 : list11) {
                    if (cLMakeupLivePluginFilter6.GetEnabled()) {
                        this.w0.add(cLMakeupLivePluginFilter6);
                    }
                }
            }
            List<CLMakeupLivePluginFilter> list12 = this.r0;
            if (list12 != null) {
                for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter7 : list12) {
                    if (cLMakeupLivePluginFilter7.GetEnabled()) {
                        this.w0.add(cLMakeupLivePluginFilter7);
                    }
                }
            }
            if (!z48 && IBeautyFilter2.FilterType.ENABLE_SMOOTH != this.H6) {
                if (f0(this.J0, this.B.f25683c[E7])) {
                    this.w0.add(this.g0);
                }
                if (f0(this.J0, this.B.f25683c[F7])) {
                    for (int i164 = 0; i164 < Math.min(3, this.z); i164++) {
                        if (this.B.f25682b[i164]) {
                            this.w0.add(this.f0[i164]);
                        }
                    }
                }
            } else if (this.B.f25683c[E7]) {
                this.w0.add(this.h0);
            }
            boolean[] zArr19 = this.B.f25683c;
            int i165 = g8;
            if (zArr19[i165] || this.B.f25683c[d8] || this.B.f25683c[e8] || this.B.f25683c[f8]) {
                if (this.B.f25683c[i165]) {
                    this.w0.add(this.q0);
                }
                if (this.B.f25683c[f8]) {
                    this.w0.add(this.j0);
                }
                if (this.B.f25683c[d8]) {
                    X0();
                    this.d0[0].k(this.t1[0], this.u1);
                    CLStickerLiveFilter cLStickerLiveFilter2 = this.d0[0];
                    cLStickerLiveFilter2.C = this.b1;
                    this.w0.add(cLStickerLiveFilter2);
                }
                if (this.B.f25683c[e8]) {
                    this.w0.add(this.i0);
                }
                if (this.w4) {
                    this.w0.add(this.p0);
                    this.p0.o = this.u[0];
                }
                List<CLMakeupLivePluginFilter> list13 = this.s0;
                if (list13 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter8 : list13) {
                        if (cLMakeupLivePluginFilter8.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter8);
                        }
                    }
                }
                List<CLMakeupLivePluginFilter> list14 = this.v0;
                if (list14 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter9 : list14) {
                        if (cLMakeupLivePluginFilter9.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter9);
                        }
                    }
                }
                List<CLMakeupLivePluginFilter> list15 = this.u0;
                if (list15 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter10 : list15) {
                        if (cLMakeupLivePluginFilter10.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter10);
                        }
                    }
                }
                if (z48) {
                    this.w0.add(this.m0);
                }
                if (this.w != c.f25666a) {
                    this.w0.add(this.n0);
                }
                int size2 = this.w0.size();
                for (int i166 = 0; i166 < size2; i166++) {
                    if (i166 == 0) {
                        i3 = 1;
                    } else {
                        i3 = 1;
                        if (i166 % 2 == 1) {
                            i4 = this.p[0];
                        } else if (!this.J6) {
                            i4 = this.p[1];
                        }
                        if (i166 == size2 - 1) {
                            GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
                            GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(i3), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
                        } else {
                            i5 = i166 % 2;
                            iArr = this.o;
                            if (i5 == 0) {
                                GLES20.glBindFramebuffer(36160, iArr[0]);
                            } else {
                                GLES20.glBindFramebuffer(36160, iArr[1]);
                                if (this.J6) {
                                    i6 = 0;
                                    GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
                                }
                                GLES20.glViewport(i6, i6, getOutputWidth(), getOutputHeight());
                            }
                            i6 = 0;
                            GLES20.glViewport(i6, i6, getOutputWidth(), getOutputHeight());
                        }
                        ((GPUImageFilter) this.w0.get(i166)).onDraw(i4, floatBuffer, floatBuffer2);
                    }
                    i4 = i2;
                    if (i166 == size2 - 1) {
                        GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
                        GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(i3), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
                    } else {
                        i5 = i166 % 2;
                        iArr = this.o;
                        if (i5 == 0) {
                            GLES20.glBindFramebuffer(36160, iArr[0]);
                        } else {
                            GLES20.glBindFramebuffer(36160, iArr[1]);
                            if (this.J6) {
                                i6 = 0;
                                GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
                            }
                            GLES20.glViewport(i6, i6, getOutputWidth(), getOutputHeight());
                        }
                        i6 = 0;
                        GLES20.glViewport(i6, i6, getOutputWidth(), getOutputHeight());
                    }
                    ((GPUImageFilter) this.w0.get(i166)).onDraw(i4, floatBuffer, floatBuffer2);
                }
            } else {
                this.w0.clear();
                if (z47) {
                    this.w0.add(this.l0);
                }
                List<CLMakeupLivePluginFilter> list16 = this.t0;
                if (list16 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter11 : list16) {
                        if (cLMakeupLivePluginFilter11.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter11);
                        }
                    }
                }
                List<CLMakeupLivePluginFilter> list17 = this.r0;
                if (list17 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter12 : list17) {
                        if (cLMakeupLivePluginFilter12.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter12);
                        }
                    }
                }
                if (!z48 && IBeautyFilter2.FilterType.ENABLE_SMOOTH != this.H6) {
                    if (f0(this.J0, this.B.f25683c[E7])) {
                        this.w0.add(this.g0);
                    }
                    if (f0(this.J0, this.B.f25683c[F7])) {
                        for (int i167 = 0; i167 < Math.min(3, this.z); i167++) {
                            if (this.B.f25682b[i167]) {
                                this.w0.add(this.f0[i167]);
                            }
                        }
                    }
                } else if (this.B.f25683c[E7]) {
                    this.w0.add(this.h0);
                }
                List<CLMakeupLivePluginFilter> list18 = this.s0;
                if (list18 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter13 : list18) {
                        if (cLMakeupLivePluginFilter13.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter13);
                        }
                    }
                }
                if (this.w4) {
                    this.w0.add(this.p0);
                    this.p0.o = this.u[0];
                }
                List<CLMakeupLivePluginFilter> list19 = this.v0;
                if (list19 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter14 : list19) {
                        if (cLMakeupLivePluginFilter14.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter14);
                        }
                    }
                }
                List<CLMakeupLivePluginFilter> list20 = this.u0;
                if (list20 != null) {
                    for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter15 : list20) {
                        if (cLMakeupLivePluginFilter15.GetEnabled()) {
                            this.w0.add(cLMakeupLivePluginFilter15);
                        }
                    }
                }
                if (z48) {
                    this.w0.add(this.m0);
                }
                if (this.w != c.f25666a) {
                    this.w0.add(this.n0);
                }
                if (this.w0.size() == 0) {
                    this.w0.add(this.k0);
                }
                int size3 = this.w0.size();
                for (int i168 = 0; i168 < size3; i168++) {
                    if (i168 == 0) {
                        i7 = 1;
                    } else {
                        i7 = 1;
                        if (i168 % 2 == 1) {
                            i9 = this.p[0];
                        } else if (!this.J6) {
                            i9 = this.p[1];
                        }
                        if (i168 == size3 - 1) {
                            GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
                            GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(i7), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
                        } else {
                            i10 = i168 % 2;
                            iArr2 = this.o;
                            if (i10 == 0) {
                                GLES20.glBindFramebuffer(36160, iArr2[0]);
                                i11 = 0;
                            } else {
                                GLES20.glBindFramebuffer(36160, iArr2[1]);
                                i11 = 0;
                                if (this.J6) {
                                    GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
                                }
                            }
                            GLES20.glViewport(i11, i11, getOutputWidth(), getOutputHeight());
                        }
                        ((GPUImageFilter) this.w0.get(i168)).onDraw(i9, floatBuffer, floatBuffer2);
                    }
                    i9 = i2;
                    if (i168 == size3 - 1) {
                        GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
                        GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(i7), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
                    } else {
                        i10 = i168 % 2;
                        iArr2 = this.o;
                        if (i10 == 0) {
                            GLES20.glBindFramebuffer(36160, iArr2[0]);
                            i11 = 0;
                        } else {
                            GLES20.glBindFramebuffer(36160, iArr2[1]);
                            i11 = 0;
                            if (this.J6) {
                                GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
                            }
                        }
                        GLES20.glViewport(i11, i11, getOutputWidth(), getOutputHeight());
                    }
                    ((GPUImageFilter) this.w0.get(i168)).onDraw(i9, floatBuffer, floatBuffer2);
                }
            }
        }
        boolean z70 = true;
        if (z47) {
            synchronized (this.f1) {
                try {
                    this.e1 = this.l0.j();
                    if (!this.B.f25681a) {
                        this.e1.getClass();
                    }
                    this.g1 = true;
                    this.f1.notifyAll();
                } catch (Throwable th4) {
                    throw th4;
                }
            }
            z70 = true;
        }
        if (z48 == z70) {
            synchronized (this.i1) {
                try {
                    this.h1 = this.m0.j();
                    if (!this.B.f25681a) {
                        this.h1.getClass();
                    }
                    this.j1 = true;
                    this.i1.notifyAll();
                } catch (Throwable th5) {
                    throw th5;
                }
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        int i2;
        super.onInit();
        synchronized (this.p1) {
            int i3 = 2;
            try {
                int[] iArr = new int[2];
                GLES20.glGenTextures(2, iArr, 0);
                for (int i4 = 0; i4 < 2; i4++) {
                    GLES20.glBindTexture(3553, iArr[i4]);
                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                    this.u1[i4] = iArr[i4];
                }
                int[] iArr2 = new int[12];
                GLES20.glGenTextures(12, iArr2, 0);
                for (int i5 = 0; i5 < 3; i5++) {
                    int i6 = 0;
                    while (i6 < 4) {
                        int i7 = (i5 << 2) + i6;
                        GLES20.glBindTexture(3553, iArr2[i7]);
                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                        this.t1[i5][i6] = iArr2[i7];
                        i6++;
                        i3 = i3;
                    }
                }
                i2 = i3;
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.k3) {
            try {
                GLES20.glGenTextures(6, this.p3, 0);
                for (int i9 = 0; i9 < 6; i9++) {
                    GLES20.glBindTexture(3553, this.p3[i9]);
                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (this.I4) {
            int[] iArr3 = new int[1];
            GLES20.glGenTextures(1, iArr3, 0);
            GLES20.glBindTexture(3553, iArr3[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.L4 = iArr3[0];
        }
        synchronized (this.Q4) {
            int[] iArr4 = new int[1];
            GLES20.glGenTextures(1, iArr4, 0);
            GLES20.glBindTexture(3553, iArr4[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.T4 = iArr4[0];
        }
        synchronized (this.K6) {
            try {
                GLES20.glGenTextures(3, this.M6, 0);
                for (int i10 = 0; i10 < 3; i10++) {
                    GLES20.glBindTexture(3553, this.M6[i10]);
                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        synchronized (this.V6) {
            try {
                GLES20.glGenTextures(3, this.X6, 0);
                for (int i11 = 0; i11 < 3; i11++) {
                    GLES20.glBindTexture(3553, this.X6[i11]);
                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        synchronized (this.i5) {
            int[] iArr5 = new int[1];
            GLES20.glGenTextures(1, iArr5, 0);
            GLES20.glBindTexture(3553, iArr5[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.l5 = iArr5[0];
            int[] iArr6 = new int[1];
            GLES20.glGenTextures(1, iArr6, 0);
            GLES20.glBindTexture(3553, iArr6[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.n5 = iArr6[0];
            int[] iArr7 = new int[1];
            GLES20.glGenTextures(1, iArr7, 0);
            GLES20.glBindTexture(3553, iArr7[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.p5 = iArr7[0];
            int[] iArr8 = new int[1];
            GLES20.glGenTextures(1, iArr8, 0);
            GLES20.glBindTexture(3553, iArr8[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.r5 = iArr8[0];
            int[] iArr9 = new int[1];
            GLES20.glGenTextures(1, iArr9, 0);
            GLES20.glBindTexture(3553, iArr9[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.s5 = iArr9[0];
        }
        synchronized (this.R6) {
            int[] iArr10 = new int[1];
            GLES20.glGenTextures(1, iArr10, 0);
            GLES20.glBindTexture(3553, iArr10[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.T6 = iArr10[0];
        }
        synchronized (this.b7) {
            try {
                GLES20.glGenTextures(3, this.c7, 0);
                for (int i12 = 0; i12 < 3; i12++) {
                    GLES20.glBindTexture(3553, this.c7[i12]);
                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
        synchronized (this.g7) {
            int[] iArr11 = new int[1];
            GLES20.glGenTextures(1, iArr11, 0);
            GLES20.glBindTexture(3553, iArr11[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.i7 = iArr11[0];
            int[] iArr12 = new int[1];
            GLES20.glGenTextures(1, iArr12, 0);
            GLES20.glBindTexture(3553, iArr12[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.j7 = iArr12[0];
        }
        synchronized (this.m7) {
            int[] iArr13 = new int[1];
            GLES20.glGenTextures(1, iArr13, 0);
            GLES20.glBindTexture(3553, iArr13[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.n7 = iArr13[0];
        }
        synchronized (this.l7) {
            int[] iArr14 = new int[1];
            GLES20.glGenTextures(1, iArr14, 0);
            GLES20.glBindTexture(3553, iArr14[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.p7 = iArr14[0];
        }
        synchronized (this.X4) {
            int[] iArr15 = new int[1];
            GLES20.glGenTextures(1, iArr15, 0);
            GLES20.glBindTexture(3553, iArr15[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.a5 = iArr15[0];
        }
        synchronized (this.T3) {
            int[] iArr16 = new int[1];
            GLES20.glGenTextures(1, iArr16, 0);
            GLES20.glBindTexture(3553, iArr16[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.Y3 = iArr16[0];
            int[] iArr17 = new int[1];
            GLES20.glGenTextures(1, iArr17, 0);
            GLES20.glBindTexture(3553, iArr17[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.f4 = iArr17[0];
        }
        synchronized (this.x5) {
            int[] iArr18 = new int[4];
            GLES20.glGenTextures(4, iArr18, 0);
            int i13 = iArr18[0];
            this.y5 = i13;
            GLES20.glBindTexture(3553, i13);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            int i14 = iArr18[1];
            this.z5 = i14;
            GLES20.glBindTexture(3553, i14);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            int i15 = iArr18[i2];
            this.A5 = i15;
            GLES20.glBindTexture(3553, i15);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            int i16 = iArr18[3];
            this.B5 = i16;
            GLES20.glBindTexture(3553, i16);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        synchronized (this.P5) {
            int[] iArr19 = new int[1];
            GLES20.glGenTextures(1, iArr19, 0);
            int i17 = iArr19[0];
            this.Q5 = i17;
            GLES20.glBindTexture(3553, i17);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        int[] iArr20 = new int[i2];
        GLES20.glGenTextures(i2, iArr20, 0);
        int i18 = iArr20[0];
        this.z6 = i18;
        GLES20.glBindTexture(3553, i18);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        int i19 = iArr20[1];
        this.A6 = i19;
        GLES20.glBindTexture(3553, i19);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        for (int i20 = 0; i20 < 3; i20++) {
            int[] iArr21 = new int[2];
            GLES20.glGenTextures(2, iArr21, 0);
            int[] iArr22 = this.D6;
            int i21 = iArr21[0];
            iArr22[i20] = i21;
            GLES20.glBindTexture(3553, i21);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            int[] iArr23 = this.E6;
            int i22 = iArr21[1];
            iArr23[i20] = i22;
            GLES20.glBindTexture(3553, i22);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        int iMin = Math.min(3, this.z);
        String strA = CLMakeupLiveDecode.a(CLMakeupLiveEyeContactFilter.l0);
        String strConcat = CLMakeupLiveDecode.a(CLMakeupLiveEyeContactFilter.a.f25632a).concat(CLMakeupLiveDecode.a(CLMakeupLiveEyeContactFilter.b.f25633a));
        int iE = OpenGlUtils.e(35633, strA);
        int iE2 = OpenGlUtils.e(35632, strConcat);
        for (int i23 = 0; i23 < iMin; i23++) {
            this.D[i23].init(iE, iE2);
        }
        GLES20.glDeleteShader(iE);
        GLES20.glDeleteShader(iE2);
        String strA2 = CLMakeupLiveDecode.a(CLMakeupLiveConcealerFilter.c.f25595a);
        String strA3 = CLMakeupLiveDecode.a(CLMakeupLiveConcealerFilter.b.f25594a);
        int iE3 = OpenGlUtils.e(35633, strA2);
        int iE4 = OpenGlUtils.e(35632, strA3);
        for (int i24 = 0; i24 < iMin; i24++) {
            this.R[i24].init(iE3, iE4);
        }
        GLES20.glDeleteShader(iE3);
        GLES20.glDeleteShader(iE4);
        String strA4 = CLMakeupLiveDecode.a(CLMakeupLiveFoundationFilter.d.f25689a);
        String strConcat2 = CLMakeupLiveDecode.a(CLMakeupLiveFoundationFilter.b.f25687a).concat(CLMakeupLiveDecode.a(CLMakeupLiveFoundationFilter.c.f25688a));
        int iE5 = OpenGlUtils.e(35633, strA4);
        int iE6 = OpenGlUtils.e(35632, strConcat2);
        for (int i25 = 0; i25 < iMin; i25++) {
            this.T[i25].init(iE5, iE6);
        }
        GLES20.glDeleteShader(iE5);
        GLES20.glDeleteShader(iE6);
        String strA5 = CLMakeupLiveDecode.a(CLMakeupLiveFaceReshapeFilter.b.f25658a);
        String strA6 = CLMakeupLiveDecode.a(CLMakeupLiveFaceReshapeFilter.a.f25657a);
        int iE7 = OpenGlUtils.e(35633, strA5);
        int iE8 = OpenGlUtils.e(35632, strA6);
        for (int i26 = 0; i26 < iMin; i26++) {
            this.U[i26].init(iE7, iE8);
        }
        GLES20.glDeleteShader(iE7);
        GLES20.glDeleteShader(iE8);
        String strA7 = CLMakeupLiveDecode.a(CLMakeupLiveFaceDistortionFilter.b.f25656a);
        String strA8 = CLMakeupLiveDecode.a(CLMakeupLiveFaceDistortionFilter.a.f25655a);
        int iE9 = OpenGlUtils.e(35633, strA7);
        int iE10 = OpenGlUtils.e(35632, strA8);
        for (int i27 = 0; i27 < iMin; i27++) {
            this.V[i27].init(iE9, iE10);
        }
        GLES20.glDeleteShader(iE9);
        GLES20.glDeleteShader(iE10);
        for (int i28 = 0; i28 < Math.min(this.W.length, iMin); i28++) {
            this.W[i28].init();
        }
        for (int i29 = 0; i29 < Math.min(this.e0.length, iMin); i29++) {
            this.e0[i29].init();
        }
        for (int i30 = 0; i30 < Math.min(this.X.length, iMin); i30++) {
            this.X[i30].init();
        }
        for (int i31 = 0; i31 < Math.min(this.Y.length, iMin); i31++) {
            this.Y[i31].init();
        }
        for (int i32 = 0; i32 < Math.min(this.S.length, iMin); i32++) {
            this.S[i32].init();
        }
        for (int i33 = 0; i33 < Math.min(this.b0.length, iMin); i33++) {
            this.b0[i33].init();
        }
        for (int i34 = 0; i34 < Math.min(this.J.length, iMin); i34++) {
            this.J[i34].init();
        }
        for (int i35 = 0; i35 < 3; i35++) {
            int i36 = 0;
            while (true) {
                CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
                if (i36 < cLMakeupLiveBlush3DFilterArr[0].length) {
                    cLMakeupLiveBlush3DFilterArr[i35][i36].init();
                    i36++;
                }
            }
        }
        for (int i37 = 0; i37 < 3; i37++) {
            int i38 = 0;
            while (true) {
                i[][] iVarArr = this.M;
                if (i38 < iVarArr[0].length) {
                    iVarArr[i37][i38].init();
                    i38++;
                }
            }
        }
        for (int i39 = 0; i39 < Math.min(this.K.length, iMin); i39++) {
            this.K[i39].init();
        }
        for (int i40 = 0; i40 < Math.min(this.c0.length, iMin); i40++) {
            this.c0[i40].init();
        }
        for (int i41 = 0; i41 < iMin; i41++) {
            this.Z[i41].init();
        }
        for (int i42 = 0; i42 < iMin; i42++) {
            this.a0[i42].init();
        }
        for (int i43 = 0; i43 < iMin; i43++) {
            this.f0[i43].init();
        }
        int iE11 = OpenGlUtils.e(35633, "attribute vec4 position;attribute vec4 inputTextureCoordinate;attribute vec4 inputStickerTemplateTextureCoordinate;attribute vec4 inputStickerSceneTemplateTextureCoordinate;varying vec2 textureCoordinate;varying vec2 template_texture_coordinate;varying vec2 scene_template_texture_coordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;    template_texture_coordinate = inputStickerTemplateTextureCoordinate.xy;    scene_template_texture_coordinate = inputStickerSceneTemplateTextureCoordinate.xy;}");
        int iE12 = OpenGlUtils.e(35632, "\n#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;varying vec2 template_texture_coordinate;varying vec2 scene_template_texture_coordinate;uniform vec2 frame_face_sticker_scale_ratio_0;uniform vec2 frame_face_sticker_scale_ratio_1;uniform vec2 frame_face_sticker_scale_ratio_2;uniform vec2 frame_face_sticker_scale_ratio_3;uniform mat3 face_sticker_homography_0;uniform mat3 face_sticker_homography_1;uniform mat3 face_sticker_homography_2;uniform mat3 face_sticker_homography_3;uniform sampler2D inputImageTexture;uniform sampler2D sticker_template_texture;uniform sampler2D face_sticker_texture_0;uniform sampler2D face_sticker_texture_1;uniform sampler2D face_sticker_texture_2;uniform sampler2D face_sticker_texture_3;uniform sampler2D scene_sticker_texture_0;uniform sampler2D scene_sticker_texture_1;uniform float face_sticker_displayed_0;uniform float face_sticker_displayed_1;uniform float face_sticker_displayed_2;uniform float face_sticker_displayed_3;uniform float scene_sticker_displayed_0;uniform float scene_sticker_displayed_1;uniform vec3 min_rgb;uniform vec3 max_rgb;uniform vec2 scene_sticker_scale_ratio_0;uniform vec2 scene_sticker_scale_ratio_1;uniform vec2 scene_sticker_offset_0;uniform vec2 scene_sticker_offset_1;uniform vec2 scene_sticker_stretch_start_0;uniform vec2 scene_sticker_stretch_start_1;uniform vec2 scene_sticker_stretch_end_0;uniform vec2 scene_sticker_stretch_end_1;uniform float aspect_ratio_multiplier_frame_over_scene_0;uniform float aspect_ratio_multiplier_frame_over_scene_1;float GetNewPositionForStretch(float old_position, float start, float end, float aspect_ratio_multiplier){    float new_position = old_position;    if (start == 0.0 && end == 1.0)    {        return new_position;    }    if (old_position <= start / aspect_ratio_multiplier)    {        new_position = old_position * aspect_ratio_multiplier;    }    else if (old_position >= 1.0 - (1.0 - end) / aspect_ratio_multiplier)    {        float range_y = (1.0 - end) / aspect_ratio_multiplier;        float offset_y = old_position - (1.0 - range_y);        float offset_y_ratio = offset_y / range_y;        new_position = end + (1.0 - end) * offset_y_ratio;    }    else    {        float range_y = 1.0 - (start + (1.0 - end)) / aspect_ratio_multiplier;        float offset_y = old_position - start / aspect_ratio_multiplier;        float offset_y_ratio = offset_y / range_y;        new_position = start + offset_y_ratio * (end - start);    }    return new_position;}void main(){    vec4 source = texture2D(inputImageTexture, textureCoordinate);    vec2 scene_sticker_texture_coordinate_0 = (scene_template_texture_coordinate - scene_sticker_offset_0) / scene_sticker_scale_ratio_0;    vec2 scene_sticker_texture_coordinate_1 = (scene_template_texture_coordinate - scene_sticker_offset_1) / scene_sticker_scale_ratio_1;    scene_sticker_texture_coordinate_0.y = GetNewPositionForStretch(scene_sticker_texture_coordinate_0.y, scene_sticker_stretch_start_0.y, scene_sticker_stretch_end_0.y, aspect_ratio_multiplier_frame_over_scene_0);    scene_sticker_texture_coordinate_1.y = GetNewPositionForStretch(scene_sticker_texture_coordinate_1.y, scene_sticker_stretch_start_1.y, scene_sticker_stretch_end_1.y, aspect_ratio_multiplier_frame_over_scene_1);    vec4 scene_sticker_template_0 = texture2D(scene_sticker_texture_0, scene_sticker_texture_coordinate_0);    vec4 scene_sticker_template_1 = texture2D(scene_sticker_texture_1, scene_sticker_texture_coordinate_1);    bool condition_scene_0 = (any(lessThan(scene_sticker_texture_coordinate_0, vec2(0.0))) || any(greaterThan(scene_sticker_texture_coordinate_0, vec2(1.0))));    bool condition_scene_1 = (any(lessThan(scene_sticker_texture_coordinate_1, vec2(0.0))) || any(greaterThan(scene_sticker_texture_coordinate_1, vec2(1.0))));    vec3 temp_coordinate_0 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_0;    vec2 warp_face_sticker_texture_coordinate_0 = vec2(temp_coordinate_0.x / temp_coordinate_0.z, temp_coordinate_0.y / temp_coordinate_0.z) * frame_face_sticker_scale_ratio_0;    vec3 temp_coordinate_1 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_1;    vec2 warp_face_sticker_texture_coordinate_1 = vec2(temp_coordinate_1.x / temp_coordinate_1.z, temp_coordinate_1.y / temp_coordinate_1.z) * frame_face_sticker_scale_ratio_1;    vec3 temp_coordinate_2 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_2;    vec2 warp_face_sticker_texture_coordinate_2 = vec2(temp_coordinate_2.x / temp_coordinate_2.z, temp_coordinate_2.y / temp_coordinate_2.z) * frame_face_sticker_scale_ratio_2;    vec3 temp_coordinate_3 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_3;    vec2 warp_face_sticker_texture_coordinate_3 = vec2(temp_coordinate_3.x / temp_coordinate_3.z, temp_coordinate_3.y / temp_coordinate_3.z) * frame_face_sticker_scale_ratio_3;    bool condition_0 = (any(lessThan(warp_face_sticker_texture_coordinate_0, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_0, vec2(1.0))));    bool condition_1 = (any(lessThan(warp_face_sticker_texture_coordinate_1, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_1, vec2(1.0))));    bool condition_2 = (any(lessThan(warp_face_sticker_texture_coordinate_2, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_2, vec2(1.0))));    bool condition_3 = (any(lessThan(warp_face_sticker_texture_coordinate_3, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_3, vec2(1.0))));    vec4 face_sticker_0 = texture2D(face_sticker_texture_0, warp_face_sticker_texture_coordinate_0);    vec4 face_sticker_1 = texture2D(face_sticker_texture_1, warp_face_sticker_texture_coordinate_1);    vec4 face_sticker_2 = texture2D(face_sticker_texture_2, warp_face_sticker_texture_coordinate_2);    vec4 face_sticker_3 = texture2D(face_sticker_texture_3, warp_face_sticker_texture_coordinate_3);    if (condition_0)    {        face_sticker_0.a = 0.0;    }    if (condition_1)    {        face_sticker_1.a = 0.0;    }    if (condition_2)    {        face_sticker_2.a = 0.0;    }    if (condition_3)    {        face_sticker_3.a = 0.0;    }    if (condition_scene_0)    {        scene_sticker_template_0.a = 0.0;    }    if (condition_scene_1)    {        scene_sticker_template_1.a = 0.0;    }    vec4 result = mix(source, face_sticker_0, face_sticker_0.a * face_sticker_displayed_0);    result = mix(result, face_sticker_1, face_sticker_1.a * face_sticker_displayed_1);    result = mix(result, face_sticker_2, face_sticker_2.a * face_sticker_displayed_2);    result = mix(result, face_sticker_3, face_sticker_3.a * face_sticker_displayed_3);    result = mix(result, scene_sticker_template_0, scene_sticker_template_0.a * scene_sticker_displayed_0);    result = mix(result, scene_sticker_template_1, scene_sticker_template_1.a * scene_sticker_displayed_1);    gl_FragColor = vec4(result.rgb, 1.0);}");
        for (int i44 = 0; i44 < iMin; i44++) {
            this.d0[i44].init(iE11, iE12);
        }
        GLES20.glDeleteShader(iE11);
        GLES20.glDeleteShader(iE12);
        for (int i45 = 0; i45 < Math.min(this.N.length, iMin); i45++) {
            this.N[i45].init();
        }
        for (int i46 = 0; i46 < Math.min(this.O.length, iMin); i46++) {
            this.O[i46].init();
        }
        for (int i47 = 0; i47 < Math.min(this.P.length, iMin); i47++) {
            this.P[i47].init();
        }
        for (int i48 = 0; i48 < Math.min(this.Q.length, iMin); i48++) {
            this.Q[i48].init();
        }
        String strA9 = CLMakeupLiveDecode.a(CLMakeupLiveBlushFilter.O);
        String strA10 = CLMakeupLiveDecode.a(CLMakeupLiveBlushFilter.P);
        int iE13 = OpenGlUtils.e(35633, strA9);
        int iE14 = OpenGlUtils.e(35632, strA10);
        for (int i49 = 0; i49 < iMin; i49++) {
            this.I[i49].init(iE13, iE14);
        }
        GLES20.glDeleteShader(iE13);
        GLES20.glDeleteShader(iE14);
        for (int i50 = 0; i50 < iMin; i50++) {
            CLMakeupLiveBlushFilter cLMakeupLiveBlushFilter = this.I[i50];
            int i51 = this.z1;
            int i52 = this.A1;
            cLMakeupLiveBlushFilter.A = i51;
            cLMakeupLiveBlushFilter.E = i52;
            this.d0[i50].k(this.t1[i50], this.u1);
        }
        int iE15 = OpenGlUtils.e(35633, CLMakeupLiveDecode.a(CLMakeupLiveEyeFilter.H7));
        int iE16 = OpenGlUtils.e(35632, CLMakeupLiveDecode.a(CLMakeupLiveEyeFilter.a.f25634a) + CLMakeupLiveDecode.a(CLMakeupLiveEyeFilter.b.f25635a) + CLMakeupLiveDecode.a(CLMakeupLiveEyeFilter.c.f25636a));
        for (int i53 = 0; i53 < iMin; i53++) {
            this.E[i53].init(iE15, iE16);
            this.F[i53].init(iE15, iE16);
            CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter = this.E[i53];
            if (cLMakeupLiveEyeFilter.mGLProgId == 0 || this.F[i53].mGLProgId == 0) {
                cLMakeupLiveEyeFilter.destroy();
                this.F[i53].destroy();
                CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter2 = this.E[i53];
                cLMakeupLiveEyeFilter2.getClass();
                char[] cArr = CLMakeupLiveEyeFilter.H7;
                String strA11 = CLMakeupLiveDecode.a(cArr);
                char[] cArr2 = CLMakeupLiveEyeFilter.d.f25637a;
                String strA12 = CLMakeupLiveDecode.a(cArr2);
                char[] cArr3 = CLMakeupLiveEyeFilter.e.f25638a;
                cLMakeupLiveEyeFilter2.B(strA11, strA12.concat(CLMakeupLiveDecode.a(cArr3)));
                CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter3 = this.F[i53];
                cLMakeupLiveEyeFilter3.getClass();
                cLMakeupLiveEyeFilter3.B(CLMakeupLiveDecode.a(cArr), CLMakeupLiveDecode.a(cArr2).concat(CLMakeupLiveDecode.a(cArr3)));
                this.E[i53].init();
                this.F[i53].init();
            }
        }
        GLES20.glDeleteShader(iE15);
        GLES20.glDeleteShader(iE16);
        int iE17 = OpenGlUtils.e(35633, CLMakeupLiveDecode.a(l.O7));
        int iE18 = OpenGlUtils.e(35632, CLMakeupLiveDecode.a(l.P7));
        for (int i54 = 0; i54 < iMin; i54++) {
            this.G[i54].init(iE17, iE18);
            this.H[i54].init(iE17, iE18);
        }
        GLES20.glDeleteShader(iE17);
        GLES20.glDeleteShader(iE18);
        this.k0.init();
        this.g0.init();
        this.h0.init();
        this.i0.init();
        this.j0.init();
        this.l0.init();
        this.m0.init();
        this.n0.init();
        this.p0.init();
        this.q0.init();
        this.o0.init();
        m0();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(new int[1], 1, 1, Bitmap.Config.ARGB_8888);
        for (int i55 = 0; i55 < 2; i55++) {
            this.n2[i55] = OpenGlUtils.f(bitmapCreateBitmap, -1);
            for (int i56 = 0; i56 < 3; i56++) {
                this.r2[i56][i55] = OpenGlUtils.f(bitmapCreateBitmap, -1);
            }
            int i57 = 2;
            for (int i58 = 0; i58 < 2; i58++) {
                this.t2[i55][i58] = OpenGlUtils.f(bitmapCreateBitmap, -1);
            }
            int i59 = 0;
            while (i59 < 3) {
                int i60 = 0;
                while (i60 < i57) {
                    this.v2[i59][i55][i60] = OpenGlUtils.f(bitmapCreateBitmap, -1);
                    i60++;
                    i57 = 2;
                }
                i59++;
                i57 = 2;
            }
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(new int[1], 1, 1, Bitmap.Config.ARGB_8888);
        for (int i61 = 0; i61 < 2; i61++) {
            this.V1[i61] = OpenGlUtils.f(bitmapCreateBitmap2, -1);
            for (int i62 = 0; i62 < 3; i62++) {
                this.Z1[i62][i61] = OpenGlUtils.f(bitmapCreateBitmap2, -1);
            }
        }
        Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(new int[1], 1, 1, Bitmap.Config.ARGB_8888);
        for (int i63 = 0; i63 < 2; i63++) {
            this.e2[i63] = OpenGlUtils.f(bitmapCreateBitmap3, -1);
            for (int i64 = 0; i64 < 3; i64++) {
                this.i2[i64][i63] = OpenGlUtils.f(bitmapCreateBitmap3, -1);
            }
        }
        H0();
        O0();
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        if (this.x == i2 && this.y == i3) {
            return;
        }
        this.x = i2;
        this.y = i3;
        this.g = i2;
        this.f25446h = i3;
        int[] iArr = this.p;
        int i4 = 0;
        if (iArr != null) {
            GLES20.glDeleteTextures(iArr.length, iArr, 0);
            this.p = null;
        }
        int[] iArr2 = this.o;
        if (iArr2 != null) {
            GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
            this.o = null;
        }
        int[] iArr3 = this.r;
        if (iArr3 != null) {
            GLES20.glDeleteRenderbuffers(iArr3.length, iArr3, 0);
            this.r = null;
        }
        int[] iArr4 = this.q;
        if (iArr4 != null) {
            GLES20.glDeleteFramebuffers(iArr4.length, iArr4, 0);
            this.q = null;
        }
        this.s = false;
        H0();
        int[] iArr5 = this.u;
        if (iArr5 != null) {
            GLES20.glDeleteTextures(iArr5.length, iArr5, 0);
            this.u = null;
        }
        O0();
        for (int i5 = 0; i5 < 3; i5++) {
            CLMakeupLiveEyeContactFilter cLMakeupLiveEyeContactFilter = this.D[i5];
            cLMakeupLiveEyeContactFilter.g = i2;
            cLMakeupLiveEyeContactFilter.f25446h = i3;
            CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter = this.E[i5];
            cLMakeupLiveEyeFilter.g = i2;
            cLMakeupLiveEyeFilter.f25446h = i3;
            CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter2 = this.F[i5];
            cLMakeupLiveEyeFilter2.g = i2;
            cLMakeupLiveEyeFilter2.f25446h = i3;
            l lVar = this.G[i5];
            lVar.g = i2;
            lVar.f25446h = i3;
            l lVar2 = this.H[i5];
            lVar2.g = i2;
            lVar2.f25446h = i3;
            CLMakeupLiveLipStickFilter cLMakeupLiveLipStickFilter = this.N[i5];
            cLMakeupLiveLipStickFilter.g = i2;
            cLMakeupLiveLipStickFilter.f25446h = i3;
            ab abVar = this.O[i5];
            abVar.g = i2;
            abVar.f25446h = i3;
            CLMakeupLiveLiplinerFilter cLMakeupLiveLiplinerFilter = this.P[i5];
            cLMakeupLiveLiplinerFilter.g = i2;
            cLMakeupLiveLiplinerFilter.f25446h = i3;
            CLMakeupLiveTeethWhitenFilter cLMakeupLiveTeethWhitenFilter = this.Q[i5];
            cLMakeupLiveTeethWhitenFilter.g = i2;
            cLMakeupLiveTeethWhitenFilter.f25446h = i3;
            CLMakeupLiveBlushFilter cLMakeupLiveBlushFilter = this.I[i5];
            cLMakeupLiveBlushFilter.g = i2;
            cLMakeupLiveBlushFilter.f25446h = i3;
            CLMakeupLiveConcealerFilter cLMakeupLiveConcealerFilter = this.R[i5];
            cLMakeupLiveConcealerFilter.g = i2;
            cLMakeupLiveConcealerFilter.f25446h = i3;
            CLMakeupLiveFoundationFilter cLMakeupLiveFoundationFilter = this.T[i5];
            cLMakeupLiveFoundationFilter.g = i2;
            cLMakeupLiveFoundationFilter.f25446h = i3;
            CLMakeupLiveFaceReshapeFilter cLMakeupLiveFaceReshapeFilter = this.U[i5];
            cLMakeupLiveFaceReshapeFilter.g = i2;
            cLMakeupLiveFaceReshapeFilter.f25446h = i3;
            CLMakeupLiveFaceDistortionFilter cLMakeupLiveFaceDistortionFilter = this.V[i5];
            cLMakeupLiveFaceDistortionFilter.g = i2;
            cLMakeupLiveFaceDistortionFilter.f25446h = i3;
            CLMakeupLive3DEyebrowFilter cLMakeupLive3DEyebrowFilter = this.Z[i5];
            cLMakeupLive3DEyebrowFilter.g = i2;
            cLMakeupLive3DEyebrowFilter.f25446h = i3;
            CLMakeupLive3DEyebrowWarpFilter cLMakeupLive3DEyebrowWarpFilter = this.a0[i5];
            cLMakeupLive3DEyebrowWarpFilter.g = i2;
            cLMakeupLive3DEyebrowWarpFilter.f25446h = i3;
            CLStickerLiveFilter cLStickerLiveFilter = this.d0[i5];
            cLStickerLiveFilter.g = i2;
            cLStickerLiveFilter.f25446h = i3;
            i iVar = this.K[i5];
            iVar.g = i2;
            iVar.f25446h = i3;
        }
        int i6 = 0;
        while (true) {
            CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr = this.W;
            if (i6 >= cLMakeupLive3DFilterArr.length) {
                break;
            }
            cLMakeupLive3DFilterArr[i6].onOutputSizeChanged(i2, i3);
            i6++;
        }
        int i7 = 0;
        while (true) {
            CLMakeupLiveCubeEyewearFilter[] cLMakeupLiveCubeEyewearFilterArr = this.e0;
            if (i7 >= cLMakeupLiveCubeEyewearFilterArr.length) {
                break;
            }
            CLMakeupLiveCubeEyewearFilter cLMakeupLiveCubeEyewearFilter = cLMakeupLiveCubeEyewearFilterArr[i7];
            cLMakeupLiveCubeEyewearFilter.g = i2;
            cLMakeupLiveCubeEyewearFilter.f25446h = i3;
            i7++;
        }
        int i9 = 0;
        while (true) {
            CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr = this.J;
            if (i9 >= cLMakeupLiveBlush3DFilterArr.length) {
                break;
            }
            CLMakeupLiveBlush3DFilter cLMakeupLiveBlush3DFilter = cLMakeupLiveBlush3DFilterArr[i9];
            cLMakeupLiveBlush3DFilter.g = i2;
            cLMakeupLiveBlush3DFilter.f25446h = i3;
            i9++;
        }
        int i10 = 0;
        while (true) {
            CLMakeupLiveFaceArtFilter[] cLMakeupLiveFaceArtFilterArr = this.X;
            if (i10 >= cLMakeupLiveFaceArtFilterArr.length) {
                break;
            }
            CLMakeupLiveFaceArtFilter cLMakeupLiveFaceArtFilter = cLMakeupLiveFaceArtFilterArr[i10];
            cLMakeupLiveFaceArtFilter.g = i2;
            cLMakeupLiveFaceArtFilter.f25446h = i3;
            i10++;
        }
        int i11 = 0;
        while (true) {
            m[] mVarArr = this.Y;
            if (i11 >= mVarArr.length) {
                break;
            }
            m mVar = mVarArr[i11];
            mVar.g = i2;
            mVar.f25446h = i3;
            i11++;
        }
        int i12 = 0;
        while (true) {
            CLMakeupLiveFaceContourFilter[] cLMakeupLiveFaceContourFilterArr = this.b0;
            if (i12 >= cLMakeupLiveFaceContourFilterArr.length) {
                break;
            }
            CLMakeupLiveFaceContourFilter cLMakeupLiveFaceContourFilter = cLMakeupLiveFaceContourFilterArr[i12];
            cLMakeupLiveFaceContourFilter.g = i2;
            cLMakeupLiveFaceContourFilter.f25446h = i3;
            i12++;
        }
        int i13 = 0;
        while (true) {
            n[] nVarArr = this.c0;
            if (i13 >= nVarArr.length) {
                break;
            }
            n nVar = nVarArr[i13];
            nVar.g = i2;
            nVar.f25446h = i3;
            i13++;
        }
        int i14 = 0;
        while (true) {
            CLMakeupLiveBronzerFilter[] cLMakeupLiveBronzerFilterArr = this.S;
            if (i14 >= cLMakeupLiveBronzerFilterArr.length) {
                break;
            }
            CLMakeupLiveBronzerFilter cLMakeupLiveBronzerFilter = cLMakeupLiveBronzerFilterArr[i14];
            cLMakeupLiveBronzerFilter.g = i2;
            cLMakeupLiveBronzerFilter.f25446h = i3;
            i14++;
        }
        for (int i15 = 0; i15 < 3; i15++) {
            int i16 = 0;
            while (true) {
                CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr2 = this.L;
                if (i16 < cLMakeupLiveBlush3DFilterArr2[0].length) {
                    CLMakeupLiveBlush3DFilter cLMakeupLiveBlush3DFilter2 = cLMakeupLiveBlush3DFilterArr2[i15][i16];
                    cLMakeupLiveBlush3DFilter2.g = i2;
                    cLMakeupLiveBlush3DFilter2.f25446h = i3;
                    i16++;
                }
            }
        }
        for (int i17 = 0; i17 < 3; i17++) {
            int i18 = 0;
            while (true) {
                i[][] iVarArr = this.M;
                if (i18 < iVarArr[0].length) {
                    i iVar2 = iVarArr[i17][i18];
                    iVar2.g = i2;
                    iVar2.f25446h = i3;
                    i18++;
                }
            }
        }
        while (true) {
            com.cyberlink.clgpuimage.cosmetic.e[] eVarArr = this.f0;
            if (i4 >= eVarArr.length) {
                break;
            }
            eVarArr[i4].onOutputSizeChanged(i2, i3);
            i4++;
        }
        GPUImageFilter gPUImageFilter = this.k0;
        gPUImageFilter.g = i2;
        gPUImageFilter.f25446h = i3;
        this.g0.onOutputSizeChanged(i2, i3);
        this.h0.onOutputSizeChanged(i2, i3);
        GPUImageFilter gPUImageFilter2 = this.i0;
        gPUImageFilter2.g = i2;
        gPUImageFilter2.f25446h = i3;
        k kVar = this.j0;
        kVar.g = i2;
        kVar.f25446h = i3;
        x xVar = this.l0;
        xVar.g = i2;
        xVar.f25446h = i3;
        x xVar2 = this.m0;
        xVar2.g = i2;
        xVar2.f25446h = i3;
        CLMakeupLiveLeftRightFlipFilter cLMakeupLiveLeftRightFlipFilter = this.n0;
        cLMakeupLiveLeftRightFlipFilter.g = i2;
        cLMakeupLiveLeftRightFlipFilter.f25446h = i3;
        j jVar = this.p0;
        jVar.g = i2;
        jVar.f25446h = i3;
        CLShowAlignFilter cLShowAlignFilter = this.o0;
        cLShowAlignFilter.g = i2;
        cLShowAlignFilter.f25446h = i3;
        List list = this.r0;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((CLMakeupLivePluginFilter) it.next()).onOutputSizeChanged(i2, i3);
            }
        }
        List list2 = this.s0;
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                ((CLMakeupLivePluginFilter) it2.next()).onOutputSizeChanged(i2, i3);
            }
        }
        List list3 = this.t0;
        if (list3 != null) {
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                ((CLMakeupLivePluginFilter) it3.next()).onOutputSizeChanged(i2, i3);
            }
        }
        List list4 = this.v0;
        if (list4 != null) {
            Iterator it4 = list4.iterator();
            while (it4.hasNext()) {
                ((CLMakeupLivePluginFilter) it4.next()).onOutputSizeChanged(i2, i3);
            }
        }
        List list5 = this.u0;
        if (list5 != null) {
            Iterator it5 = list5.iterator();
            while (it5.hasNext()) {
                ((CLMakeupLivePluginFilter) it5.next()).onOutputSizeChanged(i2, i3);
            }
        }
        R0();
    }

    public final void p() {
        int i2;
        synchronized (this.X4) {
            try {
                if (this.b5) {
                    IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                    GLES20.glGetIntegerv(3317, intBufferAllocate);
                    GLES20.glPixelStorei(3317, 1);
                    if (this.Z4 != null && (i2 = this.a5) != -1) {
                        GLES20.glBindTexture(3553, i2);
                        GLUtils.texImage2D(3553, 0, this.Z4, 0);
                        GLES20.glBindTexture(3553, 0);
                        this.Z4 = null;
                    }
                    GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                    if (this.Y4 != null) {
                        for (int i3 = 0; i3 < this.S.length; i3++) {
                            this.S[i3].O(this.Y4[M0(i3)]);
                        }
                    }
                    this.b5 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p0(int i2, int i3, float f2) {
        if (i3 < -1 || i3 >= 3 || i2 < -1 || i2 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
        if (i3 != -1) {
            cLMakeupLiveBlush3DFilterArr[i2][i3].W5 = f2 / 100.0f;
            return;
        }
        for (int i4 = 0; i4 < cLMakeupLiveBlush3DFilterArr[0].length; i4++) {
            cLMakeupLiveBlush3DFilterArr[i2][i4].W5 = f2 / 100.0f;
        }
    }

    public final void q() {
        int i2;
        int i3;
        int i4;
        int i5;
        synchronized (this.x5) {
            try {
                if (this.C5) {
                    IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                    GLES20.glGetIntegerv(3317, intBufferAllocate);
                    GLES20.glPixelStorei(3317, 1);
                    if (this.J5 != null && (i5 = this.y5) != -1) {
                        GLES20.glBindTexture(3553, i5);
                        GLES20.glTexImage2D(3553, 0, 6406, this.N5, this.O5, 0, 6406, 5121, ByteBuffer.wrap(this.J5));
                        GLES20.glBindTexture(3553, 0);
                        this.J5 = null;
                    }
                    if (this.K5 != null && (i4 = this.z5) != -1) {
                        GLES20.glBindTexture(3553, i4);
                        GLES20.glTexImage2D(3553, 0, 6406, this.N5, this.O5, 0, 6406, 5121, ByteBuffer.wrap(this.K5));
                        GLES20.glBindTexture(3553, 0);
                        this.K5 = null;
                    }
                    if (this.L5 != null && (i3 = this.A5) != -1) {
                        GLES20.glBindTexture(3553, i3);
                        GLES20.glTexImage2D(3553, 0, 6406, this.N5, this.O5, 0, 6406, 5121, ByteBuffer.wrap(this.L5));
                        GLES20.glBindTexture(3553, 0);
                        this.L5 = null;
                    }
                    if (this.M5 != null && (i2 = this.B5) != -1) {
                        GLES20.glBindTexture(3553, i2);
                        GLES20.glTexImage2D(3553, 0, 6406, this.N5, this.O5, 0, 6406, 5121, ByteBuffer.wrap(this.M5));
                        GLES20.glBindTexture(3553, 0);
                        this.M5 = null;
                    }
                    GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                    this.C5 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void q0(int i2, int i3, int i4) {
        if (i4 < -1 || i4 >= 3 || i3 < -1 || i3 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
        if (i4 != -1) {
            cLMakeupLiveBlush3DFilterArr[i3][i4].l0(i2);
            return;
        }
        for (int i5 = 0; i5 < cLMakeupLiveBlush3DFilterArr[0].length; i5++) {
            cLMakeupLiveBlush3DFilterArr[i3][i5].l0(i2);
        }
    }

    public final void r() {
        synchronized (this.P5) {
        }
    }

    public final void r0(List list) {
        if (list == null) {
            return;
        }
        e(new w(this, list));
    }

    public final void s() {
        boolean z = this.B.f25681a;
        int[] iArr = this.a1;
        int i2 = 0;
        if (!z) {
            while (i2 < 3) {
                iArr[i2] = i2;
                i2++;
            }
            return;
        }
        int[] iArr2 = new int[3];
        int[] iArr3 = new int[3];
        for (int i3 = 0; i3 < 3; i3++) {
            iArr2[i3] = iArr[i3];
            iArr3[i3] = 0;
            if (this.Z0[i3]) {
                iArr3[i3] = this.R0[i3].face_size;
            }
        }
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = 0;
            boolean z2 = false;
            while (i5 < 2) {
                int i6 = iArr2[i5];
                int i7 = i5 + 1;
                int i9 = iArr2[i7];
                int i10 = iArr3[i6];
                int i11 = iArr3[i9];
                if (i10 - i11 > i11 * 0.1f) {
                    iArr2[i5] = i9;
                    iArr2[i7] = i6;
                    z2 = true;
                }
                i5 = i7;
            }
            if (!z2) {
                break;
            }
        }
        while (i2 < 3) {
            iArr[i2] = iArr2[i2];
            i2++;
        }
    }

    public final void s0(boolean z) {
        e(new u(this, z));
    }

    public final void t() {
        synchronized (this.v1) {
            boolean z = false;
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                try {
                    if (this.D1[i3]) {
                        i2++;
                        if (this.w1[i3]) {
                            V0(i3);
                            Bitmap bitmap = this.x1[i3];
                            if (bitmap != null && !bitmap.isRecycled()) {
                                this.B1[i3] = OpenGlUtils.f(this.x1[i3], -1);
                            }
                            Bitmap bitmap2 = this.y1[i3];
                            if (bitmap2 != null && !bitmap2.isRecycled()) {
                                this.C1[i3] = OpenGlUtils.f(this.y1[i3], -1);
                            }
                            Y0(i3);
                            this.w1[i3] = false;
                            z = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z && i2 == 3) {
                V0(-1);
                Y0(-1);
            }
        }
    }

    public final void t0(int i2, int i3) {
        if (i3 < -1 || i3 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[] cLMakeupLiveBlush3DFilterArr = this.J;
        if (i3 != -1) {
            cLMakeupLiveBlush3DFilterArr[i3].m0(i2);
            return;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            cLMakeupLiveBlush3DFilterArr[i4].m0(i2);
        }
    }

    public final void u() {
        synchronized (this.R2) {
            try {
                if (this.U2) {
                    int[] iArr = new int[2];
                    GLES20.glGenTextures(2, iArr, 0);
                    int i2 = iArr[0];
                    CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData = this.T2;
                    if (live3DHDRTextureData != null && live3DHDRTextureData.hdrBuffer != null) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((live3DHDRTextureData.width * live3DHDRTextureData.height) << 2);
                        byteBufferAllocate.put(this.T2.hdrBuffer);
                        byteBufferAllocate.position(0);
                        GLES20.glBindTexture(3553, i2);
                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                        CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData2 = this.T2;
                        GLES20.glTexImage2D(3553, 0, 6408, live3DHDRTextureData2.width, live3DHDRTextureData2.height, 0, 6408, 5121, byteBufferAllocate);
                        CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData3 = this.T2;
                        live3DHDRTextureData3.texture_id = i2;
                        live3DHDRTextureData3.hdrBuffer = null;
                        for (int i3 = 0; i3 < this.E.length; i3++) {
                            this.N2[i3].SetEnvironmentTextureID(i2);
                            this.N2[i3].hdr_width = this.T2.width;
                        }
                    }
                    boolean z = true;
                    int i4 = iArr[1];
                    if (this.S2 != null) {
                        GLES20.glBindTexture(3553, i4);
                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                        GLUtils.texImage2D(3553, 0, this.S2, 0);
                        CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData4 = this.T2;
                        int i5 = live3DHDRTextureData4.width;
                        int i6 = live3DHDRTextureData4.height;
                        boolean z2 = i5 != 0 && (i5 & (i5 + (-1))) == 0;
                        if (i6 == 0 || (i6 & (i6 - 1)) != 0) {
                            z = false;
                        }
                        if (z2 && z) {
                            GLES20.glTexParameterf(3553, 10242, 33648.0f);
                            GLES20.glTexParameterf(3553, 10243, 33648.0f);
                            GLES20.glTexParameteri(3553, 10241, 9987);
                            GLES20.glGenerateMipmap(3553);
                        }
                        for (int i7 = 0; i7 < this.E.length; i7++) {
                            this.N2[i7].SetNormalMapTextureID(i4);
                        }
                    }
                    this.U2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void u0(int i2, int i3, int i4) {
        if (i4 < -1 || i4 >= 3 || i3 < -1 || i3 >= 3) {
            return;
        }
        CLMakeupLiveBlush3DFilter[][] cLMakeupLiveBlush3DFilterArr = this.L;
        if (i4 != -1) {
            cLMakeupLiveBlush3DFilterArr[i3][i4].m0(i2);
            return;
        }
        for (int i5 = 0; i5 < cLMakeupLiveBlush3DFilterArr[0].length; i5++) {
            cLMakeupLiveBlush3DFilterArr[i3][i5].m0(i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x026d A[PHI: r6
      0x026d: PHI (r6v2 int) = (r6v1 int), (r6v4 int) binds: [B:33:0x0130, B:35:0x013a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v54 */
    public final void v() {
        boolean z;
        int i2;
        int i3;
        ByteBuffer byteBuffer;
        ?? r17;
        int i4;
        int i5;
        ByteBuffer byteBuffer2;
        int i6;
        int i7;
        ByteBuffer byteBuffer3;
        int i9;
        int i10;
        ByteBuffer byteBuffer4;
        synchronized (this.E1) {
            boolean z2 = false;
            int i11 = 0;
            while (true) {
                if (i11 < 2) {
                    try {
                        int i12 = 10241;
                        if (this.M1[i11]) {
                            T0(i11, -1);
                            Bitmap bitmap = this.k2[i11];
                            if (bitmap != null && !bitmap.isRecycled()) {
                                this.n2[i11] = OpenGlUtils.f(this.k2[i11], -1);
                            }
                            this.l2[i11].set(this.m2[i11]);
                            IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                            GLES20.glGetIntegerv(3317, intBufferAllocate);
                            GLES20.glPixelStorei(3317, 1);
                            int i13 = z2 ? 1 : 0;
                            for (char c2 = 2; i13 < c2; c2 = 2) {
                                int i14 = this.t2[i11][i13];
                                if (i14 == -1) {
                                    int[] iArr = new int[1];
                                    GLES20.glGenTextures(1, iArr, z2 ? 1 : 0);
                                    int[] iArr2 = this.t2[i11];
                                    int i15 = iArr[z2 ? 1 : 0];
                                    iArr2[i13] = i15;
                                    GLES20.glBindTexture(3553, i15);
                                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                    i9 = this.I1[i11] >> i13;
                                    i10 = this.J1[i11] >> i13;
                                    byteBuffer4 = this.u2[i11][i13];
                                } else {
                                    GLES20.glBindTexture(3553, i14);
                                    i9 = this.I1[i11] >> i13;
                                    i10 = this.J1[i11] >> i13;
                                    byteBuffer4 = this.u2[i11][i13];
                                }
                                GLES20.glTexImage2D(3553, 0, 6408, i9, i10, 0, 6408, 5121, byteBuffer4);
                                i13++;
                            }
                            int i16 = this.x2[i11];
                            if (i16 == -1) {
                                int[] iArr3 = new int[1];
                                GLES20.glGenTextures(1, iArr3, z2 ? 1 : 0);
                                int[] iArr4 = this.x2;
                                int i17 = iArr3[z2 ? 1 : 0];
                                iArr4[i11] = i17;
                                GLES20.glBindTexture(3553, i17);
                                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                this.y2[i11].rewind();
                                i6 = this.K1;
                                i7 = this.L1;
                                byteBuffer3 = this.y2[i11];
                            } else {
                                GLES20.glBindTexture(3553, i16);
                                this.y2[i11].rewind();
                                i6 = this.K1;
                                i7 = this.L1;
                                byteBuffer3 = this.y2[i11];
                            }
                            GLES20.glTexImage2D(3553, 0, 6406, i6, i7, 0, 6406, 5121, byteBuffer3);
                            GLES20.glPixelStorei(3317, intBufferAllocate.get(z2 ? 1 : 0));
                            this.M1[i11] = z2;
                            L0(i11, -1);
                        }
                        int i18 = z2 ? 1 : 0;
                        int i19 = i18;
                        int i20 = i19 == true ? 1 : 0;
                        boolean z3 = z2;
                        while (i18 < 3) {
                            if (this.s2[i18][i11]) {
                                i20++;
                                if (this.P1[i18][i11]) {
                                    T0(i11, i18);
                                    Bitmap bitmap2 = this.o2[i18][i11];
                                    if (bitmap2 != null && !bitmap2.isRecycled()) {
                                        this.r2[i18][i11] = OpenGlUtils.f(this.o2[i18][i11], -1);
                                    }
                                    this.p2[i18][i11].set(this.q2[i18][i11]);
                                    IntBuffer intBufferAllocate2 = IntBuffer.allocate(1);
                                    GLES20.glGetIntegerv(3317, intBufferAllocate2);
                                    GLES20.glPixelStorei(3317, 1);
                                    int i21 = z3 ? 1 : 0;
                                    ?? r2 = z3;
                                    while (i21 < 2) {
                                        int i22 = this.v2[i18][i11][i21];
                                        if (i22 == -1) {
                                            int[] iArr5 = new int[1];
                                            GLES20.glGenTextures(1, iArr5, r2);
                                            r17 = r2;
                                            int[] iArr6 = this.v2[i18][i11];
                                            int i23 = iArr5[r17 == true ? 1 : 0];
                                            iArr6[i21] = i23;
                                            GLES20.glBindTexture(3553, i23);
                                            GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                            GLES20.glTexParameterf(3553, i12, 9729.0f);
                                            GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                            GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                            i4 = this.I1[i11] >> i21;
                                            i5 = this.J1[i11] >> i21;
                                            byteBuffer2 = this.w2[i18][i11][i21];
                                        } else {
                                            r17 = r2;
                                            GLES20.glBindTexture(3553, i22);
                                            i4 = this.I1[i11] >> i21;
                                            i5 = this.J1[i11] >> i21;
                                            byteBuffer2 = this.w2[i18][i11][i21];
                                        }
                                        GLES20.glTexImage2D(3553, 0, 6408, i4, i5, 0, 6408, 5121, byteBuffer2);
                                        i21++;
                                        r2 = r17;
                                    }
                                    ?? r18 = r2;
                                    int i24 = this.z2[i18][i11];
                                    if (i24 == -1) {
                                        int[] iArr7 = new int[1];
                                        GLES20.glGenTextures(1, iArr7, r18 == true ? 1 : 0);
                                        int[] iArr8 = this.z2[i18];
                                        int i25 = iArr7[r18 == true ? 1 : 0];
                                        iArr8[i11] = i25;
                                        GLES20.glBindTexture(3553, i25);
                                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                        GLES20.glTexParameterf(3553, i12, 9729.0f);
                                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                        this.A2[i18][i11].rewind();
                                        i2 = this.K1;
                                        i3 = this.L1;
                                        byteBuffer = this.A2[i18][i11];
                                    } else {
                                        GLES20.glBindTexture(3553, i24);
                                        this.A2[i18][i11].rewind();
                                        i2 = this.K1;
                                        i3 = this.L1;
                                        byteBuffer = this.A2[i18][i11];
                                    }
                                    GLES20.glTexImage2D(3553, 0, 6406, i2, i3, 0, 6406, 5121, byteBuffer);
                                    z = false;
                                    GLES20.glPixelStorei(3317, intBufferAllocate2.get(0));
                                    this.P1[i18][i11] = false;
                                    L0(i11, i18);
                                    i19 = 1;
                                } else {
                                    z = z3 ? 1 : 0;
                                }
                            } else {
                                z = z3 ? 1 : 0;
                            }
                            i18++;
                            z3 = z;
                            i12 = 10241;
                        }
                        boolean z4 = z3 ? 1 : 0;
                        if (i19 != 0 && i20 == 3) {
                            T0(i11, -1);
                            L0(i11, -1);
                        }
                        i11++;
                        z2 = z4 ? 1 : 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                throw th;
            }
        }
    }

    public final void v0(List list) {
        if (list == null) {
            return;
        }
        e(new p(this, list));
    }

    /* JADX WARN: Code duplicated, block: B:57:0x02aa A[PHI: r9
      0x02aa: PHI (r9v3 int) = (r9v2 int), (r9v5 int) binds: [B:34:0x014b, B:36:0x0155] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public final void w() {
        ?? r6;
        ?? r16;
        int i2;
        int i3;
        ByteBuffer byteBuffer;
        int i4;
        int i5;
        ByteBuffer byteBuffer2;
        synchronized (this.F1) {
            boolean z = false;
            int i6 = 0;
            while (i6 < 2) {
                try {
                    int i7 = 10242;
                    int i9 = 10241;
                    if (this.N1[i6]) {
                        Z0(i6, -1);
                        Bitmap bitmap = this.b2[i6];
                        if (bitmap != null && !bitmap.isRecycled()) {
                            this.e2[i6] = OpenGlUtils.f(this.b2[i6], -1);
                        }
                        this.c2[i6].set(this.d2[i6]);
                        Bitmap bitmap2 = this.K2[i6];
                        if (bitmap2 != null && !bitmap2.isRecycled()) {
                            this.J2[i6] = OpenGlUtils.f(this.K2[i6], -1);
                        }
                        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                        GLES20.glGetIntegerv(3317, intBufferAllocate);
                        GLES20.glPixelStorei(3317, 1);
                        int i10 = this.B2[i6];
                        if (i10 == -1) {
                            int[] iArr = new int[1];
                            GLES20.glGenTextures(1, iArr, z ? 1 : 0);
                            int[] iArr2 = this.B2;
                            int i11 = iArr[z ? 1 : 0];
                            iArr2[i6] = i11;
                            GLES20.glBindTexture(3553, i11);
                            GLES20.glTexParameterf(3553, 10240, 9729.0f);
                            GLES20.glTexParameterf(3553, 10241, 9729.0f);
                            GLES20.glTexParameterf(3553, 10242, 33071.0f);
                            GLES20.glTexParameterf(3553, 10243, 33071.0f);
                            this.C2[i6].rewind();
                            GLES20.glTexImage2D(3553, 0, 6406, this.K1, this.L1, 0, 6406, 5121, this.C2[i6]);
                        } else {
                            GLES20.glBindTexture(3553, i10);
                            this.C2[i6].rewind();
                            GLES20.glTexImage2D(3553, 0, 6406, this.K1, this.L1, 0, 6406, 5121, this.C2[i6]);
                        }
                        int i12 = this.F2[i6];
                        if (i12 == -1) {
                            int[] iArr3 = new int[1];
                            GLES20.glGenTextures(1, iArr3, z ? 1 : 0);
                            int[] iArr4 = this.F2;
                            int i13 = iArr3[z ? 1 : 0];
                            iArr4[i6] = i13;
                            GLES20.glBindTexture(3553, i13);
                            GLES20.glTexParameterf(3553, 10240, 9729.0f);
                            GLES20.glTexParameterf(3553, 10241, 9729.0f);
                            GLES20.glTexParameterf(3553, 10242, 33071.0f);
                            GLES20.glTexParameterf(3553, 10243, 33071.0f);
                            this.G2[i6].rewind();
                            i4 = this.K1;
                            i5 = this.L1;
                            byteBuffer2 = this.G2[i6];
                        } else {
                            GLES20.glBindTexture(3553, i12);
                            this.G2[i6].rewind();
                            i4 = this.K1;
                            i5 = this.L1;
                            byteBuffer2 = this.G2[i6];
                        }
                        GLES20.glTexImage2D(3553, 0, 6408, i4, i5, 0, 6408, 5121, byteBuffer2);
                        GLES20.glPixelStorei(3317, intBufferAllocate.get(z ? 1 : 0));
                        this.N1[i6] = z;
                        N0(i6, -1);
                    }
                    int i14 = z ? 1 : 0;
                    int i15 = i14;
                    int i16 = i15 == true ? 1 : 0;
                    ?? r2 = z;
                    while (i14 < 3) {
                        if (this.j2[i14][i6]) {
                            i16++;
                            if (this.Q1[i14][i6]) {
                                Z0(i6, i14);
                                Bitmap bitmap3 = this.f2[i14][i6];
                                if (bitmap3 != null && !bitmap3.isRecycled()) {
                                    this.i2[i14][i6] = OpenGlUtils.f(this.f2[i14][i6], -1);
                                }
                                Bitmap bitmap4 = this.M2[i14][i6];
                                if (bitmap4 != null && !bitmap4.isRecycled()) {
                                    this.L2[i14][i6] = OpenGlUtils.f(this.M2[i14][i6], -1);
                                }
                                this.g2[i14][i6].set(this.h2[i14][i6]);
                                IntBuffer intBufferAllocate2 = IntBuffer.allocate(1);
                                GLES20.glGetIntegerv(3317, intBufferAllocate2);
                                GLES20.glPixelStorei(3317, 1);
                                int i17 = this.D2[i14][i6];
                                if (i17 == -1) {
                                    int[] iArr5 = new int[1];
                                    GLES20.glGenTextures(1, iArr5, r2);
                                    ?? r17 = r2;
                                    int[] iArr6 = this.D2[i14];
                                    int i18 = iArr5[r17 == true ? 1 : 0];
                                    iArr6[i6] = i18;
                                    GLES20.glBindTexture(3553, i18);
                                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                    GLES20.glTexParameterf(3553, i9, 9729.0f);
                                    GLES20.glTexParameterf(3553, i7, 33071.0f);
                                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                    this.E2[i14][i6].rewind();
                                    GLES20.glTexImage2D(3553, 0, 6406, this.K1, this.L1, 0, 6406, 5121, this.E2[i14][i6]);
                                    r16 = r17;
                                } else {
                                    r16 = r2;
                                    GLES20.glBindTexture(3553, i17);
                                    this.E2[i14][i6].rewind();
                                    GLES20.glTexImage2D(3553, 0, 6406, this.K1, this.L1, 0, 6406, 5121, this.E2[i14][i6]);
                                }
                                int i19 = this.H2[i14][i6];
                                if (i19 == -1) {
                                    int[] iArr7 = new int[1];
                                    ?? r7 = r16;
                                    GLES20.glGenTextures(1, iArr7, r7 == true ? 1 : 0);
                                    int[] iArr8 = this.H2[i14];
                                    int i20 = iArr7[r7 == true ? 1 : 0];
                                    iArr8[i6] = i20;
                                    GLES20.glBindTexture(3553, i20);
                                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                    GLES20.glTexParameterf(3553, i9, 9729.0f);
                                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                    this.I2[i14][i6].rewind();
                                    i2 = this.K1;
                                    i3 = this.L1;
                                    byteBuffer = this.I2[i14][i6];
                                } else {
                                    GLES20.glBindTexture(3553, i19);
                                    this.I2[i14][i6].rewind();
                                    i2 = this.K1;
                                    i3 = this.L1;
                                    byteBuffer = this.I2[i14][i6];
                                }
                                GLES20.glTexImage2D(3553, 0, 6408, i2, i3, 0, 6408, 5121, byteBuffer);
                                r6 = 0;
                                GLES20.glPixelStorei(3317, intBufferAllocate2.get(0));
                                this.Q1[i14][i6] = false;
                                N0(i6, i14);
                                i15 = 1;
                            } else {
                                r6 = r2;
                            }
                        } else {
                            r6 = r2;
                        }
                        i14++;
                        r2 = r6;
                        i7 = 10242;
                        i9 = 10241;
                    }
                    ?? r8 = r2;
                    if (i15 != 0 && i16 == 3) {
                        Z0(i6, -1);
                        N0(i6, -1);
                    }
                    i6++;
                    z = r8 == true ? 1 : 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void w0() {
        if (this.v0 == null) {
            return;
        }
        e(new q(this));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x011a A[PHI: r14
      0x011a: PHI (r14v3 int) = (r14v2 int), (r14v5 int) binds: [B:17:0x009a, B:19:0x00a4] A[DONT_GENERATE, DONT_INLINE]] */
    public final void x() {
        synchronized (this.G1) {
            for (int i2 = 0; i2 < 2; i2++) {
                try {
                    int i3 = 10242;
                    int i4 = 10241;
                    int i5 = 1;
                    if (this.O1[i2]) {
                        W0(i2, -1);
                        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                        GLES20.glGetIntegerv(3317, intBufferAllocate);
                        GLES20.glPixelStorei(3317, 1);
                        int[] iArr = new int[1];
                        GLES20.glGenTextures(1, iArr, 0);
                        int[] iArr2 = this.V1;
                        int i6 = iArr[0];
                        iArr2[i2] = i6;
                        GLES20.glBindTexture(3553, i6);
                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                        this.S1[i2].rewind();
                        GLES20.glTexImage2D(3553, 0, 6406, this.K1, this.L1, 0, 6406, 5121, this.S1[i2]);
                        GLES20.glPixelStorei(3317, intBufferAllocate.get(0));
                        this.T1[i2].set(this.U1[i2]);
                        this.O1[i2] = false;
                        Q0(i2, -1);
                    }
                    int i7 = 0;
                    boolean z = false;
                    int i9 = 0;
                    while (i7 < 3) {
                        if (this.a2[i7][i2]) {
                            i9++;
                            if (this.R1[i7][i2]) {
                                W0(i2, i7);
                                IntBuffer intBufferAllocate2 = IntBuffer.allocate(i5);
                                GLES20.glGetIntegerv(3317, intBufferAllocate2);
                                int i10 = i5;
                                GLES20.glPixelStorei(3317, i10);
                                int[] iArr3 = new int[i10];
                                GLES20.glGenTextures(i10, iArr3, 0);
                                int[] iArr4 = this.Z1[i7];
                                int i11 = iArr3[0];
                                iArr4[i2] = i11;
                                GLES20.glBindTexture(3553, i11);
                                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                                GLES20.glTexParameterf(3553, i4, 9729.0f);
                                GLES20.glTexParameterf(3553, i3, 33071.0f);
                                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                                this.W1[i7][i2].rewind();
                                GLES20.glTexImage2D(3553, 0, 6406, this.K1, this.L1, 0, 6406, 5121, this.W1[i7][i2]);
                                GLES20.glPixelStorei(3317, intBufferAllocate2.get(0));
                                this.X1[i7][i2].set(this.Y1[i7][i2]);
                                this.R1[i7][i2] = false;
                                Q0(i2, i7);
                                z = true;
                            }
                        }
                        i7++;
                        i3 = 10242;
                        i4 = 10241;
                        i5 = 1;
                    }
                    if (z && i9 == 3) {
                        W0(i2, -1);
                        Q0(i2, -1);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void x0() {
        if (this.t0 == null) {
            return;
        }
        e(new t(this));
    }

    public final void y() {
        P0(-1);
        for (int i2 = 0; i2 < 3; i2++) {
            P0(i2);
        }
    }

    public final void y0(float f2) {
        int i2 = 0;
        while (true) {
            CLMakeupLive3DFilter[] cLMakeupLive3DFilterArr = this.W;
            if (i2 >= cLMakeupLive3DFilterArr.length) {
                return;
            }
            CLMakeupLive3DFilter cLMakeupLive3DFilter = cLMakeupLive3DFilterArr[i2];
            cLMakeupLive3DFilter.n(cLMakeupLive3DFilter.Z3, f2, cLMakeupLive3DFilter.b4, cLMakeupLive3DFilter.c4, cLMakeupLive3DFilter.d4, cLMakeupLive3DFilter.e4, cLMakeupLive3DFilter.f4, false);
            i2++;
        }
    }

    public final void z() {
        synchronized (this.c6) {
            try {
                if (this.i6) {
                    S0(-1);
                    this.o6 = new int[this.k6];
                    for (int i2 = 0; i2 < this.k6; i2++) {
                        Bitmap bitmap = this.m6[i2];
                        if (bitmap != null && !bitmap.isRecycled()) {
                            this.o6[i2] = OpenGlUtils.f(this.m6[i2], -1);
                        }
                    }
                    P0(-1);
                    this.i6 = false;
                    this.e6 = true;
                    for (int i3 = 0; i3 < 3; i3++) {
                        if (!this.q6[i3]) {
                            S0(i3);
                            P0(i3);
                        }
                    }
                }
                boolean z = false;
                int i4 = 0;
                for (int i5 = 0; i5 < 3; i5++) {
                    if (this.q6[i5]) {
                        i4++;
                        if (this.j6[i5]) {
                            S0(i5);
                            int i6 = this.l6[i5];
                            this.p6[i5] = new int[i6];
                            for (int i7 = 0; i7 < i6; i7++) {
                                Bitmap bitmap2 = this.n6[i5][i7];
                                if (bitmap2 != null && !bitmap2.isRecycled()) {
                                    this.p6[i5][i7] = OpenGlUtils.f(this.n6[i5][i7], -1);
                                }
                            }
                            P0(i5);
                            this.j6[i5] = false;
                            this.f6[i5] = true;
                            z = true;
                        }
                    }
                }
                if (z && i4 == 3) {
                    S0(-1);
                    P0(-1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void z0(int i2, int i3) {
        if (i3 < -1 || i3 >= 3) {
            return;
        }
        ab[] abVarArr = this.O;
        CLMakeupLiveLipStickFilter[] cLMakeupLiveLipStickFilterArr = this.N;
        CLMakeupLiveLipStickFilter.LipstickData[] lipstickDataArr = this.C0;
        if (i3 != -1) {
            if (lipstickDataArr[i3].m_is_valid) {
                float f2 = i2 / 100.0f;
                cLMakeupLiveLipStickFilterArr[i3].g8 = f2;
                abVarArr[i3].g8 = f2;
                return;
            }
            return;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            if (lipstickDataArr[i4].m_is_valid) {
                float f3 = i2 / 100.0f;
                cLMakeupLiveLipStickFilterArr[i4].g8 = f3;
                abVarArr[i4].g8 = f3;
            }
        }
    }

    public CLMakeupLiveFilter(boolean z, int i2, int i3, int i4, int i5, PointF[] pointFArr, int i6, int i7, int i9, int i10, int i11, int i12, boolean z2) {
        this(i11, i12, pointFArr);
        if (i2 > 0 && i2 < 3) {
            this.z = i2;
        }
        this.J6 = true;
    }
}
