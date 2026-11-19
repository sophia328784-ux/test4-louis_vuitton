package com.cyberlink.clgpuimage.cosmetic;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLiveDecode;
import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.cyberlink.clgpuimage.OpenGlUtils;
import defpackage.md;
import defpackage.tr;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class CLMakeupLive3DFilter extends GPUImageFilter {
    public String A;
    public final float[] A0;
    public final float[] A1;
    public int A2;
    public final float A3;
    public final byte[] A4;
    public String B;
    public FloatBuffer B0;
    public final float[] B1;
    public int B2;
    public int B3;
    public int B4;
    public final String C;
    public boolean C0;
    public final float[] C1;
    public int C2;
    public boolean C3;
    public int C4;
    public final String D;
    public int D0;
    public FloatBuffer D1;
    public int D2;
    public boolean D3;
    public final int[] D4;
    public final String E;
    public int E0;
    public FloatBuffer E1;
    public int E2;
    public int E3;
    public final int[] E4;
    public final String F;
    public int F0;
    public int F1;
    public int F2;
    public int F3;
    public final int[] F4;
    public final String G;
    public int G0;
    public int G1;
    public int G2;
    public int G3;
    public boolean G4;
    public final String H;
    public int H0;
    public int H1;
    public int H2;
    public int H3;
    public boolean H4;
    public final String I;
    public int I0;
    public int I1;
    public int I2;
    public int I3;
    public boolean I4;
    public final String J;
    public int J0;
    public int J1;
    public int J2;
    public int J3;
    public boolean J4;
    public final String K;
    public int K0;
    public int K1;
    public int K2;
    public int K3;
    public boolean K4;
    public final String L;
    public int L0;
    public int L1;
    public int L2;
    public int L3;
    public boolean L4;
    public final String M;
    public int M0;
    public int M1;
    public int M2;
    public int M3;
    public boolean M4;
    public final String N;
    public int N0;
    public int N1;
    public int N2;
    public int N3;
    public final byte[] N4;
    public final String O;
    public int O0;
    public int O1;
    public int O2;
    public int O3;
    public int O4;
    public final String P;
    public int P0;
    public int P1;
    public int P2;
    public int P3;
    public final CLMakeupLiveCubeEyewearFilter.b P4;
    public int Q;
    public int Q0;
    public int Q1;
    public int Q2;
    public int Q3;
    public final CLMakeupLiveCubeEyewearFilter.b Q4;
    public int R;
    public int R0;
    public int R1;
    public int R2;
    public int R3;
    public final CLMakeupLiveCubeEyewearFilter.b R4;
    public int S;
    public int S0;
    public int S1;
    public int S2;
    public int S3;
    public final CLMakeupLiveCubeEyewearFilter.b S4;
    public int T;
    public int T0;
    public int T1;
    public int T2;
    public int T3;
    public Object3DEyewearSetting T4;
    public int U;
    public int U0;
    public int U1;
    public int U2;
    public int U3;
    public boolean U4;
    public int V;
    public int V0;
    public int V1;
    public int V2;
    public int V3;
    public final float[] V4;
    public int W;
    public int W0;
    public int W1;
    public int W2;
    public int W3;
    public final float[] W4;
    public int X;
    public int X0;
    public int X1;
    public int X2;
    public int X3;
    public final float[] X4;
    public int Y;
    public int Y0;
    public int Y1;
    public int Y2;
    public int Y3;
    public float Y4;
    public int Z;
    public int Z0;
    public int Z1;
    public int Z2;
    public float Z3;
    public float Z4;
    public int a0;
    public boolean a1;
    public int a2;
    public int a3;
    public float a4;
    public float a5;
    public int b0;
    public boolean b1;
    public int b2;
    public int b3;
    public float b4;
    public boolean b5;
    public int c0;
    public int c1;
    public int c2;
    public int c3;
    public float c4;
    public boolean c5;
    public int d0;
    public int d1;
    public int d2;
    public int d3;
    public float d4;
    public float d5;
    public int e0;
    public int e1;
    public int e2;
    public int e3;
    public float e4;
    public float e5;
    public int f0;
    public int f1;
    public int f2;
    public int f3;
    public float f4;
    public boolean f5;
    public int g0;
    public int g1;
    public int g2;
    public int g3;
    public boolean g4;
    public float g5;
    public final Object h0;
    public int h1;
    public int h2;
    public int h3;
    public boolean h4;
    public boolean h5;
    public boolean i0;
    public int i1;
    public int i2;
    public int i3;
    public final ArrayList i4;
    public float i5;
    public int j0;
    public int j1;
    public int j2;
    public int j3;
    public final ArrayList j4;
    public PointF j5;
    public boolean k0;
    public int k1;
    public int k2;
    public int k3;
    public float k4;
    public PointF k5;
    public final float[] l0;
    public int l1;
    public int l2;
    public int l3;
    public float l4;
    public PointF l5;
    public final float[] m0;
    public int m1;
    public int m2;
    public int m3;
    public float m4;
    public PointF m5;
    public final float[] n0;
    public int n1;
    public int n2;
    public int n3;
    public float n4;
    public PointF n5;
    public final FloatBuffer o;
    public int o0;
    public int o1;
    public int o2;
    public boolean o3;
    public float o4;
    public PointF o5;
    public CLShare3DRelatedClasses.Pass1BufferData p;
    public CLShare3DRelatedClasses.Live3DRenderData[] p0;
    public int p1;
    public int p2;
    public int p3;
    public final float[] p4;
    public final ArrayList p5;
    public CLShare3DRelatedClasses.Pass1BufferData q;
    public CLShare3DRelatedClasses.Live3DRenderData[] q0;
    public int q1;
    public int q2;
    public float q3;
    public float q4;
    public final float[] q5;
    public CLShare3DRelatedClasses.Pass1BufferData r;
    public final ArrayList r0;
    public int r1;
    public int r2;
    public float r3;
    public float r4;
    public final float[] r5;
    public CLShare3DRelatedClasses.Pass1BufferData s;
    public final CLShare3DRelatedClasses.Live3DRenderData s0;
    public int s1;
    public final boolean s2;
    public float s3;
    public final float[] s4;
    public final float[] s5;
    public CLShare3DRelatedClasses.Pass1BufferData t;
    public final LiveEarringMetadata t0;
    public int t1;
    public boolean t2;
    public final boolean t3;
    public final float[] t4;
    public final float[] t5;
    public CLShare3DRelatedClasses.Pass1BufferData u;
    public int u0;
    public int u1;
    public boolean u2;
    public final int u3;
    public final float[] u4;
    public final float u5;
    public final Object v;
    public int v0;
    public int v1;
    public int v2;
    public final int v3;
    public final float[] v4;
    public boolean v5;
    public String w;
    public int w0;
    public int w1;
    public int w2;
    public final float w3;
    public float[] w4;
    public boolean w5;
    public String x;
    public int x0;
    public int x1;
    public boolean x2;
    public float x3;
    public final float[] x4;
    public final String y;
    public final float[] y0;
    public int y1;
    public int y2;
    public float y3;
    public final float[] y4;
    public final String z;
    public final float[] z0;
    public final float[] z1;
    public int z2;
    public final float z3;
    public final byte[] z4;
    public static final float[] x5 = {-1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f};
    public static final float[] y5 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    public static final float[] z5 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    public static final float[] A5 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};
    public static final float[] B5 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};

    public static class LiveEarringMetadata {
        public float[] camera_matrix;
        public int component_count;
        public boolean is_flip;
        public boolean is_valid;
        public float left_earbottom_y;
        public int[] matrix_counts;
        public float[][][] normal_pnp_matrices;
        public float[] occluder_camera_matrix;
        public float[] occluder_normal_pnp_matrix;
        public float[] occluder_pnp_matrix;
        public int occluder_triangle_count;
        public float[] p_occluder_normals;
        public float[] p_occluder_vertices;
        public float[][][] pnp_matrices;
        public float right_earbottom_y;
        public int rotation;

        public LiveEarringMetadata() {
            Class cls = Float.TYPE;
            this.pnp_matrices = (float[][][]) Array.newInstance((Class<?>) cls, 20, 101, 12);
            this.normal_pnp_matrices = (float[][][]) Array.newInstance((Class<?>) cls, 20, 101, 16);
            this.matrix_counts = new int[20];
            this.is_valid = false;
            this.camera_matrix = new float[9];
            this.component_count = 0;
            this.occluder_camera_matrix = new float[9];
            this.occluder_pnp_matrix = new float[12];
            this.occluder_normal_pnp_matrix = new float[16];
            this.occluder_triangle_count = 0;
            this.p_occluder_vertices = null;
            this.p_occluder_normals = null;
            this.left_earbottom_y = -1.0f;
            this.right_earbottom_y = -1.0f;
        }

        public void AllocArray(int i2) {
            if (i2 <= 0) {
                this.occluder_triangle_count = 0;
                this.p_occluder_vertices = null;
                this.p_occluder_normals = null;
            } else if (this.occluder_triangle_count != i2) {
                this.occluder_triangle_count = i2;
                this.p_occluder_vertices = new float[i2 * 9];
                this.p_occluder_normals = new float[i2 * 9];
            }
        }

        public void Copy(LiveEarringMetadata liveEarringMetadata) {
            boolean z = liveEarringMetadata.is_valid;
            this.is_valid = z;
            if (z) {
                this.rotation = liveEarringMetadata.rotation;
                this.is_flip = liveEarringMetadata.is_flip;
                System.arraycopy(liveEarringMetadata.camera_matrix, 0, this.camera_matrix, 0, 9);
                this.component_count = liveEarringMetadata.component_count;
                for (int i2 = 0; i2 < liveEarringMetadata.component_count; i2++) {
                    for (int i3 = 0; i3 < 101; i3++) {
                        System.arraycopy(liveEarringMetadata.pnp_matrices[i2][i3], 0, this.pnp_matrices[i2][i3], 0, 12);
                        System.arraycopy(liveEarringMetadata.normal_pnp_matrices[i2][i3], 0, this.normal_pnp_matrices[i2][i3], 0, 16);
                        this.matrix_counts[i2] = liveEarringMetadata.matrix_counts[i2];
                    }
                }
                System.arraycopy(liveEarringMetadata.occluder_camera_matrix, 0, this.occluder_camera_matrix, 0, 9);
                System.arraycopy(liveEarringMetadata.occluder_pnp_matrix, 0, this.occluder_pnp_matrix, 0, 12);
                System.arraycopy(liveEarringMetadata.occluder_normal_pnp_matrix, 0, this.occluder_normal_pnp_matrix, 0, 16);
                this.occluder_triangle_count = liveEarringMetadata.occluder_triangle_count;
                this.p_occluder_vertices = null;
                float[] fArr = new float[liveEarringMetadata.p_occluder_vertices.length];
                this.p_occluder_vertices = fArr;
                System.arraycopy(liveEarringMetadata.p_occluder_vertices, 0, fArr, 0, fArr.length);
                this.p_occluder_normals = null;
                float[] fArr2 = new float[liveEarringMetadata.p_occluder_normals.length];
                this.p_occluder_normals = fArr2;
                System.arraycopy(liveEarringMetadata.p_occluder_normals, 0, fArr2, 0, fArr2.length);
                this.left_earbottom_y = liveEarringMetadata.left_earbottom_y;
                this.right_earbottom_y = liveEarringMetadata.right_earbottom_y;
            }
        }
    }

    public static class LiveObject3DMetadata {
        public boolean is_flip;
        public int rotation;
        float yaw_degree;
        public boolean is_valid = false;
        public float[] pose_parameters = new float[6];
        public float[] pnp_matrices = new float[36];
        public float[] camera_matrix = new float[9];
        public float[] normal_pnp_matrices = new float[48];
        PointF left_ear_top = new PointF();
        PointF left_ear_mid = new PointF();
        PointF left_eye = new PointF();
        PointF right_ear_top = new PointF();
        PointF right_ear_mid = new PointF();
        PointF right_eye = new PointF();

        public void Copy(LiveObject3DMetadata liveObject3DMetadata) {
            boolean z = liveObject3DMetadata.is_valid;
            this.is_valid = z;
            if (z) {
                this.rotation = liveObject3DMetadata.rotation;
                this.is_flip = liveObject3DMetadata.is_flip;
                System.arraycopy(liveObject3DMetadata.pose_parameters, 0, this.pose_parameters, 0, 6);
                System.arraycopy(liveObject3DMetadata.pnp_matrices, 0, this.pnp_matrices, 0, 36);
                System.arraycopy(liveObject3DMetadata.camera_matrix, 0, this.camera_matrix, 0, 9);
                System.arraycopy(liveObject3DMetadata.normal_pnp_matrices, 0, this.normal_pnp_matrices, 0, 48);
                PointF pointF = this.left_ear_top;
                PointF pointF2 = liveObject3DMetadata.left_ear_top;
                pointF.x = pointF2.x;
                pointF.y = pointF2.y;
                PointF pointF3 = this.left_ear_mid;
                PointF pointF4 = liveObject3DMetadata.left_ear_mid;
                pointF3.x = pointF4.x;
                pointF3.y = pointF4.y;
                PointF pointF5 = this.left_eye;
                PointF pointF6 = liveObject3DMetadata.left_eye;
                pointF5.x = pointF6.x;
                pointF5.y = pointF6.y;
                PointF pointF7 = this.right_ear_top;
                PointF pointF8 = liveObject3DMetadata.right_ear_top;
                pointF7.x = pointF8.x;
                pointF7.y = pointF8.y;
                PointF pointF9 = this.right_ear_mid;
                PointF pointF10 = liveObject3DMetadata.right_ear_mid;
                pointF9.x = pointF10.x;
                pointF9.y = pointF10.y;
                PointF pointF11 = this.right_eye;
                PointF pointF12 = liveObject3DMetadata.right_eye;
                pointF11.x = pointF12.x;
                pointF11.y = pointF12.y;
                this.yaw_degree = liveObject3DMetadata.yaw_degree;
            }
        }
    }

    public static class Object3DEyewearGlassInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f25524a = -1.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f25525b = -1.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f25526c = -1.0f;
        public float[] d = new float[3];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float[] f25527e = new float[3];

        public Object3DEyewearGlassInfo() {
            for (int i2 = 0; i2 < 3; i2++) {
                this.d[i2] = -1.0f;
                this.f25527e[i2] = -1.0f;
            }
        }
    }

    public static class Object3DEyewearSetting {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float[] f25528a = new float[3];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f25529b = -1.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float[] f25530c = new float[3];
        public float d = -1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float[] f25531e = new float[3];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f25532f = -1.0f;
        public boolean g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f25533h = -1.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f25534i = -1.0f;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f25535j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f25536k = -1.0f;
        public float l = -1.0f;
        public boolean m = true;
        public float n;
        public boolean o;

        public Object3DEyewearSetting() {
            this.n = -1.0f;
            this.o = false;
            for (int i2 = 0; i2 < 3; i2++) {
                this.f25528a[i2] = -1.0f;
                this.f25530c[i2] = -1.0f;
                this.f25531e[i2] = -1.0f;
            }
            this.n = -1.0f;
            this.o = false;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25537a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 252, 136, 136, 139, 253, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25538b = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 245, 136, 136, 246, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 248, 241, 254, 242, 240, 241, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 244, 254, 139, 247, 254, 245, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 139, 136, 242, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 141, 241, 139, 254, 140, 241, 136, 245, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 254, 252, 170, 232, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 162, 194, 143, 254, 252, 170, 232, 176, 247, 143, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 162, 194, 143, 254, 252, 170, 232, 176, 247, 143, 190, 250, 246, 246, 250, 184, 247, 253, 176, 247, 143, 237, 136, 247, 254, 180, 250, 137, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 162, 194, 143, 254, 252, 170, 232, 237, 136, 247, 254, 180, 250, 137, 184, 247, 253, 190, 250, 246, 246, 250, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 139, 136, 242, 248, 246, 250, 140, 244, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 139, 136, 242, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 149, 139, 162, 194, 242, 255, 232, 159, 139, 136, 242, 248, 246, 250, 140, 244, 232, 163, 232, 151, 149, 151, 172, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 140, 141, 254, 137, 248, 129, 232, 164, 232, 168, 149, 151, 232, 150, 232, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 162, 194, 255, 245, 136, 250, 141, 232, 140, 141, 254, 137, 248, 130, 232, 164, 232, 168, 149, 151, 232, 150, 232, 255, 139, 250, 246, 254, 248, 241, 254, 242, 240, 241, 141, 162, 194, 242, 247, 141, 232, 244, 254, 139, 247, 254, 245, 232, 164, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 232, 145, 232, 169, 232, 146, 232, 168, 162, 194, 255, 245, 136, 250, 141, 232, 242, 247, 143, 248, 244, 254, 139, 247, 254, 245, 232, 164, 232, 168, 149, 151, 232, 150, 232, 255, 245, 136, 250, 141, 159, 244, 254, 139, 247, 254, 245, 144, 162, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 128, 140, 232, 164, 232, 151, 149, 151, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 130, 232, 164, 232, 148, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 232, 130, 232, 163, 164, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 232, 130, 146, 146, 144, 194, 132, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 129, 232, 164, 232, 148, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 232, 129, 232, 163, 164, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 232, 129, 146, 146, 144, 194, 132, 194, 143, 254, 252, 169, 232, 244, 254, 139, 247, 254, 245, 248, 142, 143, 232, 164, 232, 143, 254, 252, 169, 159, 255, 245, 136, 250, 141, 159, 129, 232, 146, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 144, 232, 145, 232, 242, 247, 143, 248, 244, 254, 139, 247, 254, 245, 147, 232, 255, 245, 136, 250, 141, 159, 130, 232, 146, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 144, 232, 145, 232, 242, 247, 143, 248, 244, 254, 139, 247, 254, 245, 144, 162, 194, 255, 245, 136, 250, 141, 232, 128, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 244, 254, 139, 247, 254, 245, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 244, 254, 139, 247, 254, 245, 248, 142, 143, 144, 149, 139, 162, 194, 242, 255, 232, 159, 128, 232, 
        163, 232, 151, 149, 151, 168, 144, 194, 252, 136, 247, 141, 242, 247, 142, 254, 162, 194, 194, 143, 254, 252, 169, 232, 142, 143, 232, 164, 232, 141, 254, 129, 252, 136, 136, 139, 253, 232, 146, 232, 143, 254, 252, 169, 159, 140, 141, 254, 137, 248, 129, 232, 145, 232, 255, 245, 136, 250, 141, 159, 129, 144, 147, 232, 140, 141, 254, 137, 248, 130, 232, 145, 232, 255, 245, 136, 250, 141, 159, 130, 144, 144, 162, 194, 143, 254, 252, 170, 232, 141, 246, 137, 232, 164, 232, 176, 247, 143, 190, 250, 246, 246, 250, 184, 247, 253, 176, 247, 143, 237, 136, 247, 254, 180, 250, 137, 159, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 142, 143, 144, 149, 139, 240, 251, 144, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 252, 232, 164, 232, 151, 162, 232, 252, 232, 163, 232, 170, 162, 232, 252, 146, 146, 144, 194, 141, 246, 137, 228, 252, 230, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 141, 246, 137, 228, 252, 230, 232, 148, 232, 141, 241, 139, 254, 140, 241, 136, 245, 253, 144, 162, 194, 194, 128, 140, 232, 146, 164, 232, 128, 162, 194, 252, 136, 245, 136, 139, 232, 146, 164, 232, 141, 246, 137, 232, 145, 232, 128, 162, 194, 134, 194, 134, 194, 252, 136, 245, 136, 139, 232, 150, 164, 232, 128, 140, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 237, 136, 247, 254, 180, 250, 137, 184, 247, 253, 190, 250, 246, 246, 250, 159, 252, 136, 245, 136, 139, 144, 162, 194, 252, 136, 245, 136, 139, 232, 145, 164, 232, 251, 245, 136, 136, 246, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 143, 254, 252, 170, 232, 242, 247, 137, 142, 141, 248, 139, 240, 251, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 149, 139, 240, 251, 162, 194, 242, 255, 232, 159, 252, 136, 245, 136, 139, 149, 139, 232, 146, 232, 252, 136, 245, 136, 139, 149, 240, 232, 146, 232, 252, 136, 245, 136, 139, 149, 251, 232, 165, 232, 168, 149, 151, 232, 150, 232, 169, 172, 173, 149, 151, 144, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 254, 245, 140, 254, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 194, 132, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 184, 232, 164, 232, 169, 149, 172, 168, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 185, 232, 164, 232, 151, 149, 151, 170, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 186, 232, 164, 232, 169, 149, 171, 170, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 187, 232, 164, 232, 151, 149, 172, 160, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 188, 232, 164, 232, 151, 149, 168, 171, 162, 194, 139, 254, 141, 142, 139, 247, 232, 159, 252, 136, 245, 136, 139, 232, 145, 232, 159, 184, 232, 145, 232, 252, 136, 245, 136, 139, 232, 146, 232, 185, 144, 144, 232, 150, 232, 159, 252, 136, 245, 136, 139, 232, 145, 232, 159, 186, 232, 145, 232, 252, 136, 245, 136, 139, 232, 146, 232, 187, 144, 232, 146, 232, 188, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 176, 247, 143, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 194, 132, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 184, 232, 164, 232, 169, 149, 172, 168, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 185, 232, 164, 232, 151, 149, 151, 170, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 186, 232, 164, 232, 169, 149, 171, 170, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 187, 232, 164, 232, 151, 149, 172, 160, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 188, 232, 164, 232, 151, 149, 168, 171, 162, 194, 143, 254, 252, 170, 232, 250, 232, 164, 232, 186, 232, 145, 232, 252, 136, 245, 136, 139, 232, 148, 232, 184, 162, 194, 143, 254, 252, 170, 232, 251, 232, 164, 232, 187, 232, 145, 232, 252, 136, 245, 136, 139, 232, 148, 232, 185, 162, 194, 143, 254, 252, 170, 232, 252, 232, 164, 232, 188, 232, 145, 232, 252, 136, 245, 136, 139, 162, 194, 139, 254, 141, 142, 139, 247, 232, 159, 148, 251, 232, 148, 232, 140, 138, 139, 141, 159, 251, 232, 145, 232, 251, 232, 148, 232, 171, 149, 151, 232, 145, 232, 250, 232, 145, 232, 252, 144, 144, 232, 150, 232, 159, 169, 149, 151, 232, 145, 232, 250, 144, 162, 194, 134, 
        194, 194, 143, 254, 252, 170, 232, 176, 247, 143, 190, 250, 246, 246, 250, 184, 247, 253, 176, 247, 143, 237, 136, 247, 254, 180, 250, 137, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 194, 132, 194, 252, 136, 245, 136, 139, 232, 164, 232, 137, 136, 128, 159, 252, 136, 245, 136, 139, 147, 232, 143, 254, 252, 170, 159, 169, 149, 169, 144, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 176, 247, 143, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 252, 136, 245, 136, 139, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 237, 136, 247, 254, 180, 250, 137, 184, 247, 253, 190, 250, 246, 246, 250, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 194, 132, 194, 252, 136, 245, 136, 139, 232, 164, 232, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 252, 136, 245, 136, 139, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 137, 136, 128, 159, 252, 136, 245, 136, 139, 147, 232, 143, 254, 252, 170, 159, 168, 149, 151, 232, 150, 232, 169, 149, 169, 144, 144, 162, 194, 134, 194};
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25539a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 252, 136, 136, 139, 253, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 252, 136, 136, 139, 253, 149, 129, 130, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25540b = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 255, 139, 250, 246, 254, 248, 140, 242, 131, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 141, 254, 137, 248, 129, 232, 164, 232, 168, 149, 151, 232, 150, 232, 255, 139, 250, 246, 254, 248, 140, 242, 131, 254, 149, 129, 162, 194, 255, 245, 136, 250, 141, 232, 140, 141, 254, 137, 248, 130, 232, 164, 232, 168, 149, 151, 232, 150, 232, 255, 139, 250, 246, 254, 248, 140, 242, 131, 254, 149, 130, 162, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 246, 250, 140, 244, 232, 164, 232, 151, 149, 151, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 130, 232, 164, 232, 148, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 232, 130, 232, 163, 164, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 232, 130, 146, 146, 144, 194, 132, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 129, 232, 164, 232, 148, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 232, 129, 232, 163, 164, 232, 241, 250, 245, 255, 248, 244, 254, 139, 247, 254, 245, 162, 232, 129, 146, 146, 144, 194, 132, 194, 143, 254, 252, 171, 232, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 232, 146, 232, 143, 254, 252, 169, 159, 255, 245, 136, 250, 141, 159, 129, 144, 232, 145, 232, 140, 141, 254, 137, 248, 129, 147, 232, 255, 245, 136, 250, 141, 159, 130, 144, 232, 145, 232, 140, 141, 254, 137, 248, 130, 144, 144, 162, 194, 246, 250, 129, 248, 246, 250, 140, 244, 232, 164, 232, 246, 250, 129, 159, 246, 250, 129, 248, 246, 250, 140, 244, 147, 232, 252, 136, 245, 136, 139, 149, 139, 144, 162, 194, 134, 194, 134, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 143, 254, 252, 170, 159, 246, 250, 129, 248, 246, 250, 140, 244, 144, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194};
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25541a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 252, 136, 136, 139, 253, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 252, 136, 136, 139, 253, 149, 129, 130, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25542b = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 149, 240, 162, 194, 242, 255, 232, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 232, 165, 232, 151, 149, 160, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 168, 149, 151, 144, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 134, 194, 134, 194};
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25543a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 252, 136, 136, 139, 253, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 252, 136, 136, 139, 253, 149, 129, 130, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25544b = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 143, 254, 252, 171, 232, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 162, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 252, 136, 245, 136, 139, 162, 194, 134, 194};
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25545a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 248, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 141, 254, 129, 252, 136, 136, 139, 253, 248, 232, 164, 232, 143, 254, 252, 169, 159, 141, 254, 129, 252, 136, 136, 139, 253, 149, 129, 147, 232, 168, 149, 151, 232, 148, 232, 141, 254, 129, 252, 136, 136, 139, 253, 149, 130, 144, 162, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25546b = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 186, 142, 251, 254, 232, 252, 142, 251, 254, 246, 250, 137, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 233, 176, 232, 164, 232, 170, 149, 168, 171, 168, 172, 160, 169, 173, 172, 170, 172, 160, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 248, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 141, 241, 254, 141, 250, 232, 164, 232, 141, 254, 129, 252, 136, 136, 139, 253, 248, 149, 129, 232, 145, 232, 169, 149, 151, 232, 145, 232, 233, 176, 232, 146, 232, 233, 176, 162, 194, 255, 245, 136, 250, 141, 232, 137, 241, 242, 232, 164, 232, 159, 141, 254, 129, 252, 136, 136, 139, 253, 248, 149, 130, 232, 148, 232, 151, 149, 172, 144, 232, 145, 232, 233, 176, 162, 194, 194, 143, 254, 252, 170, 232, 139, 254, 255, 162, 194, 139, 254, 255, 149, 129, 232, 164, 232, 252, 136, 140, 159, 137, 241, 242, 144, 232, 145, 232, 252, 136, 140, 159, 141, 241, 254, 141, 250, 144, 162, 194, 139, 254, 255, 149, 130, 232, 164, 232, 140, 242, 247, 159, 137, 241, 242, 144, 162, 194, 139, 254, 255, 149, 131, 232, 164, 232, 252, 136, 140, 159, 137, 241, 242, 144, 232, 145, 232, 140, 242, 247, 159, 141, 241, 254, 141, 250, 144, 162, 194, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 186, 142, 251, 254, 159, 252, 142, 251, 254, 246, 250, 137, 147, 232, 139, 254, 255, 144, 149, 139, 240, 251, 162, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194};
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25547a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 252, 136, 136, 139, 253, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 252, 136, 136, 139, 253, 149, 129, 130, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25548b = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 141, 254, 137, 248, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 141, 254, 137, 248, 130, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 149, 240, 162, 194, 242, 255, 232, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 232, 165, 232, 151, 149, 160, 144, 194, 132, 194, 143, 254, 252, 171, 232, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 162, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 252, 136, 245, 136, 139, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 134, 194, 134, 194};
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25549a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25550b = {194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 236, 241, 242, 255, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 224, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 191, 254, 242, 240, 241, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 255, 139, 250, 246, 254, 235, 136, 141, 250, 141, 242, 136, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 140, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 140, 246, 136, 136, 141, 241, 186, 242, 139, 252, 245, 254, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 232, 132, 194, 255, 245, 136, 250, 141, 232, 140, 142, 246, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 164, 232, 151, 149, 151, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 242, 232, 164, 232, 148, 140, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 232, 242, 232, 163, 164, 232, 140, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 232, 242, 146, 146, 144, 194, 132, 194, 143, 254, 252, 169, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 232, 164, 232, 143, 254, 252, 169, 159, 151, 149, 151, 147, 232, 255, 245, 136, 250, 141, 159, 242, 144, 232, 150, 232, 255, 139, 250, 246, 254, 191, 254, 242, 240, 241, 141, 144, 162, 194, 140, 142, 246, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 146, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 236, 241, 242, 255, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 144, 149, 139, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 250, 143, 240, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 164, 232, 140, 142, 246, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 150, 232, 255, 245, 136, 250, 141, 159, 140, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 232, 145, 232, 169, 232, 146, 232, 168, 144, 162, 194, 255, 245, 136, 250, 141, 232, 140, 142, 246, 248, 136, 255, 248, 140, 242, 245, 232, 164, 232, 151, 149, 151, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 242, 232, 164, 232, 148, 140, 246, 136, 136, 141, 241, 186, 242, 139, 252, 245, 254, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 232, 242, 232, 163, 164, 232, 140, 246, 136, 136, 141, 241, 186, 242, 139, 252, 245, 254, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 232, 242, 146, 146, 144, 194, 132, 194, 143, 254, 252, 169, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 232, 164, 232, 143, 254, 252, 169, 159, 151, 149, 151, 147, 232, 255, 245, 136, 250, 141, 159, 242, 144, 232, 150, 232, 255, 139, 250, 246, 254, 191, 254, 242, 240, 241, 141, 144, 162, 194, 242, 255, 232, 159, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 144, 149, 240, 232, 165, 232, 151, 149, 168, 144, 194, 132, 194, 140, 142, 246, 248, 136, 255, 248, 140, 242, 245, 232, 146, 164, 232, 168, 149, 151, 162, 194, 134, 194, 134, 194, 255, 245, 136, 250, 141, 232, 250, 143, 240, 248, 136, 255, 248, 140, 242, 245, 232, 164, 232, 140, 142, 246, 248, 136, 255, 248, 140, 242, 245, 232, 150, 232, 255, 245, 136, 250, 141, 159, 140, 246, 136, 136, 141, 241, 186, 242, 139, 252, 245, 254, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 232, 145, 232, 169, 232, 146, 232, 168, 144, 162, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 250, 143, 240, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 147, 232, 250, 143, 240, 248, 136, 255, 248, 140, 242, 245, 147, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 
        246, 250, 240, 254, 236, 241, 242, 255, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 250, 144, 162, 194, 134, 194};
    }

    /* JADX WARN: Enum class init method not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f25551a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f25552b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f25553c = 3;
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final float[] f25554a = {0.309888f, 0.415942f, 0.344713f, 0.40072f, 0.379443f, 0.397627f, 0.41212f, 0.405828f, 0.443391f, 0.425369f, 0.324537f, 0.488362f, 0.378241f, 0.464224f, 0.429275f, 0.498594f, 0.373611f, 0.502155f, 0.429167f, 0.494397f, 0.352315f, 0.469397f, 0.404167f, 0.472845f, 0.401389f, 0.501293f, 0.349537f, 0.497845f, 0.556609f, 0.425369f, 0.58788f, 0.405828f, 0.620557f, 0.397627f, 0.655287f, 0.40072f, 0.690112f, 0.415942f, 0.570725f, 0.498594f, 0.621759f, 0.464224f, 0.675463f, 0.488362f, 0.626389f, 0.502155f, 0.570833f, 0.494397f, 0.595833f, 0.472845f, 0.647685f, 0.469397f, 0.650463f, 0.497845f, 0.598611f, 0.501293f, 0.5f, 0.493583f, 0.5f, 0.529583f, 0.5f, 0.567415f, 0.5f, 0.60662f, 0.455297f, 0.633026f, 0.5f, 0.644397f, 0.544703f, 0.633026f, 0.434722f, 0.616312f, 0.565278f, 0.616312f, 0.40787f, 0.709052f, 0.476389f, 0.671121f, 0.5f, 0.676293f, 0.523611f, 0.671121f, 0.59213f, 0.709052f, 0.438426f, 0.684914f, 0.561574f, 0.684914f, 0.422685f, 0.696121f, 0.456019f, 0.676293f, 0.543981f, 0.676293f, 0.577315f, 0.696121f, 0.5f, 0.749569f, 0.440278f, 0.740086f, 0.559722f, 0.740086f, 0.420833f, 0.727155f, 0.468056f, 0.747845f, 0.531944f, 0.747845f, 0.579167f, 0.727155f, 0.420833f, 0.710776f, 0.5f, 0.705603f, 0.579167f, 0.710776f, 0.459722f, 0.707328f, 0.540278f, 0.707328f, 0.5f, 0.711638f, 0.459722f, 0.709052f, 0.540278f, 0.709052f, 0.246594f, 0.489702f, 0.240858f, 0.556388f, 0.254428f, 0.622401f, 0.279747f, 0.670958f, 0.301939f, 0.716746f, 0.334064f, 0.761537f, 0.374646f, 0.798997f, 0.432842f, 0.84069f, 0.5f, 0.854f, 0.567158f, 0.84069f, 0.625354f, 0.798997f, 0.665936f, 0.761537f, 0.698061f, 0.716746f, 0.720253f, 0.670958f, 0.745572f, 0.622401f, 0.759142f, 0.556388f, 0.753406f, 0.489702f, 0.379134f, 0.420394f, 0.620866f, 0.420394f, 0.196394f, 0.480508f, 0.201774f, 0.481535f, 0.206464f, 0.481835f, 0.210484f, 0.483344f, 0.214451f, 0.483674f, 0.218934f, 0.484501f, 0.224759f, 0.48598f, 0.229448f, 0.486528f, 0.234514f, 0.487437f, 0.239779f, 0.48868f, 0.252723f, 0.49254f, 0.260661f, 0.496748f, 0.268036f, 0.500077f, 0.273346f, 0.501726f, 0.282095f, 0.504072f, 0.291969f, 0.506026f, 0.302035f, 0.508074f, 0.311917f, 0.509259f, 0.196038f, 0.550255f, 0.201659f, 0.551203f, 0.20586f, 0.551844f, 0.209809f, 0.552543f, 0.214939f, 0.552533f, 0.219311f, 0.553444f, 0.224345f, 0.553809f, 0.230034f, 0.555001f, 0.235046f, 0.555892f, 0.24625f, 0.556805f, 0.253147f, 0.55888f, 0.260465f, 0.560296f, 0.269398f, 0.561722f, 0.279257f, 0.56412f, 0.288365f, 0.56579f, 0.297102f, 0.567468f, 0.310325f, 0.568002f, 0.323803f, 0.569128f, 0.202895f, 0.624076f, 0.210087f, 0.622073f, 0.215989f, 0.620975f, 0.222116f, 0.620045f, 0.22877f, 0.620142f, 0.236698f, 0.620233f, 0.244559f, 0.620579f, 0.265534f, 0.622517f, 0.277243f, 0.623921f, 0.289459f, 0.625109f, 0.299634f, 0.626813f, 0.311022f, 0.627698f, 0.324891f, 0.628566f, 0.341991f, 0.62924f, 0.219575f, 0.682666f, 0.224917f, 0.679914f, 0.227553f, 0.678499f, 0.235033f, 0.67641f, 0.240161f, 0.674397f, 0.24575f, 0.672518f, 0.252813f, 0.672153f, 0.261272f, 0.670446f, 0.270392f, 0.671651f, 0.286772f, 0.671282f, 0.293855f, 0.671894f, 0.302139f, 0.673229f, 0.310953f, 0.674851f, 0.318314f, 0.676191f, 0.327256f, 0.676718f, 0.338425f, 0.677305f, 0.348499f, 0.677518f, 0.248904f, 0.724558f, 0.256266f, 0.720895f, 0.262513f, 0.7187f, 0.269921f, 0.7168f, 0.275741f, 0.715874f, 0.283038f, 0.715557f, 0.288667f, 0.715699f, 0.294809f, 0.716168f, 0.308451f, 0.718221f, 0.317302f, 0.719422f, 0.325669f, 0.721695f, 0.333907f, 0.723674f, 0.343709f, 0.72513f, 0.35495f, 0.725045f, 0.30049f, 0.78175f, 0.30548f, 0.774272f, 0.311409f, 0.769913f, 0.316012f, 0.766274f, 0.320566f, 0.764371f, 0.327284f, 0.762677f, 0.341746f, 0.760006f, 0.350123f, 0.758785f, 0.359629f, 0.757716f, 0.370757f, 0.756275f, 0.364612f, 0.818361f, 0.366161f, 0.81246f, 0.367916f, 0.806647f, 0.370807f, 0.802209f, 0.378454f, 0.797319f, 0.383986f, 0.79602f, 0.391686f, 0.792414f, 0.430548f, 0.847818f, 0.431396f, 0.843742f, 0.434675f, 0.837458f, 0.435789f, 0.832821f, 0.5f, 0.857f, 0.5f, 0.851f, 0.569452f, 0.847818f, 0.568604f, 0.843742f, 0.565325f, 0.837458f, 0.564211f, 0.832821f, 0.635388f, 0.818361f, 0.633839f, 0.81246f, 0.632084f, 0.806647f, 0.629193f, 0.802209f, 0.621546f, 0.797319f, 0.616014f, 0.79602f, 0.608314f, 0.792414f, 0.69951f, 0.78175f, 0.69452f, 0.774272f, 0.688591f, 0.769913f, 0.683988f, 0.766274f, 0.679434f, 0.764371f, 0.672716f, 0.762677f, 0.658254f, 0.760006f, 0.649877f, 0.758785f, 0.640371f, 0.757716f, 0.629243f, 0.756275f, 0.751096f, 0.724558f, 0.743734f, 0.720895f, 0.737487f, 0.7187f, 0.730079f, 0.7168f, 0.724259f, 0.715874f, 0.716962f, 0.715557f, 0.711333f, 0.715699f, 0.705191f, 0.716168f, 0.691549f, 0.718221f, 0.682698f, 0.719422f, 0.674331f, 0.721695f, 0.666093f, 0.723674f, 0.656291f, 0.72513f, 0.64505f, 0.725045f, 0.780425f, 0.682666f, 0.775083f, 0.679914f, 0.772447f, 0.678499f, 0.764967f, 0.67641f, 0.759839f, 0.674397f, 0.75425f, 0.672518f, 0.747187f, 0.672153f, 0.738728f, 0.670446f, 0.729608f, 0.671651f, 0.713228f, 0.671282f, 0.706145f, 0.671894f, 0.697861f, 0.673229f, 0.689047f, 0.674851f, 0.681686f, 0.676191f, 0.672744f, 0.676718f, 0.661575f, 0.677305f, 0.651501f, 0.677518f, 0.797105f, 0.624076f, 0.789913f, 0.622073f, 0.784011f, 0.620975f, 0.777884f, 0.620045f, 0.77123f, 0.620142f, 0.763302f, 0.620233f, 0.755441f, 0.620579f, 0.734466f, 0.622517f, 0.722757f, 0.623921f, 0.710541f, 0.625109f, 0.700366f, 0.626813f, 0.688978f, 0.627698f, 0.675109f, 0.628566f, 0.658009f, 0.62924f, 0.803962f, 0.550255f, 0.798341f, 0.551203f, 0.79414f, 0.551844f, 0.790191f, 0.552543f, 0.785061f, 0.552533f, 0.780689f, 0.553444f, 0.775655f, 0.553809f, 0.769966f, 0.555001f, 0.764954f, 0.555892f, 0.75375f, 0.556805f, 0.746853f, 0.55888f, 0.739535f, 0.560296f, 0.730602f, 0.561722f, 0.720743f, 0.56412f, 0.711635f, 0.56579f, 0.702898f, 0.567468f, 0.689675f, 0.568002f, 0.676197f, 0.569128f, 0.803606f, 0.480508f, 0.798226f, 0.481535f, 0.793536f, 0.481835f, 0.789516f, 0.483344f, 0.785549f, 0.483674f, 0.781066f, 0.484501f, 0.775241f, 0.48598f, 0.770552f, 0.486528f, 0.765486f, 0.487437f, 0.760221f, 0.48868f, 0.747277f, 0.49254f, 0.739339f, 0.496748f, 0.731964f, 0.500077f, 0.726654f, 0.501726f, 0.717905f, 0.504072f, 0.708031f, 0.506026f, 0.697965f, 0.508074f, 0.688083f, 0.509259f, 0.5f, 0.845517f, 0.5f, 0.872f, 0.23041f, 0.577725f, 0.242386f, 0.57947f, 0.476717f, 0.856749f, 0.478079f, 0.843928f, 0.362593f, 0.785413f, 0.371375f, 0.783145f, 0.312117f, 0.689262f, 0.328655f, 0.692088f, 0.327372f, 0.661838f, 0.337606f, 0.645589f, 0.410798f, 0.827243f, 0.41294f, 0.823547f, 0.33987f, 0.734871f, 0.324227f, 0.73103f, 0.382562f, 0.752284f, 0.349751f, 0.692835f, 0.438868f, 0.828433f, 0.260965f, 0.688774f, 0.276771f, 0.688338f, 0.2423f, 0.638846f, 0.256514f, 0.638894f, 0.229812f, 0.637159f, 0.262191f, 0.751442f, 0.294091f, 0.730444f, 0.306105f, 0.644289f, 0.296906f, 0.688367f, 0.306987f, 0.728995f, 0.350723f, 0.791616f, 0.429731f, 0.861168f, 0.256555f, 0.580871f, 0.30481f, 0.547544f, 0.313189f, 0.500288f, 0.210825f, 0.573853f, 0.20647f, 0.596915f, 0.222267f, 0.50796f, 0.205371f, 0.653832f, 0.208737f, 0.46214f, 0.227585f, 0.466574f, 0.224848f, 0.702861f, 0.239067f, 0.691447f, 0.230719f, 0.531907f, 0.244177f, 0.733064f, 0.293403f, 0.801089f, 0.209617f, 0.69643f, 0.246329f, 0.690834f, 0.269532f, 0.73764f, 0.219291f, 0.640283f, 0.297495f, 0.497848f, 0.277812f, 0.492016f, 0.284541f, 0.545219f, 0.269643f, 0.520059f, 0.245064f, 0.5116f, 0.256783f, 0.515824f, 0.204238f, 0.504572f, 0.202689f, 0.527609f, 0.294858f, 0.584964f, 0.273495f, 0.583728f, 0.345611f, 0.817364f, 0.397368f, 0.789291f, 0.367337f, 0.843835f, 0.419483f, 0.81733f, 0.381042f, 0.780583f, 0.359413f, 0.735147f, 0.353371f, 0.709486f, 0.357399f, 0.629557f, 0.357443f, 0.645308f, 0.332253f, 0.548243f, 0.325201f, 0.588799f, 0.318023f, 0.508545f, 0.29072f, 0.495823f, 0.266011f, 0.485611f, 0.200082f, 0.598252f, 0.369559f, 0.726338f, 0.302481f, 0.498859f, 0.252326f, 0.478038f, 0.238774f, 0.469854f, 0.218561f, 0.464939f, 0.200566f, 0.459645f, 0.308326f, 0.499917f, 0.196134f, 0.503036f, 0.195621f, 0.526794f, 0.233438f, 0.509154f, 0.219884f, 0.530438f, 0.242493f, 0.533385f, 0.21069f, 0.52931f, 0.255701f, 0.537036f, 0.268407f, 0.541161f, 0.283005f, 0.523958f, 0.303283f, 0.527814f, 0.317165f, 0.519437f, 0.197283f, 0.574538f, 0.212426f, 0.597581f, 0.23218f, 0.600215f, 0.26258f, 0.602166f, 0.280556f, 0.604282f, 0.302054f, 0.607048f, 0.332912f, 0.608993f, 0.337351f, 0.569874f, 0.352198f, 0.60948f, 0.312738f, 0.660261f, 0.291665f, 0.642144f, 0.224711f, 0.658404f, 0.234422f, 0.654692f, 0.246519f, 0.653342f, 0.262818f, 0.653986f, 0.281478f, 0.655075f, 0.34555f, 0.662323f, 0.369156f, 0.677287f, 0.28378f, 0.701139f, 0.268512f, 0.704571f, 0.298899f, 0.702186f, 0.31456f, 0.704709f, 0.332453f, 0.708576f, 0.25398f, 0.705081f, 0.245169f, 0.707132f, 0.214593f, 0.666029f, 0.209451f, 0.646996f, 0.204472f, 0.573911f, 0.365044f, 0.745162f, 0.35588f, 0.745954f, 0.347427f, 0.746272f, 0.331827f, 0.744636f, 0.315012f, 0.744152f, 0.290091f, 0.749639f, 0.372681f, 0.769652f, 0.359745f, 0.770948f, 0.35086f, 0.773205f, 0.335778f, 0.777775f, 0.325392f, 0.794814f, 0.316526f, 0.816642f, 0.405577f, 0.805646f, 0.398026f, 0.810238f, 0.393955f, 0.814582f, 0.390011f, 0.824049f, 0.389489f, 0.865832f, 0.454925f, 0.844776f, 0.45532f, 0.852424f, 0.458816f, 0.83581f, 0.454766f, 0.859732f, 0.383427f, 0.764977f, 0.30968f, 0.586573f, 0.3157f, 0.607932f, 0.318164f, 0.548702f, 0.248016f, 0.600423f, 0.219757f, 0.575403f, 0.221956f, 0.59927f, 0.297344f, 0.658121f, 0.274523f, 0.63959f, 0.323026f, 0.645529f, 0.287677f, 0.68827f, 0.238681f, 0.714319f, 0.230037f, 0.695678f, 0.219715f, 0.662679f, 0.213806f, 0.643123f, 0.339817f, 0.745806f, 0.302663f, 0.747171f, 0.28245f, 0.731195f, 0.279471f, 0.761499f, 0.356314f, 0.786978f, 0.343824f, 0.774377f, 0.331193f, 0.78208f, 0.347161f, 0.80033f, 0.390176f, 0.818475f, 0.408175f, 0.832944f, 0.391055f, 0.845982f, 0.476344f, 0.851f, 0.283733f, 0.493763f, 0.212634f, 0.506f, 0.76959f, 0.577725f, 0.757614f, 0.57947f, 0.523283f, 0.856749f, 0.521921f, 0.843928f, 0.637407f, 0.785413f, 0.628625f, 0.783145f, 0.687883f, 0.689262f, 0.671345f, 0.692088f, 0.672628f, 0.661838f, 0.662394f, 0.645589f, 0.589202f, 0.827243f, 0.58706f, 0.823547f, 0.66013f, 0.734871f, 0.675773f, 0.73103f, 0.617438f, 0.752284f, 0.650249f, 0.692835f, 0.561133f, 0.828433f, 0.739035f, 0.688774f, 0.723229f, 0.688338f, 0.7577f, 0.638846f, 0.743486f, 0.638894f, 0.770188f, 0.637159f, 0.737809f, 0.751442f, 0.705909f, 0.730444f, 0.693895f, 0.644289f, 0.703094f, 0.688367f, 0.693013f, 0.728995f, 0.649277f, 0.791616f, 0.570269f, 0.861168f, 0.743445f, 0.580871f, 0.69519f, 0.547544f, 0.686811f, 0.500288f, 0.789175f, 0.573853f, 0.79353f, 0.596915f, 0.777733f, 0.50796f, 0.794629f, 0.653832f, 0.791263f, 0.46214f, 0.772415f, 0.466574f, 0.775152f, 0.702861f, 0.760933f, 0.691447f, 0.769281f, 0.531907f, 0.755823f, 0.733064f, 
        0.706597f, 0.801089f, 0.790383f, 0.69643f, 0.753671f, 0.690834f, 0.730468f, 0.73764f, 0.780709f, 0.640283f, 0.702505f, 0.497848f, 0.722188f, 0.492017f, 0.715459f, 0.545219f, 0.730357f, 0.520059f, 0.754936f, 0.5116f, 0.743217f, 0.515824f, 0.795762f, 0.504572f, 0.797311f, 0.527609f, 0.705142f, 0.584964f, 0.726505f, 0.583728f, 0.654389f, 0.817364f, 0.602632f, 0.789291f, 0.632663f, 0.843835f, 0.580517f, 0.81733f, 0.618958f, 0.780583f, 0.640587f, 0.735147f, 0.646629f, 0.709486f, 0.642601f, 0.629557f, 0.642557f, 0.645308f, 0.667747f, 0.548243f, 0.674799f, 0.588799f, 0.681977f, 0.508545f, 0.70928f, 0.495823f, 0.733989f, 0.485611f, 0.799918f, 0.598252f, 0.630441f, 0.726338f, 0.697519f, 0.498859f, 0.747674f, 0.478038f, 0.761226f, 0.469854f, 0.781439f, 0.464939f, 0.799434f, 0.459645f, 0.691674f, 0.499917f, 0.803866f, 0.503036f, 0.804379f, 0.526794f, 0.766562f, 0.509154f, 0.780116f, 0.530438f, 0.757507f, 0.533385f, 0.78931f, 0.52931f, 0.744299f, 0.537036f, 0.731593f, 0.541161f, 0.716995f, 0.523958f, 0.696717f, 0.527814f, 0.682835f, 0.519437f, 0.802717f, 0.574538f, 0.787574f, 0.597581f, 0.76782f, 0.600215f, 0.73742f, 0.602166f, 0.719444f, 0.604282f, 0.697946f, 0.607048f, 0.667088f, 0.608993f, 0.662649f, 0.569874f, 0.647802f, 0.60948f, 0.687262f, 0.660261f, 0.708335f, 0.642144f, 0.775289f, 0.658404f, 0.765578f, 0.654692f, 0.753481f, 0.653342f, 0.737182f, 0.653986f, 0.718522f, 0.655075f, 0.65445f, 0.662323f, 0.630844f, 0.677287f, 0.71622f, 0.701139f, 0.731488f, 0.704571f, 0.701101f, 0.702186f, 0.68544f, 0.704709f, 0.667547f, 0.708576f, 0.74602f, 0.705081f, 0.754831f, 0.707132f, 0.785407f, 0.666029f, 0.790549f, 0.646996f, 0.795528f, 0.573911f, 0.634956f, 0.745162f, 0.64412f, 0.745954f, 0.652573f, 0.746272f, 0.668173f, 0.744636f, 0.684988f, 0.744152f, 0.709909f, 0.749639f, 0.627319f, 0.769652f, 0.640255f, 0.770948f, 0.64914f, 0.773205f, 0.664222f, 0.777775f, 0.674608f, 0.794814f, 0.683474f, 0.816642f, 0.594423f, 0.805646f, 0.601974f, 0.810238f, 0.606045f, 0.814582f, 0.609989f, 0.824049f, 0.610511f, 0.865832f, 0.545075f, 0.844776f, 0.54468f, 0.852424f, 0.541184f, 0.83581f, 0.545234f, 0.859732f, 0.616573f, 0.764977f, 0.69032f, 0.586573f, 0.6843f, 0.607932f, 0.681836f, 0.548702f, 0.751984f, 0.600423f, 0.780243f, 0.575403f, 0.778044f, 0.59927f, 0.702656f, 0.658121f, 0.725477f, 0.63959f, 0.676974f, 0.645529f, 0.712323f, 0.68827f, 0.761319f, 0.714319f, 0.769963f, 0.695678f, 0.780285f, 0.662679f, 0.786194f, 0.643123f, 0.660183f, 0.745806f, 0.697337f, 0.747171f, 0.71755f, 0.731195f, 0.720529f, 0.761499f, 0.643686f, 0.786978f, 0.656176f, 0.774377f, 0.668807f, 0.78208f, 0.652839f, 0.80033f, 0.609824f, 0.818475f, 0.591825f, 0.832944f, 0.608945f, 0.845982f, 0.523656f, 0.851f, 0.716267f, 0.493763f, 0.787366f, 0.506f, 0.5f, 0.704656f, 0.5f, 0.839709f, 0.5f, 0.888349f, 0.5f, 0.449026f, 0.5f, 0.364778f, 0.5f, 0.065f, 0.5f, 0.722002f, 0.5f, 0.332f, 0.5f, 0.173831f, 0.5f, 0.93f, 0.5f, 0.126357f, 0.5f, 0.087558f, 0.500237f, 0.752774f, 0.500111f, 0.787738f, 0.5f, 0.425752f, 0.5f, 0.547333f, 0.5f, 0.586271f, 0.5f, 0.659977f, 0.5f, 0.279965f, 0.5f, 0.16529f, 0.5f, 0.512723f, 0.5f, 0.213215f, 0.5f, 0.683538f, 0.5f, 0.716407f, 0.5f, 0.637312f, 0.5f, 0.625119f, 0.500155f, 0.773372f, 0.500188f, 0.763066f, 0.5f, 0.809642f, 0.5f, 0.470855f, 0.5f, 0.721358f, 0.5f, 0.694908f, 0.5f, 0.95f, 0.5f, 0.399549f, 0.5f, 0.322282f, 0.5f, 0.242159f, 0.5f, 0.188427f, 0.5f, 0.144465f, 0.5f, 0.105974f, 0.5f, 0.925223f, 0.5f, 0.648829f, 0.5f, 0.740247f, 0.5f, 0.666999f, 0.5f, 0.831553f, 0.5f, 0.699587f, 0.5f, 0.6561f, 0.327997f, 0.485037f, 0.465862f, 0.672918f, 0.459557f, 0.701877f, 0.248113f, 0.765098f, 0.200853f, 0.415956f, 0.192414f, 0.518944f, 0.245295f, 0.45517f, 0.183206f, 0.425827f, 0.339676f, 0.84804f, 0.434869f, 0.894502f, 0.407607f, 0.842124f, 0.392084f, 0.774608f, 0.364925f, 0.661626f, 0.345285f, 0.58979f, 0.318051f, 0.528838f, 0.224582f, 0.444938f, 0.304734f, 0.848658f, 0.18638f, 0.470473f, 0.226989f, 0.407757f, 0.422453f, 0.170544f, 0.33763f, 0.224324f, 0.246962f, 0.193046f, 0.399434f, 0.11174f, 0.269358f, 0.383406f, 0.41749f, 0.128894f, 0.455209f, 0.71757f, 0.415228f, 0.710678f, 0.482136f, 0.739791f, 0.399211f, 0.70583f, 0.48332f, 0.703356f, 0.44724f, 0.732139f, 0.412931f, 0.71782f, 0.439348f, 0.696616f, 0.443633f, 0.705557f, 0.430663f, 0.715883f, 0.446269f, 0.708318f, 0.448827f, 0.709109f, 0.488718f, 0.711211f, 0.484581f, 0.632174f, 0.450917f, 0.563101f, 0.436144f, 0.620187f, 0.455158f, 0.544737f, 0.437033f, 0.57838f, 0.438775f, 0.5975f, 0.474179f, 0.533666f, 0.466545f, 0.603618f, 0.468032f, 0.615301f, 0.450089f, 0.629012f, 0.449575f, 0.623269f, 0.477839f, 0.630178f, 0.472444f, 0.637871f, 0.435756f, 0.609926f, 0.486588f, 0.641079f, 0.493898f, 0.647576f, 0.431491f, 0.598486f, 0.432014f, 0.589878f, 0.483968f, 0.752338f, 0.432078f, 0.758793f, 0.464411f, 0.667147f, 0.389518f, 0.701366f, 0.420937f, 0.769906f, 0.413357f, 0.590425f, 0.440098f, 0.670435f, 0.432331f, 0.649386f, 0.437705f, 0.750409f, 0.407395f, 0.639997f, 0.404396f, 0.741591f, 0.409758f, 0.623665f, 0.380426f, 0.642319f, 0.391695f, 0.607801f, 0.393133f, 0.566194f, 0.400844f, 0.538904f, 0.432681f, 0.498449f, 0.373622f, 0.512824f, 0.325112f, 0.499613f, 0.419546f, 0.483355f, 0.324359f, 0.496f, 0.425901f, 0.529707f, 0.405358f, 0.462023f, 0.367217f, 0.455559f, 0.324954f, 0.4738f, 0.41246f, 0.450568f, 0.371244f, 0.443569f, 0.430825f, 0.488807f, 0.427471f, 0.511778f, 0.324948f, 0.503107f, 0.322971f, 0.49018f, 0.324771f, 0.485673f, 0.369486f, 0.464603f, 0.395879f, 0.517065f, 0.339266f, 0.470392f, 0.315351f, 0.489398f, 0.424007f, 0.474051f, 0.386418f, 0.45624f, 0.392833f, 0.462412f, 0.329168f, 0.448561f, 0.343085f, 0.461786f, 0.409743f, 0.512594f, 0.381295f, 0.520223f, 0.40035f, 0.509719f, 0.305492f, 0.470147f, 0.319731f, 0.471364f, 0.365414f, 0.449544f, 0.422304f, 0.462996f, 0.445026f, 0.499033f, 0.31859f, 0.494565f, 0.318233f, 0.500474f, 0.433237f, 0.493933f, 0.456737f, 0.502215f, 0.462917f, 0.4628f, 0.3367f, 0.456506f, 0.44633f, 0.450659f, 0.479334f, 0.446714f, 0.385008f, 0.465208f, 0.398273f, 0.469818f, 0.331823f, 0.481733f, 0.412034f, 0.50218f, 0.348796f, 0.502903f, 0.424467f, 0.498969f, 0.387643f, 0.502458f, 0.364883f, 0.501128f, 0.418576f, 0.487064f, 0.384822f, 0.468091f, 0.353189f, 0.472182f, 0.328813f, 0.487838f, 0.397864f, 0.472795f, 0.36995f, 0.467259f, 0.338828f, 0.480086f, 0.330799f, 0.491267f, 0.424545f, 0.495989f, 0.4241f, 0.493343f, 0.314712f, 0.43814f, 0.374805f, 0.355158f, 0.302234f, 0.318468f, 0.346603f, 0.293305f, 0.191921f, 0.596429f, 0.168125f, 0.539402f, 0.177726f, 0.47168f, 0.192921f, 0.626416f, 0.187029f, 0.640108f, 0.194188f, 0.634852f, 0.175753f, 0.615f, 0.236238f, 0.159769f, 0.101f, 0.342708f, 0.330537f, 0.106784f, 0.122317f, 0.50829f, 0.183301f, 0.374682f, 0.30578f, 0.095241f, 0.483304f, 0.585989f, 0.262212f, 0.828764f, 0.439855f, 0.390948f, 0.335611f, 0.197955f, 0.392892f, 0.251874f, 0.313964f, 0.150544f, 0.276469f, 0.432234f, 0.25588f, 0.29936f, 0.487698f, 0.697852f, 0.470553f, 0.718936f, 0.453544f, 0.744805f, 0.452443f, 0.747954f, 0.455348f, 0.697509f, 0.410322f, 0.713694f, 0.418418f, 0.713061f, 0.414787f, 0.702691f, 0.40889f, 0.711091f, 0.426472f, 0.710165f, 0.427995f, 0.710142f, 0.415956f, 0.711827f, 0.485629f, 0.705933f, 0.421255f, 0.710729f, 0.489509f, 0.639951f, 0.452146f, 0.605977f, 0.438441f, 0.557825f, 0.439934f, 0.609211f, 0.446857f, 0.581182f, 0.44365f, 0.593681f, 0.460955f, 0.581952f, 0.452801f, 0.621725f, 0.461536f, 0.621948f, 0.470195f, 0.622581f, 0.489158f, 0.636871f, 0.451448f, 0.6344f, 0.476923f, 0.625362f, 0.454456f, 0.628877f, 0.466896f, 0.62575f, 0.444309f, 0.634348f, 0.439617f, 0.628368f, 0.456857f, 0.64216f, 0.460575f, 0.771441f, 0.456097f, 0.784529f, 0.453544f, 0.759127f, 0.425741f, 0.623723f, 0.418733f, 0.730247f, 0.403707f, 0.712101f, 0.476629f, 0.666588f, 0.432915f, 0.641804f, 0.39404f, 0.726692f, 0.447669f, 0.524895f, 0.336779f, 0.477978f, 0.312367f, 0.484549f, 0.41181f, 0.477731f, 0.438696f, 0.498112f, 0.320796f, 0.487119f, 0.41855f, 0.51745f, 0.409514f, 0.507203f, 0.391106f, 0.511864f, 0.34139f, 0.524116f, 0.34942f, 0.5184f, 0.356067f, 0.511055f, 0.337038f, 0.504255f, 0.333869f, 0.510675f, 0.442606f, 0.477969f, 0.443345f, 0.507499f, 0.473119f, 0.493353f, 0.476628f, 0.469353f, 0.328556f, 0.43055f, 0.297179f, 0.454972f, 0.373398f, 0.506678f, 0.327492f, 0.48978f, 0.326167f, 0.492596f, 0.3298f, 0.494683f, 0.418798f, 0.500735f, 0.425018f, 0.488829f, 0.404095f, 0.503837f, 0.339123f, 0.494567f, 0.403928f, 0.476219f, 0.391593f, 0.4699f, 0.361357f, 0.469126f, 0.377931f, 0.46697f, 0.333522f, 0.483977f, 0.345283f, 0.475933f, 0.331612f, 0.489324f, 0.338135f, 0.499012f, 0.41059f, 0.499708f, 0.397907f, 0.31873f, 0.170407f, 0.479182f, 0.193066f, 0.476059f, 0.192166f, 0.490028f, 0.179172f, 0.470613f, 0.189742f, 0.630516f, 0.171806f, 0.475781f, 0.166715f, 0.521553f, 0.165021f, 0.590568f, 0.175812f, 0.656687f, 0.179417f, 0.294392f, 0.300157f, 0.192781f, 0.230465f, 0.248738f, 0.480499f, 0.521023f, 0.441839f, 0.518695f, 0.192796f, 0.791329f, 0.436677f, 0.944942f, 0.152137f, 0.939915f, 0.28271f, 0.91404f, 0.487962f, 0.672273f, 0.484573f, 0.749465f, 0.487694f, 0.667255f, 0.483966f, 0.716259f, 0.482241f, 0.610134f, 0.305505f, 0.28818f, 0.421136f, 0.708791f, 0.467558f, 0.750979f, 0.402554f, 0.693667f, 0.475079f, 0.709967f, 0.423416f, 0.710531f, 0.442732f, 0.716681f, 0.463577f, 0.71591f, 0.424871f, 0.71075f, 0.425614f, 0.712998f, 0.464052f, 0.696554f, 0.486437f, 0.69529f, 0.436549f, 0.698038f, 0.427173f, 0.701375f, 0.447405f, 0.697685f, 0.430999f, 0.715981f, 0.440323f, 0.6244f, 0.449741f, 0.619075f, 0.458912f, 0.619676f, 0.471822f, 0.623141f, 0.472146f, 0.564979f, 0.482115f, 0.631f, 0.47606f, 0.625232f, 0.44626f, 0.640285f, 0.436736f, 0.626229f, 0.438965f, 0.743113f, 0.416425f, 0.682404f, 0.476655f, 0.761627f, 0.412971f, 0.73511f, 0.411564f, 0.666226f, 0.449567f, 0.803096f, 0.389912f, 0.680419f, 0.416311f, 0.611291f, 0.393563f, 0.711388f, 0.40397f, 0.722568f, 0.39178f, 0.467165f, 0.408816f, 0.470715f, 0.360371f, 0.466557f, 0.37755f, 0.460048f, 0.343889f, 0.473502f, 0.328406f, 0.481645f, 0.357974f, 0.545656f, 0.446973f, 0.491445f, 0.425686f, 0.482736f, 0.439565f, 0.493686f, 0.358578f, 0.462687f, 0.459096f, 0.488868f, 0.437816f, 0.458858f, 0.389821f, 0.450653f, 0.363126f, 0.519972f, 0.32473f, 0.481534f, 0.436493f, 0.505956f, 0.393119f, 0.5265f, 0.429169f, 0.497021f, 0.455558f, 0.474617f, 0.344992f, 0.424534f, 0.364479f, 0.506093f, 0.421819f, 0.488108f, 0.417742f, 0.498004f, 0.167327f, 0.573604f, 0.165212f, 0.501133f, 0.172148f, 0.47986f, 0.168245f, 0.500823f, 0.164206f, 0.539498f, 0.181419f, 0.618915f, 0.173043f, 0.575179f, 0.232618f, 0.75076f, 0.142756f, 0.630132f, 0.076944f, 0.787844f, 0.079501f, 0.931523f, 
        0.212524f, 0.915506f, 0.37f, 0.923622f, 0.197388f, 0.661815f, 0.192729f, 0.54975f, 0.152682f, 0.492373f, 0.394785f, 0.745872f, 0.372946f, 0.694195f, 0.330231f, 0.530124f, 0.304685f, 0.48035f, 0.429892f, 0.690608f, 0.441338f, 0.715798f, 0.437328f, 0.724874f, 0.429532f, 0.734057f, 0.426184f, 0.740721f, 0.419986f, 0.746172f, 0.423929f, 0.714511f, 0.416368f, 0.722353f, 0.437004f, 0.709547f, 0.34026f, 0.491922f, 0.350833f, 0.494963f, 0.36539f, 0.497683f, 0.3735f, 0.498638f, 0.387342f, 0.49872f, 0.401617f, 0.497821f, 0.40957f, 0.49677f, 0.294338f, 0.470536f, 0.284732f, 0.458621f, 0.259866f, 0.463921f, 0.284554f, 0.472982f, 0.30328f, 0.492211f, 0.251834f, 0.414936f, 0.256178f, 0.4388f, 0.239807f, 0.431881f, 0.214715f, 0.442923f, 0.205104f, 0.440825f, 0.187562f, 0.44611f, 0.267645f, 0.42273f, 0.308097f, 0.482534f, 0.305672f, 0.48734f, 0.296587f, 0.482222f, 0.290347f, 0.477756f, 0.301229f, 0.485244f, 0.19373f, 0.458609f, 0.287855f, 0.484949f, 0.298663f, 0.490635f, 0.309098f, 0.493848f, 0.321862f, 0.499987f, 0.318665f, 0.489982f, 0.311081f, 0.488764f, 0.299733f, 0.476248f, 0.288948f, 0.464588f, 0.237539f, 0.411787f, 0.231068f, 0.427211f, 0.271682f, 0.473911f, 0.276868f, 0.463121f, 0.269309f, 0.451454f, 0.233762f, 0.450813f, 0.316331f, 0.485997f, 0.314735f, 0.494555f, 0.321427f, 0.493364f, 0.29306f, 0.487745f, 0.328097f, 0.498954f, 0.221072f, 0.423426f, 0.291271f, 0.447733f, 0.302018f, 0.463511f, 0.308901f, 0.474173f, 0.312647f, 0.477252f, 0.31575f, 0.47932f, 0.319141f, 0.480532f, 0.294497f, 0.404556f, 0.288496f, 0.397358f, 0.280176f, 0.389739f, 0.25655f, 0.376326f, 0.231353f, 0.363336f, 0.405245f, 0.427185f, 0.431587f, 0.444087f, 0.298521f, 0.378461f, 0.304193f, 0.38487f, 0.291934f, 0.37192f, 0.278306f, 0.359376f, 0.256641f, 0.339435f, 0.23465f, 0.32285f, 0.197126f, 0.370943f, 0.178956f, 0.455244f, 0.22244f, 0.305056f, 0.166692f, 0.435024f, 0.290031f, 0.338007f, 0.301842f, 0.350372f, 0.308761f, 0.356369f, 0.291091f, 0.303591f, 0.276943f, 0.32086f, 0.238816f, 0.279746f, 0.337809f, 0.377563f, 0.356029f, 0.375096f, 0.376271f, 0.374564f, 0.39823f, 0.377725f, 0.470943f, 0.395311f, 0.334141f, 0.355326f, 0.319787f, 0.38347f, 0.318961f, 0.357453f, 0.353291f, 0.355058f, 0.403078f, 0.357686f, 0.434584f, 0.361367f, 0.467836f, 0.36242f, 0.475234f, 0.424376f, 0.464646f, 0.320983f, 0.429904f, 0.319461f, 0.37013f, 0.321019f, 0.34882f, 0.324154f, 0.332546f, 0.328697f, 0.314233f, 0.330674f, 0.27723f, 0.277718f, 0.260645f, 0.259747f, 0.461901f, 0.279424f, 0.426798f, 0.280083f, 0.394327f, 0.281822f, 0.367603f, 0.287376f, 0.315527f, 0.308524f, 0.330364f, 0.300233f, 0.291379f, 0.261367f, 0.279481f, 0.235099f, 0.462168f, 0.44056f, 0.460033f, 0.242889f, 0.424506f, 0.245642f, 0.366159f, 0.2601f, 0.345511f, 0.268894f, 0.3287f, 0.278272f, 0.319329f, 0.266588f, 0.312988f, 0.246015f, 0.305995f, 0.21547f, 0.458668f, 0.213134f, 0.422887f, 0.218132f, 0.391763f, 0.225522f, 0.364436f, 0.235743f, 0.343059f, 0.248172f, 0.281396f, 0.481897f, 0.280219f, 0.46827f, 0.275965f, 0.478612f, 0.21603f, 0.403813f, 0.284003f, 0.441518f, 0.213648f, 0.371315f, 0.234172f, 0.388993f, 0.247383f, 0.394361f, 0.264194f, 0.398952f, 0.274761f, 0.405719f, 0.283276f, 0.413303f, 0.290906f, 0.421721f, 0.285266f, 0.365184f, 0.29589f, 0.344075f, 0.316102f, 0.288434f, 0.458796f, 0.190334f, 0.386698f, 0.203866f, 0.37136f, 0.180871f, 0.331694f, 0.17943f, 0.324858f, 0.164541f, 0.286874f, 0.181866f, 0.2676f, 0.214512f, 0.249091f, 0.223952f, 0.423228f, 0.151464f, 0.368571f, 0.161533f, 0.360994f, 0.141246f, 0.270439f, 0.18027f, 0.200454f, 0.313879f, 0.342198f, 0.122628f, 0.380207f, 0.095326f, 0.286133f, 0.148711f, 0.214957f, 0.236693f, 0.133855f, 0.413615f, 0.15137f, 0.768712f, 0.144862f, 0.548201f, 0.201836f, 0.151999f, 0.115506f, 0.607658f, 0.079f, 0.534225f, 0.356633f, 0.499586f, 0.356038f, 0.504487f, 0.343359f, 0.500901f, 0.344029f, 0.496225f, 0.333896f, 0.496843f, 0.334698f, 0.492891f, 0.332298f, 0.50144f, 0.343189f, 0.507358f, 0.418859f, 0.504596f, 0.381441f, 0.5069f, 0.380789f, 0.502507f, 0.395051f, 0.502005f, 0.397179f, 0.505079f, 0.335863f, 0.490484f, 0.374746f, 0.527556f, 0.329136f, 0.52127f, 0.354928f, 0.52627f, 0.328639f, 0.507053f, 0.406673f, 0.522817f, 0.41946f, 0.509f, 0.417168f, 0.495489f, 0.394582f, 0.498578f, 0.380416f, 0.498752f, 0.357509f, 0.496611f, 0.345618f, 0.493388f, 0.179421f, 0.506966f, 0.331119f, 0.538942f, 0.32683f, 0.513481f, 0.355595f, 0.534134f, 0.345327f, 0.546928f, 0.342857f, 0.532191f, 0.340131f, 0.515175f, 0.388575f, 0.533964f, 0.367789f, 0.535189f, 0.382825f, 0.542495f, 0.404139f, 0.530609f, 0.414248f, 0.534962f, 0.416677f, 0.526f, 0.45196f, 0.515743f, 0.435871f, 0.523739f, 0.426391f, 0.520868f, 0.434978f, 0.515467f, 0.429255f, 0.504434f, 0.425797f, 0.502078f, 0.45159f, 0.483184f, 0.481957f, 0.505421f, 0.468161f, 0.509739f, 0.362982f, 0.560365f, 0.387435f, 0.553302f, 0.403992f, 0.548467f, 0.417463f, 0.543557f, 0.428497f, 0.53817f, 0.438316f, 0.532431f, 0.46254f, 0.523396f, 0.484005f, 0.656838f, 0.468159f, 0.656444f, 0.490498f, 0.652135f, 0.452295f, 0.668348f, 0.454382f, 0.658932f, 0.474235f, 0.644888f, 0.454581f, 0.648719f, 0.369947f, 0.575477f, 0.378079f, 0.589561f, 0.400668f, 0.577644f, 0.408253f, 0.559953f, 0.420779f, 0.554588f, 0.430447f, 0.54915f, 0.441562f, 0.543701f, 0.414053f, 0.570406f, 0.424026f, 0.565397f, 0.420109f, 0.578332f, 0.381488f, 0.62742f, 0.42875f, 0.633444f, 0.364771f, 0.710472f, 0.376173f, 0.738211f, 0.378572f, 0.711074f, 0.214887f, 0.739097f, 0.192018f, 0.724363f, 0.411147f, 0.753365f, 0.413387f, 0.724425f, 0.408866f, 0.719855f, 0.314116f, 0.466074f, 0.31038f, 0.459732f, 0.323528f, 0.461489f, 0.33239f, 0.466927f, 0.33105f, 0.475721f, 0.348719f, 0.465795f, 0.355432f, 0.457814f, 0.350538f, 0.451839f, 0.342924f, 0.446187f, 0.356976f, 0.444364f, 0.368491f, 0.460856f, 0.376927f, 0.455425f, 0.385112f, 0.460916f, 0.396143f, 0.458192f, 0.400312f, 0.465382f, 0.415086f, 0.467906f, 0.41558f, 0.482539f, 0.411312f, 0.481348f, 0.417941f, 0.476733f, 0.377415f, 0.449754f, 0.385433f, 0.444693f, 0.269786f, 0.779399f, 0.227821f, 0.810189f, 0.38653f, 0.892325f, 0.479674f, 0.839307f, 0.476707f, 0.866304f, 0.477564f, 0.881656f, 0.443763f, 0.821496f, 0.479305f, 0.831293f, 0.41061f, 0.80136f, 0.408772f, 0.779711f, 0.399825f, 0.761157f, 0.427944f, 0.737037f, 0.432164f, 0.480864f, 0.402225f, 0.453786f, 0.411971f, 0.458067f, 0.433144f, 0.471259f, 0.436732f, 0.487931f, 0.399108f, 0.44704f, 0.42575f, 0.454538f, 0.376673f, 0.435087f, 0.363369f, 0.43468f, 0.389974f, 0.437353f, 0.419251f, 0.445098f, 0.404435f, 0.441027f, 0.44812f, 0.46275f, 0.418549f, 0.434868f, 0.392395f, 0.422881f, 0.362408f, 0.42178f, 0.35033f, 0.434868f, 0.318999f, 0.4505f, 0.3077f, 0.451311f, 0.395875f, 0.400386f, 0.362215f, 0.397756f, 0.32628f, 0.40686f, 0.427717f, 0.41414f, 0.182454f, 0.545366f, 0.427874f, 0.703662f, 0.446824f, 0.680298f, 0.46797f, 0.684733f, 0.469411f, 0.697145f, 0.452023f, 0.688259f, 0.441302f, 0.702779f, 0.488456f, 0.683445f, 0.46426f, 0.735911f, 0.428942f, 0.675847f, 0.382274f, 0.660591f, 0.410059f, 0.863304f, 0.434118f, 0.661904f, 0.408215f, 0.655023f, 0.480777f, 0.62159f, 0.389001f, 0.506291f, 0.337629f, 0.436073f, 0.299955f, 0.41859f, 0.301658f, 0.442127f, 0.421619f, 0.382665f, 0.472057f, 0.706567f, 0.436159f, 0.709203f, 0.431153f, 0.707162f, 0.486258f, 0.720733f, 0.672003f, 0.485037f, 0.534138f, 0.672918f, 0.540443f, 0.701877f, 0.751887f, 0.765098f, 0.799147f, 0.415956f, 0.807586f, 0.518944f, 0.754705f, 0.45517f, 0.816794f, 0.425827f, 0.660324f, 0.84804f, 0.565131f, 0.894502f, 0.592393f, 0.842124f, 0.607916f, 0.774608f, 0.635075f, 0.661626f, 0.654715f, 0.58979f, 0.681949f, 0.528838f, 0.775418f, 0.444938f, 0.695266f, 0.848658f, 0.81362f, 0.470473f, 0.773011f, 0.407757f, 0.577547f, 0.170544f, 0.66237f, 0.224324f, 0.753038f, 0.193046f, 0.600566f, 0.11174f, 0.730642f, 0.383406f, 0.58251f, 0.128894f, 0.544791f, 0.71757f, 0.584772f, 0.710678f, 0.517864f, 0.739791f, 0.600789f, 0.70583f, 0.51668f, 0.703356f, 0.55276f, 0.732139f, 0.587069f, 0.71782f, 0.560652f, 0.696616f, 0.556367f, 0.705557f, 0.569337f, 0.715883f, 0.553731f, 0.708318f, 0.551173f, 0.709109f, 0.511282f, 0.711211f, 0.515419f, 0.632174f, 0.549083f, 0.563101f, 0.563856f, 0.620187f, 0.544842f, 0.544737f, 0.562967f, 0.57838f, 0.561225f, 0.5975f, 0.525821f, 0.533666f, 0.533455f, 0.603618f, 0.531968f, 0.615301f, 0.549911f, 0.629012f, 0.550425f, 0.623269f, 0.522161f, 0.630178f, 0.527556f, 0.637871f, 0.564244f, 0.609926f, 0.513412f, 0.641079f, 0.506102f, 0.647576f, 0.568509f, 0.598486f, 0.567986f, 0.589878f, 0.516575f, 0.752211f, 0.567922f, 0.758793f, 0.535589f, 0.667147f, 0.610482f, 0.701366f, 0.579063f, 0.769906f, 0.586643f, 0.590425f, 0.559902f, 0.670435f, 0.567669f, 0.649386f, 0.562295f, 0.750409f, 0.592605f, 0.639997f, 0.595604f, 0.741591f, 0.590242f, 0.623665f, 0.619574f, 0.642319f, 0.608305f, 0.607801f, 0.606867f, 0.566194f, 0.599156f, 0.538904f, 0.567319f, 0.498449f, 0.626378f, 0.512824f, 0.674888f, 0.499613f, 0.580454f, 0.483355f, 0.675641f, 0.496f, 0.574099f, 0.529707f, 0.594642f, 0.462023f, 0.632783f, 0.455559f, 0.675046f, 0.4738f, 0.58754f, 0.450568f, 0.628756f, 0.443569f, 0.569175f, 0.488807f, 0.572529f, 0.511778f, 0.675052f, 0.503107f, 0.677029f, 0.49018f, 0.675229f, 0.485673f, 0.630514f, 0.464603f, 0.604121f, 0.517065f, 0.660734f, 0.470392f, 0.684649f, 0.489398f, 0.575993f, 0.474051f, 0.613582f, 0.45624f, 0.607167f, 0.462412f, 0.670832f, 0.448561f, 0.656915f, 0.461786f, 0.590257f, 0.512594f, 0.618705f, 0.520223f, 0.59965f, 0.509719f, 0.694508f, 0.470147f, 0.680269f, 0.471365f, 0.634586f, 0.449544f, 0.577696f, 0.462996f, 0.554974f, 0.499033f, 0.68141f, 0.494565f, 0.681767f, 0.500474f, 0.566763f, 0.493933f, 0.543263f, 0.502215f, 0.537083f, 0.4628f, 0.6633f, 0.456506f, 0.55367f, 0.450659f, 0.520666f, 0.446714f, 0.614992f, 0.465208f, 0.601728f, 0.469818f, 0.668177f, 0.481734f, 0.587966f, 0.50218f, 0.651204f, 0.502903f, 0.575533f, 0.498969f, 0.612357f, 0.502458f, 0.635117f, 0.501128f, 0.581424f, 0.487064f, 0.615178f, 0.468091f, 0.646811f, 0.472182f, 0.671187f, 0.487838f, 0.602136f, 0.472795f, 0.63005f, 0.467259f, 0.661172f, 0.480086f, 0.669201f, 0.491267f, 0.575455f, 0.495989f, 0.5759f, 0.493343f, 0.685288f, 0.438141f, 0.625195f, 0.355158f, 0.697766f, 0.318468f, 0.653397f, 0.293651f, 0.808079f, 0.596429f, 0.831875f, 0.539402f, 0.822274f, 0.47168f, 0.807079f, 0.626416f, 0.812971f, 0.640108f, 0.805812f, 0.634852f, 0.824247f, 0.615f, 0.763762f, 0.159769f, 0.899f, 0.342708f, 0.669463f, 0.106784f, 0.877683f, 0.50829f, 0.816699f, 0.374682f, 0.69422f, 0.095241f, 0.516696f, 0.585989f, 0.737788f, 0.828764f, 0.560145f, 0.390948f, 0.664389f, 0.197955f, 0.607108f, 0.251874f, 0.686036f, 0.150544f, 0.723531f, 0.432234f, 0.74412f, 0.29936f, 0.512302f, 0.697852f, 0.529447f, 0.718936f, 0.546456f, 0.744805f, 0.547557f, 0.747954f, 0.544652f, 0.697509f, 0.589678f, 0.713694f, 0.581582f, 0.713061f, 0.585213f, 0.702691f, 0.59111f, 0.711091f, 0.573528f, 0.710165f, 
        0.572005f, 0.710142f, 0.584044f, 0.711827f, 0.514371f, 0.705933f, 0.578745f, 0.710729f, 0.510491f, 0.639951f, 0.547854f, 0.605977f, 0.561559f, 0.557825f, 0.560066f, 0.609211f, 0.553143f, 0.581182f, 0.55635f, 0.593681f, 0.539045f, 0.581952f, 0.547199f, 0.621725f, 0.538464f, 0.621948f, 0.529805f, 0.622581f, 0.510842f, 0.636871f, 0.548552f, 0.6344f, 0.523077f, 0.625362f, 0.545544f, 0.628877f, 0.533104f, 0.62575f, 0.555691f, 0.634348f, 0.560383f, 0.628368f, 0.543143f, 0.64216f, 0.539569f, 0.771408f, 0.544008f, 0.784504f, 0.546456f, 0.759127f, 0.574259f, 0.623723f, 0.581267f, 0.730247f, 0.596293f, 0.712101f, 0.523371f, 0.666588f, 0.567085f, 0.641804f, 0.605959f, 0.726692f, 0.552331f, 0.524895f, 0.66322f, 0.477978f, 0.687633f, 0.484549f, 0.58819f, 0.477731f, 0.561304f, 0.498112f, 0.679204f, 0.487119f, 0.58145f, 0.51745f, 0.590487f, 0.507203f, 0.608894f, 0.511864f, 0.65861f, 0.524116f, 0.65058f, 0.5184f, 0.643933f, 0.511055f, 0.662962f, 0.504255f, 0.666131f, 0.510675f, 0.557394f, 0.477969f, 0.556655f, 0.507499f, 0.526881f, 0.493353f, 0.523372f, 0.469353f, 0.671444f, 0.430551f, 0.702821f, 0.454972f, 0.626602f, 0.506678f, 0.672508f, 0.48978f, 0.673833f, 0.492596f, 0.6702f, 0.494683f, 0.581202f, 0.500735f, 0.574982f, 0.488829f, 0.595905f, 0.503837f, 0.660877f, 0.494567f, 0.596072f, 0.476219f, 0.608407f, 0.4699f, 0.638643f, 0.469126f, 0.622069f, 0.46697f, 0.666478f, 0.483977f, 0.654717f, 0.475933f, 0.668387f, 0.489324f, 0.661865f, 0.499012f, 0.58941f, 0.499708f, 0.602093f, 0.31873f, 0.829593f, 0.479182f, 0.806934f, 0.476059f, 0.807834f, 0.490028f, 0.820828f, 0.470613f, 0.810258f, 0.630516f, 0.828194f, 0.475781f, 0.833285f, 0.521553f, 0.834979f, 0.590568f, 0.824188f, 0.656687f, 0.820583f, 0.294392f, 0.699843f, 0.192781f, 0.769535f, 0.248738f, 0.519501f, 0.521023f, 0.558161f, 0.518695f, 0.807204f, 0.791329f, 0.563323f, 0.944942f, 0.847863f, 0.939915f, 0.71729f, 0.91404f, 0.512038f, 0.672273f, 0.515427f, 0.749465f, 0.512306f, 0.667255f, 0.516034f, 0.716259f, 0.517759f, 0.610134f, 0.694495f, 0.28818f, 0.578864f, 0.708791f, 0.53266f, 0.750928f, 0.597446f, 0.693667f, 0.524921f, 0.709967f, 0.576584f, 0.710531f, 0.557268f, 0.716681f, 0.536423f, 0.71591f, 0.575129f, 0.71075f, 0.574386f, 0.712998f, 0.535948f, 0.696554f, 0.513563f, 0.69529f, 0.563451f, 0.698038f, 0.572827f, 0.701375f, 0.552595f, 0.697685f, 0.569001f, 0.715981f, 0.559677f, 0.6244f, 0.550259f, 0.619075f, 0.541088f, 0.619676f, 0.528178f, 0.623141f, 0.527854f, 0.564979f, 0.517885f, 0.631f, 0.52394f, 0.625232f, 0.55374f, 0.640285f, 0.563264f, 0.626229f, 0.561035f, 0.743113f, 0.583575f, 0.682404f, 0.523618f, 0.761563f, 0.587029f, 0.73511f, 0.588436f, 0.666226f, 0.550433f, 0.803096f, 0.610088f, 0.680419f, 0.583689f, 0.611291f, 0.606437f, 0.711388f, 0.59603f, 0.722568f, 0.60822f, 0.467166f, 0.591184f, 0.470715f, 0.639629f, 0.466557f, 0.62245f, 0.460048f, 0.65611f, 0.473502f, 0.671594f, 0.481645f, 0.642026f, 0.545656f, 0.553027f, 0.491445f, 0.574314f, 0.482736f, 0.560435f, 0.493686f, 0.641422f, 0.462688f, 0.540904f, 0.488868f, 0.562184f, 0.458858f, 0.610179f, 0.450653f, 0.636874f, 0.519972f, 0.67527f, 0.481535f, 0.563507f, 0.505956f, 0.606881f, 0.5265f, 0.570831f, 0.497021f, 0.544442f, 0.474617f, 0.655008f, 0.424534f, 0.635521f, 0.506093f, 0.578181f, 0.488108f, 0.582258f, 0.498004f, 0.832673f, 0.573604f, 0.834788f, 0.501133f, 0.827852f, 0.47986f, 0.831755f, 0.500823f, 0.835794f, 0.539498f, 0.818581f, 0.618915f, 0.826957f, 0.575179f, 0.767382f, 0.75076f, 0.857244f, 0.630132f, 0.923056f, 0.787844f, 0.920499f, 0.931523f, 0.787476f, 0.915506f, 0.63f, 0.923622f, 0.802612f, 0.661815f, 0.807271f, 0.54975f, 0.847318f, 0.492373f, 0.605215f, 0.745872f, 0.627054f, 0.694195f, 0.669769f, 0.530124f, 0.695315f, 0.48035f, 0.570108f, 0.690608f, 0.558662f, 0.715798f, 0.562672f, 0.724874f, 0.570468f, 0.734057f, 0.573815f, 0.740721f, 0.580014f, 0.746172f, 0.576071f, 0.714511f, 0.583632f, 0.722353f, 0.562996f, 0.709547f, 0.65974f, 0.491922f, 0.649167f, 0.494963f, 0.63461f, 0.497683f, 0.6265f, 0.498638f, 0.612658f, 0.49872f, 0.598383f, 0.497821f, 0.59043f, 0.49677f, 0.705662f, 0.470536f, 0.715268f, 0.458621f, 0.740134f, 0.463921f, 0.715446f, 0.472983f, 0.69672f, 0.492211f, 0.748166f, 0.414936f, 0.743822f, 0.4388f, 0.760193f, 0.431881f, 0.785285f, 0.442923f, 0.794896f, 0.440825f, 0.812438f, 0.44611f, 0.732355f, 0.42273f, 0.691903f, 0.482534f, 0.694328f, 0.48734f, 0.703413f, 0.482222f, 0.709653f, 0.477757f, 0.698771f, 0.485244f, 0.80627f, 0.458609f, 0.712145f, 0.484949f, 0.701337f, 0.490635f, 0.690902f, 0.493848f, 0.678138f, 0.499987f, 0.681335f, 0.489982f, 0.688919f, 0.488764f, 0.700267f, 0.476248f, 0.711052f, 0.464589f, 0.762461f, 0.411787f, 0.768932f, 0.427211f, 0.728318f, 0.473911f, 0.723132f, 0.463121f, 0.730691f, 0.451454f, 0.766238f, 0.450813f, 0.683668f, 0.485997f, 0.685265f, 0.494555f, 0.678573f, 0.493364f, 0.70694f, 0.487745f, 0.671903f, 0.498954f, 0.778928f, 0.423426f, 0.708729f, 0.447733f, 0.697982f, 0.463511f, 0.691099f, 0.474173f, 0.687353f, 0.477253f, 0.684249f, 0.47932f, 0.680859f, 0.480532f, 0.705503f, 0.404556f, 0.711504f, 0.397358f, 0.719824f, 0.389739f, 0.74345f, 0.376326f, 0.768647f, 0.363336f, 0.594755f, 0.427185f, 0.568413f, 0.444087f, 0.701479f, 0.378461f, 0.695807f, 0.384917f, 0.708066f, 0.37192f, 0.721694f, 0.359376f, 0.743359f, 0.339435f, 0.76535f, 0.32285f, 0.802874f, 0.370943f, 0.821044f, 0.455244f, 0.77756f, 0.305056f, 0.833308f, 0.435024f, 0.709969f, 0.338007f, 0.698158f, 0.350372f, 0.691239f, 0.356529f, 0.708909f, 0.303591f, 0.723057f, 0.32086f, 0.761184f, 0.279746f, 0.662191f, 0.377577f, 0.643971f, 0.375098f, 0.623729f, 0.374564f, 0.60177f, 0.377725f, 0.529057f, 0.395311f, 0.665859f, 0.355425f, 0.680213f, 0.383503f, 0.681039f, 0.357604f, 0.646709f, 0.355058f, 0.596922f, 0.357686f, 0.565416f, 0.361367f, 0.532164f, 0.36242f, 0.524766f, 0.424376f, 0.535354f, 0.320983f, 0.570096f, 0.319461f, 0.62987f, 0.321049f, 0.65118f, 0.324298f, 0.667454f, 0.328963f, 0.685766f, 0.331015f, 0.72277f, 0.277718f, 0.739355f, 0.259747f, 0.538099f, 0.279425f, 0.573202f, 0.280083f, 0.605673f, 0.281822f, 0.632397f, 0.287405f, 0.684473f, 0.308524f, 0.669636f, 0.300912f, 0.708621f, 0.261367f, 0.720519f, 0.235099f, 0.537832f, 0.44056f, 0.539967f, 0.242889f, 0.575494f, 0.245642f, 0.633841f, 0.260105f, 0.654489f, 0.269479f, 0.6713f, 0.278272f, 0.680671f, 0.266588f, 0.687012f, 0.246015f, 0.694005f, 0.21547f, 0.541332f, 0.213134f, 0.577113f, 0.218132f, 0.608237f, 0.225522f, 0.635564f, 0.235743f, 0.656941f, 0.248172f, 0.718604f, 0.481897f, 0.719781f, 0.468271f, 0.724035f, 0.478613f, 0.78397f, 0.403813f, 0.715997f, 0.441518f, 0.786352f, 0.371315f, 0.765828f, 0.388993f, 0.752617f, 0.394361f, 0.735806f, 0.398952f, 0.725239f, 0.405719f, 0.716724f, 0.413303f, 0.709094f, 0.421721f, 0.714734f, 0.365184f, 0.70411f, 0.344075f, 0.683898f, 0.288434f, 0.541204f, 0.190334f, 0.613302f, 0.203866f, 0.62864f, 0.180871f, 0.668306f, 0.17943f, 0.675142f, 0.164541f, 0.713126f, 0.181866f, 0.7324f, 0.214512f, 0.750909f, 0.223952f, 0.576772f, 0.151464f, 0.631429f, 0.161533f, 0.639006f, 0.141246f, 0.729561f, 0.18027f, 0.799546f, 0.313879f, 0.657802f, 0.122628f, 0.619793f, 0.095326f, 0.713867f, 0.148711f, 0.785043f, 0.236693f, 0.866145f, 0.413615f, 0.84863f, 0.768712f, 0.855138f, 0.548201f, 0.798164f, 0.151999f, 0.884494f, 0.607658f, 0.921f, 0.534225f, 0.643367f, 0.499586f, 0.643962f, 0.504487f, 0.656641f, 0.500901f, 0.655971f, 0.496224f, 0.666103f, 0.496843f, 0.665302f, 0.492891f, 0.667702f, 0.50144f, 0.656811f, 0.507358f, 0.581141f, 0.504596f, 0.618559f, 0.5069f, 0.619211f, 0.502507f, 0.604949f, 0.502005f, 0.602821f, 0.505079f, 0.664137f, 0.490484f, 0.625254f, 0.527556f, 0.670864f, 0.52127f, 0.645072f, 0.52627f, 0.671361f, 0.507053f, 0.593327f, 0.522817f, 0.58054f, 0.509f, 0.582832f, 0.495489f, 0.605418f, 0.498578f, 0.619584f, 0.498752f, 0.642491f, 0.496611f, 0.654382f, 0.493388f, 0.820579f, 0.506966f, 0.668881f, 0.538942f, 0.67317f, 0.513481f, 0.644405f, 0.534134f, 0.654673f, 0.546928f, 0.657143f, 0.532191f, 0.659869f, 0.515175f, 0.611425f, 0.533964f, 0.632211f, 0.535189f, 0.617175f, 0.542495f, 0.595862f, 0.530609f, 0.585752f, 0.534962f, 0.583323f, 0.526f, 0.54804f, 0.515743f, 0.564129f, 0.523739f, 0.573609f, 0.520868f, 0.565022f, 0.515467f, 0.570745f, 0.504434f, 0.574203f, 0.502078f, 0.54841f, 0.483184f, 0.518043f, 0.505421f, 0.531839f, 0.509739f, 0.637018f, 0.560365f, 0.612565f, 0.553301f, 0.596008f, 0.548467f, 0.582537f, 0.543557f, 0.571503f, 0.53817f, 0.561684f, 0.532431f, 0.53746f, 0.523396f, 0.515995f, 0.656838f, 0.531841f, 0.656444f, 0.509502f, 0.652135f, 0.547705f, 0.668348f, 0.545618f, 0.658932f, 0.525765f, 0.644888f, 0.545419f, 0.648719f, 0.630053f, 0.575477f, 0.621921f, 0.589561f, 0.599332f, 0.577644f, 0.591747f, 0.559953f, 0.579221f, 0.554588f, 0.569553f, 0.54915f, 0.558438f, 0.543701f, 0.585947f, 0.570406f, 0.575974f, 0.565397f, 0.579891f, 0.578332f, 0.618512f, 0.62742f, 0.57125f, 0.633444f, 0.635229f, 0.710472f, 0.623827f, 0.738211f, 0.621427f, 0.711074f, 0.785113f, 0.739097f, 0.807982f, 0.724363f, 0.588852f, 0.753365f, 0.586613f, 0.724425f, 0.591134f, 0.719855f, 0.685884f, 0.466074f, 0.68962f, 0.459733f, 0.676472f, 0.461489f, 0.667609f, 0.466927f, 0.66895f, 0.475722f, 0.651281f, 0.465795f, 0.644568f, 0.457814f, 0.649463f, 0.451839f, 0.657076f, 0.446187f, 0.643023f, 0.444364f, 0.631509f, 0.460856f, 0.623074f, 0.455426f, 0.614888f, 0.460916f, 0.603857f, 0.458192f, 0.599688f, 0.465383f, 0.584914f, 0.467906f, 0.58442f, 0.482539f, 0.588688f, 0.481348f, 0.582059f, 0.476733f, 0.622585f, 0.449754f, 0.614567f, 0.444693f, 0.730214f, 0.779399f, 0.772179f, 0.810189f, 0.61347f, 0.892325f, 0.520326f, 0.839307f, 0.523293f, 0.866304f, 0.522436f, 0.881656f, 0.556237f, 0.821496f, 0.520695f, 0.831293f, 0.58939f, 0.80136f, 0.591228f, 0.779711f, 0.600175f, 0.761157f, 0.572056f, 0.737037f, 0.567836f, 0.480864f, 0.597775f, 0.453786f, 0.588029f, 0.458067f, 0.566855f, 0.471259f, 0.563268f, 0.487931f, 0.600892f, 0.44704f, 0.57425f, 0.454538f, 0.623327f, 0.435087f, 0.636631f, 0.43468f, 0.610026f, 0.437353f, 0.580749f, 0.445098f, 0.595565f, 0.441027f, 0.55188f, 0.46275f, 0.581451f, 0.434868f, 0.607605f, 0.422881f, 0.637592f, 0.42178f, 0.64967f, 0.434868f, 0.681001f, 0.4505f, 0.6923f, 0.451312f, 0.604125f, 0.400386f, 0.637785f, 0.397757f, 0.67372f, 0.406863f, 0.572283f, 0.41414f, 0.817546f, 0.545366f, 0.572126f, 0.703662f, 0.553176f, 0.680298f, 0.53203f, 0.684733f, 0.530589f, 0.697145f, 0.547977f, 0.688259f, 0.558698f, 0.702779f, 0.511544f, 0.683445f, 0.53574f, 0.735911f, 0.571058f, 0.675847f, 0.617726f, 0.660591f, 0.589941f, 0.863304f, 0.565882f, 0.661904f, 0.591785f, 0.655023f, 0.519223f, 0.62159f, 0.610999f, 0.506291f, 0.662371f, 0.436073f, 0.700045f, 0.41859f, 0.698342f, 0.442127f, 0.578381f, 0.382665f, 0.527943f, 0.706567f, 0.563841f, 0.709203f, 0.568847f, 0.707162f, 0.513742f, 0.720733f};
    }

    public static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final short[] f25555a = {1149, 1127, 930, 1592, 1789, 1811, 696, 694, 1163, 1825, 1356, 1358, 1160, 1154, 1159, 1821, 1816, 1822, 1159, 1152, 691, 1353, 1814, 1821, 1132, 1133, 824, 1486, 1795, 1794, 676, 1042, 1034, 1696, 1704, 1338, 1142, 1072, 1141, 1803, 1734, 1804, 1158, 663, 696, 1358, 663, 1820, 691, 645, 663, 663, 645, 1353, 1132, 824, 1131, 1793, 1486, 1794, 835, 931, 1311, 1973, 1593, 1497, 667, 699, 926, 1588, 1361, 667, 699, 52, 926, 1588, 53, 1361, 1012, 49, 702, 1364, 50, 1674, 1011, 702, 697, 1359, 1364, 1673, 44, 956, 933, 1595, 1618, 47, 828, 670, 1317, 1979, 670, 1490, 37, 835, 700, 1362, 1497, 41, 931, 698, 841, 1503, 1360, 1593, 698, 931, 37, 41, 1593, 1360, 835, 933, 700, 1362, 1595, 1497, 830, 932, 52, 53, 1594, 1492, 1333, 699, 667, 667, 1361, 1995, 1318, 699, 1333, 1995, 1361, 1980, 699, 1318, 52, 53, 1980, 1361, 829, 697, 702, 1364, 1359, 1491, 1318, 829, 702, 1364, 1491, 1980, 831, 830, 955, 1617, 1492, 1493, 702, 49, 830, 1492, 50, 1364, 704, 832, 1315, 1977, 1494, 1366, 832, 674, 1314, 1976, 1336, 1494, 1316, 674, 832, 1494, 1336, 1978, 1253, 703, 833, 1495, 1365, 1915, 833, 865, 1253, 1915, 1527, 1495, 833, 703, 834, 1496, 1365, 1495, 834, 839, 833, 1495, 1501, 1496, 1015, 834, 703, 1365, 1496, 1677, 1319, 42, 734, 1396, 43, 1981, 1009, 42, 1319, 1981, 43, 1671, 1009, 956, 44, 47, 1618, 1671, 1311, 704, 44, 47, 1366, 1973, 1311, 44, 835, 1497, 47, 1973, 1313, 45, 1315, 1977, 46, 1975, 1313, 1315, 1314, 1976, 1977, 1975, 865, 833, 836, 1498, 1495, 1527, 865, 836, 37, 41, 1498, 1527, 865, 37, 700, 1362, 41, 1527, 839, 698, 836, 1498, 1360, 1501, 698, 37, 836, 1498, 41, 1360, 839, 836, 833, 1495, 1498, 1501, 1011, 697, 1010, 1672, 1359, 1673, 1016, 51, 706, 1368, 54, 1678, 1016, 706, 1015, 1677, 1368, 1678, 1333, 656, 60, 60, 656, 1995, 1010, 61, 708, 1370, 62, 1672, 1330, 674, 58, 59, 1336, 1992, 1314, 674, 701, 1363, 1336, 1976, 674, 1330, 701, 1363, 1992, 1336, 931, 841, 837, 1499, 1503, 1593, 934, 829, 1333, 1995, 1491, 1596, 934, 61, 697, 1359, 62, 1596, 934, 697, 829, 1491, 1359, 1596, 707, 58, 705, 1367, 59, 1369, 838, 935, 834, 1496, 1597, 1500, 935, 55, 834, 1496, 57, 1597, 1331, 931, 837, 1499, 1593, 1993, 1332, 931, 1331, 1993, 1593, 1994, 58, 674, 1316, 1978, 1336, 59, 698, 839, 841, 1503, 1501, 1360, 839, 834, 55, 57, 1496, 1501, 839, 55, 841, 1503, 57, 1501, 1010, 708, 706, 1368, 1370, 1672, 1017, 708, 936, 1598, 1370, 1679, 708, 1017, 706, 1368, 1679, 1370, 1015, 703, 1016, 1678, 1365, 1677, 934, 709, 928, 1590, 1371, 1596, 935, 939, 55, 57, 1601, 1597, 939, 938, 55, 57, 1600, 1601, 1330, 58, 940, 1602, 59, 1992, 941, 657, 56, 56, 657, 1603, 840, 1330, 941, 1603, 1992, 1502, 837, 943, 1331, 1993, 1605, 1499, 837, 841, 943, 1605, 1503, 1499, 934, 928, 937, 1599, 1590, 1596, 934, 937, 61, 62, 1599, 1596, 61, 937, 708, 1370, 1599, 62, 1017, 936, 945, 1607, 1598, 1679, 1331, 943, 942, 1604, 1605, 1993, 942, 944, 707, 1369, 1606, 1604, 707, 944, 940, 1602, 1606, 1369, 707, 940, 58, 59, 1602, 1369, 935, 838, 939, 1601, 1500, 1597, 838, 1017, 945, 1607, 1679, 1500, 840, 941, 56, 56, 1603, 1502, 840, 56, 701, 1363, 56, 1502, 943, 841, 938, 1600, 1503, 1605, 938, 841, 55, 57, 1503, 1600, 838, 945, 939, 1601, 1607, 1500, 936, 708, 937, 1599, 1370, 1598, 842, 33, 852, 1514, 33, 1504, 710, 650, 651, 651, 650, 1372, 642, 30, 820, 1482, 30, 642, 947, 843, 845, 1507, 1505, 1609, 852, 33, 650, 650, 33, 1514, 852, 650, 710, 1372, 650, 1514, 946, 720, 947, 1609, 1382, 1608, 820, 30, 950, 1612, 30, 1482, 845, 946, 947, 1609, 1608, 1507, 712, 946, 845, 1507, 1608, 1374, 712, 845, 723, 1385, 1507, 1374, 641, 29, 716, 1378, 29, 641, 1240, 1225, 1224, 1886, 1887, 1902, 713, 844, 711, 1373, 1506, 1375, 714, 846, 711, 1373, 1508, 1376, 714, 711, 844, 1506, 1373, 1376, 929, 31, 820, 1482, 31, 1591, 847, 845, 843, 1505, 1507, 1509, 847, 843, 846, 1508, 1505, 1509, 715, 723, 845, 1507, 1385, 1377, 715, 845, 847, 1509, 1507, 1377, 715, 847, 714, 1376, 1509, 1377, 847, 846, 714, 1376, 1508, 1509, 715, 714, 727, 1389, 1376, 1377, 713, 950, 716, 1378, 1612, 1375, 711, 950, 713, 1375, 1612, 1373, 848, 711, 846, 1508, 1373, 1510, 848, 950, 711, 1373, 1612, 1510, 843, 717, 848, 1510, 1379, 1505, 843, 848, 846, 1508, 1510, 1505, 947, 948, 843, 1505, 1610, 1609, 849, 850, 947, 1609, 1512, 1511, 849, 856, 850, 1512, 1518, 1511, 947, 850, 948, 1610, 1512, 1609, 717, 820, 848, 1510, 1482, 1379, 718, 717, 843, 1505, 1379, 1380, 718, 843, 948, 1610, 1505, 1380, 718, 948, 851, 1513, 1610, 1380, 30, 641, 950, 1612, 641, 30, 717, 929, 820, 1482, 1591, 1379, 848, 820, 950, 1612, 1482, 1510, 1324, 718, 854, 1516, 1380, 1986, 718, 929, 717, 1379, 1591, 1380, 718, 851, 854, 1516, 1513, 1380, 1324, 854, 710, 1372, 1516, 1986, 1324, 710, 651, 651, 1372, 1986, 850, 949, 948, 1610, 1611, 1512, 949, 851, 948, 1610, 1513, 1611, 719, 855, 720, 1382, 1517, 1381, 719, 720, 946, 1608, 1382, 1381, 951, 721, 842, 1504, 1383, 1613, 951, 842, 852, 1514, 1504, 1613, 951, 852, 710, 1372, 1514, 1613, 719, 853, 32, 34, 1515, 1381, 719, 32, 855, 1517, 34, 1381, 719, 946, 857, 1519, 1608, 1381, 720, 855, 849, 1511, 1517, 1382, 720, 849, 947, 1609, 1511, 1382, 949, 951, 854, 1516, 1613, 1611, 951, 710, 854, 1516, 1372, 1613, 949, 854, 851, 1513, 1516, 1611, 722, 724, 721, 1383, 1386, 1384, 724, 842, 721, 1383, 1504, 1386, 951, 949, 952, 1614, 1611, 1613, 951, 952, 721, 1383, 1614, 1613, 722, 721, 856, 1518, 1383, 1384, 32, 722, 855, 1517, 1384, 34, 855, 722, 856, 1518, 
        1384, 1517, 952, 850, 856, 1518, 1512, 1614, 952, 949, 850, 1512, 1611, 1614, 856, 721, 952, 1614, 1383, 1518, 849, 855, 856, 1518, 1517, 1511, 857, 853, 719, 1381, 1515, 1519, 857, 946, 858, 1520, 1608, 1519, 712, 858, 946, 1608, 1520, 1374, 712, 723, 35, 36, 1385, 1374, 1241, 1237, 1236, 1898, 1899, 1903, 723, 715, 726, 1388, 1377, 1385, 715, 727, 726, 1388, 1389, 1377, 723, 726, 35, 36, 1388, 1385, 859, 32, 853, 1515, 34, 1521, 724, 722, 1232, 1894, 1384, 1386, 722, 32, 859, 1521, 34, 1384, 725, 33, 842, 1504, 33, 1387, 725, 842, 724, 1386, 1504, 1387, 1229, 666, 725, 1387, 666, 1891, 857, 953, 853, 1515, 1615, 1519, 857, 858, 954, 1616, 1520, 1519, 859, 853, 953, 1615, 1515, 1521, 954, 858, 712, 1374, 1520, 1616, 954, 712, 35, 36, 1374, 1616, 954, 863, 1245, 1907, 1525, 1616, 1243, 714, 1242, 1904, 1376, 1905, 35, 726, 962, 1624, 1388, 36, 35, 863, 954, 1616, 1525, 36, 728, 926, 932, 1594, 1588, 1390, 932, 926, 52, 53, 1588, 1594, 1013, 955, 1286, 1948, 1617, 1675, 835, 44, 933, 1595, 47, 1497, 729, 736, 1014, 1676, 1398, 1391, 1278, 627, 1282, 1944, 627, 1940, 292, 184, 455, 623, 184, 460, 455, 184, 71, 71, 184, 623, 71, 185, 455, 623, 185, 71, 68, 416, 169, 203, 584, 74, 294, 448, 69, 73, 616, 462, 294, 69, 177, 194, 73, 462, 294, 177, 295, 463, 194, 462, 144, 143, 296, 464, 232, 233, 144, 296, 145, 234, 464, 233, 730, 38, 866, 1528, 40, 1392, 933, 956, 961, 1623, 1618, 1595, 298, 389, 146, 235, 557, 466, 933, 961, 731, 1393, 1623, 1595, 933, 731, 700, 1362, 1393, 1595, 70, 300, 181, 187, 468, 72, 426, 70, 181, 187, 72, 594, 425, 70, 426, 594, 72, 593, 425, 426, 292, 460, 594, 593, 70, 182, 301, 469, 188, 72, 70, 301, 300, 468, 469, 72, 860, 652, 957, 1619, 652, 1522, 860, 957, 862, 1524, 1619, 1522, 831, 932, 830, 1492, 1594, 1493, 301, 421, 300, 468, 589, 469, 422, 69, 452, 620, 73, 590, 421, 301, 420, 588, 469, 589, 1283, 420, 350, 518, 588, 1945, 736, 729, 862, 1524, 1391, 1398, 830, 49, 955, 1617, 50, 1492, 159, 158, 303, 471, 216, 217, 158, 157, 303, 471, 215, 216, 302, 159, 303, 471, 217, 470, 739, 737, 1245, 1907, 1399, 1401, 1230, 734, 1312, 1974, 1396, 1892, 45, 673, 730, 1392, 1335, 46, 315, 400, 296, 464, 568, 483, 402, 297, 296, 464, 465, 570, 964, 865, 963, 1625, 1527, 1626, 865, 700, 963, 1625, 1362, 1527, 964, 958, 1252, 1914, 1620, 1626, 410, 444, 170, 204, 612, 578, 444, 411, 169, 203, 579, 612, 416, 68, 449, 617, 74, 584, 415, 416, 294, 462, 584, 583, 414, 351, 429, 597, 519, 582, 1005, 738, 868, 1530, 1400, 1667, 864, 1252, 958, 1620, 1914, 1526, 1012, 702, 1011, 1673, 1364, 1674, 862, 957, 932, 1594, 1619, 1524, 862, 932, 831, 1493, 1594, 1524, 653, 728, 957, 1619, 1390, 653, 728, 932, 957, 1619, 1594, 1390, 1232, 859, 1233, 1895, 1521, 1894, 735, 867, 737, 1399, 1529, 1397, 1323, 959, 735, 1397, 1621, 1985, 1230, 45, 730, 1392, 46, 1892, 963, 700, 731, 1393, 1362, 1625, 964, 868, 958, 1620, 1530, 1626, 964, 963, 868, 1530, 1625, 1626, 1286, 955, 1012, 1674, 1617, 1948, 736, 955, 1013, 1675, 1617, 1398, 831, 955, 736, 1398, 1617, 1493, 831, 736, 862, 1524, 1398, 1493, 652, 653, 957, 1619, 653, 652, 652, 860, 639, 639, 1522, 652, 953, 857, 867, 1529, 1519, 1615, 1323, 735, 737, 1399, 1397, 1985, 1245, 737, 867, 1529, 1399, 1907, 1245, 867, 857, 1519, 1529, 1907, 737, 739, 1244, 1906, 1401, 1399, 1006, 305, 1246, 1908, 473, 1668, 1248, 1006, 1246, 1908, 1668, 1910, 362, 1247, 868, 1530, 1909, 530, 738, 958, 868, 1530, 1620, 1400, 1251, 729, 1014, 1676, 1391, 1913, 860, 862, 729, 1391, 1524, 1522, 860, 729, 732, 1394, 1391, 1522, 860, 732, 861, 1523, 1394, 1522, 639, 860, 861, 1523, 1522, 639, 962, 863, 35, 36, 1525, 1624, 962, 739, 863, 1525, 1401, 1624, 739, 962, 741, 1403, 1624, 1401, 299, 396, 355, 523, 564, 467, 684, 1320, 740, 1402, 1982, 1346, 1284, 683, 348, 516, 1345, 1946, 1284, 348, 1283, 1945, 516, 1946, 1283, 350, 1281, 1943, 518, 1945, 183, 425, 427, 595, 593, 189, 288, 293, 185, 185, 461, 288, 427, 1278, 1282, 1944, 1940, 595, 733, 741, 962, 1624, 1403, 1395, 1235, 685, 388, 556, 1347, 1897, 388, 685, 386, 554, 1347, 556, 415, 295, 414, 582, 463, 583, 178, 295, 177, 194, 463, 195, 1285, 683, 1284, 1946, 1345, 1947, 350, 301, 183, 189, 469, 518, 421, 178, 177, 194, 195, 589, 139, 138, 307, 475, 227, 228, 139, 308, 140, 229, 476, 228, 311, 393, 309, 477, 561, 479, 310, 309, 393, 561, 477, 478, 124, 309, 310, 478, 477, 244, 446, 335, 413, 581, 503, 614, 313, 154, 446, 614, 212, 481, 398, 307, 399, 567, 475, 566, 314, 129, 128, 248, 249, 482, 389, 436, 144, 233, 604, 557, 142, 141, 315, 483, 230, 231, 142, 315, 143, 232, 483, 231, 315, 296, 143, 232, 464, 483, 400, 315, 439, 607, 483, 568, 67, 316, 157, 215, 484, 75, 67, 156, 316, 484, 214, 75, 303, 157, 316, 484, 215, 471, 303, 316, 412, 580, 484, 471, 412, 411, 303, 471, 579, 580, 417, 167, 450, 618, 201, 585, 68, 168, 449, 617, 202, 74, 449, 294, 416, 584, 462, 617, 448, 294, 449, 617, 462, 616, 69, 448, 176, 193, 616, 73, 452, 176, 175, 591, 192, 620, 69, 176, 452, 620, 193, 73, 180, 181, 453, 621, 187, 186, 453, 181, 300, 468, 187, 621, 125, 65, 437, 605, 77, 245, 66, 140, 308, 476, 229, 76, 439, 66, 308, 476, 76, 607, 66, 439, 141, 230, 607, 76, 66, 141, 395, 563, 230, 76, 437, 395, 390, 558, 563, 605, 394, 139, 140, 229, 228, 562, 400, 398, 
        156, 214, 566, 568, 398, 154, 155, 213, 212, 566, 154, 313, 155, 213, 481, 212, 167, 166, 450, 618, 200, 201, 313, 412, 316, 484, 580, 481, 445, 165, 166, 200, 199, 613, 451, 317, 450, 618, 485, 619, 452, 423, 682, 1344, 591, 620, 454, 1321, 423, 591, 1983, 622, 635, 1280, 681, 1343, 1942, 635, 919, 1226, 716, 1378, 1888, 1581, 1226, 919, 1219, 1881, 1581, 1888, 1221, 1207, 1220, 1882, 1869, 1883, 298, 438, 389, 557, 606, 466, 1220, 1234, 1221, 1883, 1896, 1882, 1220, 971, 1202, 1864, 1633, 1882, 346, 384, 345, 513, 552, 514, 382, 124, 433, 601, 244, 550, 779, 744, 974, 1636, 1406, 1441, 744, 779, 983, 1645, 1441, 1406, 777, 1046, 748, 1410, 1708, 1439, 786, 11, 1268, 1930, 24, 1448, 760, 6, 968, 1630, 20, 1422, 870, 1258, 787, 1449, 1920, 1532, 672, 787, 970, 1632, 1449, 1334, 672, 970, 980, 1642, 1632, 1334, 672, 759, 5, 21, 1421, 1334, 759, 874, 5, 21, 1536, 1421, 1209, 1208, 743, 1405, 1870, 1871, 776, 972, 873, 1535, 1634, 1438, 751, 774, 1260, 1922, 1436, 1413, 1064, 1305, 888, 1550, 1967, 1726, 339, 377, 340, 508, 545, 507, 969, 762, 870, 1532, 1424, 1631, 760, 975, 967, 1629, 1637, 1422, 786, 766, 965, 1627, 1428, 1448, 755, 973, 894, 1556, 1635, 1417, 779, 755, 9, 23, 1417, 1441, 756, 1215, 1192, 1854, 1877, 1418, 880, 979, 745, 1407, 1641, 1542, 1046, 757, 746, 1408, 1419, 1708, 759, 672, 980, 1642, 1334, 1421, 5, 874, 758, 1420, 1536, 21, 980, 874, 759, 1421, 1536, 1642, 1272, 966, 872, 1534, 1628, 1934, 1268, 966, 750, 1412, 1628, 1930, 981, 873, 1215, 1877, 1535, 1643, 744, 873, 974, 1636, 1535, 1406, 770, 761, 877, 1539, 1423, 1432, 1258, 762, 1257, 1919, 1424, 1920, 1067, 1068, 773, 1435, 1730, 1729, 1258, 752, 980, 1642, 1414, 1920, 1264, 968, 1265, 1927, 1630, 1926, 1291, 974, 972, 1634, 1636, 1953, 873, 972, 974, 1636, 1634, 1535, 779, 974, 1291, 1953, 1636, 1441, 1214, 756, 1213, 1875, 1418, 1876, 875, 756, 1192, 1854, 1418, 1537, 1057, 871, 763, 1425, 1533, 1719, 1299, 977, 1290, 1952, 1639, 1961, 1287, 764, 973, 1635, 1426, 1949, 1272, 872, 747, 1409, 1534, 1934, 1269, 764, 775, 1437, 1426, 1931, 1272, 747, 973, 1635, 1409, 1934, 872, 966, 11, 24, 1628, 1534, 1292, 1274, 978, 1640, 1936, 1954, 1267, 766, 1268, 1930, 1428, 1929, 1266, 766, 765, 1427, 1428, 1928, 785, 965, 766, 1428, 1627, 1447, 1266, 765, 1265, 1927, 1427, 1928, 785, 968, 6, 20, 1630, 1447, 1256, 1254, 773, 1435, 1916, 1918, 1304, 1255, 1256, 1918, 1917, 1966, 1257, 768, 782, 1444, 1430, 1919, 1259, 768, 762, 1424, 1430, 1921, 1259, 762, 969, 1631, 1424, 1921, 10, 967, 975, 1637, 1629, 25, 10, 1259, 969, 1631, 1921, 25, 1191, 982, 1208, 1870, 1644, 1853, 1192, 769, 875, 1537, 1431, 1854, 876, 771, 769, 1431, 1433, 1538, 771, 895, 1185, 1847, 1557, 1433, 1205, 982, 1187, 1849, 1644, 1867, 979, 770, 745, 1407, 1432, 1641, 1206, 1187, 1189, 1851, 1849, 1868, 770, 877, 745, 1407, 1539, 1432, 771, 877, 761, 1423, 1539, 1433, 1199, 1007, 686, 1348, 1669, 1861, 878, 1189, 879, 1541, 1851, 1540, 1180, 880, 789, 1451, 1542, 1842, 748, 1059, 777, 1439, 1721, 1410, 1204, 882, 1188, 1850, 1544, 1866, 1179, 1190, 881, 1543, 1852, 1841, 379, 99, 378, 546, 287, 547, 878, 879, 1204, 1866, 1541, 1540, 358, 99, 379, 547, 287, 526, 1199, 686, 432, 600, 1348, 1861, 95, 340, 377, 545, 508, 283, 1066, 773, 1254, 1916, 1435, 1728, 1257, 1256, 752, 1435, 1918, 1414, 1305, 1255, 1304, 1966, 1917, 1967, 1065, 1066, 1254, 1916, 1728, 1727, 1260, 1261, 768, 1430, 1923, 1922, 782, 767, 1256, 1918, 1429, 1444, 774, 751, 1265, 1927, 1413, 1436, 774, 754, 1263, 1925, 1416, 1436, 1260, 768, 1259, 1921, 1430, 1922, 1273, 978, 1274, 1936, 1640, 1935, 1273, 754, 774, 1436, 1416, 1935, 1289, 750, 1269, 1931, 1412, 1951, 1290, 764, 1287, 1949, 1426, 1952, 1290, 883, 1299, 1961, 1545, 1952, 1269, 775, 1289, 1951, 1437, 1931, 972, 1217, 883, 1545, 1879, 1634, 972, 883, 1291, 1953, 1545, 1634, 776, 884, 780, 1442, 1546, 1438, 972, 776, 780, 1442, 1438, 1634, 972, 780, 976, 1638, 1442, 1634, 1214, 1213, 1212, 1874, 1875, 1876, 1235, 741, 733, 1395, 1403, 1897, 320, 115, 116, 268, 267, 488, 346, 345, 113, 265, 513, 514, 1059, 748, 891, 1553, 1410, 1721, 744, 983, 7, 19, 1645, 1406, 1181, 876, 1192, 1854, 1538, 1843, 1216, 790, 893, 1555, 1452, 1878, 790, 7, 983, 1645, 19, 1452, 342, 340, 94, 282, 508, 510, 1211, 780, 884, 1546, 1442, 1873, 780, 885, 976, 1638, 1547, 1442, 984, 976, 886, 1548, 1638, 1646, 885, 28, 886, 1548, 28, 1547, 1299, 883, 984, 1646, 1545, 1961, 1292, 978, 1288, 1950, 1640, 1954, 782, 1256, 1257, 1919, 1918, 1444, 1295, 1294, 80, 81, 1956, 1957, 886, 781, 984, 1646, 1443, 1548, 886, 976, 885, 1547, 1638, 1548, 1075, 783, 4, 14, 1445, 1737, 640, 1104, 784, 1446, 1766, 640, 784, 1121, 781, 1443, 1783, 1446, 784, 781, 886, 1548, 1443, 1446, 886, 655, 629, 629, 655, 1548, 745, 986, 880, 1542, 1648, 1407, 1177, 1061, 1179, 1841, 1723, 1839, 11, 897, 872, 1534, 1559, 24, 897, 1271, 872, 1534, 1933, 1559, 967, 10, 899, 1561, 25, 1629, 758, 1059, 891, 1553, 1721, 1420, 672, 796, 901, 1563, 1458, 1334, 786, 965, 898, 1560, 1627, 1448, 967, 899, 760, 1422, 1561, 1629, 870, 787, 799, 1461, 1449, 1532, 876, 788, 895, 1557, 1450, 1538, 788, 893, 905, 1567, 1555, 1450, 893, 988, 905, 1567, 1650, 1555, 876, 895, 771, 1433, 1557, 1538, 745, 889, 986, 1648, 1551, 1407, 1180, 789, 1175, 1837, 1451, 1842, 1174, 789, 880, 1542, 1451, 1836, 1175, 881, 1180, 1842, 1543, 1837, 748, 746, 1061, 1723, 1408, 1410, 748, 892, 891, 1553, 1554, 1410, 892, 800, 891, 1553, 1462, 1554, 5, 890, 796, 1458, 1552, 21, 1061, 892, 748, 1410, 1554, 1723, 790, 983, 801, 1463, 1645, 1452, 
        983, 9, 801, 1463, 23, 1645, 790, 801, 988, 1650, 1463, 1452, 1216, 893, 1181, 1843, 1555, 1878, 894, 973, 747, 1409, 1635, 1556, 894, 747, 987, 1649, 1409, 1556, 894, 9, 755, 1417, 23, 1556, 9, 983, 779, 1441, 1645, 23, 1184, 791, 1185, 1847, 1453, 1846, 1185, 895, 1184, 1846, 1557, 1847, 792, 986, 8, 22, 1648, 1454, 8, 986, 889, 1551, 1648, 22, 1270, 793, 747, 1409, 1455, 1932, 872, 1270, 747, 1409, 1932, 1534, 794, 785, 900, 1562, 1447, 1456, 794, 898, 785, 1447, 1560, 1456, 900, 785, 6, 20, 1447, 1562, 795, 10, 902, 1564, 25, 1457, 795, 899, 10, 25, 1561, 1457, 902, 10, 969, 1631, 25, 1564, 796, 672, 5, 21, 1334, 1458, 672, 901, 787, 1449, 1563, 1334, 797, 786, 898, 1560, 1448, 1459, 965, 785, 898, 1560, 1447, 1627, 797, 897, 786, 1448, 1559, 1459, 897, 11, 786, 1448, 24, 1559, 798, 760, 899, 1561, 1422, 1460, 798, 900, 760, 1422, 1562, 1460, 900, 6, 760, 1422, 20, 1562, 799, 787, 901, 1563, 1449, 1461, 799, 902, 870, 1532, 1564, 1461, 902, 969, 870, 1532, 1631, 1564, 905, 12, 788, 1450, 27, 1567, 12, 895, 788, 1450, 1557, 27, 1183, 791, 1195, 1857, 1453, 1845, 1325, 1182, 877, 1539, 1844, 1987, 1173, 13, 789, 1451, 26, 1835, 1176, 13, 1019, 1681, 26, 1838, 1175, 789, 13, 26, 1451, 1837, 5, 758, 890, 1552, 1420, 21, 890, 891, 800, 1462, 1553, 1552, 1178, 800, 892, 1554, 1462, 1840, 1177, 904, 896, 1558, 1566, 1839, 988, 801, 1193, 1855, 1463, 1650, 790, 988, 893, 1555, 1650, 1452, 802, 894, 987, 1649, 1556, 1464, 802, 987, 793, 1455, 1649, 1464, 802, 9, 894, 1556, 23, 1464, 1309, 4, 822, 1484, 14, 1971, 906, 1107, 804, 1466, 1769, 1568, 1094, 2, 1095, 1757, 16, 1756, 1103, 1096, 630, 630, 1758, 1765, 341, 375, 342, 510, 543, 509, 930, 805, 1149, 1811, 1467, 1592, 1123, 1122, 1131, 1793, 1784, 1785, 1115, 906, 1114, 1776, 1568, 1777, 661, 1122, 644, 644, 1784, 661, 1105, 1103, 630, 630, 1765, 1767, 907, 990, 991, 1653, 1652, 1569, 910, 1198, 909, 1571, 1860, 1572, 908, 909, 82, 270, 1571, 1570, 808, 1198, 992, 1654, 1860, 1470, 370, 1003, 100, 252, 1665, 538, 1310, 1003, 677, 1339, 1665, 1972, 908, 689, 909, 1571, 1351, 1570, 809, 991, 910, 1572, 1653, 1471, 992, 991, 990, 1652, 1653, 1654, 808, 992, 993, 1655, 1654, 1470, 993, 992, 990, 1652, 1654, 1655, 993, 990, 913, 1575, 1652, 1655, 993, 989, 808, 1470, 1651, 1655, 813, 995, 989, 1651, 1657, 1475, 813, 994, 995, 1657, 1656, 1475, 989, 995, 808, 1470, 1657, 1651, 807, 810, 118, 238, 1472, 1469, 812, 810, 911, 1573, 1472, 1474, 812, 811, 1002, 1664, 1473, 1474, 813, 811, 911, 1573, 1473, 1475, 994, 813, 911, 1573, 1475, 1656, 994, 911, 810, 1472, 1573, 1656, 994, 810, 807, 1469, 1472, 1656, 380, 100, 1003, 1665, 252, 548, 370, 100, 344, 512, 252, 538, 810, 812, 118, 238, 1474, 1472, 991, 809, 907, 1569, 1471, 1653, 913, 914, 993, 1655, 1576, 1575, 907, 913, 990, 1652, 1575, 1569, 914, 989, 993, 1655, 1651, 1576, 407, 102, 101, 253, 254, 575, 118, 812, 325, 493, 1474, 238, 343, 84, 83, 271, 272, 511, 322, 103, 102, 254, 255, 490, 689, 809, 910, 1572, 1471, 1351, 689, 912, 809, 1471, 1574, 1351, 322, 407, 381, 549, 575, 490, 120, 381, 323, 491, 549, 240, 119, 118, 406, 574, 238, 239, 457, 324, 87, 275, 492, 625, 374, 343, 344, 512, 511, 542, 913, 907, 912, 1574, 1569, 1575, 915, 813, 914, 1576, 1475, 1577, 914, 813, 989, 1651, 1475, 1576, 915, 1002, 811, 1473, 1664, 1577, 807, 995, 994, 1656, 1657, 1469, 811, 813, 915, 1577, 1475, 1473, 457, 87, 86, 274, 275, 625, 457, 86, 85, 273, 274, 625, 343, 85, 84, 272, 273, 511, 915, 1250, 1002, 1664, 1912, 1577, 133, 132, 441, 609, 221, 222, 333, 1249, 328, 496, 1911, 501, 333, 328, 132, 221, 496, 501, 325, 333, 405, 573, 501, 493, 1250, 915, 1168, 1830, 1577, 1912, 997, 1168, 915, 1577, 1830, 1659, 366, 85, 86, 274, 273, 534, 441, 132, 328, 496, 221, 609, 329, 134, 441, 609, 223, 497, 328, 996, 440, 608, 1658, 496, 85, 366, 326, 494, 534, 273, 322, 434, 104, 256, 602, 490, 382, 435, 122, 242, 603, 550, 122, 121, 311, 479, 241, 242, 435, 381, 121, 241, 549, 603, 135, 134, 329, 497, 223, 224, 334, 135, 329, 497, 224, 502, 135, 136, 392, 560, 225, 224, 371, 89, 324, 492, 277, 539, 440, 404, 441, 497, 572, 609, 312, 150, 149, 207, 208, 480, 149, 331, 312, 480, 499, 207, 1275, 312, 675, 1337, 480, 1937, 996, 675, 331, 499, 1337, 1658, 997, 915, 914, 1576, 1577, 1659, 817, 1172, 1171, 1833, 1834, 1479, 916, 1085, 818, 1480, 1747, 1578, 693, 1165, 814, 1476, 1827, 1355, 1170, 916, 814, 1476, 1578, 1832, 1170, 819, 631, 631, 1481, 1832, 916, 1170, 815, 1477, 1832, 1578, 908, 82, 367, 535, 270, 1570, 814, 1165, 816, 1478, 1827, 1476, 815, 1170, 633, 633, 1832, 1477, 1170, 631, 634, 634, 631, 1832, 1164, 819, 816, 1478, 1481, 1826, 1164, 816, 1163, 1825, 1478, 1826, 365, 327, 89, 277, 495, 533, 371, 330, 341, 509, 498, 539, 373, 341, 330, 498, 509, 541, 108, 373, 330, 498, 541, 260, 330, 106, 107, 259, 258, 498, 382, 123, 124, 244, 243, 550, 290, 108, 107, 259, 260, 458, 392, 393, 311, 479, 561, 560, 137, 136, 334, 502, 225, 226, 137, 307, 138, 227, 475, 226, 137, 138, 393, 561, 227, 226, 334, 403, 307, 475, 571, 502, 399, 307, 403, 571, 475, 567, 312, 335, 150, 208, 503, 480, 950, 641, 716, 1378, 641, 1612, 1218, 919, 646, 646, 1581, 1880, 1219, 1211, 1226, 1888, 1873, 1881, 1219, 919, 1218, 1880, 1581, 1881, 1211, 884, 920, 1582, 1546, 1873, 749, 1213, 1210, 1872, 1875, 1411, 1237, 742, 1236, 1898, 1404, 1899, 386, 357, 431, 599, 
        525, 554, 383, 384, 346, 514, 552, 551, 291, 433, 383, 551, 601, 459, 291, 319, 109, 261, 487, 459, 998, 1172, 632, 632, 1834, 1660, 998, 632, 665, 665, 632, 1660, 1168, 1171, 998, 1660, 1833, 1830, 921, 923, 1000, 1662, 1585, 1583, 921, 1000, 1276, 1938, 1662, 1583, 1000, 924, 1276, 1938, 1586, 1662, 821, 924, 688, 1350, 1586, 1483, 924, 1001, 688, 1350, 1663, 1586, 1277, 922, 424, 592, 1584, 1939, 681, 922, 635, 635, 1584, 1343, 635, 922, 658, 658, 1584, 635, 662, 1150, 647, 647, 1812, 662, 667, 926, 48, 48, 1588, 667, 1333, 60, 709, 1371, 60, 1995, 649, 928, 709, 1371, 1590, 649, 709, 60, 649, 649, 60, 1371, 31, 642, 820, 1482, 642, 31, 671, 666, 1229, 1891, 666, 671, 638, 48, 926, 1588, 48, 638, 638, 926, 728, 1390, 1588, 638, 638, 728, 653, 653, 1390, 638, 668, 927, 925, 1587, 1589, 668, 1103, 1105, 1102, 1764, 1767, 1765, 442, 443, 405, 573, 611, 610, 405, 333, 132, 221, 501, 573, 334, 136, 135, 224, 225, 502, 334, 329, 403, 571, 497, 502, 331, 675, 312, 480, 1337, 499, 404, 149, 150, 208, 207, 572, 335, 446, 152, 210, 614, 503, 335, 152, 151, 209, 210, 503, 437, 390, 126, 246, 558, 605, 394, 310, 393, 561, 478, 562, 383, 433, 125, 245, 601, 551, 433, 65, 125, 245, 77, 601, 311, 309, 122, 242, 477, 479, 291, 383, 319, 487, 551, 459, 336, 120, 119, 239, 240, 504, 435, 121, 122, 242, 241, 603, 443, 406, 405, 573, 574, 611, 443, 391, 336, 504, 559, 611, 1002, 333, 325, 493, 501, 1664, 812, 911, 811, 1473, 1573, 1474, 1002, 325, 812, 1474, 493, 1664, 345, 114, 113, 265, 266, 513, 357, 386, 685, 1347, 554, 525, 383, 346, 319, 487, 514, 551, 346, 112, 111, 263, 264, 514, 319, 110, 109, 261, 262, 487, 104, 103, 322, 490, 255, 256, 434, 290, 106, 258, 458, 602, 434, 105, 104, 256, 257, 602, 372, 104, 105, 257, 256, 540, 344, 101, 102, 254, 253, 512, 380, 1003, 807, 1469, 1665, 548, 377, 96, 95, 283, 284, 545, 342, 94, 93, 281, 282, 510, 341, 342, 92, 280, 510, 509, 341, 92, 63, 79, 280, 509, 90, 371, 91, 279, 539, 278, 341, 91, 371, 539, 279, 509, 378, 98, 97, 285, 286, 546, 364, 91, 63, 79, 279, 532, 327, 87, 88, 276, 275, 495, 367, 82, 83, 271, 270, 535, 339, 113, 114, 266, 265, 507, 376, 340, 375, 543, 508, 544, 376, 111, 112, 264, 263, 544, 373, 108, 64, 78, 260, 541, 375, 109, 110, 262, 261, 543, 374, 102, 103, 255, 254, 542, 344, 102, 374, 542, 254, 512, 369, 677, 370, 538, 1339, 537, 369, 83, 82, 270, 271, 537, 384, 126, 127, 247, 246, 552, 385, 345, 384, 552, 513, 553, 1198, 677, 909, 1571, 1339, 1860, 380, 807, 361, 529, 1469, 548, 680, 419, 688, 1350, 587, 1342, 447, 413, 335, 503, 581, 615, 174, 175, 317, 485, 192, 191, 682, 1321, 318, 486, 1983, 1344, 173, 174, 451, 619, 191, 190, 450, 418, 347, 515, 586, 618, 680, 688, 1001, 1663, 1350, 1342, 821, 688, 1275, 1937, 1350, 1483, 1275, 675, 821, 1483, 1337, 1937, 349, 680, 1277, 1939, 1342, 517, 418, 165, 164, 198, 199, 586, 424, 173, 349, 517, 190, 592, 419, 163, 332, 500, 197, 587, 680, 349, 347, 515, 517, 1342, 419, 332, 688, 1350, 500, 587, 913, 912, 1004, 1666, 1574, 1575, 1169, 914, 913, 1575, 1576, 1831, 428, 1279, 426, 594, 1941, 596, 426, 181, 428, 596, 187, 594, 682, 318, 453, 621, 486, 1344, 423, 175, 174, 191, 192, 591, 183, 306, 350, 518, 474, 189, 183, 301, 182, 188, 469, 189, 1281, 350, 306, 474, 518, 1943, 420, 348, 179, 196, 516, 588, 178, 421, 420, 588, 589, 195, 178, 179, 351, 519, 196, 195, 349, 173, 347, 515, 190, 517, 444, 169, 170, 204, 203, 612, 172, 414, 429, 597, 582, 206, 408, 172, 304, 472, 206, 576, 170, 415, 171, 205, 583, 204, 414, 172, 171, 205, 206, 582, 351, 295, 178, 195, 463, 519, 351, 179, 348, 516, 196, 519, 429, 683, 1285, 1947, 1345, 597, 683, 351, 348, 516, 519, 1345, 302, 352, 161, 219, 520, 470, 409, 171, 172, 206, 205, 577, 160, 159, 302, 470, 217, 218, 160, 302, 161, 219, 470, 218, 353, 161, 162, 220, 219, 521, 162, 161, 352, 520, 219, 220, 1248, 868, 963, 1625, 1530, 1910, 353, 162, 362, 530, 220, 521, 362, 162, 352, 520, 220, 530, 148, 147, 305, 473, 236, 237, 305, 147, 297, 465, 236, 473, 146, 145, 297, 465, 234, 235, 146, 297, 147, 236, 465, 235, 396, 148, 397, 565, 237, 564, 397, 684, 396, 564, 1346, 565, 1006, 731, 961, 1623, 1393, 1668, 397, 1006, 961, 1623, 1668, 565, 323, 119, 120, 240, 239, 491, 407, 323, 381, 549, 491, 575, 430, 357, 116, 268, 525, 598, 385, 128, 129, 249, 248, 553, 299, 355, 131, 251, 523, 467, 1244, 741, 388, 556, 1403, 1906, 299, 131, 130, 250, 251, 467, 438, 129, 314, 482, 249, 606, 396, 298, 147, 236, 466, 564, 320, 339, 115, 267, 507, 488, 357, 117, 116, 268, 269, 525, 387, 356, 117, 269, 524, 555, 430, 115, 345, 513, 267, 598, 432, 356, 1199, 1861, 524, 600, 430, 116, 115, 267, 268, 598, 685, 387, 357, 525, 555, 1347, 378, 97, 377, 545, 285, 546, 339, 340, 376, 544, 508, 507, 378, 377, 339, 507, 545, 546, 320, 116, 432, 600, 268, 488, 379, 378, 686, 1348, 546, 547, 432, 686, 320, 488, 1348, 600, 1049, 1008, 772, 1434, 1670, 1711, 1040, 1039, 1025, 1687, 1701, 1702, 327, 366, 87, 275, 534, 495, 326, 83, 84, 272, 271, 494, 1009, 44, 704, 1366, 47, 1671, 1009, 704, 42, 43, 1366, 1671, 1010, 706, 1011, 1673, 1368, 1672, 1010, 697, 61, 62, 1359, 1672, 1011, 706, 51, 54, 1368, 1673, 1011, 51, 
        1012, 1674, 54, 1673, 1012, 51, 864, 1526, 54, 1674, 955, 49, 1012, 1674, 50, 1617, 1013, 864, 958, 1620, 1526, 1675, 1013, 1014, 736, 1398, 1676, 1675, 1251, 1014, 738, 1400, 1676, 1913, 1015, 706, 1017, 1679, 1368, 1677, 1015, 838, 834, 1496, 1500, 1677, 1252, 1016, 703, 1365, 1678, 1914, 1253, 865, 964, 1626, 1527, 1915, 1005, 868, 1247, 1909, 1530, 1667, 1017, 838, 1015, 1677, 1500, 1679, 1018, 1186, 1178, 1840, 1848, 1680, 1186, 903, 800, 1462, 1565, 1848, 1178, 1177, 896, 1558, 1839, 1840, 1176, 1197, 896, 1558, 1859, 1838, 1019, 1197, 1176, 1838, 1859, 1681, 1019, 13, 1196, 1858, 26, 1681, 1173, 1174, 986, 1648, 1836, 1835, 1020, 792, 8, 22, 1454, 1682, 1021, 1020, 8, 22, 1682, 1683, 1183, 1195, 8, 22, 1857, 1845, 1022, 1195, 791, 1453, 1857, 1684, 1022, 791, 1184, 1846, 1453, 1684, 1184, 895, 12, 27, 1557, 1846, 1023, 12, 905, 1567, 27, 1685, 1023, 905, 1024, 1686, 1567, 1685, 988, 1193, 1024, 1686, 1855, 1650, 1024, 905, 988, 1650, 1567, 1686, 802, 1193, 801, 1463, 1855, 1464, 1064, 888, 1025, 1687, 1550, 1726, 1050, 1026, 1028, 1690, 1688, 1712, 1063, 1026, 1050, 1712, 1688, 1725, 826, 1036, 1055, 1717, 1698, 1488, 1050, 1028, 1040, 1702, 1690, 1712, 826, 1055, 1139, 1801, 1717, 1488, 1030, 1051, 1032, 1694, 1713, 1692, 1062, 1052, 1051, 1713, 1714, 1724, 676, 1035, 1042, 1704, 1697, 1338, 1032, 1051, 1052, 1714, 1713, 1694, 1057, 1047, 874, 1536, 1709, 1719, 1041, 1038, 1008, 1670, 1700, 1703, 1041, 1008, 1049, 1711, 1670, 1703, 1049, 772, 1064, 1726, 1434, 1711, 1040, 1025, 1050, 1712, 1687, 1702, 368, 98, 99, 287, 286, 536, 363, 337, 98, 286, 505, 531, 337, 359, 97, 285, 527, 505, 359, 456, 96, 284, 624, 527, 360, 93, 94, 282, 281, 528, 338, 94, 95, 283, 282, 506, 1060, 1043, 359, 527, 1705, 1722, 360, 92, 93, 281, 280, 528, 364, 63, 92, 280, 79, 532, 365, 89, 90, 278, 277, 533, 365, 90, 91, 279, 278, 533, 326, 367, 83, 271, 535, 494, 1042, 908, 367, 535, 1570, 1704, 1042, 1035, 689, 1351, 1697, 1704, 359, 96, 97, 285, 284, 527, 337, 97, 98, 286, 285, 505, 363, 98, 368, 536, 286, 531, 321, 368, 99, 287, 536, 489, 321, 99, 358, 526, 287, 489, 778, 321, 358, 526, 489, 1440, 1037, 1065, 1008, 1670, 1727, 1699, 778, 1046, 777, 1439, 1708, 1440, 1137, 1053, 360, 528, 1715, 1799, 1047, 758, 874, 1536, 1420, 1709, 1045, 1058, 1048, 1710, 1720, 1707, 364, 678, 365, 533, 1340, 532, 1049, 1025, 1039, 1701, 1687, 1711, 1049, 1039, 1041, 1703, 1701, 1711, 1050, 1025, 888, 1550, 1687, 1712, 1050, 888, 1063, 1725, 1550, 1712, 327, 88, 89, 277, 276, 495, 1029, 1038, 1041, 1703, 1700, 1691, 1037, 1008, 1038, 1700, 1670, 1699, 1328, 1063, 888, 1550, 1725, 1990, 456, 359, 1043, 1705, 527, 624, 1027, 364, 1053, 1715, 532, 1689, 366, 86, 87, 275, 274, 534, 687, 1056, 1032, 1694, 1718, 1349, 326, 84, 85, 273, 272, 494, 1034, 1042, 367, 535, 1704, 1696, 1135, 1137, 338, 506, 1799, 1797, 1043, 1040, 1028, 1690, 1702, 1705, 1135, 338, 1043, 1705, 506, 1797, 1039, 1040, 1060, 1722, 1702, 1701, 1029, 1044, 337, 505, 1706, 1691, 1044, 1041, 1039, 1701, 1703, 1706, 1029, 1045, 1038, 1700, 1707, 1691, 1045, 368, 321, 489, 536, 1707, 763, 1047, 1057, 1719, 1709, 1425, 1057, 874, 1068, 1730, 1536, 1719, 1068, 874, 980, 1642, 1536, 1730, 1059, 758, 1047, 1709, 1420, 1721, 748, 1046, 746, 1408, 1708, 1410, 1029, 368, 1045, 1707, 536, 1691, 1136, 1028, 1026, 1688, 1690, 1798, 1139, 1026, 1063, 1725, 1688, 1801, 338, 1137, 360, 528, 1799, 506, 1029, 337, 363, 531, 505, 1691, 1029, 1041, 1044, 1706, 1703, 1691, 368, 1029, 363, 531, 1691, 536, 777, 1047, 763, 1425, 1709, 1439, 1059, 1047, 777, 1439, 1709, 1721, 1065, 772, 1008, 1670, 1434, 1727, 1037, 871, 1066, 1728, 1533, 1699, 359, 337, 1044, 1706, 505, 527, 1060, 359, 1044, 1706, 527, 1722, 456, 1043, 338, 506, 1705, 624, 1055, 1036, 1031, 1693, 1698, 1717, 777, 763, 1058, 1720, 1425, 1439, 1060, 1044, 1039, 1701, 1706, 1722, 1060, 1040, 1043, 1705, 1702, 1722, 1038, 1045, 1048, 1710, 1707, 1700, 763, 871, 1048, 1710, 1533, 1425, 763, 1048, 1058, 1720, 1710, 1425, 1045, 321, 1058, 1720, 489, 1707, 778, 1058, 321, 489, 1720, 1440, 778, 358, 757, 1419, 526, 1440, 778, 757, 1046, 1708, 1419, 1440, 777, 1058, 778, 1440, 1720, 1439, 1061, 746, 757, 1419, 1408, 1723, 1061, 757, 1179, 1841, 1419, 1723, 1038, 1048, 1037, 1699, 1710, 1700, 1031, 678, 1055, 1717, 1340, 1693, 1032, 1031, 1036, 1698, 1693, 1694, 1062, 690, 1138, 1800, 1352, 1724, 1062, 1138, 1034, 1696, 1800, 1724, 1138, 676, 1034, 1696, 1338, 1800, 1146, 1139, 1063, 1725, 1801, 1808, 1064, 1025, 1049, 1711, 1687, 1726, 1064, 772, 1255, 1917, 1434, 1726, 1065, 1037, 1066, 1728, 1699, 1727, 1067, 1066, 871, 1533, 1728, 1729, 1066, 1067, 773, 1435, 1729, 1728, 1067, 871, 1057, 1719, 1533, 1729, 1068, 980, 752, 1414, 1642, 1730, 1068, 752, 773, 1435, 1414, 1730, 1068, 1067, 1057, 1719, 1729, 1730};
    }

    public static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final short[] f25556a = {980, 970, 1258, 1920, 1632, 1642, 1144, 1145, 1071, 1733, 1807, 1806, 1070, 1145, 1069, 1731, 1807, 1732, 1143, 695, 1072, 1734, 1357, 1805, 1080, 827, 1081, 1743, 1489, 1742, 1138, 1073, 1140, 1802, 1735, 1800, 0, 1328, 803, 1465, 1990, 18, 1308, 0, 803, 1465, 18, 1970, 1307, 985, 1302, 1964, 1647, 1969, 887, 985, 1, 17, 1647, 1549, 1296, 1074, 1301, 1963, 1736, 1958, 1300, 1075, 4, 14, 1737, 1962, 1308, 803, 887, 1549, 1465, 1970, 1327, 0, 1077, 1739, 18, 1989, 887, 1, 1308, 1970, 17, 1549, 1306, 3, 1329, 1991, 15, 1968, 1301, 80, 1294, 1956, 81, 1963, 1093, 1307, 1094, 1756, 1969, 1755, 1302, 985, 1303, 1965, 1647, 1964, 1326, 985, 887, 1549, 1647, 1988, 1300, 4, 1309, 1971, 14, 1962, 1298, 1297, 1300, 1962, 1959, 1960, 1076, 1070, 1069, 1731, 1732, 1738, 1069, 1077, 1076, 1738, 1739, 1731, 1147, 1071, 1078, 1740, 1733, 1809, 1072, 1080, 1073, 1735, 1742, 1734, 827, 1112, 1091, 1753, 1774, 1489, 1042, 689, 908, 1570, 1351, 1704, 1140, 1084, 1082, 1744, 1746, 1802, 679, 1085, 1083, 1745, 1747, 1341, 1084, 1081, 1091, 1753, 1743, 1746, 1082, 818, 679, 1341, 1480, 1744, 1082, 679, 676, 1338, 1341, 1744, 1167, 1004, 1085, 1747, 1666, 1829, 1083, 1085, 912, 1574, 1747, 1745, 912, 1085, 1004, 1666, 1747, 1574, 679, 1083, 1035, 1697, 1745, 1341, 805, 1089, 1086, 1748, 1751, 1467, 1147, 1078, 1086, 1748, 1740, 1809, 1109, 1110, 1099, 1761, 1772, 1771, 1090, 1079, 1086, 1748, 1741, 1752, 827, 1080, 1090, 1752, 1742, 1489, 1111, 827, 1090, 1752, 1489, 1773, 827, 1091, 1081, 1743, 1753, 1489, 1100, 1093, 804, 1466, 1755, 1762, 804, 1094, 1101, 1763, 1756, 1466, 1102, 1106, 906, 1568, 1768, 1764, 1306, 1095, 2, 16, 1757, 1968, 1109, 1097, 1108, 1770, 1759, 1771, 1099, 1077, 1098, 1760, 1739, 1761, 1088, 1076, 1077, 1739, 1738, 1750, 1099, 1098, 1097, 1759, 1760, 1761, 906, 804, 1101, 1763, 1466, 1568, 1108, 1100, 804, 1466, 1762, 1770, 1101, 1094, 1095, 1757, 1756, 1763, 1102, 1101, 1095, 1757, 1763, 1764, 659, 630, 1096, 1758, 630, 659, 1329, 1095, 1306, 1968, 1757, 1991, 1307, 2, 1094, 1756, 16, 1969, 1098, 1077, 0, 18, 1739, 1760, 1092, 1, 1093, 1755, 17, 1754, 1098, 1308, 1092, 1754, 1970, 1760, 1104, 1096, 4, 14, 1758, 1766, 1103, 822, 1096, 1758, 1484, 1765, 1102, 822, 1103, 1765, 1484, 1764, 1329, 3, 822, 1484, 15, 1991, 804, 1093, 1094, 1756, 1755, 1466, 1100, 1092, 1093, 1755, 1754, 1762, 1097, 1098, 1092, 1754, 1760, 1759, 1097, 1092, 1100, 1762, 1754, 1759, 1088, 1077, 1099, 1761, 1739, 1750, 1071, 1079, 695, 1357, 1741, 1733, 1070, 1078, 1071, 1733, 1740, 1732, 1148, 1086, 1078, 1740, 1748, 1810, 1089, 1090, 1086, 1748, 1752, 1751, 1105, 660, 644, 644, 660, 1767, 660, 1105, 630, 630, 1767, 660, 1114, 1113, 1122, 1784, 1775, 1776, 1115, 1114, 824, 1486, 1776, 1777, 1102, 906, 1101, 1763, 1568, 1764, 1106, 1102, 1105, 1767, 1764, 1768, 1107, 906, 1116, 1778, 1568, 1769, 1108, 1107, 1116, 1778, 1769, 1770, 1107, 1108, 804, 1466, 1770, 1769, 1108, 806, 1118, 1780, 1468, 1770, 1108, 1097, 1100, 1762, 1759, 1770, 1110, 1109, 1118, 1780, 1771, 1772, 1149, 805, 1117, 1779, 1467, 1811, 1109, 1099, 1097, 1759, 1761, 1771, 1110, 1088, 1099, 1761, 1750, 1772, 1148, 1078, 1087, 1749, 1740, 1810, 1113, 1114, 1105, 1767, 1776, 1775, 1113, 1105, 644, 644, 1767, 1775, 1114, 906, 1106, 1768, 1568, 1776, 1114, 1106, 1105, 1767, 1768, 1776, 1116, 1115, 824, 1486, 1777, 1778, 1116, 824, 1124, 1786, 1486, 1778, 1116, 806, 1108, 1770, 1468, 1778, 1116, 906, 1115, 1777, 1568, 1778, 1118, 1109, 1108, 1770, 1771, 1780, 1125, 1126, 1118, 1780, 1788, 1787, 1125, 1118, 806, 1468, 1780, 1787, 930, 1089, 805, 1467, 1751, 1592, 1111, 1090, 1089, 1751, 1752, 1773, 1119, 1089, 930, 1592, 1751, 1781, 1120, 1111, 1119, 1781, 1773, 1782, 1156, 1112, 1120, 1782, 1774, 1818, 1112, 827, 1111, 1773, 1489, 1774, 1104, 659, 1096, 1758, 659, 1766, 1096, 822, 4, 14, 1484, 1758, 640, 659, 1104, 1766, 659, 640, 629, 784, 886, 1548, 1446, 629, 784, 629, 640, 640, 629, 1446, 1121, 1104, 4, 14, 1766, 1783, 1121, 4, 783, 1445, 14, 1783, 1121, 783, 781, 1443, 1445, 1783, 1121, 784, 1104, 1766, 1446, 1783, 1122, 1113, 644, 644, 1775, 1784, 1122, 661, 647, 647, 661, 1784, 1150, 1130, 647, 647, 1792, 1812, 1123, 824, 1114, 1776, 1486, 1785, 1123, 1114, 1122, 1784, 1776, 1785, 1133, 1124, 824, 1486, 1786, 1795, 1125, 806, 1116, 1778, 1468, 1787, 1124, 1125, 1116, 1778, 1787, 1786, 1125, 1124, 1133, 1795, 1786, 1787, 1134, 1126, 1125, 1787, 1788, 1796, 1126, 1134, 1127, 1789, 1796, 1788, 1126, 1149, 1118, 1780, 1811, 1788, 1119, 930, 1128, 1790, 1592, 1781, 1128, 1129, 1119, 1781, 1791, 1790, 1129, 823, 1153, 1815, 1485, 1791, 1155, 917, 1154, 1816, 1579, 1817, 1131, 824, 1123, 1785, 1486, 1793, 1130, 1122, 647, 647, 1784, 1792, 1131, 1122, 1130, 1792, 1784, 1793, 1151, 1131, 1150, 1812, 1793, 1813, 1132, 1131, 1151, 1813, 1793, 1794, 1151, 1133, 1132, 1794, 1795, 1813, 1134, 1125, 1133, 1795, 1787, 1796, 1134, 1133, 692, 1354, 1795, 1796, 1134, 692, 1127, 1789, 1354, 1796, 823, 692, 1152, 1814, 1354, 1485, 1033, 1062, 1034, 1696, 1724, 1695, 687, 1052, 1062, 1724, 1714, 1349, 687, 1032, 1052, 1714, 1694, 1349, 678, 1031, 1032, 1694, 1693, 1340, 1135, 1043, 1028, 1690, 1705, 1797, 1136, 1026, 1054, 1716, 1688, 1798, 1136, 1054, 1137, 1799, 1716, 1798, 1136, 1135, 1028, 1690, 1797, 1798, 1137, 1135, 1136, 1798, 1797, 1799, 1137, 1054, 1053, 1715, 1716, 1799, 676, 679, 1035, 1697, 1341, 1338, 1083, 912, 689, 1351, 1574, 1745, 679, 818, 1085, 1747, 1480, 1341, 1082, 676, 1140, 1802, 1338, 1744, 1141, 1138, 690, 1352, 1800, 1803, 690, 1062, 1051, 1713, 1724, 1352, 1141, 690, 1051, 1713, 1352, 1803, 1143, 1051, 1030, 1692, 1713, 1805, 1144, 1071, 1143, 1805, 1733, 1806, 1036, 1030, 1032, 1694, 1692, 1698, 1145, 826, 1139, 1801, 1488, 1807, 1327, 1069, 1146, 1808, 1731, 1989, 1054, 1055, 1053, 1715, 1717, 1716, 1053, 1055, 1027, 1689, 
        1717, 1715, 360, 1053, 364, 532, 1715, 528, 1140, 1073, 1081, 1743, 1735, 1802, 1140, 676, 1138, 1800, 1338, 1802, 1138, 1141, 1073, 1735, 1803, 1800, 1141, 1051, 1142, 1804, 1713, 1803, 1141, 1072, 1073, 1735, 1734, 1803, 1142, 1051, 1143, 1805, 1713, 1804, 1142, 1143, 1072, 1734, 1805, 1804, 1143, 1030, 1036, 1698, 1692, 1805, 1143, 1071, 695, 1357, 1733, 1805, 1144, 1143, 1036, 1698, 1805, 1806, 1144, 1036, 1145, 1807, 1698, 1806, 1145, 1070, 1071, 1733, 1732, 1807, 1145, 1036, 826, 1488, 1698, 1807, 1146, 1069, 1145, 1807, 1731, 1808, 1146, 1145, 1139, 1801, 1807, 1808, 1082, 1084, 1162, 1824, 1746, 1744, 1140, 1081, 1084, 1746, 1743, 1802, 1080, 1081, 1073, 1735, 1743, 1742, 1090, 1080, 1079, 1741, 1742, 1752, 695, 1079, 1072, 1734, 1741, 1357, 1078, 1070, 1076, 1738, 1732, 1740, 1069, 1327, 1077, 1739, 1989, 1731, 1037, 1048, 871, 1533, 1710, 1699, 1054, 1026, 1139, 1801, 1688, 1716, 1054, 1139, 1055, 1717, 1801, 1716, 1027, 1055, 678, 1340, 1717, 1689, 805, 1086, 1148, 1810, 1748, 1467, 1117, 805, 1110, 1772, 1467, 1779, 1117, 1110, 1118, 1780, 1772, 1779, 1110, 805, 1087, 1749, 1467, 1772, 1087, 1076, 1088, 1750, 1738, 1749, 1078, 1076, 1087, 1749, 1738, 1740, 1147, 1086, 1079, 1741, 1748, 1809, 1147, 1079, 1071, 1733, 1741, 1809, 1148, 1087, 805, 1467, 1749, 1810, 1087, 1088, 1110, 1772, 1750, 1749, 1080, 1072, 1079, 1741, 1734, 1742, 1111, 1089, 1119, 1781, 1751, 1773, 1112, 1111, 1120, 1782, 1773, 1774, 930, 1127, 1128, 1790, 1789, 1592, 1149, 1117, 1118, 1780, 1779, 1811, 1149, 1126, 1127, 1789, 1788, 1811, 1128, 1127, 692, 1354, 1789, 1790, 1128, 823, 1129, 1791, 1485, 1790, 1131, 1130, 1150, 1812, 1792, 1793, 1151, 1150, 691, 1353, 1812, 1813, 692, 1151, 1152, 1814, 1813, 1354, 1151, 692, 1133, 1795, 1354, 1813, 645, 1150, 662, 662, 1812, 645, 1158, 696, 1159, 1821, 1358, 1820, 823, 1128, 692, 1354, 1790, 1485, 1152, 1151, 691, 1353, 1813, 1814, 645, 691, 1150, 1812, 1353, 645, 1129, 1153, 917, 1579, 1815, 1791, 1153, 823, 1159, 1821, 1485, 1815, 1154, 917, 1153, 1815, 1579, 1816, 1120, 1119, 1129, 1791, 1781, 1782, 1129, 917, 1120, 1782, 1579, 1791, 1154, 1153, 1159, 1821, 1815, 1816, 1161, 1155, 825, 1487, 1817, 1823, 1155, 1156, 917, 1579, 1818, 1817, 1156, 1120, 917, 1579, 1782, 1818, 1161, 1157, 1156, 1818, 1819, 1823, 1112, 1157, 1091, 1753, 1819, 1774, 918, 1091, 1157, 1819, 1753, 1580, 663, 636, 696, 1358, 636, 663, 1158, 691, 663, 663, 1353, 1820, 1159, 696, 1160, 1822, 1358, 1821, 1159, 823, 1152, 1814, 1485, 1821, 1158, 1159, 691, 1353, 1821, 1820, 696, 636, 664, 664, 636, 1358, 1160, 696, 1163, 1825, 1358, 1822, 1160, 825, 1154, 1816, 1487, 1822, 1161, 1156, 1155, 1817, 1818, 1823, 1157, 693, 918, 1580, 1355, 1819, 1112, 1156, 1157, 1819, 1818, 1774, 1161, 825, 1165, 1827, 1487, 1823, 1161, 693, 1157, 1819, 1355, 1823, 689, 1035, 1083, 1745, 1697, 1351, 918, 693, 1166, 1828, 1355, 1580, 1162, 1084, 918, 1580, 1746, 1824, 1162, 918, 1166, 1828, 1580, 1824, 1162, 916, 818, 1480, 1578, 1824, 818, 1082, 1162, 1824, 1744, 1480, 913, 1004, 1169, 1831, 1666, 1575, 918, 1084, 1091, 1753, 1746, 1580, 1166, 693, 814, 1476, 1355, 1828, 664, 637, 1164, 1826, 637, 664, 664, 694, 696, 1358, 1356, 664, 1163, 825, 1160, 1822, 1487, 1825, 1163, 694, 1164, 1826, 1356, 1825, 1163, 816, 1165, 1827, 1478, 1825, 825, 1155, 1154, 1816, 1817, 1487, 637, 631, 1164, 1826, 631, 637, 1164, 694, 664, 664, 1356, 1826, 1164, 631, 819, 1481, 631, 1826, 1165, 825, 1163, 1825, 1487, 1827, 814, 816, 819, 1481, 1478, 1476, 693, 1161, 1165, 1827, 1823, 1355, 1166, 916, 1162, 1824, 1578, 1828, 916, 815, 1167, 1829, 1477, 1578, 814, 819, 1170, 1832, 1481, 1476, 1167, 1085, 916, 1578, 1747, 1829, 1168, 923, 921, 1583, 1585, 1830, 1250, 1168, 921, 1583, 1830, 1912, 1171, 997, 1169, 1831, 1659, 1833, 817, 1169, 1004, 1666, 1831, 1479, 817, 1004, 1167, 1829, 1666, 1479, 1170, 634, 633, 633, 634, 1832, 1172, 815, 633, 633, 1477, 1834, 916, 1166, 814, 1476, 1828, 1578, 815, 817, 1167, 1829, 1479, 1477, 1171, 1169, 817, 1479, 1831, 1833, 817, 815, 1172, 1834, 1477, 1479, 1172, 633, 632, 632, 633, 1834, 997, 1171, 1168, 1830, 1833, 1659, 997, 914, 1169, 1831, 1576, 1659, 998, 665, 999, 1661, 665, 1660, 998, 923, 1168, 1830, 1585, 1660, 1172, 998, 1171, 1833, 1660, 1834, 998, 999, 923, 1585, 1661, 1660, 1179, 881, 904, 1566, 1543, 1841, 1173, 792, 1020, 1682, 1454, 1835, 1020, 1196, 1173, 1835, 1858, 1682, 1173, 986, 792, 1454, 1648, 1835, 1174, 1173, 789, 1451, 1835, 1836, 1175, 13, 1176, 1838, 26, 1837, 1175, 904, 881, 1543, 1566, 1837, 1176, 896, 904, 1566, 1558, 1838, 1176, 904, 1175, 1837, 1566, 1838, 1177, 1178, 892, 1554, 1840, 1839, 1177, 892, 1061, 1723, 1554, 1839, 1178, 896, 1018, 1680, 1558, 1840, 1178, 1186, 800, 1462, 1848, 1840, 1179, 904, 1177, 1839, 1566, 1841, 1179, 757, 1190, 1852, 1419, 1841, 1180, 881, 882, 1544, 1543, 1842, 1180, 879, 880, 1542, 1541, 1842, 880, 986, 1174, 1836, 1648, 1542, 1182, 889, 745, 1407, 1551, 1844, 877, 1182, 745, 1407, 1844, 1539, 771, 1185, 877, 1539, 1847, 1433, 761, 769, 771, 1433, 1431, 1423, 1181, 1215, 1216, 1878, 1877, 1843, 876, 1181, 788, 1450, 1843, 1538, 1181, 893, 788, 1450, 1555, 1843, 1183, 1182, 791, 1453, 1844, 1845, 1183, 8, 1182, 1844, 22, 1845, 8, 889, 1182, 1844, 1551, 22, 1184, 12, 1194, 1856, 27, 1846, 1023, 1194, 12, 27, 1856, 1685, 1325, 877, 1185, 1847, 1539, 1987, 800, 903, 890, 1552, 1565, 1462, 1189, 1187, 979, 1641, 1849, 1851, 1188, 882, 1200, 1862, 1544, 1850, 1204, 1188, 878, 1540, 1850, 1866, 1201, 971, 1206, 1868, 1633, 1863, 1189, 1201, 1206, 1868, 1863, 1851, 878, 1188, 1007, 1669, 1850, 1540, 1190, 757, 358, 526, 1419, 1852, 1190, 1200, 882, 1544, 1862, 1852, 1187, 982, 770, 1432, 1644, 1849, 1205, 1206, 1207, 1869, 1868, 1867, 1191, 761, 982, 1644, 1423, 1853, 1192, 1215, 1181, 1843, 1877, 1854, 1192, 876, 
        769, 1431, 1538, 1854, 875, 1210, 1213, 1875, 1872, 1537, 1191, 875, 769, 1431, 1537, 1853, 802, 801, 9, 23, 1463, 1464, 1194, 1022, 1184, 1846, 1684, 1856, 1195, 1021, 8, 22, 1683, 1857, 1196, 13, 1173, 1835, 26, 1858, 1197, 1018, 896, 1558, 1680, 1859, 369, 82, 909, 1571, 270, 537, 369, 909, 677, 1339, 1571, 537, 370, 344, 343, 511, 512, 538, 370, 677, 1003, 1665, 1339, 538, 910, 909, 689, 1351, 1571, 1572, 991, 992, 1198, 1860, 1654, 1653, 372, 105, 106, 258, 257, 540, 330, 372, 106, 258, 540, 498, 324, 89, 88, 276, 277, 492, 324, 88, 87, 275, 276, 492, 372, 330, 324, 492, 498, 540, 372, 324, 374, 542, 492, 540, 371, 90, 89, 277, 278, 539, 330, 107, 108, 260, 259, 498, 373, 64, 109, 261, 78, 541, 373, 109, 375, 543, 261, 541, 341, 63, 91, 279, 79, 509, 374, 103, 104, 256, 255, 542, 374, 104, 372, 540, 256, 542, 343, 457, 85, 273, 625, 511, 343, 83, 369, 537, 271, 511, 343, 369, 370, 538, 537, 511, 344, 100, 101, 253, 252, 512, 375, 110, 111, 263, 262, 543, 375, 111, 376, 544, 263, 543, 376, 112, 113, 265, 264, 544, 376, 113, 339, 507, 265, 544, 342, 93, 92, 280, 281, 510, 340, 95, 94, 282, 283, 508, 339, 114, 115, 267, 266, 507, 378, 339, 320, 488, 507, 546, 377, 97, 96, 284, 285, 545, 378, 320, 686, 1348, 488, 546, 378, 99, 98, 286, 287, 546, 1199, 356, 1202, 1864, 524, 1861, 971, 1201, 1202, 1864, 1863, 1633, 1188, 379, 686, 1348, 547, 1850, 1188, 686, 1007, 1669, 1348, 1850, 1200, 358, 379, 547, 526, 1862, 1200, 379, 1188, 1850, 547, 1862, 1201, 1189, 1203, 1865, 1851, 1863, 1203, 1189, 878, 1540, 1851, 1865, 1203, 1199, 1202, 1864, 1861, 1865, 387, 117, 357, 525, 269, 555, 1203, 878, 1007, 1669, 1540, 1865, 1203, 1007, 1199, 1861, 1669, 1865, 1204, 879, 1180, 1842, 1541, 1866, 1204, 1180, 882, 1544, 1842, 1866, 1190, 882, 881, 1543, 1544, 1852, 1190, 358, 1200, 1862, 526, 1852, 879, 1189, 979, 1641, 1851, 1541, 879, 979, 880, 1542, 1641, 1541, 979, 1187, 770, 1432, 1849, 1641, 770, 982, 761, 1423, 1644, 1432, 761, 1191, 769, 1431, 1853, 1423, 1207, 971, 1220, 1882, 1633, 1869, 1206, 1205, 1187, 1849, 1867, 1868, 1207, 743, 1205, 1867, 1405, 1869, 1207, 1206, 971, 1633, 1868, 1869, 1210, 875, 1191, 1853, 1537, 1872, 1238, 1223, 1237, 1899, 1885, 1900, 1208, 1209, 1210, 1872, 1871, 1870, 1208, 982, 1205, 1867, 1644, 1870, 743, 1208, 1205, 1867, 1870, 1405, 1239, 1224, 1223, 1885, 1886, 1901, 1209, 749, 1210, 1872, 1411, 1871, 1210, 1191, 1208, 1870, 1853, 1872, 1202, 1201, 1203, 1865, 1863, 1864, 869, 1211, 920, 1582, 1873, 1531, 1211, 869, 1226, 1888, 1531, 1873, 869, 920, 1212, 1874, 1582, 1531, 1239, 1223, 1238, 1900, 1885, 1901, 749, 1212, 1213, 1875, 1874, 1411, 756, 875, 1213, 1875, 1537, 1418, 884, 776, 981, 1643, 1438, 1546, 1212, 920, 1214, 1876, 1582, 1874, 1215, 744, 1216, 1878, 1406, 1877, 1216, 744, 7, 19, 1406, 1878, 1216, 7, 790, 1452, 19, 1878, 756, 1214, 981, 1643, 1876, 1418, 756, 981, 1215, 1877, 1643, 1418, 981, 1214, 884, 1546, 1876, 1643, 1214, 920, 884, 1546, 1582, 1876, 1217, 972, 976, 1638, 1634, 1879, 1217, 976, 984, 1646, 1638, 1879, 1217, 984, 883, 1545, 1646, 1879, 981, 776, 873, 1535, 1438, 1643, 1215, 873, 744, 1406, 1535, 1877, 1218, 646, 28, 28, 646, 1880, 1218, 28, 885, 1547, 28, 1880, 1218, 885, 1219, 1881, 1547, 1880, 1219, 885, 780, 1442, 1547, 1881, 1219, 780, 1211, 1873, 1442, 1881, 655, 886, 28, 28, 1548, 655, 380, 361, 407, 575, 529, 548, 361, 323, 407, 575, 491, 529, 361, 807, 118, 238, 1469, 529, 361, 118, 119, 239, 238, 529, 381, 120, 121, 241, 240, 549, 106, 290, 107, 259, 458, 258, 434, 322, 381, 549, 490, 602, 108, 291, 64, 78, 459, 260, 319, 111, 110, 262, 263, 487, 383, 125, 126, 246, 245, 551, 384, 127, 128, 248, 247, 552, 385, 384, 128, 248, 552, 553, 346, 113, 112, 264, 265, 514, 345, 115, 114, 266, 267, 513, 385, 129, 431, 599, 249, 553, 431, 129, 130, 250, 249, 599, 386, 130, 131, 251, 250, 554, 386, 131, 388, 556, 251, 554, 387, 685, 1234, 1896, 1347, 555, 387, 1202, 356, 524, 1864, 555, 1220, 1202, 387, 555, 1864, 1882, 1236, 1234, 1235, 1897, 1896, 1898, 1221, 742, 1237, 1899, 1404, 1883, 1221, 743, 1207, 1869, 1405, 1883, 1222, 1223, 743, 1405, 1885, 1884, 1222, 743, 1221, 1883, 1405, 1884, 1223, 749, 1209, 1871, 1411, 1885, 1223, 1209, 743, 1405, 1871, 1885, 1224, 1225, 749, 1411, 1887, 1886, 1224, 749, 1223, 1885, 1411, 1886, 1225, 869, 1212, 1874, 1531, 1887, 1225, 1212, 749, 1411, 1874, 1887, 869, 1225, 1240, 1902, 1887, 1531, 1226, 713, 716, 1378, 1375, 1888, 919, 716, 29, 29, 1378, 1581, 919, 29, 646, 646, 29, 1581, 666, 33, 725, 1387, 33, 666, 667, 656, 1333, 1995, 656, 667, 648, 39, 1317, 1979, 39, 648, 39, 925, 1317, 1979, 1587, 39, 925, 866, 38, 40, 1528, 1587, 927, 1227, 866, 1528, 1889, 1589, 1233, 1231, 1228, 1890, 1893, 1895, 38, 730, 673, 1335, 1392, 40, 1317, 38, 1313, 1975, 40, 1979, 1233, 1228, 1232, 1894, 1890, 1895, 1229, 725, 724, 1386, 1387, 1891, 1232, 1227, 1229, 1891, 1889, 1894, 671, 1229, 1227, 1889, 1891, 671, 1227, 643, 671, 671, 643, 1889, 1227, 1232, 1228, 1890, 1894, 1889, 927, 866, 925, 1587, 1528, 1589, 668, 925, 39, 39, 1587, 668, 1228, 730, 866, 1528, 1392, 1890, 1228, 866, 1227, 1889, 1528, 1890, 1312, 45, 1230, 1892, 46, 1974, 1312, 734, 42, 43, 1396, 1974, 1230, 730, 1231, 1893, 1392, 1892, 1230, 1231, 1322, 1984, 1893, 1892, 735, 1233, 953, 1615, 1895, 1397, 1322, 1231, 735, 1397, 1893, 1984, 1231, 730, 1228, 1890, 1392, 1893, 1232, 1229, 724, 1386, 1891, 1894, 1232, 722, 859, 1521, 1384, 1894, 735, 953, 867, 1529, 1615, 1397, 
        1233, 859, 953, 1615, 1521, 1895, 1233, 735, 1231, 1893, 1397, 1895, 388, 131, 354, 522, 251, 556, 388, 354, 1244, 1906, 522, 556, 388, 741, 1235, 1897, 1403, 556, 1234, 1220, 387, 555, 1882, 1896, 1235, 733, 1236, 1898, 1395, 1897, 1235, 1234, 685, 1347, 1896, 1897, 1243, 1236, 733, 1395, 1898, 1905, 1236, 1243, 1241, 1903, 1905, 1898, 742, 1221, 1234, 1896, 1883, 1404, 742, 1234, 1236, 1898, 1896, 1404, 1223, 1222, 1237, 1899, 1884, 1885, 1237, 1222, 1221, 1883, 1884, 1899, 1238, 1237, 1242, 1904, 1899, 1900, 1238, 844, 1239, 1901, 1506, 1900, 1240, 1239, 844, 1506, 1901, 1902, 1239, 1240, 1224, 1886, 1902, 1901, 1240, 844, 713, 1375, 1506, 1902, 1240, 713, 869, 1531, 1375, 1902, 733, 962, 726, 1388, 1624, 1395, 733, 726, 727, 1389, 1388, 1395, 1242, 1241, 1243, 1905, 1903, 1904, 1242, 714, 844, 1506, 1376, 1904, 1242, 844, 1238, 1900, 1506, 1904, 1242, 1237, 1241, 1903, 1899, 1904, 1243, 733, 727, 1389, 1395, 1905, 1243, 727, 714, 1376, 1389, 1905, 739, 741, 1244, 1906, 1403, 1401, 1245, 857, 954, 1616, 1519, 1907, 1245, 863, 739, 1401, 1525, 1907, 354, 131, 355, 523, 251, 522, 740, 737, 1244, 1906, 1399, 1402, 298, 146, 147, 236, 235, 466, 740, 1320, 737, 1399, 1982, 1402, 436, 389, 390, 558, 557, 604, 389, 314, 390, 558, 482, 557, 436, 143, 144, 233, 232, 604, 314, 389, 438, 606, 557, 482, 310, 437, 65, 77, 605, 478, 309, 124, 123, 243, 244, 477, 391, 133, 134, 223, 222, 559, 336, 121, 120, 240, 241, 504, 391, 134, 135, 224, 223, 559, 311, 121, 336, 504, 241, 479, 392, 136, 137, 226, 225, 560, 393, 138, 139, 228, 227, 561, 394, 393, 139, 228, 561, 562, 394, 140, 66, 76, 229, 562, 395, 437, 310, 478, 605, 563, 389, 145, 146, 235, 234, 557, 396, 684, 355, 523, 1346, 564, 397, 148, 305, 473, 237, 565, 1320, 684, 397, 565, 1346, 1982, 396, 147, 148, 237, 236, 564, 397, 305, 1006, 1668, 473, 565, 397, 961, 1320, 1982, 1623, 565, 1246, 353, 362, 530, 521, 1908, 439, 308, 398, 566, 476, 607, 399, 152, 153, 211, 210, 567, 398, 399, 154, 212, 567, 566, 400, 156, 67, 75, 214, 568, 401, 296, 400, 568, 464, 569, 401, 157, 158, 216, 215, 569, 402, 401, 159, 217, 569, 570, 402, 159, 160, 218, 217, 570, 353, 305, 402, 570, 473, 521, 1246, 362, 1248, 1910, 530, 1908, 1246, 305, 353, 521, 473, 1908, 362, 868, 1248, 1910, 1530, 530, 1247, 362, 352, 520, 530, 1909, 1248, 963, 731, 1393, 1625, 1910, 1248, 731, 1006, 1668, 1393, 1910, 403, 404, 150, 208, 572, 571, 403, 150, 151, 209, 208, 571, 441, 328, 440, 608, 496, 609, 404, 440, 149, 207, 608, 572, 405, 132, 133, 222, 221, 573, 442, 405, 133, 222, 573, 610, 406, 118, 325, 493, 238, 574, 406, 325, 405, 573, 493, 574, 407, 322, 102, 254, 490, 575, 407, 101, 380, 548, 253, 575, 101, 100, 380, 548, 252, 253, 119, 323, 361, 529, 491, 239, 1249, 333, 1250, 1912, 501, 1911, 1249, 921, 1276, 1938, 1583, 1911, 1249, 996, 328, 496, 1658, 1911, 1250, 921, 1249, 1911, 1583, 1912, 1250, 333, 1002, 1664, 501, 1912, 1251, 732, 729, 1391, 1394, 1913, 958, 738, 1014, 1676, 1400, 1620, 1252, 864, 51, 54, 1526, 1914, 1252, 51, 1016, 1678, 54, 1914, 1253, 964, 1252, 1914, 1626, 1915, 1253, 1252, 703, 1365, 1914, 1915, 1254, 772, 1065, 1727, 1434, 1916, 1255, 772, 1254, 1916, 1434, 1917, 1255, 1254, 1256, 1918, 1916, 1917, 1261, 1262, 782, 1444, 1924, 1923, 767, 1304, 1256, 1918, 1966, 1429, 1326, 887, 767, 1429, 1549, 1988, 752, 1256, 773, 1918, 1919, 1414, 1257, 752, 1258, 1920, 1414, 1919, 1257, 762, 768, 1430, 1424, 1919, 1258, 970, 787, 1449, 1632, 1920, 1258, 870, 762, 1424, 1532, 1920, 1259, 10, 975, 1637, 25, 1921, 1259, 975, 1260, 1922, 1637, 1921, 1260, 975, 751, 1413, 1637, 1922, 1261, 782, 768, 1430, 1444, 1923, 1261, 1260, 774, 1436, 1922, 1923, 1262, 1261, 1263, 1925, 1923, 1924, 1263, 1261, 774, 1436, 1923, 1925, 1264, 751, 975, 1637, 1413, 1926, 1264, 975, 760, 1422, 1637, 1926, 1265, 751, 1264, 1926, 1413, 1927, 1265, 968, 1266, 1928, 1630, 1927, 1264, 760, 968, 1630, 1422, 1926, 1288, 978, 1267, 1929, 1640, 1950, 765, 978, 1265, 1927, 1640, 1427, 1266, 968, 785, 1447, 1630, 1928, 1266, 785, 766, 1428, 1447, 1928, 1267, 978, 765, 1427, 1640, 1929, 1267, 765, 766, 1428, 1427, 1929, 1268, 750, 1267, 1929, 1412, 1930, 1268, 766, 786, 1448, 1428, 1930, 1268, 11, 966, 1628, 24, 1930, 966, 1269, 750, 1412, 1931, 1628, 966, 1272, 1269, 1931, 1934, 1628, 793, 987, 747, 1409, 1649, 1455, 1270, 872, 1271, 1933, 1534, 1932, 1271, 793, 1270, 1932, 1455, 1933, 1287, 973, 755, 1417, 1635, 1949, 1272, 973, 764, 1426, 1635, 1934, 1272, 764, 1269, 1931, 1426, 1934, 1273, 774, 1265, 1927, 1436, 1935, 1273, 1265, 978, 1640, 1927, 1935, 1274, 1292, 1296, 1958, 1954, 1936, 1274, 754, 1273, 1935, 1416, 1936, 408, 304, 1247, 1909, 472, 576, 408, 352, 409, 577, 520, 576, 409, 352, 302, 470, 520, 577, 409, 410, 171, 205, 578, 577, 411, 68, 169, 203, 74, 579, 411, 412, 68, 74, 580, 579, 412, 445, 167, 201, 613, 580, 445, 166, 167, 201, 200, 613, 445, 412, 313, 481, 580, 613, 413, 313, 446, 614, 481, 581, 413, 447, 163, 197, 615, 581, 165, 413, 164, 198, 581, 199, 1275, 688, 332, 500, 1350, 1937, 447, 312, 1275, 1937, 480, 615, 821, 675, 1276, 1938, 1337, 1483, 996, 1276, 675, 1337, 1938, 1658, 1276, 996, 1249, 1911, 1658, 1938, 1276, 924, 821, 1483, 1586, 1938, 414, 171, 415, 583, 205, 582, 414, 295, 351, 519, 463, 582, 415, 170, 416, 584, 204, 583, 170, 169, 416, 584, 203, 204, 449, 168, 417, 585, 202, 617, 415, 294, 295, 463, 462, 583, 450, 347, 451, 619, 515, 618, 448, 449, 317, 485, 617, 616, 418, 164, 163, 197, 
        198, 586, 418, 163, 419, 587, 197, 586, 419, 680, 347, 515, 1342, 587, 419, 347, 418, 586, 515, 587, 420, 179, 178, 195, 196, 588, 420, 301, 350, 518, 469, 588, 421, 177, 422, 590, 194, 589, 177, 69, 422, 590, 73, 194, 453, 300, 422, 590, 468, 621, 422, 300, 421, 589, 468, 590, 423, 174, 454, 622, 191, 591, 454, 174, 173, 190, 191, 622, 1277, 424, 349, 517, 592, 1939, 681, 424, 922, 1584, 592, 1343, 1321, 681, 318, 486, 1343, 1983, 1277, 680, 1001, 1663, 1342, 1939, 1277, 1001, 922, 1584, 1663, 1939, 288, 627, 1278, 1940, 627, 288, 183, 182, 425, 593, 188, 189, 181, 180, 428, 596, 186, 187, 1281, 306, 427, 595, 474, 1943, 427, 306, 183, 189, 474, 595, 427, 425, 293, 461, 593, 595, 289, 184, 292, 460, 184, 289, 1279, 1280, 289, 289, 1942, 1941, 1279, 289, 292, 460, 289, 1941, 1279, 292, 426, 594, 460, 1941, 428, 180, 318, 486, 186, 596, 428, 1280, 1279, 1941, 1942, 596, 1280, 628, 289, 289, 628, 1942, 1280, 428, 318, 486, 596, 1942, 1280, 318, 681, 1343, 486, 1942, 1280, 635, 628, 628, 635, 1942, 669, 654, 1282, 1944, 654, 669, 1282, 654, 960, 1622, 654, 1944, 654, 639, 861, 1523, 639, 654, 1282, 960, 1281, 1943, 1622, 1944, 1281, 960, 1283, 1945, 1622, 1943, 960, 654, 861, 1523, 654, 1622, 960, 861, 1284, 1946, 1523, 1622, 1282, 1281, 427, 595, 1943, 1944, 1282, 627, 669, 669, 627, 1944, 1283, 960, 1284, 1946, 1622, 1945, 1283, 348, 420, 588, 516, 1945, 1284, 861, 732, 1394, 1523, 1946, 1285, 1284, 732, 1394, 1946, 1947, 1251, 1005, 1285, 1947, 1667, 1913, 1005, 1251, 738, 1400, 1913, 1667, 304, 429, 1285, 1947, 597, 472, 304, 1005, 1247, 1909, 1667, 472, 429, 304, 172, 206, 472, 597, 429, 351, 683, 1345, 519, 597, 1251, 1285, 732, 1394, 1947, 1913, 1285, 1005, 304, 472, 1667, 1947, 1247, 352, 408, 576, 520, 1909, 1286, 1012, 864, 1526, 1674, 1948, 1286, 864, 1013, 1675, 1526, 1948, 1013, 958, 1014, 1676, 1620, 1675, 1291, 883, 1287, 1949, 1545, 1953, 1287, 883, 1290, 1952, 1545, 1949, 1288, 1267, 750, 1412, 1929, 1950, 1289, 775, 1293, 1955, 1437, 1951, 1289, 753, 1288, 1950, 1415, 1951, 1289, 1288, 750, 1412, 1950, 1951, 1290, 977, 775, 1437, 1639, 1952, 1290, 775, 764, 1426, 1437, 1952, 1291, 1287, 755, 1417, 1949, 1953, 1291, 755, 779, 1441, 1417, 1953, 753, 1292, 1288, 1950, 1954, 1415, 1293, 753, 1289, 1951, 1415, 1955, 1293, 775, 977, 1639, 1437, 1955, 1301, 1294, 1296, 1958, 1956, 1963, 1302, 1295, 80, 81, 1957, 1964, 1263, 754, 1295, 1957, 1416, 1925, 1298, 1074, 1296, 1958, 1736, 1960, 1297, 1293, 1075, 1737, 1955, 1959, 1298, 1296, 1292, 1954, 1958, 1960, 1298, 753, 1297, 1959, 1415, 1960, 754, 1274, 1294, 1956, 1936, 1416, 754, 1294, 1295, 1957, 1956, 1416, 1274, 1296, 1294, 1956, 1958, 1936, 1292, 753, 1298, 1960, 1415, 1954, 1293, 977, 1075, 1737, 1639, 1955, 753, 1293, 1297, 1959, 1955, 1415, 977, 1299, 783, 1445, 1961, 1639, 977, 783, 1075, 1737, 1445, 1639, 1299, 984, 781, 1443, 1646, 1961, 1299, 781, 783, 1445, 1443, 1961, 1300, 1074, 1298, 1960, 1736, 1962, 1300, 1297, 1075, 1737, 1959, 1962, 1301, 1074, 3, 15, 1736, 1963, 1301, 3, 1306, 1968, 15, 1963, 1302, 80, 2, 16, 81, 1964, 1302, 2, 1307, 1969, 16, 1964, 1303, 1263, 1295, 1957, 1925, 1965, 1262, 1263, 1303, 1965, 1925, 1924, 1303, 1295, 1302, 1964, 1957, 1965, 1303, 985, 1326, 1988, 1647, 1965, 767, 887, 1304, 1966, 1549, 1429, 782, 1262, 767, 1429, 1924, 1444, 1304, 887, 803, 1465, 1549, 1966, 1305, 1304, 803, 1465, 1966, 1967, 1305, 803, 1328, 1990, 1465, 1967, 1305, 1064, 1255, 1917, 1726, 1967, 1306, 2, 80, 81, 16, 1968, 1306, 80, 1301, 1963, 81, 1968, 1307, 1093, 1, 17, 1755, 1969, 1307, 1, 985, 1647, 17, 1969, 1308, 1, 1092, 1754, 17, 1970, 1308, 1098, 0, 18, 1760, 1970, 1309, 822, 3, 15, 1484, 1971, 1309, 3, 1074, 1736, 15, 1971, 1309, 1074, 1300, 1962, 1736, 1971, 1310, 677, 1198, 1860, 1339, 1972, 1310, 808, 995, 1657, 1470, 1972, 1310, 995, 807, 1469, 1657, 1972, 1310, 807, 1003, 1665, 1469, 1972, 808, 1310, 1198, 1860, 1972, 1470, 1332, 707, 705, 1367, 1369, 1994, 1316, 704, 1311, 1973, 1366, 1978, 1315, 1312, 42, 43, 1974, 1977, 1315, 42, 704, 1366, 43, 1977, 1313, 1314, 828, 1490, 1976, 1975, 1313, 673, 45, 46, 1335, 1975, 828, 1314, 701, 1363, 1976, 1490, 1313, 828, 1317, 1979, 1490, 1975, 1315, 832, 1314, 1976, 1494, 1977, 1315, 45, 1312, 1974, 46, 1977, 832, 704, 1316, 1978, 1366, 1494, 1316, 1311, 705, 1367, 1973, 1978, 1316, 705, 58, 59, 1367, 1978, 1317, 925, 38, 40, 1587, 1979, 38, 673, 1313, 1975, 1335, 40, 670, 648, 1317, 1979, 648, 670, 670, 828, 626, 626, 1490, 670, 626, 828, 701, 1363, 1490, 626, 626, 701, 56, 56, 1363, 626, 668, 643, 927, 1589, 643, 668, 927, 643, 1227, 1889, 643, 1589, 1318, 702, 830, 1492, 1364, 1980, 1318, 830, 52, 53, 1492, 1980, 1319, 959, 956, 1618, 1621, 1981, 1319, 956, 1009, 1671, 1618, 1981, 959, 1319, 1322, 1984, 1981, 1621, 1322, 735, 959, 1621, 1397, 1984, 1320, 961, 959, 1621, 1623, 1982, 959, 961, 956, 1618, 1623, 1621, 740, 1244, 354, 522, 1906, 1402, 1320, 959, 1323, 1985, 1621, 1982, 684, 740, 355, 523, 1402, 1346, 740, 354, 355, 523, 522, 1402, 430, 345, 385, 553, 513, 598, 431, 130, 386, 554, 250, 599, 431, 357, 430, 598, 525, 599, 431, 430, 385, 553, 598, 599, 319, 346, 111, 263, 514, 487, 383, 126, 384, 552, 246, 551, 432, 116, 117, 269, 268, 600, 432, 117, 356, 524, 269, 600, 291, 109, 64, 78, 261, 459, 433, 291, 382, 550, 459, 601, 433, 124, 65, 77, 244, 601, 382, 291, 290, 458, 459, 550, 382, 122, 123, 243, 242, 550, 290, 291, 108, 260, 459, 458, 434, 435, 382, 550, 603, 602, 105, 434, 106, 258, 602, 257, 434, 382, 
        290, 458, 550, 602, 435, 434, 381, 549, 602, 603, 314, 128, 127, 247, 248, 482, 390, 314, 127, 247, 482, 558, 390, 127, 126, 246, 247, 558, 436, 390, 395, 563, 558, 604, 436, 395, 142, 231, 563, 604, 436, 142, 143, 232, 231, 604, 395, 394, 66, 76, 562, 563, 395, 141, 142, 231, 230, 563, 437, 126, 125, 245, 246, 605, 395, 310, 394, 562, 478, 563, 310, 65, 124, 244, 77, 478, 389, 144, 145, 234, 233, 557, 298, 396, 299, 467, 564, 466, 438, 298, 299, 467, 466, 606, 438, 299, 130, 250, 467, 606, 438, 130, 129, 249, 250, 606, 305, 297, 402, 570, 465, 473, 353, 402, 161, 219, 570, 521, 402, 160, 161, 219, 218, 570, 401, 158, 159, 217, 216, 569, 296, 297, 145, 234, 465, 464, 402, 296, 401, 569, 464, 570, 401, 400, 157, 215, 568, 569, 400, 67, 157, 215, 75, 568, 439, 315, 141, 230, 483, 607, 400, 439, 398, 566, 607, 568, 156, 398, 155, 213, 566, 214, 399, 153, 154, 212, 211, 567, 307, 398, 308, 476, 566, 475, 307, 308, 139, 228, 476, 475, 334, 307, 137, 226, 475, 502, 399, 403, 152, 210, 571, 567, 403, 151, 152, 210, 209, 571, 392, 137, 393, 561, 226, 560, 309, 123, 122, 242, 243, 477, 311, 336, 391, 559, 504, 479, 311, 391, 392, 560, 559, 479, 392, 391, 135, 224, 559, 560, 404, 403, 329, 497, 571, 572, 440, 996, 331, 499, 1658, 608, 440, 331, 149, 207, 499, 608, 441, 404, 329, 572, 608, 609, 441, 134, 133, 222, 223, 609, 442, 133, 391, 559, 222, 610, 442, 391, 443, 611, 559, 610, 443, 336, 119, 239, 504, 611, 443, 119, 406, 574, 239, 611, 302, 303, 444, 612, 471, 470, 410, 170, 171, 205, 204, 578, 409, 302, 410, 578, 470, 577, 408, 409, 172, 206, 577, 576, 444, 410, 302, 470, 578, 612, 444, 303, 411, 579, 471, 612, 68, 412, 168, 202, 580, 74, 412, 167, 168, 202, 201, 580, 445, 313, 413, 581, 481, 613, 445, 413, 165, 199, 581, 613, 313, 316, 156, 214, 484, 481, 313, 156, 155, 213, 214, 481, 446, 154, 153, 211, 212, 614, 446, 153, 152, 210, 211, 614, 413, 163, 164, 198, 197, 581, 447, 1275, 332, 500, 1937, 615, 447, 332, 163, 197, 500, 615, 335, 151, 150, 208, 209, 503, 335, 312, 447, 615, 480, 503, 448, 317, 175, 192, 485, 616, 448, 175, 176, 193, 192, 616, 168, 167, 417, 585, 201, 202, 449, 417, 317, 485, 585, 617, 317, 417, 450, 618, 585, 485, 450, 166, 165, 199, 200, 618, 450, 165, 418, 586, 199, 618, 451, 347, 173, 190, 515, 619, 451, 174, 317, 485, 191, 619, 452, 682, 453, 621, 1344, 620, 423, 452, 175, 192, 193, 620, 453, 422, 452, 620, 590, 621, 453, 318, 180, 186, 486, 621, 454, 173, 424, 592, 190, 622, 454, 424, 1321, 1983, 592, 622, 1321, 682, 423, 591, 1344, 1983, 1321, 424, 681, 1343, 592, 1983, 455, 185, 293, 461, 185, 623, 425, 182, 70, 72, 188, 593, 455, 293, 425, 593, 461, 623, 455, 425, 292, 460, 593, 623, 293, 288, 1278, 1940, 288, 461, 293, 1278, 427, 595, 1940, 461, 456, 338, 95, 283, 506, 624, 456, 95, 96, 284, 283, 624, 338, 360, 94, 282, 528, 506, 360, 364, 92, 280, 532, 528, 364, 365, 91, 279, 533, 532, 1027, 678, 364, 532, 1340, 1689, 1056, 678, 1032, 1694, 1340, 1718, 327, 365, 678, 1340, 533, 495, 327, 678, 1056, 1718, 1340, 495, 366, 327, 687, 1349, 495, 534, 687, 327, 1056, 1718, 495, 1349, 1033, 687, 1062, 1724, 1349, 1695, 326, 366, 687, 1349, 534, 494, 326, 687, 1033, 1695, 1349, 494, 326, 1034, 367, 535, 1696, 494, 1033, 1034, 326, 494, 1696, 1695, 341, 373, 375, 543, 541, 509, 324, 330, 371, 539, 498, 492, 457, 343, 374, 542, 511, 625, 457, 374, 324, 492, 542, 625, 342, 375, 340, 508, 543, 510, 1322, 1319, 734, 1396, 1981, 1984, 1322, 734, 1230, 1892, 1396, 1984, 1323, 737, 1320, 1982, 1399, 1985, 31, 929, 651, 651, 1591, 31, 1324, 651, 929, 1591, 651, 1986, 1324, 929, 718, 1380, 1591, 1986, 1325, 1185, 791, 1453, 1847, 1987, 1325, 791, 1182, 1844, 1453, 1987, 1326, 767, 1262, 1924, 1429, 1988, 1326, 1262, 1303, 1965, 1924, 1988, 869, 713, 1226, 1888, 1375, 1531, 1327, 1146, 1063, 1725, 1808, 1989, 1328, 888, 1305, 1967, 1550, 1990, 1328, 0, 1327, 1989, 18, 1990, 1328, 1327, 1063, 1725, 1989, 1990, 1329, 822, 1102, 1764, 1484, 1991, 1329, 1102, 1095, 1757, 1764, 1991, 1330, 940, 941, 1603, 1602, 1992, 1330, 840, 701, 1363, 1502, 1992, 1331, 942, 707, 1369, 1604, 1993, 1331, 707, 1332, 1994, 1369, 1993, 931, 835, 37, 41, 1497, 1593, 1332, 705, 1311, 1973, 1367, 1994, 1332, 1311, 931, 1593, 1973, 1994, 1333, 709, 934, 1596, 1371, 1995, 1333, 829, 1318, 1980, 1491, 1995, 991, 1198, 910, 1572, 1860, 1653, 809, 912, 907, 1569, 1574, 1471, 758, 891, 890, 1552, 1553, 1420, 796, 890, 903, 1565, 1552, 1458};
    }

    public static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25557a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 247, 136, 139, 246, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 137, 139, 136, 243, 254, 252, 141, 242, 136, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 143, 242, 254, 128, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 247, 136, 139, 246, 250, 245, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 137, 136, 140, 248, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 247, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 149, 129, 130, 131, 162, 194, 137, 136, 140, 248, 232, 164, 232, 137, 136, 140, 149, 129, 130, 131, 162, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 139, 136, 243, 254, 252, 141, 242, 136, 247, 232, 145, 232, 143, 242, 254, 128, 232, 145, 232, 143, 254, 252, 171, 159, 137, 136, 140, 149, 129, 130, 131, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25558b = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 248, 247, 136, 139, 246, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 240, 254, 246, 248, 252, 254, 247, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 137, 136, 140, 248, 140, 252, 250, 245, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 137, 136, 140, 248, 140, 241, 242, 255, 141, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 247, 136, 139, 246, 250, 245, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 137, 136, 140, 248, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 143, 254, 252, 170, 232, 141, 246, 137, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 148, 247, 136, 139, 246, 250, 245, 144, 162, 194, 242, 255, 232, 159, 242, 140, 248, 247, 136, 139, 246, 232, 164, 164, 232, 168, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 141, 246, 137, 232, 145, 232, 151, 149, 172, 232, 146, 232, 151, 149, 172, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 159, 137, 136, 140, 248, 232, 148, 232, 240, 254, 246, 248, 252, 254, 247, 141, 254, 139, 232, 146, 232, 137, 136, 140, 248, 140, 241, 242, 255, 141, 144, 232, 150, 232, 137, 136, 140, 248, 140, 252, 250, 245, 254, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194, 134, 194};
    }

    public static class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25559a = {194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 247, 136, 139, 246, 250, 245, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 141, 250, 247, 240, 254, 247, 141, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 137, 139, 136, 243, 254, 252, 141, 180, 250, 141, 139, 242, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 131, 136, 136, 246, 248, 140, 252, 250, 245, 254, 248, 139, 250, 141, 242, 136, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 170, 232, 140, 246, 250, 245, 245, 190, 254, 246, 235, 136, 141, 250, 141, 242, 136, 247, 180, 250, 141, 139, 242, 129, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 190, 254, 246, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 246, 250, 141, 170, 232, 237, 185, 181, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 136, 251, 243, 225, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 136, 251, 243, 226, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 245, 136, 252, 250, 245, 181, 136, 139, 246, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 245, 136, 252, 250, 245, 233, 136, 140, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 245, 136, 252, 250, 245, 181, 136, 139, 246, 232, 164, 232, 140, 246, 250, 245, 245, 190, 254, 246, 235, 136, 141, 250, 141, 242, 136, 247, 180, 250, 141, 139, 242, 129, 232, 145, 232, 247, 136, 139, 246, 250, 245, 149, 129, 130, 131, 162, 194, 194, 245, 136, 252, 250, 245, 233, 136, 140, 232, 164, 232, 159, 242, 140, 190, 254, 246, 232, 164, 164, 232, 151, 149, 151, 144, 232, 166, 232, 137, 136, 140, 242, 141, 242, 136, 247, 149, 129, 130, 131, 232, 161, 232, 140, 246, 250, 245, 245, 190, 254, 246, 235, 136, 141, 250, 141, 242, 136, 247, 180, 250, 141, 139, 242, 129, 232, 145, 232, 159, 137, 136, 140, 242, 141, 242, 136, 247, 149, 129, 130, 131, 232, 148, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 228, 151, 230, 149, 129, 130, 131, 144, 162, 194, 194, 143, 254, 252, 171, 232, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 232, 164, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 232, 145, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 149, 129, 130, 131, 162, 194, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 139, 136, 243, 254, 252, 141, 180, 250, 141, 139, 242, 129, 232, 145, 232, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 232, 145, 232, 143, 254, 252, 171, 159, 131, 136, 136, 246, 248, 140, 252, 250, 245, 254, 248, 139, 250, 141, 242, 136, 147, 232, 131, 136, 136, 246, 248, 140, 252, 250, 245, 254, 248, 139, 250, 141, 242, 136, 147, 232, 168, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 194, 194, 143, 254, 252, 171, 232, 141, 139, 250, 247, 140, 255, 136, 139, 246, 254, 253, 181, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 232, 145, 232, 247, 136, 139, 246, 250, 245, 162, 194, 194, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 141, 139, 250, 247, 140, 255, 136, 139, 246, 254, 253, 181, 136, 139, 
        246, 250, 245, 149, 129, 130, 131, 144, 162, 194, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 194, 194, 143, 254, 252, 170, 232, 237, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 143, 254, 252, 170, 159, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 232, 145, 232, 143, 254, 252, 171, 159, 141, 250, 247, 240, 254, 247, 141, 149, 129, 130, 131, 147, 232, 151, 149, 151, 144, 144, 144, 162, 194, 194, 143, 254, 252, 170, 232, 181, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 143, 254, 252, 170, 159, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 232, 145, 232, 247, 136, 139, 246, 250, 245, 144, 144, 162, 194, 194, 237, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 237, 232, 148, 232, 253, 136, 141, 159, 237, 147, 232, 181, 144, 232, 145, 232, 181, 144, 162, 194, 194, 143, 254, 252, 170, 232, 185, 232, 164, 232, 252, 139, 136, 140, 140, 159, 181, 147, 232, 237, 144, 162, 194, 194, 237, 185, 181, 232, 164, 232, 246, 250, 141, 170, 159, 237, 147, 232, 185, 147, 232, 181, 144, 162, 194, 194, 136, 251, 243, 225, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 149, 129, 162, 194, 194, 136, 251, 243, 226, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 149, 130, 162, 194, 194, 134, 194};
    }

    public static class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25560a = {194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 245, 140, 254, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 184, 245, 251, 254, 253, 136, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 182, 139, 246, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 188, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 185, 139, 253, 255, 179, 142, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 181, 136, 139, 246, 250, 245, 180, 250, 137, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 250, 245, 251, 254, 253, 136, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 136, 139, 246, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 251, 139, 253, 255, 179, 142, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 247, 136, 139, 246, 250, 245, 180, 250, 137, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 252, 142, 140, 141, 136, 246, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 129, 137, 136, 140, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 235, 254, 247, 253, 254, 139, 236, 242, 245, 241, 136, 142, 254, 141, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 239, 250, 245, 142, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 176, 185, 179, 187, 242, 255, 255, 142, 140, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 176, 185, 179, 236, 137, 254, 252, 142, 245, 250, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 241, 136, 139, 242, 182, 139, 242, 254, 247, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 143, 254, 139, 141, 182, 139, 242, 254, 247, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 188, 247, 250, 251, 245, 254, 180, 242, 139, 139, 136, 139, 191, 187, 235, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 254, 255, 141, 248, 254, 250, 139, 251, 136, 141, 141, 136, 246, 248, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 139, 242, 240, 241, 141, 248, 254, 250, 139, 251, 136, 141, 141, 136, 246, 248, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 248, 136, 252, 252, 245, 142, 253, 254, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 246, 250, 129, 179, 142, 246, 250, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 190, 254, 246, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 240, 254, 246, 185, 136, 142, 247, 252, 254, 140, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 191, 187, 235, 188, 247, 143, 180, 250, 137, 
        162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 254, 140, 247, 254, 245, 176, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 170, 232, 140, 246, 250, 245, 245, 190, 254, 246, 235, 136, 141, 250, 141, 242, 136, 247, 180, 250, 141, 139, 242, 129, 162, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 255, 139, 250, 246, 254, 236, 242, 131, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 224, 242, 253, 141, 241, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 186, 136, 247, 141, 139, 250, 140, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 181, 136, 139, 246, 250, 245, 236, 252, 250, 245, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 181, 136, 139, 246, 250, 245, 176, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 235, 136, 142, 240, 241, 247, 254, 140, 140, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 246, 250, 141, 170, 232, 237, 185, 181, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 136, 251, 243, 226, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 136, 251, 243, 225, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 245, 136, 252, 250, 245, 181, 136, 139, 246, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 245, 136, 252, 250, 245, 233, 136, 140, 162, 194, 194, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 233, 176, 232, 164, 232, 170, 149, 168, 171, 168, 172, 160, 169, 173, 172, 170, 172, 160, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 233, 176, 248, 176, 181, 239, 232, 164, 232, 168, 149, 151, 232, 150, 232, 233, 176, 162, 194, 194, 154, 253, 254, 255, 242, 247, 254, 232, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 232, 172, 194, 194, 194, 194, 143, 254, 252, 170, 232, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 162, 194, 194, 143, 254, 252, 171, 232, 187, 242, 250, 246, 136, 247, 253, 185, 136, 142, 247, 252, 254, 235, 250, 130, 159, 143, 254, 252, 170, 232, 245, 136, 252, 250, 245, 248, 137, 136, 140, 147, 232, 143, 254, 252, 170, 232, 245, 136, 252, 250, 245, 248, 247, 136, 139, 246, 147, 232, 143, 254, 252, 170, 232, 242, 247, 252, 242, 253, 254, 247, 141, 147, 232, 255, 245, 136, 250, 141, 232, 242, 136, 139, 228, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 230, 147, 232, 143, 254, 252, 170, 232, 137, 136, 140, 248, 140, 252, 250, 245, 254, 147, 232, 143, 254, 252, 170, 232, 137, 136, 140, 248, 140, 241, 242, 255, 141, 147, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 247, 136, 139, 246, 248, 254, 247, 143, 147, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 137, 136, 140, 248, 254, 247, 143, 147, 232, 242, 247, 141, 232, 252, 136, 139, 139, 254, 252, 141, 248, 242, 141, 254, 139, 140, 147, 232, 242, 247, 141, 232, 246, 250, 129, 248, 251, 136, 142, 247, 252, 254, 140, 147, 232, 136, 142, 141, 232, 143, 254, 252, 170, 232, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 230, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 187, 242, 140, 141, 139, 242, 251, 142, 141, 242, 136, 247, 190, 190, 225, 159, 143, 254, 252, 170, 232, 181, 147, 232, 143, 254, 252, 170, 232, 191, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 162, 194, 194, 143, 254, 252, 170, 232, 189, 139, 254, 140, 247, 254, 245, 236, 252, 241, 245, 242, 252, 244, 
        159, 255, 245, 136, 250, 141, 232, 252, 136, 140, 237, 241, 254, 141, 250, 147, 232, 143, 254, 252, 170, 232, 189, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 189, 139, 254, 140, 247, 254, 245, 236, 252, 241, 245, 242, 252, 244, 235, 136, 142, 240, 241, 247, 254, 140, 140, 159, 255, 245, 136, 250, 141, 232, 252, 136, 140, 237, 241, 254, 141, 250, 147, 232, 143, 254, 252, 170, 232, 189, 151, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 190, 254, 136, 246, 254, 141, 139, 130, 236, 252, 241, 245, 242, 252, 244, 190, 190, 225, 159, 255, 245, 136, 250, 141, 232, 181, 253, 136, 141, 239, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 190, 254, 136, 246, 254, 141, 139, 130, 236, 246, 242, 141, 241, 159, 143, 254, 252, 170, 232, 181, 147, 232, 143, 254, 252, 170, 232, 239, 147, 232, 143, 254, 252, 170, 232, 179, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 162, 194, 194, 143, 254, 252, 169, 232, 190, 254, 141, 188, 138, 142, 242, 139, 254, 252, 141, 238, 239, 159, 143, 254, 252, 170, 232, 139, 147, 232, 255, 245, 136, 250, 141, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 147, 232, 255, 245, 136, 250, 141, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 144, 162, 194, 194, 143, 254, 252, 170, 232, 191, 187, 235, 237, 254, 129, 141, 142, 139, 254, 169, 187, 159, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 232, 252, 136, 136, 139, 253, 144, 162, 194, 194, 143, 254, 252, 170, 232, 176, 247, 143, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 162, 194, 194, 143, 254, 252, 170, 232, 180, 237, 233, 185, 235, 159, 143, 254, 252, 170, 232, 247, 136, 139, 246, 147, 232, 143, 254, 252, 170, 232, 252, 250, 246, 248, 137, 136, 140, 147, 232, 143, 254, 252, 170, 232, 128, 136, 139, 245, 253, 248, 137, 136, 140, 147, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 251, 139, 253, 255, 248, 245, 142, 141, 147, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 251, 245, 248, 246, 250, 137, 147, 232, 143, 254, 252, 170, 232, 250, 245, 251, 254, 253, 136, 147, 232, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 147, 232, 255, 245, 136, 250, 141, 232, 250, 136, 147, 232, 255, 245, 136, 250, 141, 232, 254, 129, 137, 136, 140, 142, 139, 254, 147, 232, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 245, 142, 246, 250, 147, 232, 255, 245, 136, 250, 141, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 147, 232, 255, 245, 136, 250, 141, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 235, 254, 255, 245, 254, 252, 141, 250, 247, 252, 254, 159, 143, 254, 252, 170, 232, 242, 247, 252, 242, 253, 254, 247, 141, 147, 232, 143, 254, 252, 170, 232, 247, 136, 139, 246, 250, 245, 147, 232, 255, 245, 136, 250, 141, 232, 242, 136, 139, 144, 162, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 188, 237, 136, 189, 245, 136, 250, 141, 159, 143, 254, 252, 171, 232, 139, 240, 251, 254, 144, 162, 194, 194, 143, 254, 252, 171, 232, 237, 254, 129, 141, 142, 139, 254, 179, 182, 187, 159, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 232, 252, 136, 136, 139, 253, 147, 232, 255, 245, 136, 250, 141, 232, 245, 136, 253, 144, 162, 194, 194, 143, 254, 252, 169, 232, 237, 139, 250, 247, 140, 255, 136, 139, 246, 238, 239, 159, 143, 254, 252, 169, 232, 142, 143, 147, 232, 255, 245, 136, 250, 141, 232, 139, 147, 232, 255, 245, 136, 250, 141, 232, 140, 147, 232, 143, 254, 252, 169, 232, 141, 144, 162, 194, 194, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 169, 191, 236, 239, 159, 143, 254, 252, 170, 232, 252, 144, 194, 194, 132, 194, 194, 143, 254, 252, 171, 232, 178, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 148, 168, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 169, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 148, 168, 149, 151, 144, 162, 194, 194, 143, 254, 252, 171, 232, 137, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 171, 159, 252, 149, 251, 240, 147, 232, 178, 149, 128, 131, 144, 147, 232, 143, 254, 252, 171, 159, 252, 149, 240, 251, 147, 232, 178, 149, 129, 130, 144, 147, 232, 140, 141, 254, 137, 159, 252, 149, 251, 147, 232, 252, 149, 240, 144, 144, 162, 194, 194, 143, 254, 252, 171, 232, 138, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 171, 159, 137, 149, 129, 130, 128, 147, 232, 252, 149, 139, 144, 147, 232, 143, 254, 252, 171, 159, 252, 149, 139, 147, 232, 137, 149, 130, 131, 129, 144, 147, 232, 140, 141, 254, 137, 159, 137, 149, 129, 147, 232, 252, 149, 
        139, 144, 144, 162, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 253, 232, 164, 232, 138, 149, 129, 232, 148, 232, 246, 242, 247, 159, 138, 149, 128, 147, 232, 138, 149, 130, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 254, 232, 164, 232, 168, 149, 151, 254, 148, 168, 151, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 250, 251, 140, 159, 138, 149, 131, 232, 146, 232, 159, 138, 149, 128, 232, 148, 232, 138, 149, 130, 144, 232, 150, 232, 159, 173, 149, 151, 232, 145, 232, 253, 232, 146, 232, 254, 144, 144, 147, 232, 253, 232, 150, 232, 159, 138, 149, 129, 232, 146, 232, 254, 144, 147, 232, 138, 149, 129, 144, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 191, 236, 239, 169, 235, 190, 185, 159, 143, 254, 252, 170, 232, 252, 144, 194, 194, 132, 194, 194, 143, 254, 252, 171, 232, 178, 232, 164, 232, 143, 254, 252, 171, 159, 168, 149, 151, 147, 232, 169, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 168, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 170, 149, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 137, 232, 164, 232, 250, 251, 140, 159, 255, 139, 250, 252, 141, 159, 252, 149, 129, 129, 129, 232, 146, 232, 178, 149, 129, 130, 131, 144, 232, 145, 232, 173, 149, 151, 232, 148, 232, 178, 149, 128, 128, 128, 144, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 252, 149, 131, 232, 145, 232, 246, 242, 129, 159, 178, 149, 129, 129, 129, 147, 232, 252, 245, 250, 246, 137, 159, 137, 232, 148, 232, 178, 149, 129, 129, 129, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 147, 232, 252, 149, 130, 144, 162, 194, 194, 134, 194, 194, 246, 250, 141, 170, 232, 237, 139, 250, 247, 140, 137, 136, 140, 254, 159, 246, 250, 141, 170, 232, 242, 247, 180, 250, 141, 139, 242, 129, 144, 194, 194, 132, 194, 194, 143, 254, 252, 170, 232, 242, 151, 232, 164, 232, 242, 247, 180, 250, 141, 139, 242, 129, 228, 151, 230, 162, 194, 194, 143, 254, 252, 170, 232, 242, 168, 232, 164, 232, 242, 247, 180, 250, 141, 139, 242, 129, 228, 168, 230, 162, 194, 194, 143, 254, 252, 170, 232, 242, 169, 232, 164, 232, 242, 247, 180, 250, 141, 139, 242, 129, 228, 169, 230, 162, 194, 194, 246, 250, 141, 170, 232, 136, 142, 141, 180, 250, 141, 139, 242, 129, 232, 164, 232, 246, 250, 141, 170, 159, 143, 254, 252, 170, 159, 242, 151, 149, 129, 147, 232, 242, 168, 149, 129, 147, 232, 242, 169, 149, 129, 144, 147, 194, 194, 143, 254, 252, 170, 159, 242, 151, 149, 130, 147, 232, 242, 168, 149, 130, 147, 232, 242, 169, 149, 130, 144, 147, 194, 194, 143, 254, 252, 170, 159, 242, 151, 149, 131, 147, 232, 242, 168, 149, 131, 147, 232, 242, 169, 149, 131, 144, 144, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 136, 142, 141, 180, 250, 141, 139, 242, 129, 162, 194, 194, 134, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 242, 255, 232, 159, 242, 140, 235, 254, 247, 253, 254, 139, 236, 242, 245, 241, 136, 142, 254, 141, 141, 254, 232, 165, 232, 151, 149, 151, 232, 157, 157, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 232, 165, 164, 232, 151, 232, 157, 157, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 232, 163, 164, 232, 169, 144, 194, 194, 132, 194, 194, 242, 255, 232, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 232, 164, 164, 232, 151, 144, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 239, 250, 245, 142, 254, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 232, 164, 164, 232, 168, 144, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 239, 250, 245, 142, 254, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 232, 164, 164, 232, 169, 144, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 239, 250, 245, 142, 254, 147, 232, 168, 149, 151, 144, 162, 194, 194, 134, 194, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 242, 140, 190, 254, 246, 232, 164, 164, 232, 168, 149, 151, 144, 194, 194, 132, 194, 194, 246, 250, 141, 170, 232, 247, 136, 139, 246, 248, 246, 250, 141, 232, 164, 232, 246, 250, 141, 170, 159, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 144, 162, 194, 194, 246, 250, 141, 170, 232, 242, 247, 143, 248, 247, 
        136, 139, 246, 248, 246, 250, 141, 232, 164, 232, 237, 139, 250, 247, 140, 137, 136, 140, 254, 159, 247, 136, 139, 246, 248, 246, 250, 141, 144, 162, 194, 194, 143, 254, 252, 170, 232, 242, 247, 252, 242, 253, 254, 247, 141, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 140, 246, 250, 245, 245, 190, 254, 246, 235, 136, 141, 250, 141, 242, 136, 247, 180, 250, 141, 139, 242, 129, 232, 145, 232, 242, 247, 143, 248, 247, 136, 139, 246, 248, 246, 250, 141, 232, 145, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 254, 246, 176, 182, 235, 232, 164, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 228, 151, 230, 228, 170, 230, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 254, 246, 187, 242, 140, 137, 254, 139, 140, 242, 136, 247, 232, 164, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 228, 168, 230, 228, 170, 230, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 254, 246, 184, 251, 140, 136, 139, 137, 141, 242, 136, 247, 232, 164, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 228, 169, 230, 228, 170, 230, 162, 194, 194, 143, 254, 252, 170, 232, 240, 254, 246, 186, 254, 247, 141, 254, 139, 232, 164, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 228, 151, 230, 149, 129, 130, 131, 162, 194, 194, 143, 254, 252, 170, 232, 240, 254, 246, 233, 136, 140, 236, 252, 250, 245, 254, 232, 164, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 228, 168, 230, 149, 129, 130, 131, 162, 194, 194, 143, 254, 252, 170, 232, 240, 254, 246, 233, 136, 140, 236, 241, 242, 255, 141, 232, 164, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 228, 169, 230, 149, 129, 130, 131, 162, 194, 194, 143, 254, 252, 170, 232, 240, 254, 246, 186, 136, 245, 136, 139, 232, 164, 232, 240, 254, 246, 233, 250, 139, 250, 246, 140, 228, 170, 230, 149, 129, 130, 131, 162, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 242, 136, 139, 228, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 230, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 253, 242, 255, 255, 232, 164, 232, 168, 149, 151, 232, 150, 232, 255, 245, 136, 250, 141, 159, 171, 144, 162, 194, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 242, 232, 164, 232, 151, 162, 232, 242, 232, 163, 232, 172, 162, 232, 242, 146, 146, 144, 194, 194, 242, 136, 139, 228, 242, 230, 232, 164, 232, 246, 250, 129, 159, 168, 149, 151, 147, 232, 240, 254, 246, 176, 182, 235, 232, 146, 232, 169, 149, 151, 232, 145, 232, 240, 254, 246, 187, 242, 140, 137, 254, 139, 140, 242, 136, 247, 232, 145, 232, 159, 148, 151, 149, 172, 232, 146, 232, 255, 245, 136, 250, 141, 159, 242, 144, 232, 145, 232, 253, 242, 255, 255, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 136, 251, 243, 248, 140, 242, 131, 254, 232, 164, 232, 246, 250, 129, 159, 240, 254, 246, 233, 136, 140, 236, 252, 250, 245, 254, 149, 129, 147, 232, 246, 250, 129, 159, 240, 254, 246, 233, 136, 140, 236, 252, 250, 245, 254, 149, 130, 147, 232, 240, 254, 246, 233, 136, 140, 236, 252, 250, 245, 254, 149, 131, 144, 144, 162, 194, 194, 143, 254, 252, 170, 232, 254, 247, 143, 248, 252, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 250, 251, 140, 136, 139, 251, 232, 164, 232, 168, 149, 151, 232, 148, 232, 240, 254, 246, 186, 136, 245, 136, 139, 162, 194, 194, 194, 194, 143, 254, 252, 170, 232, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 230, 162, 194, 194, 143, 254, 252, 171, 232, 136, 142, 141, 248, 253, 242, 139, 232, 164, 232, 187, 242, 250, 246, 136, 247, 253, 185, 136, 142, 247, 252, 254, 235, 250, 130, 159, 245, 136, 252, 250, 245, 233, 136, 140, 147, 232, 245, 136, 252, 250, 245, 181, 136, 139, 246, 147, 232, 242, 247, 252, 242, 253, 254, 247, 141, 147, 232, 242, 136, 139, 147, 232, 240, 254, 246, 233, 136, 140, 236, 252, 250, 245, 254, 147, 232, 240, 254, 246, 233, 136, 140, 236, 241, 242, 255, 141, 147, 232, 136, 139, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 250, 245, 251, 254, 253, 136, 237, 254, 129, 141, 142, 139, 254, 147, 232, 170, 147, 232, 240, 254, 246, 185, 136, 142, 247, 252, 254, 140, 147, 232, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 144, 162, 194, 194, 143, 254, 252, 170, 232, 139, 240, 251, 248, 128, 254, 242, 240, 241, 141, 140, 228, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 230, 162, 194, 194, 139, 240, 251, 248, 128, 254, 242, 240, 241, 141, 140, 228, 151, 230, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 172, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 194, 139, 240, 251, 248, 128, 254, 242, 240, 241, 141, 140, 228, 168, 230, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 172, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 194, 139, 240, 251, 248, 128, 254, 242, 240, 241, 141, 140, 228, 169, 230, 232, 164, 232, 143, 
        254, 252, 170, 159, 151, 149, 151, 147, 232, 168, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 194, 139, 240, 251, 248, 128, 254, 242, 240, 241, 141, 140, 228, 170, 230, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 172, 144, 162, 194, 194, 139, 240, 251, 248, 128, 254, 242, 240, 241, 141, 140, 228, 171, 230, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 172, 144, 162, 194, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 252, 232, 164, 232, 151, 162, 232, 252, 232, 163, 232, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 162, 232, 252, 146, 146, 144, 194, 194, 132, 194, 194, 143, 254, 252, 169, 232, 254, 247, 143, 248, 142, 143, 232, 164, 232, 190, 254, 141, 188, 138, 142, 242, 139, 254, 252, 141, 238, 239, 159, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 247, 136, 139, 246, 248, 246, 250, 141, 232, 145, 232, 237, 139, 250, 247, 140, 137, 136, 140, 254, 159, 140, 246, 250, 245, 245, 190, 254, 246, 235, 136, 141, 250, 141, 242, 136, 247, 180, 250, 141, 139, 242, 129, 144, 232, 145, 232, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 252, 230, 149, 139, 240, 251, 144, 147, 232, 241, 136, 139, 242, 182, 139, 242, 254, 247, 147, 232, 143, 254, 139, 141, 182, 139, 242, 254, 247, 144, 162, 194, 194, 254, 247, 143, 248, 252, 136, 245, 136, 139, 232, 146, 164, 232, 191, 187, 235, 237, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 254, 247, 143, 248, 142, 143, 144, 232, 145, 232, 139, 240, 251, 248, 128, 254, 242, 240, 241, 141, 140, 228, 252, 230, 162, 194, 194, 134, 194, 194, 254, 247, 143, 248, 252, 136, 245, 136, 139, 232, 164, 232, 254, 247, 143, 248, 252, 136, 245, 136, 139, 232, 145, 232, 159, 240, 254, 246, 186, 136, 245, 136, 139, 232, 146, 232, 250, 251, 140, 136, 139, 251, 232, 145, 232, 137, 136, 128, 159, 169, 149, 174, 168, 175, 169, 175, 147, 232, 148, 240, 254, 246, 184, 251, 140, 136, 139, 137, 141, 242, 136, 247, 232, 145, 232, 136, 142, 141, 248, 253, 242, 139, 149, 250, 232, 150, 232, 136, 251, 243, 248, 140, 242, 131, 254, 144, 144, 162, 194, 194, 194, 194, 143, 254, 252, 170, 232, 143, 242, 254, 128, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 143, 254, 252, 170, 232, 247, 136, 139, 246, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 144, 162, 194, 194, 143, 254, 252, 170, 232, 255, 139, 136, 247, 141, 248, 139, 254, 255, 245, 232, 164, 232, 139, 254, 255, 245, 254, 252, 141, 159, 143, 242, 254, 128, 147, 232, 247, 136, 139, 246, 144, 162, 194, 194, 143, 254, 252, 169, 232, 255, 139, 136, 247, 141, 248, 139, 254, 255, 245, 248, 142, 143, 232, 164, 232, 190, 254, 141, 188, 138, 142, 242, 139, 254, 252, 141, 238, 239, 159, 255, 139, 136, 247, 141, 248, 139, 254, 255, 245, 147, 232, 241, 136, 139, 242, 182, 139, 242, 254, 247, 147, 232, 143, 254, 139, 141, 182, 139, 242, 254, 247, 144, 162, 194, 194, 143, 254, 252, 170, 232, 255, 139, 136, 247, 141, 248, 139, 254, 255, 245, 248, 252, 136, 245, 136};
    }

    public static class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25561a = {139, 232, 164, 232, 191, 187, 235, 237, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 255, 139, 136, 247, 141, 248, 139, 254, 255, 245, 248, 142, 143, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 255, 139, 254, 140, 247, 254, 245, 232, 164, 232, 235, 254, 255, 245, 254, 252, 141, 250, 247, 252, 254, 159, 143, 242, 254, 128, 147, 232, 247, 136, 139, 246, 147, 232, 240, 254, 246, 176, 182, 235, 144, 162, 194, 194, 194, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 254, 247, 143, 248, 252, 136, 245, 136, 139, 147, 232, 255, 139, 136, 247, 141, 248, 139, 254, 255, 245, 248, 252, 136, 245, 136, 139, 147, 232, 255, 139, 254, 140, 247, 254, 245, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 145, 164, 232, 254, 129, 137, 136, 140, 142, 139, 254, 232, 145, 232, 246, 250, 129, 179, 142, 246, 250, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 252, 136, 245, 136, 139, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 137, 136, 128, 159, 252, 136, 245, 136, 139, 147, 232, 143, 254, 252, 170, 159, 168, 149, 151, 232, 150, 232, 169, 149, 169, 144, 144, 162, 194, 194, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 194, 134, 194, 194, 254, 245, 140, 254, 194, 194, 132, 194, 194, 143, 254, 252, 169, 232, 141, 254, 129, 252, 136, 136, 139, 253, 232, 164, 232, 252, 245, 250, 246, 137, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 255, 139, 250, 240, 248, 247, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 144, 162, 194, 194, 242, 255, 232, 159, 242, 140, 181, 136, 139, 246, 250, 245, 180, 250, 137, 237, 254, 129, 141, 142, 139, 254, 232, 165, 232, 151, 149, 151, 144, 194, 194, 132, 194, 194, 143, 254, 252, 169, 232, 141, 139, 250, 247, 140, 255, 136, 139, 246, 254, 253, 248, 142, 143, 232, 164, 232, 159, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 164, 232, 151, 149, 151, 144, 166, 232, 141, 254, 129, 252, 136, 136, 139, 253, 232, 161, 232, 237, 139, 250, 247, 140, 255, 136, 139, 246, 238, 239, 159, 141, 254, 129, 252, 136, 136, 139, 253, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 232, 150, 232, 246, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 181, 136, 139, 246, 250, 245, 236, 252, 250, 245, 254, 147, 232, 143, 254, 252, 169, 159, 151, 149, 151, 144, 144, 162, 194, 194, 143, 254, 252, 170, 232, 247, 136, 139, 246, 250, 245, 180, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 247, 136, 139, 246, 250, 245, 180, 250, 137, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 139, 250, 247, 140, 255, 136, 139, 246, 254, 253, 248, 142, 143, 144, 149, 139, 240, 251, 162, 194, 194, 247, 136, 139, 246, 250, 245, 180, 232, 164, 232, 247, 136, 139, 246, 250, 245, 180, 232, 145, 232, 169, 149, 151, 232, 148, 232, 168, 149, 151, 162, 194, 194, 242, 255, 232, 159, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 164, 232, 168, 149, 151, 144, 194, 194, 132, 194, 194, 247, 136, 139, 246, 250, 245, 180, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 147, 232, 247, 136, 139, 246, 250, 245, 180, 147, 232, 246, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 181, 136, 139, 246, 250, 245, 176, 247, 141, 254, 247, 140, 242, 141, 130, 144, 162, 194, 194, 134, 194, 194, 255, 139, 250, 240, 248, 247, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 237, 185, 181, 232, 145, 232, 247, 136, 139, 246, 250, 245, 180, 144, 162, 194, 194, 134, 194, 194, 255, 139, 250, 240, 248, 247, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 255, 139, 250, 240, 248, 247, 136, 139, 246, 250, 245, 144, 162, 194, 194, 194, 194, 143, 254, 252, 171, 232, 250, 245, 251, 254, 253, 136, 248, 139, 240, 251, 250, 232, 164, 232, 159, 242, 140, 184, 245, 251, 254, 253, 136, 237, 254, 129, 141, 142, 139, 254, 232, 164, 164, 232, 151, 149, 151, 144, 166, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 232, 161, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 250, 245, 251, 254, 253, 136, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 162, 194, 194, 143, 254, 252, 170, 232, 
        250, 245, 251, 254, 253, 136, 232, 164, 232, 137, 136, 128, 159, 250, 245, 251, 254, 253, 136, 248, 139, 240, 251, 250, 149, 139, 240, 251, 232, 150, 232, 246, 250, 129, 159, 151, 149, 151, 151, 151, 168, 147, 232, 250, 245, 251, 254, 253, 136, 248, 139, 240, 251, 250, 149, 250, 144, 147, 232, 143, 254, 252, 170, 159, 169, 149, 169, 144, 144, 162, 194, 194, 143, 254, 252, 171, 232, 136, 139, 246, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 136, 139, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 252, 136, 136, 139, 253, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 250, 136, 232, 164, 232, 136, 139, 246, 149, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 232, 164, 232, 136, 139, 246, 149, 251, 162, 194, 194, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 232, 164, 232, 136, 139, 246, 149, 240, 162, 194, 194, 194, 194, 242, 255, 232, 159, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 164, 232, 168, 149, 151, 144, 194, 194, 132, 194, 194, 250, 245, 251, 254, 253, 136, 248, 139, 240, 251, 250, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 252, 142, 140, 141, 136, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 240, 245, 248, 189, 139, 250, 240, 186, 136, 136, 139, 253, 149, 129, 232, 150, 232, 255, 139, 250, 246, 254, 236, 242, 131, 254, 149, 129, 147, 232, 168, 149, 151, 232, 148, 232, 240, 245, 248, 189, 139, 250, 240, 186, 136, 136, 139, 253, 149, 130, 232, 150, 232, 255, 139, 250, 246, 254, 236, 242, 131, 254, 149, 130, 144, 144, 162, 194, 194, 250, 245, 251, 254, 253, 136, 232, 164, 232, 250, 245, 251, 254, 253, 136, 248, 139, 240, 251, 250, 149, 139, 240, 251, 232, 150, 232, 246, 250, 129, 159, 151, 149, 151, 151, 151, 168, 147, 232, 250, 245, 251, 254, 253, 136, 248, 139, 240, 251, 250, 149, 250, 144, 162, 194, 194, 194, 194, 132, 194, 194, 143, 254, 252, 170, 232, 241, 140, 143, 232, 164, 232, 235, 190, 185, 169, 191, 236, 239, 159, 250, 245, 251, 254, 253, 136, 144, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 143, 129, 151, 232, 164, 232, 151, 149, 170, 151, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 143, 130, 151, 232, 164, 232, 151, 149, 168, 172, 162, 194, 194, 242, 255, 232, 159, 241, 140, 143, 228, 169, 230, 232, 163, 232, 143, 129, 151, 144, 194, 194, 132, 194, 194, 241, 140, 143, 228, 169, 230, 232, 164, 232, 143, 130, 151, 232, 146, 232, 241, 140, 143, 228, 169, 230, 232, 145, 232, 159, 143, 129, 151, 232, 148, 232, 143, 130, 151, 144, 232, 150, 232, 143, 129, 151, 162, 194, 194, 134, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 140, 129, 168, 232, 164, 232, 151, 149, 174, 151, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 140, 130, 168, 232, 164, 232, 151, 149, 175, 151, 162, 194, 194, 242, 255, 232, 159, 241, 140, 143, 228, 168, 230, 232, 165, 232, 140, 129, 168, 144, 194, 194, 132, 194, 194, 241, 140, 143, 228, 168, 230, 232, 164, 232, 140, 129, 168, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 140, 130, 168, 144, 232, 150, 232, 159, 168, 149, 151, 232, 148, 232, 140, 129, 168, 144, 232, 146, 232, 241, 140, 143, 228, 168, 230, 232, 145, 232, 159, 140, 130, 168, 232, 148, 232, 140, 129, 168, 144, 232, 150, 232, 159, 168, 149, 151, 232, 148, 232, 140, 129, 168, 144, 162, 194, 194, 134, 194, 194, 250, 245, 251, 254, 253, 136, 232, 164, 232, 191, 236, 239, 169, 235, 190, 185, 159, 241, 140, 143, 144, 162, 194, 194, 134, 194, 194, 194, 194, 250, 245, 251, 254, 253, 136, 232, 164, 232, 137, 136, 128, 159, 250, 245, 251, 254, 253, 136, 147, 232, 143, 254, 252, 170, 159, 169, 149, 169, 144, 144, 162, 194, 194, 194, 194, 250, 136, 232, 164, 232, 168, 149, 151, 162, 194, 194, 246, 254, 141, 250, 245, 245, 242, 252, 232, 164, 232, 168, 149, 151, 162, 194, 194, 139, 136, 142, 240, 241, 247, 254, 140, 140, 232, 164, 232, 246, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 235, 136, 142, 240, 241, 247, 254, 140, 140, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 232, 164, 232, 143, 254, 139, 141, 182, 139, 242, 254, 247, 162, 194, 194, 255, 245, 136, 250, 141, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 232, 164, 232, 241, 136, 139, 242, 182, 139, 242, 254, 247, 162, 194, 194, 242, 255, 232, 159, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 164, 232, 168, 149, 151, 144, 194, 194, 132, 194, 194, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 232, 164, 232, 148, 160, 151, 149, 151, 232, 145, 232, 170, 149, 168, 171, 168, 172, 160, 232, 150, 232, 168, 175, 151, 149, 151, 162, 194, 194, 241, 136, 139, 242, 248, 136, 139, 242, 254, 
        247, 232, 164, 232, 159, 159, 245, 136, 252, 250, 245, 233, 136, 140, 149, 129, 232, 165, 232, 151, 149, 151, 144, 232, 166, 232, 148, 170, 151, 149, 151, 232, 161, 232, 170, 151, 149, 151, 144, 232, 145, 232, 170, 149, 168, 171, 168, 172, 160, 232, 150, 232, 168, 175, 151, 149, 151, 162, 194, 194, 134, 194, 194, 242, 255, 232, 159, 246, 250, 129, 179, 142, 246, 250, 232, 165, 232, 151, 149, 174, 144, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 254, 129, 137, 136, 140, 142, 139, 254, 248, 139, 250, 141, 242, 136, 232, 164, 232, 151, 149, 175, 232, 146, 232, 159, 246, 250, 129, 179, 142, 246, 250, 232, 148, 232, 151, 149, 174, 144, 232, 150, 232, 151, 149, 170, 232, 145, 232, 151, 149, 172, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 180, 237, 233, 185, 235, 159, 255, 139, 250, 240, 248, 247, 136, 139, 246, 250, 245, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 147, 232, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 251, 139, 253, 255, 179, 142, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 250, 245, 251, 254, 253, 136, 147, 232, 246, 254, 141, 250, 245, 245, 242, 252, 147, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 147, 232, 250, 136, 147, 232, 254, 129, 137, 136, 140, 142, 139, 254, 232, 145, 232, 254, 129, 137, 136, 140, 142, 139, 254, 248, 139, 250, 141, 242, 136, 147, 232, 246, 250, 129, 179, 142, 246, 250, 147, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 147, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 144, 162, 194, 194, 134, 194, 194, 254, 245, 140, 254, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 245, 142, 246, 250, 248, 140, 252, 250, 245, 254, 232, 164, 232, 168, 149, 171, 170, 232, 148, 232, 246, 250, 129, 159, 159, 246, 250, 129, 179, 142, 246, 250, 232, 148, 232, 151, 149, 171, 173, 144, 147, 232, 151, 149, 151, 144, 232, 150, 232, 151, 149, 169, 171, 232, 145, 232, 151, 149, 171, 170, 162, 232, 150, 150, 232, 246, 250, 244, 254, 232, 245, 142, 246, 250, 232, 168, 168, 175, 232, 141, 136, 232, 168, 173, 175, 194, 194, 255, 245, 136, 250, 141, 232, 250, 253, 243, 142, 140, 141, 248, 245, 142, 246, 250, 232, 164, 232, 246, 250, 129, 179, 142, 246, 250, 232, 145, 232, 245, 142, 246, 250, 248, 140, 252, 250, 245, 254, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 180, 237, 233, 185, 235, 159, 255, 139, 250, 240, 248, 247, 136, 139, 246, 250, 245, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 147, 232, 128, 136, 139, 245, 253, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 251, 139, 253, 255, 179, 142, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 250, 245, 251, 254, 253, 136, 147, 232, 246, 254, 141, 250, 245, 245, 242, 252, 147, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 147, 232, 250, 136, 147, 232, 254, 129, 137, 136, 140, 142, 139, 254, 232, 145, 232, 250, 253, 243, 142, 140, 141, 248, 245, 142, 246, 250, 147, 232, 246, 250, 129, 179, 142, 246, 250, 147, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 147, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 144, 162, 194, 194, 134, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 252, 136, 245, 136, 139, 232, 145, 232, 250, 245, 251, 254, 253, 136, 248, 139, 240, 251, 250, 149, 250, 147, 232, 250, 245, 251, 254, 253, 136, 248, 139, 240, 251, 250, 149, 250, 144, 162, 194, 194, 134, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 194, 194, 132, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 184, 232, 164, 232, 169, 149, 172, 168, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 185, 232, 164, 232, 151, 149, 151, 170, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 186, 232, 164, 232, 169, 149, 171, 170, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 187, 232, 164, 232, 151, 149, 172, 160, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 188, 232, 164, 232, 151, 149, 168, 171, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 159, 252, 136, 245, 136, 139, 232, 145, 232, 159, 184, 232, 145, 232, 252, 136, 245, 136, 139, 232, 146, 232, 185, 144, 144, 232, 150, 232, 159, 252, 136, 245, 136, 139, 232, 145, 232, 159, 186, 232, 145, 232, 252, 136, 245, 136, 139, 232, 146, 232, 187, 144, 232, 146, 232, 188, 144, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 171, 232, 187, 242, 250, 246, 136, 247, 253, 185, 136, 142, 247, 252, 254, 235, 250, 130, 159, 143, 
        254, 252, 170, 232, 245, 136, 252, 250, 245, 248, 137, 136, 140, 147, 232, 143, 254, 252, 170, 232, 245, 136, 252, 250, 245, 248, 247, 136, 139, 246, 147, 232, 143, 254, 252, 170, 232, 242, 247, 252, 242, 253, 254, 247, 141, 147, 232, 255, 245, 136, 250, 141, 232, 242, 136, 139, 228, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 230, 147, 232, 143, 254, 252, 170, 232, 137, 136, 140, 248, 140, 252, 250, 245, 254, 147, 232, 143, 254, 252, 170, 232, 137, 136, 140, 248, 140, 241, 242, 255, 141, 147, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 247, 136, 139, 246, 248, 254, 247, 143, 147, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 137, 136, 140, 248, 254, 247, 143, 147, 232, 242, 247, 141, 232, 252, 136, 139, 139, 254, 252, 141, 248, 242, 141, 254, 139, 140, 147, 232, 242, 247, 141, 232, 246, 250, 129, 248, 251, 136, 142, 247, 252, 254, 140, 147, 232, 136, 142, 141, 232, 143, 254, 252, 170, 232, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 230, 144, 194, 194, 132, 194, 194, 143, 254, 252, 170, 232, 242, 247, 248, 253, 242, 139, 232, 164, 232, 139, 254, 255, 139, 250, 252, 141, 159, 242, 247, 252, 242, 253, 254, 247, 141, 147, 232, 245, 136, 252, 250, 245, 248, 247, 136, 139, 246, 147, 232, 168, 149, 151, 232, 150, 232, 242, 136, 139, 228, 169, 230, 144, 162, 194, 194, 143, 254, 252, 170, 232, 136, 142, 141, 248, 253, 242, 139, 232, 164, 232, 242, 247, 248, 253, 242, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 136, 140, 248, 252, 139, 242, 141, 242, 252, 248, 250, 247, 240, 245, 254, 232, 164, 232, 252, 136, 140, 159, 250, 140, 242, 247, 159, 168, 149, 151, 232, 150, 232, 242, 136, 139, 228, 169, 230, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 139, 250, 130, 248, 253, 242, 140, 141, 250, 247, 252, 254, 232, 164, 232, 151, 149, 151, 162, 194, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 242, 232, 164, 232, 151, 162, 232, 242, 232, 163, 232, 246, 250, 129, 248, 251, 136, 142, 247, 252, 254, 140, 162, 232, 242, 146, 146, 144, 194, 194, 132, 194, 194, 242, 247, 248, 253, 242, 139, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 242, 247, 248, 253, 242, 139, 144, 162, 194, 194, 143, 254, 252, 170, 232, 140, 250, 246, 137, 245, 254, 248, 253, 242, 139, 232, 164, 232, 242, 247, 248, 253, 242, 139, 162, 194, 194, 242, 255, 232, 159, 252, 136, 139, 139, 254, 252, 141, 248, 242, 141, 254, 139, 140, 232, 165, 232, 151, 144, 194, 194, 132, 194, 194, 143, 254, 252, 170, 232, 137, 232, 164, 232, 245, 136, 252, 250, 245, 248, 137, 136, 140, 162, 194, 194, 143, 254, 252, 170, 232, 140, 253, 232, 164, 232, 242, 247, 248, 253, 242, 139, 162, 194, 194, 143, 254, 252, 170, 232, 245, 253, 232, 164, 232, 242, 247, 248, 253, 242, 139, 162, 194, 194, 143, 254, 252, 170, 232, 253, 248, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 144, 162, 194, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 244, 232, 164, 232, 151, 162, 232, 244, 232, 163, 232, 252, 136, 139, 139, 254, 252, 141, 248, 242, 141, 254, 139, 140, 162, 232, 244, 146, 146, 144, 194, 194, 132, 194, 194, 143, 254, 252, 169, 232, 254, 247, 143, 248, 142, 143, 232, 164, 232, 190, 254, 141, 188, 138, 142, 242, 139, 254, 252, 141, 238, 239, 159, 140, 253, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 247, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 247, 136, 139, 246, 248, 254, 247, 143, 147, 232, 254, 247, 143, 248, 142, 143, 144, 149, 139, 240, 251, 232, 145, 232, 169, 149, 151, 232, 148, 232, 168, 149, 151, 162, 194, 194, 143, 254, 252, 170, 232, 138, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 137, 136, 140, 248, 254, 247, 143, 147, 232, 254, 247, 143, 248, 142, 143, 144, 149, 139, 240, 251, 232, 145, 232, 137, 136, 140, 248, 140, 252, 250, 245, 254, 232, 148, 232, 137, 136, 140, 248, 140, 241, 242, 255, 141, 162, 194, 194, 242, 255, 232, 159, 253, 136, 141, 159, 247, 147, 232, 245, 253, 144, 232, 164, 164, 232, 151, 149, 151, 144, 194, 194, 132, 194, 194, 251, 139, 254, 250, 244, 162, 194, 194, 134, 194, 194, 254, 245, 140, 254, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 141, 232, 164, 232, 159, 253, 136, 141, 159, 247, 147, 232, 138, 144, 232, 148, 232, 253, 136, 141, 159, 247, 147, 232, 137, 144, 144, 232, 150, 232, 253, 136, 141, 159, 247, 147, 232, 245, 253, 144, 162, 194, 194, 253, 248, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 137, 232, 146, 232, 245, 253, 232, 145, 232, 141, 144, 162, 194, 194, 134, 194, 194, 140, 253, 232, 164, 232, 253, 248, 162, 194, 194, 134, 194, 194, 140, 250, 246, 137, 245, 254, 248, 253, 242, 139, 232, 164, 232, 253, 248, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 169, 232, 247, 136, 139, 246, 248, 254, 247, 143, 248, 142, 143, 232, 164, 232, 190, 254, 141, 188, 138, 142, 242, 139, 254, 252, 141, 238, 239, 159, 140, 250, 246, 137, 245, 254, 248, 253, 242, 139, 147, 
        232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 194, 143, 254, 252, 170, 232, 247, 136, 139, 246, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 247, 136, 139, 246, 248, 254, 247, 143, 147, 232, 247, 136, 139, 246, 248, 254, 247, 143, 248, 142, 143, 144, 149, 139, 240, 251, 232, 145, 232, 169, 149, 151, 232, 148, 232, 168, 149, 151, 162, 194, 194, 143, 254, 252, 170, 232, 241, 242, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 137, 136, 140, 248, 254, 247, 143, 147, 232, 247, 136, 139, 246, 248, 254, 247, 143, 248, 142, 143, 144, 149, 139, 240, 251, 232, 145, 232, 137, 136, 140, 248, 140, 252, 250, 245, 254, 232, 148, 232, 137, 136, 140, 248, 140, 241, 242, 255, 141, 162, 194, 194, 139, 250, 130, 248, 253, 242, 140, 141, 250, 247, 252, 254, 232, 146, 164, 232, 253, 242, 140, 141, 250, 247, 252, 254, 159, 245, 136, 252, 250, 245, 248, 137, 136, 140, 147, 232, 241, 242, 141, 144, 162, 194, 194, 242, 255, 232, 159, 250, 251, 140, 159, 253, 136, 141, 159, 148, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 144, 144, 232, 165, 232, 252, 136, 140, 248, 252, 139, 242, 141, 242, 252, 248, 250, 247, 240, 245, 254, 144, 194, 194, 132, 194, 194, 150, 150, 232, 142, 247, 139, 136, 245, 245, 242, 247, 240, 232, 255, 136, 139, 148, 245, 136, 136, 137, 232, 136, 255, 232, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 232, 242, 141, 254, 139, 250, 141, 242, 136, 247, 140, 232, 253, 142, 254, 232, 141, 136, 232, 241, 250, 247, 240, 242, 247, 240, 232, 242, 140, 140, 142, 254, 194, 194, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 151, 230, 232, 164, 232, 139, 254, 255, 139, 250, 252, 141, 159, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 147, 232, 242, 136, 139, 228, 151, 230, 144, 162, 194, 194, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 168, 230, 232, 164, 232, 139, 254, 255, 139, 250, 252, 141, 159, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 147, 232, 242, 136, 139, 228, 168, 230, 144, 162, 194, 194, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 169, 230, 232, 164, 232, 139, 254, 255, 139, 250, 252, 141, 159, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 147, 232, 242, 136, 139, 228, 169, 230, 144, 162, 194, 194, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 170, 230, 232, 164, 232, 159, 250, 251, 140, 159, 253, 136, 141, 159, 148, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 144, 144, 232, 165, 232, 252, 136, 140, 159, 250, 140, 242, 247, 159, 168, 149, 151, 232, 150, 232, 242, 136, 139, 228, 170, 230, 144, 144, 144, 166, 232, 139, 254, 255, 139, 250, 252, 141, 159, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 147, 232, 242, 136, 139, 228, 170, 230, 144, 232, 161, 232, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 169, 230, 162, 194, 194, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 171, 230, 232, 164, 232, 159, 250, 251, 140, 159, 253, 136, 141, 159, 148, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 144, 144, 232, 165, 232, 252, 136, 140, 159, 250, 140, 242, 247, 159, 168, 149, 151, 232, 150, 232, 242, 136, 139, 228, 171, 230, 144, 144, 144, 166, 232, 139, 254, 255, 139, 250, 252, 141, 159, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 147, 232, 242, 136, 139, 228, 171, 230, 144, 232, 161, 232, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 169, 230, 162, 194, 194, 251, 139, 254, 250, 244, 162, 194, 194, 134, 194, 194, 136, 142, 141, 248, 253, 242, 139, 232, 164, 232, 139, 254, 255, 245, 254, 252, 141, 159, 242, 247, 248, 253, 242, 139, 147, 232, 247, 136, 139, 246, 144, 162, 194, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 243, 232, 164, 232, 151, 162, 232, 243, 232, 163, 232, 181, 238, 180, 248, 187, 176, 236, 233, 188, 235, 162, 232, 243, 146, 146, 144, 194, 194, 136, 142, 141, 248, 253, 242, 139, 248, 139, 240, 251, 228, 243, 230, 232, 164, 232, 136, 142, 141, 248, 253, 242, 139, 162, 194, 194, 242, 247, 248, 253, 242, 139, 232, 164, 232, 136, 142, 141, 248, 253, 242, 139, 162, 194, 194, 245, 136, 252, 250, 245, 248, 137, 136, 140, 232, 164, 232, 241, 242, 141, 162, 194, 194, 134, 194, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 171, 159, 136, 142, 141, 248, 253, 242, 139, 147, 232, 139, 250, 130, 248, 253, 242, 140, 141, 250, 247, 252, 254, 144, 162, 194, 194, 134, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 187, 242, 140, 141, 139, 242, 251, 142, 141, 242, 136, 247, 190, 190, 225, 159, 143, 254, 252, 170, 232, 181, 147, 232, 143, 254, 252, 170, 232, 191, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 250, 232, 164, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 232, 145, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 162, 194, 194, 255, 245, 136, 250, 141, 232, 250, 169, 232, 164, 232, 250, 232, 145, 232, 250, 162, 
        194, 194, 255, 245, 136, 250, 141, 232, 181, 253, 136, 141, 191, 232, 164, 232, 246, 250, 129, 159, 253, 136, 141, 159, 181, 147, 232, 191, 144, 147, 232, 151, 149, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 181, 253, 136, 141, 191, 169, 232, 164, 232, 181, 253, 136, 141, 191, 232, 145, 232, 181, 253, 136, 141, 191, 162, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 247, 136, 246, 232, 164, 232, 250, 169, 162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 254, 247, 136, 246, 232, 164, 232, 159, 181, 253, 136, 141, 191, 169, 232, 145, 232, 159, 250, 169, 232, 148, 232, 168, 149, 151, 144, 232, 146, 232, 168, 149, 151, 144, 162, 194, 194, 253, 254, 247, 136, 246, 232, 164, 232, 233, 176, 232, 145, 232, 253, 254, 247, 136, 246, 232, 145, 232, 253, 254, 247, 136, 246, 162, 194, 194, 194, 194, 139, 254, 141, 142, 139, 247, 232, 247, 136, 246, 232, 150, 232, 253, 254, 247, 136, 246, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 189, 139, 254, 140, 247, 254, 245, 236, 252, 241, 245, 242, 252, 244, 159, 255, 245, 136, 250, 141, 232, 252, 136, 140, 237, 241, 254, 141, 250, 147, 232, 143, 254, 252, 170, 232, 189, 151, 144, 194, 194, 132, 194, 194, 139, 254, 141, 142, 139, 247, 232, 189, 151, 232, 146, 232, 159, 168, 149, 151, 232, 148, 232, 189, 151, 144, 232, 145, 232, 137, 136, 128, 159, 252, 245, 250, 246, 137, 159, 168, 149, 151, 232, 148, 232, 252, 136, 140, 237, 241, 254, 141, 250, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 147, 232, 172, 149, 151, 144, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 189, 139, 254, 140, 247, 254, 245, 236, 252, 241, 245, 242, 252, 244, 235, 136, 142, 240, 241, 247, 254, 140, 140, 159, 255, 245, 136, 250, 141, 232, 252, 136, 140, 237, 241, 254, 141, 250, 147, 232, 143, 254, 252, 170, 232, 189, 151, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 194, 194, 132, 194, 194, 139, 254, 141, 142, 139, 247, 232, 189, 151, 232, 146, 232, 159, 246, 250, 129, 159, 143, 254, 252, 170, 159, 168, 149, 151, 232, 148, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 147, 232, 189, 151, 144, 232, 148, 232, 189, 151, 144, 232, 145, 232, 137, 136, 128, 159, 252, 245, 250, 246, 137, 159, 168, 149, 151, 232, 148, 232, 252, 136, 140, 237, 241, 254, 141, 250, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 147, 232, 172, 149, 151, 144, 162, 194, 194, 134, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 190, 254, 136, 246, 254, 141, 139, 130, 236, 252, 241, 245, 242, 252, 244, 190, 190, 225, 159, 255, 245, 136, 250, 141, 232, 181, 253, 136, 141, 239, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 139, 232, 164, 232, 159, 139, 136, 142, 240, 241, 247, 254, 140, 140, 232, 146, 232, 168, 149, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 244, 232, 164, 232, 159, 139, 232, 145, 232, 139, 144, 232, 150, 232, 175, 149, 151, 162, 194, 194, 255, 245, 136, 250, 141, 232, 247, 136, 246, 232, 164, 232, 181, 253, 136, 141, 239};
    }

    public static class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25562a = {162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 254, 247, 136, 246, 232, 164, 232, 181, 253, 136, 141, 239, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 244, 144, 232, 146, 232, 244, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 247, 136, 246, 232, 150, 232, 253, 254, 247, 136, 246, 162, 194, 194, 134, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 190, 254, 136, 246, 254, 141, 139, 130, 236, 246, 242, 141, 241, 159, 143, 254, 252, 170, 232, 181, 147, 232, 143, 254, 252, 170, 232, 239, 147, 232, 143, 254, 252, 170, 232, 179, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 181, 253, 136, 141, 239, 232, 164, 232, 246, 250, 129, 159, 253, 136, 141, 159, 181, 147, 232, 239, 144, 147, 232, 151, 149, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 181, 253, 136, 141, 179, 232, 164, 232, 246, 250, 129, 159, 253, 136, 141, 159, 181, 147, 232, 179, 144, 147, 232, 151, 149, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 240, 129, 169, 232, 164, 232, 190, 254, 136, 246, 254, 141, 139, 130, 236, 252, 241, 245, 242, 252, 244, 190, 190, 225, 159, 181, 253, 136, 141, 239, 147, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 240, 129, 168, 232, 164, 232, 190, 254, 136, 246, 254, 141, 139, 130, 236, 252, 241, 245, 242, 252, 244, 190, 190, 225, 159, 181, 253, 136, 141, 179, 147, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 240, 240, 129, 168, 232, 145, 232, 240, 240, 129, 169, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 169, 232, 190, 254, 141, 188, 138, 142, 242, 139, 254, 252, 141, 238, 239, 159, 143, 254, 252, 170, 232, 139, 147, 232, 255, 245, 136, 250, 141, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 147, 232, 255, 245, 136, 250, 141, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 144, 194, 194, 132, 194, 194, 242, 255, 232, 159, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 164, 232, 151, 149, 151, 144, 194, 194, 132, 194, 194, 143, 254, 252, 170, 232, 139, 248, 232, 164, 232, 139, 162, 194, 194, 242, 255, 232, 159, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 232, 152, 164, 232, 151, 149, 151, 232, 133, 133, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 232, 152, 164, 232, 151, 149, 151, 144, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 143, 232, 164, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 143, 232, 164, 232, 252, 136, 140, 159, 143, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 140, 143, 232, 164, 232, 140, 242, 247, 159, 143, 144, 162, 194, 194, 246, 250, 141, 170, 232, 246, 250, 141, 248, 143, 232, 164, 232, 246, 250, 141, 170, 159, 143, 254, 252, 170, 159, 168, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 252, 143, 147, 232, 140, 143, 144, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 148, 140, 143, 147, 232, 252, 143, 144, 144, 162, 194, 194, 139, 248, 232, 164, 232, 246, 250, 141, 248, 143, 232, 145, 232, 139, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 169, 232, 142, 143, 232, 164, 232, 143, 254, 252, 169, 159, 250, 141, 250, 247, 159, 139, 248, 149, 131, 147, 232, 139, 248, 149, 129, 144, 147, 232, 250, 140, 242, 247, 159, 139, 248, 149, 130, 144, 144, 162, 194, 194, 142, 143, 232, 145, 164, 232, 143, 254, 252, 169, 159, 151, 149, 172, 147, 232, 168, 149, 151, 144, 232, 145, 232, 233, 176, 248, 176, 181, 239, 162, 194, 194, 142, 143, 232, 146, 164, 232, 151, 149, 172, 162, 194, 194, 142, 143, 149, 130, 232, 164, 232, 168, 149, 151, 232, 148, 232, 142, 143, 149, 130, 162, 194, 194, 242, 255, 232, 159, 242, 140, 188, 247, 250, 251, 245, 254, 180, 242, 139, 139, 136, 139, 191, 187, 235, 232, 164, 164, 232, 168, 149, 151, 144, 194, 194, 132, 194, 194, 142, 143, 149, 129, 232, 164, 232, 250, 251, 140, 159, 250, 251, 140, 159, 250, 251, 140, 159, 142, 143, 149, 129, 232, 148, 232, 151, 149, 169, 172, 144, 232, 148, 232, 151, 149, 169, 172, 144, 232, 148, 232, 151, 149, 169, 172, 144, 232, 146, 232, 151, 149, 174, 172, 162, 194, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 241, 136, 139, 242, 248, 140, 241, 242, 255, 141, 232, 164, 232, 159, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 232, 145, 232, 151, 149, 172, 232, 145, 232, 233, 176, 248, 176, 181, 239, 144, 162, 194, 194, 142, 143, 149, 129, 232, 148, 164, 232, 241, 136, 139, 242, 248, 140, 241, 242, 255, 141, 162, 194, 194, 142, 143, 149, 129, 232, 164, 232, 142, 143, 149, 129, 232, 148, 232, 255, 245, 136, 136, 139, 159, 142, 143, 149, 129, 144, 162, 194, 194, 194, 194, 139, 254, 141, 142, 139, 247, 232, 252, 245, 250, 246, 137, 159, 142, 143, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 134, 194, 
        194, 194, 194, 143, 254, 252, 170, 232, 139, 248, 232, 164, 232, 139, 162, 194, 194, 242, 255, 232, 159, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 232, 152, 164, 232, 151, 149, 151, 232, 133, 133, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 232, 152, 164, 232, 151, 149, 151, 144, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 143, 232, 164, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 143, 232, 164, 232, 252, 136, 140, 159, 143, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 140, 143, 232, 164, 232, 140, 242, 247, 159, 143, 144, 162, 194, 194, 246, 250, 141, 170, 232, 246, 250, 141, 248, 143, 232, 164, 232, 246, 250, 141, 170, 159, 143, 254, 252, 170, 159, 168, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 252, 143, 147, 232, 140, 143, 144, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 148, 140, 143, 147, 232, 252, 143, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 241, 232, 164, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 162, 194, 255, 245, 136, 250, 141, 232, 252, 241, 232, 164, 232, 252, 136, 140, 159, 241, 144, 162, 194, 255, 245, 136, 250, 141, 232, 140, 241, 232, 164, 232, 140, 242, 247, 159, 241, 144, 162, 194, 246, 250, 141, 170, 232, 246, 250, 141, 248, 241, 232, 164, 232, 246, 250, 141, 170, 159, 143, 254, 252, 170, 159, 252, 241, 147, 232, 151, 149, 151, 147, 232, 148, 140, 241, 144, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 168, 149, 151, 147, 232, 151, 149, 151, 144, 147, 232, 143, 254, 252, 170, 159, 140, 241, 147, 232, 151, 149, 151, 147, 232, 252, 241, 144, 144, 162, 194, 139, 248, 232, 164, 232, 159, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 164, 232, 168, 149, 151, 144, 166, 232, 246, 250, 141, 248, 143, 232, 145, 232, 246, 250, 141, 248, 241, 232, 145, 232, 139, 232, 161, 232, 246, 250, 141, 248, 241, 232, 145, 232, 246, 250, 141, 248, 143, 232, 145, 232, 139, 162, 194, 134, 194, 194, 194, 194, 143, 254, 252, 169, 232, 142, 143, 232, 164, 232, 143, 254, 252, 169, 159, 250, 141, 250, 247, 159, 139, 248, 149, 131, 147, 232, 139, 248, 149, 129, 144, 147, 232, 250, 140, 242, 247, 159, 139, 248, 149, 130, 144, 144, 162, 194, 194, 142, 143, 232, 145, 164, 232, 143, 254, 252, 169, 159, 151, 149, 172, 147, 232, 168, 149, 151, 144, 232, 145, 232, 233, 176, 248, 176, 181, 239, 162, 194, 194, 142, 143, 232, 146, 164, 232, 151, 149, 172, 162, 194, 194, 142, 143, 149, 130, 232, 164, 232, 168, 149, 151, 232, 148, 232, 142, 143, 149, 130, 162, 194, 194, 242, 255, 232, 159, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 164, 232, 151, 149, 151, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 128, 242, 253, 141, 241, 232, 164, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 224, 242, 253, 141, 241, 162, 194, 255, 245, 136, 250, 141, 232, 241, 254, 242, 240, 241, 141, 232, 164, 232, 128, 242, 253, 141, 241, 232, 145, 232, 151, 149, 172, 162, 194, 142, 143, 149, 129, 232, 164, 232, 252, 245, 250, 246, 137, 159, 159, 169, 149, 151, 232, 145, 232, 128, 242, 253, 141, 241, 232, 145, 232, 142, 143, 149, 129, 232, 148, 232, 169, 149, 151, 232, 145, 232, 142, 143, 149, 129, 232, 146, 232, 168, 149, 151, 144, 232, 150, 232, 159, 169, 149, 151, 232, 145, 232, 128, 242, 253, 141, 241, 144, 147, 232, 151, 149, 151, 172, 147, 232, 151, 149, 160, 172, 144, 162, 194, 142, 143, 149, 130, 232, 164, 232, 252, 245, 250, 246, 137, 159, 159, 169, 149, 151, 232, 145, 232, 241, 254, 242, 240, 241, 141, 232, 145, 232, 142, 143, 149, 130, 232, 148, 232, 169, 149, 151, 232, 145, 232, 142, 143, 149, 130, 232, 146, 232, 168, 149, 151, 144, 232, 150, 232, 159, 169, 149, 151, 232, 145, 232, 241, 254, 242, 240, 241, 141, 144, 147, 232, 151, 149, 151, 172, 147, 232, 151, 149, 160, 172, 144, 162, 194, 134, 194, 139, 254, 141, 142, 139, 247, 232, 252, 245, 250, 246, 137, 159, 142, 143, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 191, 187, 235, 237, 254, 129, 141, 142, 139, 254, 169, 187, 159, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 232, 252, 136, 136, 139, 253, 144, 194, 194, 132, 194, 194, 139, 254, 141, 142, 139, 247, 232, 235, 190, 185, 188, 237, 136, 189, 245, 136, 250, 141, 159, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 141, 254, 129, 141, 142, 139, 254, 147, 232, 252, 136, 136, 139, 253, 144, 144, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 176, 247, 143, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 144, 194, 194, 132, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 
        184, 232, 164, 232, 169, 149, 172, 168, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 185, 232, 164, 232, 151, 149, 151, 170, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 186, 232, 164, 232, 169, 149, 171, 170, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 187, 232, 164, 232, 151, 149, 172, 160, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 188, 232, 164, 232, 151, 149, 168, 171, 162, 194, 194, 143, 254, 252, 170, 232, 250, 232, 164, 232, 186, 232, 145, 232, 252, 136, 245, 136, 139, 232, 148, 232, 184, 162, 194, 194, 143, 254, 252, 170, 232, 251, 232, 164, 232, 187, 232, 145, 232, 252, 136, 245, 136, 139, 232, 148, 232, 185, 162, 194, 194, 143, 254, 252, 170, 232, 252, 232, 164, 232, 188, 232, 145, 232, 252, 136, 245, 136, 139, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 159, 148, 251, 232, 148, 232, 140, 138, 139, 141, 159, 251, 232, 145, 232, 251, 232, 148, 232, 171, 149, 151, 232, 145, 232, 250, 232, 145, 232, 252, 144, 144, 232, 150, 232, 159, 169, 149, 151, 232, 145, 232, 250, 144, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 180, 237, 233, 185, 235, 159, 143, 254, 252, 170, 232, 247, 136, 139, 246, 147, 232, 143, 254, 252, 170, 232, 252, 250, 246, 248, 137, 136, 140, 147, 232, 143, 254, 252, 170, 232, 128, 136, 139, 245, 253, 248, 137, 136, 140, 147, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 251, 139, 253, 255, 248, 245, 142, 141, 147, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 251, 245, 248, 246, 250, 137, 147, 232, 143, 254, 252, 170, 232, 250, 245, 251, 254, 253, 136, 147, 232, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 147, 232, 255, 245, 136, 250, 141, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 147, 232, 255, 245, 136, 250, 141, 232, 250, 136, 147, 232, 255, 245, 136, 250, 141, 232, 254, 129, 137, 136, 140, 142, 139, 254, 147, 232, 255, 245, 136, 250, 141, 232, 246, 250, 129, 245, 142, 246, 250, 147, 232, 255, 245, 136, 250, 141, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 147, 232, 255, 245, 136, 250, 141, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 144, 194, 194, 132, 194, 194, 143, 254, 252, 170, 232, 181, 232, 164, 232, 247, 136, 139, 246, 162, 194, 194, 143, 254, 252, 170, 232, 239, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 252, 250, 246, 248, 137, 136, 140, 232, 148, 232, 128, 136, 139, 245, 253, 248, 137, 136, 140, 144, 162, 194, 194, 143, 254, 252, 170, 232, 235, 232, 164, 232, 139, 254, 255, 245, 254, 252, 141, 159, 148, 239, 147, 232, 181, 144, 162, 194, 194, 194, 194, 143, 254, 252, 170, 232, 189, 151, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 171, 144, 162, 194, 194, 189, 151, 232, 164, 232, 246, 242, 129, 159, 189, 151, 147, 232, 250, 245, 251, 254, 253, 136, 147, 232, 246, 254, 141, 250, 245, 245, 242, 252, 144, 162, 194, 194, 194, 194, 150, 150, 232, 250, 246, 251, 242, 254, 247, 141, 232, 245, 242, 240, 241, 141, 242, 247, 240, 232, 159, 128, 254, 232, 247, 136, 128, 232, 142, 140, 254, 232, 176, 185, 179, 232, 250, 140, 232, 141, 241, 254, 232, 250, 246, 251, 242, 254, 247, 141, 232, 141, 254, 139, 246, 144, 194, 194, 143, 254, 252, 170, 232, 189, 232, 164, 232, 189, 139, 254, 140, 247, 254, 245, 236, 252, 241, 245, 242, 252, 244, 235, 136, 142, 240, 241, 247, 254, 140, 140, 159, 246, 250, 129, 159, 253, 136, 141, 159, 181, 147, 232, 239, 144, 147, 232, 151, 149, 151, 144, 147, 232, 189, 151, 147, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 162, 194, 194, 194, 194, 143, 254, 252, 170, 232, 244, 236, 232, 164, 232, 189, 162, 194, 194, 143, 254, 252, 170, 232, 244, 187, 232, 164, 232, 168, 149, 151, 232, 148, 232, 244, 236, 162, 194, 194, 244, 187, 232, 145, 164, 232, 168, 149, 151, 232, 148, 232, 246, 254, 141, 250, 245, 245, 242, 252, 162, 194, 194, 194, 194, 143, 254, 252, 169, 232, 242, 251, 245, 248, 253, 242, 255, 255, 248, 142, 143, 232, 164, 232, 190, 254, 141, 188, 138, 142, 242, 139, 254, 252, 141, 238, 239, 159, 181, 147, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 147, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 144, 162, 194, 194, 242, 251, 245, 248, 253, 242, 255, 255, 248, 142, 143, 232, 164, 232, 143, 254, 252, 169, 159, 151, 149, 174, 172, 232, 146, 232, 242, 251, 245, 248, 253, 242, 255, 255, 248, 142, 143, 149, 129, 232, 145, 232, 151, 149, 169, 172, 147, 232, 151, 149, 175, 174, 172, 232, 146, 232, 242, 251, 245, 248, 253, 242, 255, 255, 248, 142, 143, 149, 130, 232, 145, 232, 151, 149, 168, 169, 172, 144, 162, 194, 194, 143, 254, 252, 170, 232, 242, 139, 139, 250, 253, 242, 250, 247, 252, 254, 232, 164, 232, 235, 190, 185, 188, 237, 136, 189, 245, 136, 250, 141, 159, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 251, 245, 248, 246, 250, 137, 147, 232, 242, 251, 245, 248, 253, 242, 255, 255, 248, 142, 143, 144, 144, 162, 194, 194, 143, 254, 252, 170, 232, 253, 
        242, 255, 255, 142, 140, 254, 232, 164, 232, 242, 139, 139, 250, 253, 242, 250, 247, 252, 254, 232, 145, 232, 250, 245, 251, 254, 253, 136, 162, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 141, 246, 137, 232, 164, 232, 246, 242, 129, 159, 168, 149, 151, 147, 232, 246, 250, 129, 159, 253, 136, 141, 159, 181, 147, 232, 239, 144, 147, 232, 151, 149, 151, 144, 147, 232, 255, 139, 254, 140, 247, 254, 245, 176, 247, 141, 254, 247, 140, 242, 141, 130, 144, 162, 194, 194, 143, 254, 252, 170, 232, 251, 139, 253, 255, 232, 164, 232, 235, 190, 185, 188, 237, 136, 189, 245, 136, 250, 141, 159, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 139, 253, 255, 248, 245, 142, 141, 147, 232, 143, 254, 252, 169, 159, 141, 246, 137, 147, 232, 168, 149, 151, 232, 148, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 144, 144, 144, 162, 194, 194, 143, 254, 252, 169, 232, 242, 251, 245, 248, 140, 137, 254, 252, 248, 142, 143, 232, 164, 232, 190, 254, 141, 188, 138, 142, 242, 139, 254, 252, 141, 238, 239, 159, 235, 147, 232, 241, 136, 139, 242, 248, 136, 139, 242, 254, 247, 147, 232, 143, 254, 139, 141, 248, 136, 139, 242, 254, 247, 144, 162, 194, 194, 143, 254, 252, 170, 232, 137, 139, 254, 255, 242, 245, 141, 254, 139, 254, 253, 248, 252, 136, 245, 136, 139, 232, 164, 232, 235, 190, 185, 188, 237, 136, 189, 245, 136, 250, 141, 159, 237, 254, 129, 141, 142, 139, 254, 179, 182, 187, 159, 242, 251, 245, 248, 246, 250, 137, 147, 232, 242, 251, 245, 248, 140, 137, 254, 252, 248, 142, 143, 147, 232, 139, 136, 142, 240, 241, 247, 254, 140, 140, 232, 145, 232, 171, 149, 151, 144, 144, 162, 194, 194, 242, 255, 232, 159, 242, 140, 180, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 164, 232, 168, 149, 151, 144, 194, 132, 194, 137, 139, 254, 255, 242, 245, 141, 254, 139, 254, 253, 248, 252, 136, 245, 136, 139, 232, 164, 232, 137, 136, 128, 159, 137, 139, 254, 255, 242, 245, 141, 254, 139, 254, 253, 248, 252, 136, 245, 136, 139, 147, 232, 143, 254, 252, 170, 159, 168, 149, 151, 232, 146, 232, 246, 254, 141, 250, 245, 245, 242, 252, 188, 130, 254, 140, 241, 250, 253, 136, 128, 186, 136, 247, 141, 139, 250, 140, 141, 144, 144, 162, 194, 134, 194, 194, 194, 143, 254, 252, 170, 232, 140, 137, 254, 252, 142, 245, 250, 139, 232, 164, 232, 137, 139, 254, 255, 242, 245, 141, 254, 139, 254, 253, 248, 252, 136, 245, 136, 139, 232, 145, 232, 159, 246, 242, 129, 159, 189, 151, 147, 232, 189, 147, 232, 255, 139, 254, 140, 247, 254, 245, 176, 247, 141, 254, 247, 140, 242, 141, 130, 144, 232, 145, 232, 251, 139, 253, 255, 149, 129, 232, 146, 232, 251, 139, 253, 255, 149, 130, 144, 162, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 250, 136, 248, 129, 248, 254, 129, 137, 136, 140, 142, 139, 254, 232, 164, 232, 250, 136, 232, 145, 232, 254, 129, 137, 136, 140, 142, 139, 254, 162, 194, 194, 143, 254, 252, 170, 232, 253, 242, 255, 255, 142, 140, 254, 248, 252, 136, 245, 136, 139, 232, 164, 232, 244, 187, 232, 145, 232, 253, 242, 255, 255, 142, 140, 254, 232, 145, 232, 250, 136, 248, 129, 248, 254, 129, 137, 136, 140, 142, 139, 254, 162, 194, 194, 143, 254, 252, 170, 232, 140, 137, 254, 252, 142, 245, 250, 139, 248, 252, 136, 245, 136, 139, 232, 164, 232, 140, 137, 254, 252, 142, 245, 250, 139, 232, 145, 232, 250, 136, 248, 129, 248, 254, 129, 137, 136, 140, 142, 139, 254, 162, 194, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 253, 242, 255, 255, 142, 140, 254, 248, 252, 136, 245, 136, 139, 232, 146, 232, 140, 137, 254, 252, 142, 245, 250, 139, 248, 252, 136, 245, 136, 139, 162, 194, 194, 194, 194, 150, 150, 232, 191, 187, 235, 232, 141, 136, 247, 254, 232, 246, 250, 137, 137, 242, 247, 240, 232, 250, 247, 253, 232, 240, 250, 246, 246, 250, 232, 252, 136, 139, 139, 254, 252, 141, 242, 136, 247, 194, 194, 255, 245, 136, 250, 141, 232, 245, 142, 246, 250, 248, 139, 250, 141, 242, 136, 232, 164, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 246, 250, 129, 159, 151, 149, 171, 170, 147, 232, 159, 246, 242, 247, 159, 246, 250, 129, 245, 142, 246, 250, 147, 232, 151, 149, 175, 144, 232, 148, 232, 151, 149, 171, 173, 144, 232, 150, 232, 151, 149, 170, 171, 232, 145, 232, 151, 149, 172, 174, 232, 146, 232, 151, 149, 171, 170, 144, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 145, 164, 232, 245, 142, 246, 250, 248, 139, 250, 141, 242, 136, 162, 194, 194, 255, 245, 136, 250, 141, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 232, 164, 232, 246, 250, 129, 245, 142, 246, 250, 232, 145, 232, 245, 142, 246, 250, 248, 139, 250, 141, 242, 136, 162, 194, 194, 255, 245, 136, 250, 141, 232, 250, 253, 243, 142, 140, 141, 248, 241, 242, 240, 241, 248, 245, 142, 246, 250, 248, 139, 250, 141, 242, 136, 232, 164, 232, 168, 149, 151, 162, 194, 194, 242, 255, 232, 159, 252, 136, 245, 136, 139, 149, 129, 232, 165, 232, 168, 149, 151, 232, 145, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 144, 194, 194, 252, 136, 245, 136, 139, 149, 129, 
        232, 164, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 232, 146, 232, 159, 159, 252, 136, 245, 136, 139, 149, 129, 232, 148, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 144, 232, 145, 232, 250, 253, 243, 142, 140, 141, 248, 241, 242, 240, 241, 248, 245, 142, 246, 250, 248, 139, 250, 141, 242, 136, 144, 162, 194, 194, 242, 255, 232, 159, 252, 136, 245, 136, 139, 149, 130, 232, 165, 232, 168, 149, 151, 232, 145, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 144, 194, 194, 252, 136, 245, 136, 139, 149, 130, 232, 164, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 232, 146, 232, 159, 159, 252, 136, 245, 136, 139, 149, 130, 232, 148, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 144, 232, 145, 232, 250, 253, 243, 142, 140, 141, 248, 241, 242, 240, 241, 248, 245, 142, 246, 250, 248, 139, 250, 141, 242, 136, 144, 162, 194, 194, 242, 255, 232, 159, 252, 136, 245, 136, 139, 149, 131, 232, 165, 232, 168, 149, 151, 232, 145, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 144, 194, 194, 252, 136, 245, 136, 139, 149, 131, 232, 164, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 232, 146, 232, 159, 159, 252, 136, 245, 136, 139, 149, 131, 232, 148, 232, 250, 253, 243, 142, 140, 141, 248, 246, 250, 129, 245, 142, 246, 250, 144, 232, 145, 232, 250, 253, 243, 142, 140, 141, 248, 241, 242, 240, 241, 248, 245, 142, 246, 250, 248, 139, 250, 141, 242, 136, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 184, 186, 188, 236, 237, 136, 247, 254, 180, 250, 137, 137, 242, 247, 240, 159, 252, 136, 245, 136, 139, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 137, 136, 128, 159, 252, 136, 245, 136, 139, 147, 232, 143, 254, 252, 170, 159, 168, 149, 151, 232, 150, 232, 169, 149, 169, 144, 144, 162, 194, 194, 194, 194, 139, 254, 141, 142, 139, 247, 232, 252, 136, 245, 136, 139, 162, 194, 194, 134, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 235, 254, 255, 245, 254, 252, 141, 250, 247, 252, 254, 159, 143, 254, 252, 170, 232, 242, 247, 252, 242, 253, 254, 247, 141, 147, 232, 143, 254, 252, 170, 232, 247, 136, 139, 246, 250, 245, 147, 232, 255, 245, 136, 250, 141, 232, 242, 136, 139, 144, 194, 194, 132, 194, 194, 242, 247, 252, 242, 253, 254, 247, 141, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 242, 247, 252, 242, 253, 254, 247, 141, 144, 162, 194, 194, 247, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 247, 136, 139, 246, 250, 245, 144, 162, 194, 194, 143, 254, 252, 170, 232, 139, 254, 255, 139, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 139, 254, 255, 139, 250, 252, 141, 159, 242, 247, 252, 242, 253, 254, 247, 141, 147, 232, 247, 136, 139, 246, 250, 245, 147, 232, 168, 149, 151, 232, 150, 232, 242, 136, 139, 144, 144, 162, 194, 194, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 247, 242, 232, 164, 232, 168, 149, 151, 162, 194, 194, 255, 245, 136, 250, 141, 232, 247, 141, 232, 164, 232, 242, 136, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 242, 232, 164, 232, 253, 136, 141, 159, 148, 242, 247, 252, 242, 253, 254, 247, 141, 147, 232, 247, 136, 139, 246, 250, 245, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 141, 232, 164, 232, 253, 136, 141, 159, 139, 254, 255, 139, 147, 232, 148, 247, 136, 139, 246, 250, 245, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 139, 140, 232, 164, 232, 137, 136, 128, 159, 159, 247, 242, 232, 145, 232, 252, 242, 232, 148, 232, 247, 141, 232, 145, 232, 252, 141, 144, 232, 150, 232, 159, 247, 242, 232, 145, 232, 252, 242, 232, 146, 232, 247, 141, 232, 145, 232, 252, 141, 144, 147, 232, 169, 149, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 139, 137, 232, 164, 232, 137, 136, 128, 159, 159, 247, 242, 232, 145, 232, 252, 141, 232, 148, 232, 247, 141, 232, 145, 232, 252, 242, 144, 232, 150, 232, 159, 247, 242, 232, 145, 232, 252, 141, 232, 146, 232, 247, 141, 232, 145, 232, 252, 242, 144, 147, 232, 169, 149, 151, 144, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 151, 149, 172, 232, 145, 232, 159, 139, 140, 232, 146, 232, 139, 137, 144, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 188, 237, 136, 189, 245, 136, 250, 141, 159, 143, 254, 252, 171, 232, 139, 240, 251, 254, 144, 194, 194, 132, 194, 194, 242, 255, 232, 159, 139, 240, 251, 254, 149, 250, 232, 164, 164, 232, 151, 149, 151, 144, 194, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 151, 149, 151, 144, 162, 194, 194, 254, 245, 140, 254, 194, 194, 139, 254, 141, 142, 139, 247, 232, 139, 240, 251, 254, 149, 139, 240, 251, 232, 145, 232, 137, 136, 128, 159, 143, 254, 252, 170, 159, 169, 149, 151, 144, 147, 232, 143, 254, 252, 170, 159, 139, 240, 251, 254, 149, 250, 232, 145, 232, 169, 172, 172, 149, 151, 232, 148, 232, 168, 169, 175, 149, 
        151, 144, 144, 162, 194, 194, 134, 194, 194, 194, 194, 143, 254, 252, 171, 232, 237, 254, 129, 141, 142, 139, 254, 179, 182, 187, 159, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 232, 252, 136, 136, 139, 253, 147, 232, 255, 245, 136, 250, 141, 232, 245, 136, 253, 144, 194, 194, 132, 194, 194, 255, 245, 136, 250, 141, 232, 245, 151, 232, 164, 232, 255, 245, 136, 136, 139, 159, 245, 136, 253, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 245, 168, 232, 164, 232, 245, 151, 232, 146, 232, 168, 149, 151, 162, 194, 194, 194, 194, 255, 245, 136, 250, 141, 232, 129, 151, 232, 164, 232, 252, 136, 136, 139, 253, 149, 129, 232, 145, 232, 137, 136, 128, 159, 151, 149, 172, 147, 232, 245, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 130, 151, 232, 164, 232, 168, 149, 151, 232, 148, 232, 159, 169, 149, 151, 232, 148, 232, 252, 136, 136, 139, 253, 149, 130, 144, 232, 145, 232, 137, 136, 128, 159, 151, 149, 172, 147, 232, 245, 151, 232, 146, 232, 168, 149, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 129, 168, 232, 164, 232, 252, 136, 136, 139, 253, 149, 129, 232, 145, 232, 137, 136, 128, 159, 151, 149, 172, 147, 232, 245, 168, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 130, 168, 232, 164, 232, 168, 149, 151, 232, 148, 232, 159, 169, 149, 151, 232, 148, 232, 252, 136, 136, 139, 253, 149, 130, 144, 232, 145, 232, 137, 136, 128, 159, 151, 149, 172, 147, 232, 245, 168, 232, 146, 232, 168, 149, 151, 144, 162, 194, 194, 194, 194, 143, 254, 252, 171, 232, 252, 151, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 129, 151, 147, 232, 130, 151, 144, 144, 162, 194, 194, 143, 254, 252, 171, 232, 252, 168, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 129, 168, 147, 232, 130, 168, 144, 144, 162, 194, 194, 194, 194, 139, 254, 141, 142, 139, 247, 232, 246, 242, 129, 159, 252, 151, 147, 232, 252, 168, 147, 232, 245, 136, 253, 232, 148, 232, 245, 151, 144, 162, 194, 194, 134, 194, 194, 143, 254, 252, 169, 232, 237, 139, 250, 247, 140, 255, 136, 139, 246, 238, 239, 159, 143, 254, 252, 169, 232, 142, 143, 147, 232, 255, 245, 136, 250, 141, 232, 139, 147, 232, 255, 245, 136, 250, 141, 232, 140, 147, 232, 143, 254, 252, 169, 232, 141, 144, 194, 194, 132, 194, 194, 143, 254, 252, 169, 232, 139, 254, 140, 142, 245, 141, 232, 164, 232, 142, 143, 162, 194, 194, 139, 254, 140, 142, 245, 141, 232, 146, 164, 232, 141, 162, 194, 194, 242, 255, 232, 159, 139, 232, 165, 232, 151, 149, 151, 144, 194, 194, 139, 254, 140, 142, 245, 141, 232, 164, 232, 143, 254, 252, 169, 159, 252, 136, 140, 159, 139, 144, 232, 145, 232, 139, 254, 140, 142, 245, 141, 149, 129, 232, 148, 232, 140, 242, 247, 159, 139, 144, 232, 145, 232, 139, 254, 140, 142, 245, 141, 149, 130, 147, 232, 140, 242, 247, 159, 139, 144, 232, 145, 232, 139, 254, 140, 142, 245, 141, 149, 129, 232, 146, 232, 252, 136, 140, 159, 139, 144, 232, 145, 232, 139, 254, 140, 142, 245, 141, 149, 130, 144, 162, 194, 194, 139, 254, 140, 142, 245, 141, 232, 145, 164, 232, 140, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 139, 254, 140, 142, 245, 141, 162, 194, 194, 134, 194, 194};
    }

    public static class q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25563a = {194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 247, 136, 139, 246, 250, 245, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 246, 250, 141, 171, 232, 137, 139, 136, 243, 254, 252, 141, 180, 250, 141, 139, 242, 129, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 247, 253, 252, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 254, 247, 143, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 136, 251, 243, 225, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 136, 251, 243, 226, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 136, 251, 243, 225, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 149, 129, 162, 194, 136, 251, 243, 226, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 149, 130, 162, 194, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 246, 136, 253, 254, 245, 239, 242, 254, 128, 233, 139, 136, 243, 180, 250, 141, 139, 242, 129, 232, 145, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 143, 254, 252, 171, 232, 141, 139, 250, 247, 140, 255, 136, 139, 246, 254, 253, 181, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 237, 139, 250, 247, 140, 255, 136, 139, 246, 180, 250, 141, 139, 242, 129, 232, 145, 232, 247, 136, 139, 246, 250, 245, 162, 194, 194, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 141, 139, 250, 247, 140, 255, 136, 139, 246, 254, 253, 181, 136, 139, 246, 250, 245, 149, 129, 130, 131, 144, 162, 194, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 149, 129, 232, 164, 232, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 149, 129, 232, 146, 232, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 149, 129, 232, 150, 232, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 149, 128, 232, 150, 232, 172, 149, 151, 162, 194, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 232, 164, 232, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 144, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 143, 254, 252, 170, 232, 139, 232, 164, 232, 139, 254, 255, 245, 254, 252, 141, 159, 247, 136, 139, 246, 250, 245, 242, 131, 254, 159, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 149, 129, 130, 131, 144, 147, 232, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 245, 140, 245, 248, 137, 242, 232, 164, 232, 250, 252, 136, 140, 159, 148, 168, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 245, 250, 141, 242, 141, 142, 253, 254, 232, 164, 232, 250, 140, 242, 247, 159, 139, 149, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 245, 136, 247, 240, 242, 141, 142, 253, 254, 232, 164, 232, 250, 141, 250, 247, 159, 139, 149, 129, 147, 232, 139, 149, 131, 144, 162, 194, 194, 254, 247, 143, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 245, 136, 247, 240, 242, 141, 142, 253, 254, 232, 150, 232, 240, 245, 140, 245, 248, 137, 242, 232, 150, 232, 169, 149, 232, 146, 232, 151, 149, 174, 172, 162, 194, 254, 247, 143, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 168, 149, 151, 232, 148, 232, 159, 245, 136, 240, 159, 141, 250, 247, 159, 240, 245, 140, 245, 248, 137, 242, 232, 150, 232, 171, 149, 151, 232, 146, 232, 245, 250, 141, 242, 141, 142, 253, 254, 232, 150, 232, 169, 149, 151, 144, 144, 232, 150, 232, 159, 240, 245, 140, 245, 
        248, 137, 242, 144, 232, 146, 232, 151, 149, 172, 144, 162, 194, 194, 143, 254, 252, 171, 232, 252, 250, 246, 186, 136, 136, 139, 253, 232, 164, 232, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 162, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 139, 136, 243, 254, 252, 141, 180, 250, 141, 139, 242, 129, 232, 145, 232, 252, 250, 246, 186, 136, 136, 139, 253, 162, 194, 194, 247, 253, 252, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 149, 129, 130, 131, 232, 150, 232, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 149, 128, 162, 194, 134, 194};
    }

    public static class r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25564a = {194, 194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 245, 140, 254, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 170, 232, 247, 253, 252, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 254, 247, 143, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 187, 242, 255, 255, 142, 140, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 236, 137, 254, 252, 142, 245, 250, 139, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 184, 246, 251, 242, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 188, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 253, 242, 255, 255, 142, 140, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 140, 137, 254, 252, 142, 245, 250, 139, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 250, 246, 251, 242, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 253, 242, 255, 255, 142, 140, 254, 186, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 140, 137, 254, 252, 142, 245, 250, 139, 186, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 250, 246, 251, 242, 254, 247, 141, 186, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 253, 242, 140, 140, 136, 245, 143, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 141, 139, 250, 247, 140, 246, 242, 140, 140, 242, 136, 247, 189, 242, 245, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 179, 136, 128, 254, 139, 251, 136, 142, 247, 253, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 179, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 186, 245, 242, 137, 137, 242, 247, 240, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 180, 136, 253, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 176, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 242, 245, 254, 225, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 242, 245, 254, 226, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 248, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 136, 255, 255, 140, 254, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 252, 136, 246, 137, 139, 254, 140, 140, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 136, 255, 255, 140, 254, 141, 248, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 162, 194, 142, 247, 242, 255, 136, 
        139, 246, 232, 143, 254, 252, 170, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 252, 136, 246, 137, 139, 254, 140, 140, 248, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 250, 253, 243, 142, 140, 141, 248, 247, 250, 141, 142, 139, 250, 245, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 246, 250, 129, 184, 245, 137, 241, 250, 189, 250, 252, 141, 136, 139, 140, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 186, 241, 250, 247, 240, 254, 186, 136, 245, 136, 139, 168, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 186, 241, 250, 247, 240, 254, 186, 136, 245, 136, 139, 169, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 186, 241, 250, 247, 240, 254, 186, 136, 245, 136, 139, 170, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 141, 250, 139, 240, 254, 141, 186, 136, 245, 136, 139, 168, 238, 239, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 141, 250, 139, 240, 254, 141, 186, 136, 245, 136, 139, 169, 238, 239, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 141, 250, 139, 240, 254, 141, 186, 136, 245, 136, 139, 170, 238, 239, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 252, 245, 254, 250, 139, 186, 136, 245, 136, 139, 235, 250, 141, 242, 136, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 235, 254, 246, 250, 137, 184, 245, 137, 241, 250, 168, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 235, 254, 246, 250, 137, 184, 245, 137, 241, 250, 169, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 235, 254, 246, 250, 137, 184, 245, 137, 241, 250, 170, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 188, 247, 250, 251, 245, 254, 190, 139, 250, 253, 242, 254, 247, 141, 168, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 188, 247, 250, 251, 245, 254, 190, 139, 250, 253, 242, 254, 247, 141, 169, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 240, 139, 250, 253, 242, 254, 247, 141, 168, 189, 250, 252, 141, 136, 139, 140, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 240, 139, 250, 253, 242, 254, 247, 141, 169, 189, 250, 252, 141, 136, 139, 140, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 142, 246, 250, 191, 242, 140, 141, 136, 240, 139, 250, 246, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 250, 245, 137, 241, 250, 191, 242, 140, 141, 136, 240, 139, 250, 246, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 136, 251, 243, 226, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 235, 254, 247, 253, 254, 139, 236, 242, 245, 241, 136, 142, 254, 141, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 254, 255, 141, 248, 254, 250, 139, 251, 136, 141, 141, 136, 246, 248, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 139, 242, 240, 241, 141, 248, 254, 250, 139, 251, 136, 141, 141, 136, 246, 248, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 140, 248, 136, 252, 252, 245, 142, 253, 254, 139, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 136, 251, 243, 225, 162, 194, 194, 252, 136, 247, 140, 141, 232, 143, 254, 252, 170, 232, 139, 240, 251, 248, 141, 136, 248, 130, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 169, 160, 160, 147, 232, 151, 149, 172, 175, 174, 147, 232, 151, 149, 168, 168, 171, 144, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 242, 247, 143, 248, 169, 172, 173, 232, 164, 232, 168, 149, 151, 232, 150, 232, 169, 172, 173, 149, 151, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 245, 136, 136, 244, 142, 137, 248, 130, 168, 232, 164, 232, 168, 149, 151, 232, 150, 232, 173, 149, 151, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 245, 136, 136, 244, 142, 137, 248, 130, 169, 232, 164, 232, 170, 149, 151, 232, 150, 232, 173, 149, 151, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 245, 136, 136, 244, 142, 137, 248, 130, 170, 232, 
        164, 232, 172, 149, 151, 232, 150, 232, 173, 149, 151, 162, 194, 194, 143, 254, 252, 170, 232, 226, 238, 239, 237, 136, 235, 190, 185, 159, 255, 245, 136, 250, 141, 232, 130, 147, 232, 143, 254, 252, 169, 232, 142, 143, 144, 194, 132, 194, 143, 254, 252, 169, 232, 253, 142, 143, 232, 164, 232, 142, 143, 232, 148, 232, 151, 149, 172, 162, 194, 143, 254, 252, 170, 232, 139, 240, 251, 232, 164, 232, 143, 254, 252, 170, 159, 130, 232, 146, 232, 168, 149, 171, 151, 169, 232, 145, 232, 253, 142, 143, 149, 130, 147, 232, 130, 232, 148, 232, 253, 136, 141, 159, 143, 254, 252, 169, 159, 151, 149, 170, 171, 171, 147, 232, 151, 149, 174, 168, 171, 144, 147, 232, 253, 142, 143, 144, 147, 232, 130, 232, 146, 232, 168, 149, 174, 174, 169, 232, 145, 232, 253, 142, 143, 149, 129, 144, 162, 194, 139, 240, 251, 232, 164, 232, 246, 250, 129, 159, 139, 240, 251, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 144, 144, 162, 194, 139, 240, 251, 232, 164, 232, 246, 242, 247, 159, 139, 240, 251, 147, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 139, 240, 251, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 169, 191, 236, 239, 159, 143, 254, 252, 170, 232, 252, 144, 194, 132, 194, 143, 254, 252, 171, 232, 178, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 148, 168, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 169, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 148, 168, 149, 151, 144, 162, 194, 143, 254, 252, 171, 232, 137, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 171, 159, 252, 149, 251, 240, 147, 232, 178, 149, 128, 131, 144, 147, 232, 143, 254, 252, 171, 159, 252, 149, 240, 251, 147, 232, 178, 149, 129, 130, 144, 147, 232, 140, 141, 254, 137, 159, 252, 149, 251, 147, 232, 252, 149, 240, 144, 144, 162, 194, 143, 254, 252, 171, 232, 138, 232, 164, 232, 246, 242, 129, 159, 143, 254, 252, 171, 159, 137, 149, 129, 130, 128, 147, 232, 252, 149, 139, 144, 147, 232, 143, 254, 252, 171, 159, 252, 149, 139, 147, 232, 137, 149, 130, 131, 129, 144, 147, 232, 140, 141, 254, 137, 159, 137, 149, 129, 147, 232, 252, 149, 139, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 232, 164, 232, 138, 149, 129, 232, 148, 232, 246, 242, 247, 159, 138, 149, 128, 147, 232, 138, 149, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 254, 232, 164, 232, 168, 149, 151, 254, 148, 168, 151, 162, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 250, 251, 140, 159, 138, 149, 131, 232, 146, 232, 159, 138, 149, 128, 232, 148, 232, 138, 149, 130, 144, 232, 150, 232, 159, 173, 149, 151, 232, 145, 232, 253, 232, 146, 232, 254, 144, 144, 147, 232, 253, 232, 150, 232, 159, 138, 149, 129, 232, 146, 232, 254, 144, 147, 232, 138, 149, 129, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 191, 236, 239, 169, 235, 190, 185, 159, 143, 254, 252, 170, 232, 252, 144, 194, 132, 194, 143, 254, 252, 171, 232, 178, 232, 164, 232, 143, 254, 252, 171, 159, 168, 149, 151, 147, 232, 169, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 168, 149, 151, 232, 150, 232, 170, 149, 151, 147, 232, 170, 149, 151, 144, 162, 194, 143, 254, 252, 170, 232, 137, 232, 164, 232, 250, 251, 140, 159, 255, 139, 250, 252, 141, 159, 252, 149, 129, 129, 129, 232, 146, 232, 178, 149, 129, 130, 131, 144, 232, 145, 232, 173, 149, 151, 232, 148, 232, 178, 149, 128, 128, 128, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 252, 149, 131, 232, 145, 232, 246, 242, 129, 159, 178, 149, 129, 129, 129, 147, 232, 252, 245, 250, 246, 137, 159, 137, 232, 148, 232, 178, 149, 129, 129, 129, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 147, 232, 252, 149, 130, 144, 162, 194, 134, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 242, 255, 232, 159, 242, 140, 235, 254, 247, 253, 254, 139, 236, 242, 245, 241, 136, 142, 254, 141, 141, 254, 232, 165, 232, 151, 149, 151, 144, 194, 132, 194, 242, 255, 232, 159, 159, 136, 251, 243, 226, 232, 163, 232, 159, 159, 136, 251, 243, 225, 232, 165, 232, 151, 149, 151, 144, 232, 166, 232, 139, 242, 240, 241, 141, 248, 254, 250, 139, 251, 136, 141, 141, 136, 246, 248, 130, 232, 161, 232, 245, 254, 255, 141, 248, 254, 250, 139, 251, 136, 141, 141, 136, 246, 248, 130, 144, 144, 232, 157, 157, 232, 242, 140, 248, 136, 252, 252, 245, 142, 253, 254, 139, 232, 165, 232, 151, 149, 151, 144, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 232, 164, 164, 232, 151, 144, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 172, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 140, 242, 
        245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 232, 164, 164, 232, 168, 144, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 172, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 186, 241, 250, 247, 247, 254, 245, 232, 164, 164, 232, 169, 144, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 172, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 143, 254, 252, 171, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 232, 164, 232, 143, 254, 252, 171, 159, 253, 242, 255, 255, 142, 140, 254, 186, 136, 245, 136, 139, 149, 139, 240, 251, 147, 232, 168, 149, 151, 144, 162, 194, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 232, 164, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 232, 145, 232, 253, 242, 140, 140, 136, 245, 143, 254, 162, 194, 255, 245, 136, 250, 141, 232, 136, 142, 141, 137, 142, 141, 184, 245, 137, 241, 250, 232, 164, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 250, 162, 194, 242, 255, 232, 159, 253, 242, 140, 140, 136, 245, 143, 254, 232, 163, 232, 168, 149, 151, 144, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 164, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 145, 232, 141, 139, 250, 247, 140, 246, 242, 140, 140, 242, 136, 247, 189, 242, 245, 141, 254, 139, 162, 194, 242, 255, 232, 159, 242, 140, 187, 242, 255, 255, 142, 140, 254, 237, 254, 129, 141, 142, 139, 254, 232, 165, 232, 151, 149, 151, 144, 194, 132, 194, 143, 254, 252, 169, 232, 252, 136, 136, 139, 253, 232, 164, 232, 252, 245, 250, 246, 137, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 143, 254, 252, 171, 232, 253, 242, 255, 255, 142, 140, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 253, 242, 255, 255, 142, 140, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 252, 136, 136, 139, 253, 144, 162, 194, 242, 255, 232, 159, 253, 242, 255, 255, 142, 140, 254, 149, 250, 232, 164, 164, 232, 151, 149, 151, 144, 194, 132, 194, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 164, 232, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 150, 232, 253, 242, 255, 255, 142, 140, 254, 149, 250, 162, 194, 253, 242, 255, 255, 142, 140, 254, 232, 164, 232, 252, 245, 250, 246, 137, 159, 253, 242, 255, 255, 142, 140, 254, 147, 151, 149, 151, 147, 168, 149, 151, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 232, 164, 232, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 162, 194, 255, 245, 136, 250, 141, 232, 140, 139, 252, 248, 245, 142, 246, 250, 232, 164, 232, 253, 136, 141, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 147, 232, 139, 240, 251, 248, 141, 136, 248, 130, 248, 255, 250, 252, 141, 136, 139, 144, 162, 194, 140, 139, 252, 248, 245, 142, 246, 250, 232, 164, 232, 252, 245, 250, 246, 137, 159, 140, 139, 252, 248, 245, 142, 246, 250, 147, 151, 149, 151, 147, 168, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 245, 142, 246, 250, 248, 245, 136, 136, 244, 142, 137, 248, 129, 232, 164, 232, 159, 140, 139, 252, 248, 245, 142, 246, 250, 232, 145, 232, 169, 172, 172, 149, 151, 232, 146, 232, 151, 149, 172, 144, 232, 145, 232, 242, 247, 143, 248, 169, 172, 173, 162, 194, 255, 245, 136, 250, 141, 232, 140, 139, 252, 248, 250, 245, 137, 241, 250, 232, 164, 232, 253, 242, 255, 255, 142, 140, 254, 149, 250, 162, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 245, 136, 136, 244, 142, 137, 248, 129, 232, 164, 232, 159, 140, 139, 252, 248, 250, 245, 137, 241, 250, 232, 145, 232, 169, 172, 172, 149, 151, 232, 146, 232, 151, 149, 172, 144, 232, 145, 232, 242, 247, 143, 248, 169, 172, 173, 162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 245, 142, 246, 250, 168, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 142, 246, 250, 191, 242, 140, 141, 136, 240, 139, 250, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 245, 142, 246, 250, 248, 245, 136, 136, 244, 142, 137, 248, 129, 147, 232, 245, 136, 136, 244, 142, 137, 248, 130, 168, 144, 144, 149, 250, 162, 
        194, 143, 254, 252, 170, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 168, 232, 164, 232, 226, 238, 239, 237, 136, 235, 190, 185, 159, 253, 140, 141, 248, 245, 142, 246, 250, 168, 147, 232, 141, 250, 139, 240, 254, 141, 186, 136, 245, 136, 139, 168, 238, 239, 144, 162, 194, 247, 254, 128, 248, 252, 136, 245, 136, 139, 168, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 168, 147, 232, 242, 140, 186, 241, 250, 247, 240, 254, 186, 136, 245, 136, 139, 168, 144, 162, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 245, 142, 246, 250, 169, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 142, 246, 250, 191, 242, 140, 141, 136, 240, 139, 250, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 245, 142, 246, 250, 248, 245, 136, 136, 244, 142, 137, 248, 129, 147, 232, 245, 136, 136, 244, 142, 137, 248, 130, 169, 144, 144, 149, 250, 162, 194, 143, 254, 252, 170, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 169, 232, 164, 232, 226, 238, 239, 237, 136, 235, 190, 185, 159, 253, 140, 141, 248, 245, 142, 246, 250, 169, 147, 232, 141, 250, 139, 240, 254, 141, 186, 136, 245, 136, 139, 169, 238, 239, 144, 162, 194, 247, 254, 128, 248, 252, 136, 245, 136, 139, 169, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 169, 147, 232, 242, 140, 186, 241, 250, 247, 240, 254, 186, 136, 245, 136, 139, 169, 144, 162, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 245, 142, 246, 250, 170, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 142, 246, 250, 191, 242, 140, 141, 136, 240, 139, 250, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 245, 142, 246, 250, 248, 245, 136, 136, 244, 142, 137, 248, 129, 147, 232, 245, 136, 136, 244, 142, 137, 248, 130, 170, 144, 144, 149, 250, 162, 194, 143, 254, 252, 170, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 170, 232, 164, 232, 226, 238, 239, 237, 136, 235, 190, 185, 159, 253, 140, 141, 248, 245, 142, 246, 250, 170, 147, 232, 141, 250, 139, 240, 254, 141, 186, 136, 245, 136, 139, 170, 238, 239, 144, 162, 194, 247, 254, 128, 248, 252, 136, 245, 136, 139, 170, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 170, 147, 232, 242, 140, 186, 241, 250, 247, 240, 254, 186, 136, 245, 136, 139, 170, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 168, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 250, 245, 137, 241, 250, 191, 242, 140, 141, 136, 240, 139, 250, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 250, 245, 137, 241, 250, 248, 245, 136, 136, 244, 142, 137, 248, 129, 147, 232, 245, 136, 136, 244, 142, 137, 248, 130, 168, 144, 144, 149, 250, 162, 194, 247, 254, 128, 248, 250, 245, 137, 241, 250, 168, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 250, 245, 137, 241, 250, 147, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 168, 147, 232, 242, 140, 235, 254, 246, 250, 137, 184, 245, 137, 241, 250, 168, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 169, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 250, 245, 137, 241, 250, 191, 242, 140, 141, 136, 240, 139, 250, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 250, 245, 137, 241, 250, 248, 245, 136, 136, 244, 142, 137, 248, 129, 147, 232, 245, 136, 136, 244, 142, 137, 248, 130, 169, 144, 144, 149, 250, 162};
    }

    public static class s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25565a = {194, 247, 254, 128, 248, 250, 245, 137, 241, 250, 169, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 250, 245, 137, 241, 250, 147, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 169, 147, 232, 242, 140, 235, 254, 246, 250, 137, 184, 245, 137, 241, 250, 169, 144, 162, 194, 255, 245, 136, 250, 141, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 170, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 250, 245, 137, 241, 250, 191, 242, 140, 141, 136, 240, 139, 250, 246, 237, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 250, 245, 137, 241, 250, 248, 245, 136, 136, 244, 142, 137, 248, 129, 147, 232, 245, 136, 136, 244, 142, 137, 248, 130, 170, 144, 144, 149, 250, 162, 194, 247, 254, 128, 248, 250, 245, 137, 241, 250, 170, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 250, 245, 137, 241, 250, 147, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 170, 147, 232, 242, 140, 235, 254, 246, 250, 137, 184, 245, 137, 241, 250, 170, 144, 162, 194, 194, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 164, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 168, 162, 194, 253, 242, 255, 255, 142, 140, 254, 149, 250, 232, 164, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 168, 162, 194, 194, 255, 245, 136, 250, 141, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 159, 148, 136, 251, 243, 226, 232, 148, 232, 240, 139, 250, 253, 242, 254, 247, 141, 168, 189, 250, 252, 141, 136, 139, 140, 149, 129, 144, 232, 145, 232, 240, 139, 250, 253, 242, 254, 247, 141, 168, 189, 250, 252, 141, 136, 139, 140, 149, 130, 162, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 252, 245, 250, 246, 137, 159, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 242, 255, 232, 159, 240, 139, 250, 253, 242, 254, 247, 141, 168, 189, 250, 252, 141, 136, 139, 140, 149, 128, 232, 165, 232, 151, 149, 172, 144, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 137, 136, 128, 159, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 147, 232, 240, 139, 250, 253, 242, 254, 247, 141, 168, 189, 250, 252, 141, 136, 139, 140, 149, 131, 144, 162, 194, 254, 245, 140, 254, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 168, 149, 151, 232, 148, 232, 137, 136, 128, 159, 168, 149, 151, 232, 148, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 147, 232, 240, 139, 250, 253, 242, 254, 247, 141, 168, 189, 250, 252, 141, 136, 139, 140, 149, 131, 144, 162, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 145, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 145, 232, 159, 170, 149, 151, 232, 148, 232, 169, 149, 151, 232, 145, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 170, 232, 251, 245, 254, 247, 253, 248, 168, 169, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 247, 254, 128, 248, 252, 136, 245, 136, 139, 168, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 169, 147, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 144, 162, 194, 255, 245, 136, 250, 141, 232, 251, 245, 254, 247, 253, 248, 168, 169, 248, 250, 245, 137, 241, 250, 232, 164, 232, 246, 242, 129, 159, 247, 254, 128, 248, 250, 245, 137, 241, 250, 168, 147, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 169, 147, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 144, 162, 194, 251, 245, 254, 247, 253, 248, 168, 169, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 251, 245, 254, 247, 253, 248, 168, 169, 248, 252, 136, 245, 136, 139, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 169, 147, 232, 252, 245, 254, 250, 139, 186, 136, 245, 136, 139, 235, 250, 141, 242, 136, 149, 129, 144, 162, 194, 251, 245, 254, 247, 253, 248, 168, 169, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 251, 245, 254, 247, 253, 248, 168, 169, 248, 252, 136, 245, 136, 139, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 168, 147, 232, 252, 245, 254, 250, 139, 186, 136, 245, 136, 139, 235, 250, 141, 242, 136, 149, 130, 144, 162, 194, 253, 242, 255, 255, 142, 140, 254, 232, 164, 232, 246, 242, 129, 159, 253, 242, 255, 255, 142, 140, 254, 147, 232, 143, 254, 252, 171, 159, 251, 245, 254, 247, 253, 248, 168, 169, 248, 252, 136, 245, 136, 139, 147, 232, 251, 245, 254, 247, 253, 248, 168, 169, 248, 250, 245, 137, 241, 250, 144, 147, 232, 242, 140, 188, 247, 250, 251, 245, 254, 190, 139, 250, 253, 242, 254, 247, 141, 168, 144, 162, 194, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 159, 148, 136, 251, 243, 226, 232, 148, 232, 240, 139, 250, 253, 242, 254, 247, 141, 169, 189, 250, 252, 141, 136, 139, 140, 149, 129, 144, 232, 145, 232, 240, 139, 250, 
        253, 242, 254, 247, 141, 169, 189, 250, 252, 141, 136, 139, 140, 149, 130, 162, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 252, 245, 250, 246, 137, 159, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 242, 255, 232, 159, 240, 139, 250, 253, 242, 254, 247, 141, 169, 189, 250, 252, 141, 136, 139, 140, 149, 128, 232, 165, 232, 151, 149, 172, 144, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 137, 136, 128, 159, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 147, 232, 240, 139, 250, 253, 242, 254, 247, 141, 169, 189, 250, 252, 141, 136, 139, 140, 149, 131, 144, 162, 194, 254, 245, 140, 254, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 168, 149, 151, 232, 148, 232, 137, 136, 128, 159, 168, 149, 151, 232, 148, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 147, 232, 240, 139, 250, 253, 242, 254, 247, 141, 169, 189, 250, 252, 141, 136, 139, 140, 149, 131, 144, 162, 194, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 164, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 145, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 145, 232, 159, 170, 149, 151, 232, 148, 232, 169, 149, 151, 232, 145, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 170, 232, 251, 245, 254, 247, 253, 248, 169, 170, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 247, 254, 128, 248, 252, 136, 245, 136, 139, 169, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 170, 147, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 144, 162, 194, 255, 245, 136, 250, 141, 232, 251, 245, 254, 247, 253, 248, 169, 170, 248, 250, 245, 137, 241, 250, 232, 164, 232, 246, 242, 129, 159, 247, 254, 128, 248, 250, 245, 137, 241, 250, 169, 147, 232, 247, 254, 128, 248, 250, 245, 137, 241, 250, 170, 147, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 144, 162, 194, 251, 245, 254, 247, 253, 248, 169, 170, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 251, 245, 254, 247, 253, 248, 169, 170, 248, 252, 136, 245, 136, 139, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 170, 147, 232, 252, 245, 254, 250, 139, 186, 136, 245, 136, 139, 235, 250, 141, 242, 136, 149, 130, 144, 162, 194, 251, 245, 254, 247, 253, 248, 169, 170, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 251, 245, 254, 247, 253, 248, 169, 170, 248, 252, 136, 245, 136, 139, 147, 232, 247, 254, 128, 248, 252, 136, 245, 136, 139, 169, 147, 232, 252, 245, 254, 250, 139, 186, 136, 245, 136, 139, 235, 250, 141, 242, 136, 149, 131, 144, 162, 194, 255, 245, 136, 250, 141, 232, 242, 140, 248, 250, 137, 137, 245, 130, 248, 251, 245, 254, 247, 253, 248, 169, 170, 232, 164, 232, 255, 245, 136, 250, 141, 159, 242, 140, 188, 247, 250, 251, 245, 254, 190, 139, 250, 253, 242, 254, 247, 141, 169, 232, 165, 232, 151, 149, 172, 232, 157, 157, 232, 251, 245, 254, 247, 253, 248, 255, 250, 252, 141, 136, 139, 232, 165, 232, 151, 149, 151, 144, 162, 194, 253, 242, 255, 255, 142, 140, 254, 232, 164, 232, 246, 242, 129, 159, 253, 242, 255, 255, 142, 140, 254, 147, 232, 143, 254, 252, 171, 159, 251, 245, 254, 247, 253, 248, 169, 170, 248, 252, 136, 245, 136, 139, 147, 232, 251, 245, 254, 247, 253, 248, 169, 170, 248, 250, 245, 137, 241, 250, 144, 147, 232, 242, 140, 248, 250, 137, 137, 245, 130, 248, 251, 245, 254, 247, 253, 248, 169, 170, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 250, 245, 137, 241, 250, 232, 164, 232, 140, 139, 252, 248, 250, 245, 137, 241, 250, 162, 194, 242, 255, 232, 159, 140, 139, 252, 248, 250, 245, 137, 241, 250, 232, 165, 232, 246, 250, 129, 184, 245, 137, 241, 250, 189, 250, 252, 141, 136, 139, 140, 149, 129, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 139, 250, 141, 242, 136, 232, 164, 232, 246, 242, 247, 159, 159, 140, 139, 252, 248, 250, 245, 137, 241, 250, 232, 148, 232, 246, 250, 129, 184, 245, 137, 241, 250, 189, 250, 252, 141, 136, 139, 140, 149, 129, 144, 232, 145, 232, 246, 250, 129, 184, 245, 137, 241, 250, 189, 250, 252, 141, 136, 139, 140, 149, 130, 147, 232, 168, 149, 151, 144, 162, 194, 246, 250, 129, 248, 250, 245, 137, 241, 250, 232, 164, 232, 246, 250, 129, 159, 140, 139, 252, 248, 250, 245, 137, 241, 250, 147, 232, 246, 242, 129, 159, 246, 250, 129, 184, 245, 137, 241, 250, 189, 250, 252, 141, 136, 139, 140, 149, 129, 147, 232, 168, 149, 151, 147, 232, 139, 250, 141, 242, 136, 144, 144, 162, 194, 134, 194, 253, 242, 255, 255, 142, 140, 254, 149, 250, 232, 164, 232, 246, 242, 247, 159, 253, 242, 255, 255, 142, 140, 254, 149, 250, 147, 232, 246, 250, 129, 248, 250, 245, 137, 241, 250, 144, 162, 194, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 164, 232, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 145, 232, 253, 
        242, 255, 255, 142, 140, 254, 149, 250, 162, 194, 194, 242, 255, 232, 159, 242, 140, 248, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 232, 165, 232, 151, 149, 151, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 164, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 136, 255, 255, 140, 254, 141, 149, 139, 232, 146, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 252, 136, 246, 137, 139, 254, 140, 140, 149, 139, 162, 194, 143, 254, 252, 170, 232, 245, 136, 128, 248, 253, 242, 255, 255, 142, 140, 254, 248, 252, 136, 245, 136, 139, 232, 164, 232, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 145, 232, 151, 149, 169, 172, 162, 194, 255, 245, 136, 250, 141, 232, 128, 254, 242, 240, 241, 141, 232, 164, 232, 168, 149, 151, 162, 194, 242, 255, 232, 159, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 165, 232, 151, 149, 174, 151, 173, 144, 194, 128, 254, 242, 240, 241, 141, 232, 164, 232, 151, 149, 174, 232, 146, 232, 159, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 148, 232, 151, 149, 174, 151, 173, 144, 232, 150, 232, 151, 149, 168, 172, 174, 232, 145, 232, 151, 149, 170, 162, 194, 254, 245, 140, 254, 194, 128, 254, 242, 240, 241, 141, 232, 164, 232, 159, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 148, 232, 151, 149, 171, 170, 144, 232, 150, 232, 151, 149, 169, 174, 173, 232, 145, 232, 151, 149, 174, 162, 194, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 246, 242, 247, 159, 128, 254, 242, 240, 241, 141, 147, 232, 168, 149, 151, 144, 144, 162, 194, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 164, 232, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 145, 232, 128, 254, 242, 240, 241, 141, 232, 146, 232, 245, 136, 128, 248, 253, 242, 255, 255, 142, 140, 254, 248, 252, 136, 245, 136, 139, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 128, 254, 242, 240, 241, 141, 144, 162, 194, 194, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 164, 232, 253, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 250, 253, 243, 142, 140, 141, 248, 247, 250, 141, 142, 139, 250, 245, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 144, 162, 194, 134, 194, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 232, 164, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 232, 145, 232, 253, 242, 255, 255, 142, 140, 254, 162, 194, 136, 142, 141, 137, 142, 141, 184, 245, 137, 241, 250, 232, 164, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 250, 162, 194, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 250, 232, 164, 232, 168, 149, 151, 162, 194, 134, 194, 242, 255, 232, 159, 242, 140, 188, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 232, 165, 232, 151, 149, 151, 144, 194, 132, 194, 143, 254, 252, 169, 232, 254, 247, 143, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 254, 247, 143, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 242, 255, 232, 159, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 242, 245, 254, 225, 232, 165, 232, 168, 149, 151, 144, 194, 132, 194, 254, 247, 143, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 255, 139, 250, 252, 141, 159, 254, 247, 143, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 145, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 242, 245, 254, 225, 144, 162, 194, 134, 194, 242, 255, 232, 159, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 242, 245, 254, 226, 232, 165, 232, 168, 149, 151, 144, 194, 132, 194, 254, 247, 143, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 168, 149, 151, 232, 148, 232, 255, 139, 250, 252, 141, 159, 159, 168, 149, 232, 148, 232, 254, 247, 143, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 144, 232, 145, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 242, 245, 254, 226, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 237, 254, 129, 141, 142, 139, 254, 147, 232, 254, 247, 143, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 144, 149, 139, 240, 251, 162, 194, 242, 255, 232, 159, 242, 140, 248, 253, 130, 247, 
        250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 232, 165, 232, 151, 149, 151, 144, 194, 132, 194, 143, 254, 252, 170, 232, 252, 136, 139, 139, 254, 252, 141, 248, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 136, 255, 255, 140, 254, 141, 232, 146, 232, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 145, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 252, 136, 246, 137, 139, 254, 140, 140, 162, 194, 143, 254, 252, 170, 232, 245, 136, 128, 248, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 159, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 146, 232, 252, 136, 139, 139, 254, 252, 141, 248, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 151, 149, 172, 162, 194, 194, 255, 245, 136, 250, 141, 232, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 164, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 136, 255, 255, 140, 254, 141, 149, 139, 232, 146, 232, 253, 130, 247, 250, 246, 242, 252, 248, 139, 250, 247, 240, 254, 248, 252, 136, 246, 137, 139, 254, 140, 140, 149, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 250, 246, 246, 250, 232, 164, 232, 170, 149, 151, 162, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 248, 191, 236, 239, 232, 164, 232, 235, 190, 185, 169, 191, 236, 239, 159, 245, 136, 128, 248, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 144, 162, 194, 252, 136, 245, 136, 139, 248, 191, 236, 239, 149, 251, 232, 164, 232, 137, 136, 128, 159, 252, 136, 245, 136, 139, 248, 191, 236, 239, 149, 251, 147, 232, 240, 250, 246, 246, 250, 144, 162, 194, 245, 136, 128, 248, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 191, 236, 239, 169, 235, 190, 185, 159, 252, 136, 245, 136, 139, 248, 191, 236, 239, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 128, 254, 242, 240, 241, 141, 232, 164, 232, 168, 149, 151, 162, 194, 242, 255, 232, 159, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 165, 232, 151, 149, 174, 151, 173, 144, 194, 128, 254, 242, 240, 241, 141, 232, 164, 232, 151, 149, 174, 232, 146, 232, 159, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 148, 232, 151, 149, 174, 151, 173, 144, 232, 150, 232, 151, 149, 168, 172, 174, 232, 145, 232, 151, 149, 170, 162, 194, 254, 245, 140, 254, 194, 128, 254, 242, 240, 241, 141, 232, 164, 232, 159, 245, 242, 240, 241, 141, 242, 247, 240, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 148, 232, 151, 149, 171, 170, 144, 232, 150, 232, 151, 149, 169, 174, 173, 232, 145, 232, 151, 149, 174, 162, 194, 194, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 246, 242, 247, 159, 128, 254, 242, 240, 241, 141, 147, 232, 168, 149, 151, 144, 144, 162, 194, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 145, 232, 128, 254, 242, 240, 241, 141, 232, 146, 232, 245, 136, 128, 248, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 128, 254, 242, 240, 241, 141, 144, 162, 194, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 250, 253, 243, 142, 140, 141, 248, 247, 250, 141, 142, 139, 250, 245, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 144, 162, 194, 134, 194, 194, 242, 255, 232, 159, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 180, 136, 253, 254, 232, 163, 232, 168, 149, 151, 144, 194, 132, 194, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 129, 130, 131, 232, 164, 232, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 176, 247, 141, 254, 247, 140, 242, 141, 130, 232, 146, 194, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 176, 247, 141, 254, 247, 140, 242, 141, 130, 144, 162, 194, 134, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 180, 136, 253, 254, 232, 163, 232, 169, 149, 151, 144, 194, 132, 194, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 
        187, 242, 255, 255, 142, 140, 254, 149, 129, 130, 131, 232, 164, 232, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 145, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 232, 145, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 176, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 129, 130, 131, 232, 164, 232, 254, 246, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 176, 247, 141, 254, 247, 140, 242, 141, 130, 232, 146, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 139, 240, 251, 162, 194, 134, 194, 134, 194, 194, 143, 254, 252, 170, 232, 179, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 232, 164, 232, 250, 251, 140, 159, 253, 136, 141, 159, 255, 139, 250, 240, 246, 254, 247, 141, 181, 136, 139, 246, 250, 245, 147, 232, 179, 144, 144, 162, 194, 242, 255, 232, 159, 242, 140, 179, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 186, 245, 242, 137, 137, 242, 247, 240, 232, 165, 232, 151, 149, 151, 144, 232, 194, 132, 194, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 232, 164, 232, 246, 250, 129, 159, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 147, 232, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 179, 136, 128, 254, 139, 251, 136, 142, 247, 253, 144, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 232, 164, 232, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 179, 136, 128, 254, 139, 251, 136, 142, 247, 253, 232, 146, 232, 159, 168, 149, 151, 232, 148, 232, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 179, 136, 128, 254, 139, 251, 136, 142, 247, 253, 144, 232, 145, 232, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 162, 194, 134, 194, 143, 254, 252, 170, 232, 176, 253, 242, 255, 255, 232, 164, 232, 245, 242, 240, 241, 141, 186, 136, 245, 136, 139, 187, 242, 255, 255, 142, 140, 254, 149, 129, 130, 131, 232, 145, 232, 245, 242, 240, 241, 141, 242, 247, 240, 184, 247, 240, 245, 254, 162, 194, 176, 253, 242, 255, 255, 232, 164, 232, 252, 245, 250, 246, 137, 159, 176, 253, 242, 255, 255, 232, 146, 232, 250, 246, 251, 242, 254, 247, 141, 186, 136, 245, 136, 139, 232, 145, 232, 151, 149, 151, 172, 232, 145, 232, 136, 142, 141, 137, 142, 141, 184, 245, 137, 241, 250, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 176, 253, 242, 255, 255, 147, 232, 136, 142, 141, 137, 142, 141, 184, 245, 137, 241, 250, 144, 162, 194, 134, 194};
    }

    public static class t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25566a = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 169, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 169, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 169, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 169, 149, 129, 130, 162, 194, 134, 194};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final char[] f25567b = {194, 194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 245, 140, 254, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 169, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 169, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 141, 254, 137, 248, 170, 187, 248, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 141, 254, 137, 248, 170, 187, 248, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 140, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 224, 242, 253, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 191, 254, 242, 240, 241, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 255, 139, 250, 246, 254, 248, 139, 136, 141, 250, 141, 242, 136, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 236, 241, 250, 253, 136, 128, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 186, 242, 139, 252, 245, 254, 236, 241, 250, 253, 136, 128, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 254, 250, 139, 139, 242, 247, 240, 186, 242, 139, 252, 245, 254, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 236, 141, 139, 254, 247, 240, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 139, 242, 247, 240, 186, 242, 139, 252, 245, 254, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 236, 141, 139, 254, 247, 240, 141, 241, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 251, 245, 136, 136, 246, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 248, 251, 245, 136, 136, 246, 162, 194, 194, 143, 254, 252, 170, 232, 226, 238, 239, 237, 136, 235, 190, 185, 159, 255, 245, 136, 250, 141, 232, 130, 147, 232, 143, 254, 252, 169, 232, 142, 143, 144, 194, 132, 194, 143, 254, 252, 169, 232, 253, 142, 143, 232, 164, 232, 142, 143, 232, 148, 232, 151, 149, 172, 162, 194, 143, 254, 252, 170, 232, 139, 240, 251, 232, 164, 232, 143, 254, 252, 170, 159, 130, 232, 146, 232, 168, 149, 171, 151, 169, 232, 145, 232, 253, 142, 143, 149, 130, 147, 232, 130, 232, 148, 232, 253, 136, 141, 159, 143, 254, 252, 169, 159, 151, 149, 170, 171, 171, 147, 232, 151, 149, 174, 168, 171, 144, 147, 232, 253, 142, 143, 144, 147, 232, 130, 232, 146, 232, 168, 149, 174, 174, 169, 232, 145, 232, 253, 142, 143, 149, 129, 144, 162, 194, 139, 240, 251, 232, 164, 232, 246, 250, 129, 159, 139, 240, 251, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 144, 144, 162, 194, 139, 
        240, 251, 232, 164, 232, 246, 242, 247, 159, 139, 240, 251, 147, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 139, 240, 251, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 237, 136, 226, 238, 239, 159, 143, 254, 252, 170, 232, 139, 240, 251, 144, 194, 132, 194, 143, 254, 252, 170, 232, 130, 142, 143, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 169, 160, 160, 232, 145, 232, 139, 240, 251, 149, 139, 232, 146, 232, 151, 149, 172, 175, 174, 232, 145, 232, 139, 240, 251, 149, 240, 232, 146, 232, 151, 149, 168, 168, 171, 232, 145, 232, 139, 240, 251, 149, 251, 147, 232, 148, 151, 149, 168, 173, 160, 232, 145, 232, 139, 240, 251, 149, 139, 232, 146, 232, 159, 148, 151, 149, 170, 170, 169, 144, 232, 145, 232, 139, 240, 251, 149, 240, 232, 146, 232, 151, 149, 172, 232, 145, 232, 139, 240, 251, 149, 251, 232, 146, 232, 151, 149, 172, 147, 232, 151, 149, 172, 232, 145, 232, 139, 240, 251, 149, 139, 232, 146, 232, 159, 148, 151, 149, 171, 168, 160, 144, 232, 145, 232, 139, 240, 251, 149, 240, 232, 146, 232, 159, 148, 151, 149, 151, 175, 168, 170, 144, 232, 145, 232, 139, 240, 251, 149, 251, 232, 146, 232, 151, 149, 172, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 130, 142, 143, 162, 194, 134, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 143, 254, 252, 171, 232, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 169, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 169, 144, 162, 194, 242, 255, 232, 159, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 169, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 144, 144, 232, 133, 133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 169, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 254, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 143, 254, 252, 171, 232, 140, 250, 246, 137, 245, 254, 168, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 143, 254, 252, 169, 159, 148, 140, 141, 254, 137, 248, 170, 187, 248, 129, 147, 232, 148, 140, 141, 254, 137, 248, 170, 187, 248, 130, 144, 144, 162, 194, 143, 254, 252, 171, 232, 140, 250, 246, 137, 245, 254, 169, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 143, 254, 252, 169, 159, 140, 141, 254, 137, 248, 170, 187, 248, 129, 147, 232, 148, 140, 141, 254, 137, 248, 170, 187, 248, 130, 144, 144, 162, 194, 143, 254, 252, 171, 232, 140, 250, 246, 137, 245, 254, 170, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 143, 254, 252, 169, 159, 148, 140, 141, 254, 137, 248, 170, 187, 248, 129, 147, 232, 140, 141, 254, 137, 248, 170, 187, 248, 130, 144, 144, 162, 194, 143, 254, 252, 171, 232, 140, 250, 246, 137, 245, 254, 171, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 143, 254, 252, 169, 159, 140, 141, 254, 137, 248, 170, 187, 248, 129, 147, 232, 140, 141, 254, 137, 248, 170, 187, 248, 130, 144, 144, 162, 194, 143, 254, 252, 171, 232, 252, 254, 247, 141, 254, 139, 232, 164, 232, 159, 140, 250, 246, 137, 245, 254, 168, 232, 146, 232, 140, 250, 246, 137, 245, 254, 169, 232, 146, 232, 140, 250, 246, 137, 245, 254, 170, 232, 146, 232, 140, 250, 246, 137, 245, 254, 171, 144, 232, 150, 232, 171, 149, 151, 162, 194, 194, 255, 245, 136, 250, 141, 232, 128, 254, 242, 240, 241, 141, 232, 164, 232, 252, 254, 247, 141, 254, 139, 149, 250, 232, 145, 232, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 143, 254, 252, 170, 232, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 232, 164, 232, 246, 242, 129, 159, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 
        254, 149, 139, 240, 251, 147, 232, 143, 254, 252, 170, 159, 151, 149, 151, 144, 147, 232, 128, 254, 242, 240, 241, 141, 144, 232, 146, 232, 252, 254, 247, 141, 254, 139, 149, 139, 240, 251, 232, 145, 232, 242, 247, 141, 254, 247, 140, 242, 141, 130, 162, 194, 194, 242, 255, 232, 159, 242, 140, 236, 241, 250, 253, 136, 128, 232, 164, 164, 232, 168, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 142, 246, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 164, 232, 151, 149, 151, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 242, 232, 164, 232, 148, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 232, 242, 232, 163, 164, 232, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 232, 242, 146, 146, 144, 194, 132, 194, 143, 254, 252, 169, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 232, 164, 232, 143, 254, 252, 169, 159, 255, 245, 136, 250, 141, 159, 242, 144, 232, 150, 232, 255, 139, 250, 246, 254, 224, 242, 253, 141, 241, 147, 232, 151, 149, 151, 144, 162, 194, 140, 142, 246, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 146, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 140, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 144, 149, 139, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 250, 143, 240, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 164, 232, 140, 142, 246, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 150, 232, 255, 245, 136, 250, 141, 159, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 232, 145, 232, 169, 232, 146, 232, 168, 144, 162, 194, 255, 245, 136, 250, 141, 232, 140, 142, 246, 248, 136, 255, 248, 140, 242, 245, 232, 164, 232, 151, 149, 151, 162, 194, 255, 136, 139, 232, 159, 242, 247, 141, 232, 242, 232, 164, 232, 148, 254, 250, 139, 139, 242, 247, 240, 186, 242, 139, 252, 245, 254, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 232, 242, 232, 163, 164, 232, 254, 250, 139, 139, 242, 247, 240, 186, 242, 139, 252, 245, 254, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 162, 232, 242, 146, 146, 144, 194, 132, 194, 143, 254, 252, 169, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 232, 164, 232, 143, 254, 252, 169, 159, 255, 245, 136, 250, 141, 159, 242, 144, 232, 150, 232, 255, 139, 250, 246, 254, 224, 242, 253, 141, 241, 147, 232, 151, 149, 151, 144, 162, 194, 140, 142, 246, 248, 136, 255, 248, 140, 242, 245, 232, 146, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 140, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 140, 250, 246, 137, 245, 254, 248, 140, 141, 254, 137, 144, 149, 240, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 250, 143, 240, 248, 136, 255, 248, 140, 242, 245, 232, 164, 232, 140, 142, 246, 248, 136, 255, 248, 140, 242, 245, 232, 150, 232, 255, 245, 136, 250, 141, 159, 254, 250, 139, 139, 242, 247, 240, 186, 242, 139, 252, 245, 254, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 191, 250, 245, 255, 178, 254, 139, 247, 254, 245, 232, 145, 232, 169, 232, 146, 232, 168, 144, 162, 194, 255, 245, 136, 250, 141, 232, 254, 250, 139, 139, 242, 247, 240, 248, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 240, 232, 165, 232, 151, 149, 168, 232, 166, 232, 168, 149, 151, 232, 161, 232, 151, 149, 151, 162, 194, 255, 245, 136, 250, 141, 232, 136, 252, 252, 245, 142, 253, 254, 139, 248, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 251, 162, 194, 255, 245, 136, 250, 141, 232, 140, 241, 250, 253, 136, 128, 248, 246, 250, 140, 244, 232, 164, 232, 250, 143, 240, 248, 136, 255, 248, 140, 241, 242, 255, 141, 248, 140, 242, 245, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 250, 139, 139, 242, 
        247, 240, 248, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 144, 232, 145, 232, 136, 252, 252, 245, 142, 253, 254, 139, 248, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 162, 194, 255, 245, 136, 250, 141, 232, 247, 254, 128, 248, 140, 241, 250, 253, 136, 128, 248, 246, 250, 140, 244, 232, 164, 232, 250, 143, 240, 248, 136, 255, 248, 140, 242, 245, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 250, 139, 139, 242, 247, 240, 248, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 144, 232, 145, 232, 136, 252, 252, 245, 142, 253, 254, 139, 248, 140, 242, 245, 241, 136, 142, 254, 141, 141, 254, 162, 194, 143, 254, 252, 170, 232, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 232, 164, 232, 235, 190, 185, 237, 136, 226, 238, 239, 159, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 144, 162, 194, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 149, 139, 232, 164, 232, 246, 242, 129, 159, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 149, 139, 147, 232, 151, 149, 151, 147, 232, 140, 241, 250, 253, 136, 128, 248, 246, 250, 140, 244, 232, 145, 232, 254, 250, 139, 139, 242, 247, 240, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 236, 141, 139, 254, 247, 240, 141, 241, 144, 162, 194, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 232, 164, 232, 226, 238, 239, 237, 136, 235, 190, 185, 159, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 149, 139, 147, 232, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 149, 240, 251, 144, 162, 194, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 232, 164, 232, 252, 245, 250, 246, 137, 159, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 242, 255, 232, 159, 242, 140, 186, 242, 139, 252, 245, 254, 236, 241, 250, 253, 136, 128, 232, 164, 164, 232, 168, 144, 194, 132, 194, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 232, 164, 232, 235, 190, 185, 237, 136, 226, 238, 239, 159, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 144, 162, 194, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 149, 139, 232, 164, 232, 246, 242, 129, 159, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 149, 139, 147, 232, 151, 149, 151, 147, 232, 247, 254, 128, 248, 140, 241, 250, 253, 136, 128, 248, 246, 250, 140, 244, 232, 145, 232, 254, 250, 139, 139, 242, 247, 240, 186, 242, 139, 252, 245, 254, 236, 241, 250, 253, 136, 128, 236, 246, 136, 136, 141, 241, 236, 141, 139, 254, 247, 240, 141, 241, 144, 162, 194, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 232, 164, 232, 226, 238, 239, 237, 136, 235, 190, 185, 159, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 149, 139, 147, 232, 141, 250, 139, 240, 254, 141, 248, 130, 142, 143, 149, 240, 251, 144, 162, 194, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 232, 164, 232, 252, 245, 250, 246, 137, 159, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194, 134, 194, 194, 242, 255, 232, 159, 242, 140, 248, 251, 245, 136, 136, 246, 232, 164, 164, 232, 168, 144, 194, 132, 194, 143, 254, 252, 171, 232, 251, 245, 136, 136, 246, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 245, 136, 136, 246, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 143, 254, 252, 170, 232, 250, 253, 253, 232, 164, 232, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 232, 146, 232, 251, 245, 136, 136, 246, 149, 139, 240, 251, 162, 194, 143, 254, 252, 170, 232, 140, 252, 139, 254, 254, 247, 232, 164, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 159, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 144, 232, 145, 232, 159, 143, 254, 252, 170, 159, 168, 149, 151, 144, 232, 148, 232, 251, 245, 136, 136, 246, 149, 139, 240, 251, 144, 162, 194, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 232, 164, 232, 246, 242, 129, 159, 250, 253, 253, 147, 232, 140, 252, 139, 254, 254, 247, 147, 232, 151, 149, 172, 144, 162, 194, 134, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 250, 143, 254, 139, 250, 240, 254, 248, 139, 240, 251, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194};
    }

    public CLMakeupLive3DFilter(String str, String str2, String str3, String str4) {
        super(str3, str4);
        CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = new CLShare3DRelatedClasses.Live3DRenderData(x5, y5, z5, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{0.2f, 0.6f, 0.6f}, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}, 1.0f, new float[]{1.0f, 1.0f, 1.0f}, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = new Object();
        this.h0 = new Object();
        this.i0 = false;
        this.j0 = 90;
        this.k0 = false;
        this.l0 = new float[12];
        this.m0 = new float[9];
        this.n0 = new float[16];
        this.o0 = 90;
        this.r0 = new ArrayList();
        this.s0 = new CLShare3DRelatedClasses.Live3DRenderData();
        this.t0 = new LiveEarringMetadata();
        this.y0 = new float[16];
        this.z0 = new float[16];
        this.A0 = new float[16];
        this.B0 = null;
        this.C0 = false;
        this.z1 = new float[]{1.0f, 1.0f, 1.0f};
        this.A1 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.B1 = new float[]{1.0f, 1.0f, 1.0f};
        this.C1 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.s2 = false;
        this.t2 = true;
        this.u2 = false;
        this.x2 = true;
        this.n3 = -1;
        this.o3 = false;
        this.t3 = false;
        this.u3 = 3;
        this.v3 = 2;
        this.w3 = 0.01f;
        this.x3 = -1.0f;
        this.y3 = -1.0f;
        this.z3 = 0.2f;
        this.A3 = 0.25f;
        this.B3 = -1;
        this.C3 = false;
        this.D3 = false;
        this.Z3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.a4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.b4 = 1.0f;
        this.c4 = -1.0f;
        this.d4 = -1.0f;
        this.e4 = -1.0f;
        this.f4 = -1.0f;
        this.g4 = false;
        this.h4 = false;
        this.i4 = new ArrayList();
        this.j4 = new ArrayList();
        this.k4 = -1.0f;
        this.l4 = -1.0f;
        this.m4 = -1.0f;
        this.n4 = -1.0f;
        this.o4 = -1.0f;
        this.p4 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 50.0f, 100.0f};
        this.q4 = -1.0f;
        this.r4 = -1.0f;
        this.s4 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 50.0f, 100.0f};
        this.t4 = new float[]{-1.0f, -1.0f, -1.0f};
        this.u4 = new float[]{-1.0f, -1.0f, -1.0f};
        this.v4 = new float[]{-1.0f, -1.0f, -1.0f};
        this.w4 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.x4 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.y4 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.z4 = new byte[768];
        this.A4 = new byte[768];
        this.B4 = -1;
        this.C4 = -1;
        this.D4 = new int[256];
        this.E4 = new int[256];
        this.F4 = new int[256];
        this.G4 = false;
        this.H4 = false;
        this.I4 = false;
        this.J4 = false;
        this.K4 = false;
        this.L4 = false;
        this.M4 = false;
        this.N4 = new byte[256];
        this.O4 = -1;
        this.P4 = new CLMakeupLiveCubeEyewearFilter.b();
        this.Q4 = new CLMakeupLiveCubeEyewearFilter.b();
        this.R4 = new CLMakeupLiveCubeEyewearFilter.b();
        this.S4 = new CLMakeupLiveCubeEyewearFilter.b();
        this.T4 = null;
        this.U4 = false;
        this.V4 = new float[]{-1.0f, -1.0f, -1.0f};
        this.W4 = new float[]{-1.0f, -1.0f, -1.0f};
        this.X4 = new float[]{-1.0f, -1.0f, -1.0f};
        this.Y4 = -1.0f;
        this.Z4 = -1.0f;
        this.a5 = -1.0f;
        this.b5 = false;
        this.c5 = false;
        this.d5 = -1.0f;
        this.e5 = -1.0f;
        this.g5 = -1.0f;
        this.h5 = false;
        this.i5 = -1.0f;
        this.j5 = new PointF();
        this.k5 = new PointF();
        this.l5 = new PointF();
        this.m5 = new PointF();
        this.n5 = new PointF();
        this.o5 = new PointF();
        this.p5 = new ArrayList();
        this.q5 = new float[]{-0.5f, 0.24f};
        this.r5 = new float[]{-0.67f, -0.32f};
        this.s5 = new float[]{0.5f, 0.24f};
        this.t5 = new float[]{0.67f, -0.32f};
        this.u5 = 0.2f;
        this.v5 = false;
        this.w5 = false;
        this.w = str;
        this.x = str2;
        this.o = m(B5);
        O(live3DRenderData);
    }

    public static void C(float[] fArr, int i2) {
        GLES20.glUniform3f(i2, fArr[0], fArr[1], fArr[2]);
    }

    public static void D(int[] iArr, int i2, CLMakeupLiveCubeEyewearFilter.b bVar) {
        float f2;
        float f3;
        float fL;
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
            fL = iMin;
            f2 = fL;
            f3 = f2;
        } else if (iMin < iMax) {
            for (int i7 = iMin; i7 <= iMax; i7++) {
                i3 += iArr[i7] * i7;
            }
            float f4 = ((double) i4) > 0.0d ? i3 / i4 : (iMin + iMax) * 0.5f;
            float f5 = i4;
            float fL2 = l(iArr, iMin, iMax, 0.2f * f5);
            f3 = f4;
            fL = l(iArr, iMin, iMax, f5 * 0.8f);
            f2 = fL2;
        } else {
            f2 = 51.0f;
            f3 = 127.5f;
            fL = 204.0f;
        }
        if (fL - f2 < 3.0f) {
            float f6 = (f2 + fL) * 0.5f;
            fL = 1.5f + f6;
            f2 = f6 - 1.5f;
        }
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fL -= f2;
            f2 = 0.0f;
        }
        if (fL > 255.0f) {
            f2 -= fL - 255.0f;
            fL = 255.0f;
        }
        float fMin = Math.min(Math.max(f3, f2 + 0.5f), fL - 0.5f);
        float f7 = 255.0f - fL;
        float fMin2 = Math.min(4.0f * f2, 0.8f * f7);
        float fMax = Math.max((-0.8f) * f2, f7 * (-4.0f));
        bVar.f25622a = fMin;
        bVar.f25623b = f2;
        bVar.f25624c = fL;
        bVar.d = fMax;
        bVar.f25625e = fMin2;
        if (i2 == 1) {
            bVar.f25626f = iMin == iMax ? iMin : iMin < iMax ? l(iArr, iMin, iMax, i4 * 0.005f) : 16.0f;
        }
    }

    public static byte[] I(Bitmap bitmap) {
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            md.n("Bitmap must be in ARGB_8888 format");
            return null;
        }
        int height = bitmap.getHeight() * bitmap.getWidth();
        int[] iArr = new int[height];
        byte[] bArr = new byte[height << 2];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        int i2 = 0;
        for (int i3 = 0; i3 < height; i3++) {
            int i4 = iArr[i3];
            bArr[i2] = (byte) ((i4 >> 16) & 255);
            bArr[i2 + 1] = (byte) ((i4 >> 8) & 255);
            int i5 = i2 + 3;
            bArr[i2 + 2] = (byte) (i4 & 255);
            i2 += 4;
            bArr[i5] = (byte) (i4 >>> 24);
        }
        return bArr;
    }

    public static float[] K(float[] fArr, float[] fArr2) {
        float f2 = fArr[2];
        float f3 = fArr2[1];
        float f4 = fArr[1];
        float f5 = fArr2[2];
        float f6 = fArr2[0];
        float f7 = fArr[0];
        return new float[]{(f4 * f5) + ((-f2) * f3), (f2 * f6) - (f5 * f7), (f7 * f3) + ((-f4) * f6)};
    }

    public static float[] L(float[] fArr, float[] fArr2, float[] fArr3) {
        float[] fArrX = X(new float[]{fArr2[0] - fArr[0], fArr2[1] - fArr[1], fArr2[2] - fArr[2]});
        float[] fArrX2 = X(K(fArrX, fArr3));
        float[] fArrK = K(fArrX2, fArrX);
        float f2 = fArrX2[0];
        float f3 = fArrX2[1];
        float f4 = fArrX2[2];
        float f5 = -a0(fArrX2, fArr);
        return new float[]{f2, fArrK[0], -fArrX[0], Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, fArrK[1], -fArrX[1], Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, fArrK[2], -fArrX[2], Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, -a0(fArrK, fArr), a0(fArrX, fArr), 1.0f};
    }

    public static void P(float[] fArr, int i2, float[] fArr2) {
        float[] fArr3 = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
        if (i2 == 90 || i2 == 270) {
            fArr3[4] = 0.0f;
            fArr3[0] = 0.0f;
            fArr3[3] = 1.0f;
            fArr3[1] = 1.0f;
        }
        for (int i3 = 0; i3 < 9; i3++) {
            fArr2[i3] = 0.0f;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            for (int i5 = 0; i5 < 3; i5++) {
                for (int i6 = 0; i6 < 3; i6++) {
                    int i7 = (i4 * 3) + i5;
                    int i8 = i6 * 3;
                    fArr2[i7] = (fArr[i4 + i8] * fArr3[i8 + i5]) + fArr2[i7];
                }
            }
        }
    }

    public static void U(CLMakeupLiveCubeEyewearFilter.b bVar, float f2, byte[] bArr, int i2) {
        float fMax = Math.max(bVar.f25626f, 4.0f);
        int i3 = i2 << 8;
        for (int i4 = 0; i4 < 256; i4++) {
            bArr[i3 + i4] = (byte) Math.min(Math.max(Math.round(Math.min(i4 / fMax, 1.0f) * f2), 0), 255);
        }
    }

    public static void V(float[] fArr, int i2, float[] fArr2) {
        float[] fArr3 = {1.0f, -1.0f, -1.0f, 1.0f};
        float[] fArr4 = {-1.0f, -1.0f, 1.0f, 1.0f};
        int i3 = ((i2 / 90) + 3) % 4;
        System.arraycopy(fArr, 0, fArr2, 0, 9);
        int i4 = 0;
        while (i4 < 2) {
            float f2 = i4 == 0 ? fArr3[i3] : fArr4[i3];
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = (i5 * 3) + i4;
                fArr2[i6] = fArr2[i6] * f2;
            }
            i4++;
        }
    }

    public static float[] X(float[] fArr) {
        float[] fArr2 = new float[3];
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        float fSqrt = (float) Math.sqrt((f4 * f4) + (f3 * f3) + (f2 * f2));
        if (fSqrt > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fArr2[0] = fArr[0] / fSqrt;
            fArr2[1] = fArr[1] / fSqrt;
            fArr2[2] = fArr[2] / fSqrt;
        }
        return fArr2;
    }

    public static float[] Y(float[] fArr, float[] fArr2) {
        return new float[]{fArr[0] + fArr2[0], fArr[1] + fArr2[1], fArr[2] + fArr2[2]};
    }

    public static float a0(float[] fArr, float[] fArr2) {
        return (fArr[2] * fArr2[2]) + (fArr[1] * fArr2[1]) + (fArr[0] * fArr2[0]);
    }

    public static void g0(float[] fArr, float[] fArr2) {
        float f2 = fArr[0] * 0.299f;
        float f3 = fArr[1];
        float f4 = fArr[2];
        fArr2[0] = (0.114f * f4) + (0.587f * f3) + f2;
        float f5 = fArr[0];
        fArr2[1] = (f4 * 0.5f) + (((-0.169f) * f5) - (f3 * 0.331f)) + 127.5f;
        fArr2[2] = (((f5 * 0.5f) - (fArr[1] * 0.419f)) - (f4 * 0.081f)) + 127.5f;
    }

    public static float j(float f2, float f3, float f4) {
        float f5 = f3 - 0.5f;
        double d2 = (f2 * 3.14159f) / 180.0f;
        float f6 = f4 - 0.5f;
        return ((float) Math.pow(2.718280076980591d, ((float) Math.pow((((((float) Math.cos(d2)) * f5) - (((float) Math.sin(d2)) * f6)) + 0.5f) - 0.5f, 2.0d)) * (-14.0f))) * ((float) Math.pow(2.718280076980591d, ((float) Math.pow((((f6 * ((float) Math.cos(d2))) + (f5 * ((float) Math.sin(d2)))) + 0.5f) - 0.5f, 2.0d)) * (-600.0f)));
    }

    public static float l(int[] iArr, int i2, int i3, float f2) {
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

    public static FloatBuffer m(float[] fArr) {
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect((fArr != null ? fArr.length : 0) << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr);
        floatBufferAsFloatBuffer.position(0);
        return floatBufferAsFloatBuffer;
    }

    public static void p(float f2, float f3, float[] fArr) {
        int length = fArr.length;
        int i2 = 0;
        if (f3 >= f2) {
            float f4 = (f2 - f3) / (f2 * f2);
            float f5 = 1.0f - ((2.0f * f4) * f2);
            while (i2 < length) {
                float f6 = i2;
                fArr[i2] = (f6 * f5) + (f4 * f6 * f6);
                i2++;
            }
            return;
        }
        float f7 = (f3 - f2) / (f3 * f3);
        float f8 = 2.0f * f7;
        float f9 = 1.0f - (f8 * f3);
        if (Math.abs(f7) < 1.0E-6f) {
            float f10 = f3 / f2;
            while (i2 < length) {
                fArr[i2] = i2 * f10;
                i2++;
            }
            return;
        }
        while (i2 < length) {
            fArr[i2] = (float) ((Math.sqrt(Math.max(((4.0f * f7) * i2) + (f9 * f9), Call.Parameters.DEFAULT_CAMERA_ZOOM)) + ((double) (-f9))) / ((double) f8));
            i2++;
        }
    }

    public static void q(float f2, float f3, float[] fArr, float[] fArr2) {
        float f4 = f3 - f2;
        float f5 = ((fArr[0] / 100.0f) * f4) + f2;
        float f6 = ((fArr[1] / 100.0f) * f4) + f2;
        float f7 = (f4 * (fArr[2] / 100.0f)) + f2;
        boolean z = f6 < (f5 + f7) * 0.5f;
        float f8 = f7 - f5;
        float f9 = (f6 - f5) / f8;
        if (z) {
            f9 = 1.0f - f9;
        }
        float fLog = ((float) Math.log(0.5d)) / ((float) Math.log(f9));
        fArr2[0] = f5;
        fArr2[1] = 1.0f / f8;
        fArr2[2] = fLog;
        fArr2[3] = z ? Call.Parameters.DEFAULT_CAMERA_ZOOM : 1.0f;
    }

    public static void z(CLMakeupLiveCubeEyewearFilter.b bVar, float f2, byte[] bArr, int i2) {
        float f3 = bVar.d;
        float f4 = bVar.f25625e;
        float f5 = f2 - bVar.f25622a;
        float fMin = Math.min(Math.max(f5, f3), f4);
        float f6 = bVar.f25623b;
        float f7 = bVar.f25624c;
        float f8 = f6 + fMin;
        float f9 = f7 + fMin;
        int iCeil = (int) Math.ceil(f6);
        int iFloor = (int) Math.floor(f7);
        if (f6 < 0.01f) {
            iCeil = 0;
        }
        if (f7 > 254.99f) {
            iFloor = 255;
        }
        float[] fArr = new float[256];
        for (int i3 = iCeil; i3 <= iFloor; i3++) {
            fArr[i3] = i3 + fMin;
        }
        if (iCeil > 0) {
            float[] fArr2 = new float[iCeil];
            p(f6, f8, fArr2);
            for (int i4 = 0; i4 < iCeil; i4++) {
                fArr[i4] = fArr2[i4];
            }
        }
        if (iFloor < 255) {
            float[] fArr3 = new float[255 - iFloor];
            p(255.0f - f7, 255.0f - f9, fArr3);
            while (true) {
                iFloor++;
                if (iFloor >= 256) {
                    break;
                } else {
                    fArr[iFloor] = 255.0f - fArr3[255 - iFloor];
                }
            }
        }
        if (f5 < f3 || f5 > f4) {
            float f10 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float f11 = f5 < f3 ? 0.0f : 255.0f;
            float f12 = bVar.f25622a;
            if (f11 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float f13 = Call.Parameters.DEFAULT_CAMERA_ZOOM - f12;
                if (f13 < f3) {
                    f10 = (f5 - f3) / (f13 - f3);
                }
            } else {
                float f14 = 255.0f - f12;
                if (f14 > f4) {
                    f10 = (f5 - f4) / (f14 - f4);
                }
            }
            for (int i5 = 0; i5 < 256; i5++) {
                fArr[i5] = tr.a(1.0f, f10, fArr[i5], f11 * f10);
            }
        }
        int i6 = i2 << 8;
        for (int i7 = 0; i7 < 256; i7++) {
            bArr[i6 + i7] = (byte) Math.min(Math.max(Math.round(fArr[i7]), 0), 255);
        }
    }

    public final void A(CLMakeupLiveFilter.LiveDynamicRangeMetadata liveDynamicRangeMetadata) {
        float fMin = Math.min(liveDynamicRangeMetadata.max_luma_for_earring - liveDynamicRangeMetadata.min_luma_for_earring, 1.0f);
        float fMax = Math.max(liveDynamicRangeMetadata.min_luma_for_earring, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        for (int i2 = 0; i2 < 3; i2++) {
            this.A1[i2] = fMax;
            this.z1[i2] = fMin;
            this.C1[i2] = fMax;
            this.B1[i2] = fMin;
        }
    }

    public final void B(String str, String str2) {
        this.w = str;
        this.x = str2;
        super.setShaders(null, null);
    }

    public final void E(CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr) {
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        ArrayList arrayList;
        FloatBuffer floatBuffer;
        FloatBuffer floatBuffer2;
        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr2 = this.p0;
        int length = live3DRenderDataArr2 != null ? live3DRenderDataArr2.length : 0;
        int i2 = 0;
        while (true) {
            fArr = this.m0;
            fArr2 = this.n0;
            fArr3 = this.l0;
            arrayList = this.i4;
            if (i2 >= length) {
                break;
            }
            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = live3DRenderDataArr[i2];
            if (live3DRenderData != null && (floatBuffer2 = live3DRenderData.vertex_buffer) != null && live3DRenderData.normal_buffer != null && live3DRenderData.texcoord_buffer != null && !live3DRenderData.is_lens) {
                int iMin = Math.min(Math.min(floatBuffer2.capacity() / 3, live3DRenderData.normal_buffer.capacity() / 3), live3DRenderData.texcoord_buffer.capacity() / 2);
                if (live3DRenderData.isPBR || live3DRenderData.isGem) {
                    GLES20.glUseProgram(this.S);
                    GLES20.glEnable(2884);
                    GLES20.glFrontFace(2304);
                    GLES20.glCullFace(1029);
                    boolean z = this.g4;
                    live3DRenderData.vertex_buffer.position(0);
                    int i3 = this.y2;
                    if (z) {
                        GLES20.glVertexAttribPointer(i3, 3, 5126, false, 0, (Buffer) arrayList.get(i2));
                    } else {
                        GLES20.glVertexAttribPointer(i3, 3, 5126, false, 0, (Buffer) live3DRenderData.vertex_buffer);
                    }
                    live3DRenderData.normal_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.A2, 3, 5126, false, 0, (Buffer) live3DRenderData.normal_buffer);
                    if (live3DRenderData.normal_map_texture_id != -1) {
                        GLES20.glEnableVertexAttribArray(this.B2);
                        live3DRenderData.tangent_buffer.position(0);
                        GLES20.glVertexAttribPointer(this.B2, 3, 5126, false, 0, (Buffer) live3DRenderData.tangent_buffer);
                    }
                    if (live3DRenderData.isGem) {
                        GLES20.glDisableVertexAttribArray(this.B2);
                    }
                    live3DRenderData.texcoord_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.z2, 2, 5126, false, 0, (Buffer) live3DRenderData.texcoord_buffer);
                    t(this.j0, fArr3, fArr2, fArr);
                } else {
                    GLES20.glUseProgram(this.a0);
                    GLES20.glBlendFunc(1, 771);
                    boolean z2 = this.g4;
                    live3DRenderData.vertex_buffer.position(0);
                    if (z2) {
                        GLES20.glVertexAttribPointer(this.b0, 3, 5126, false, 0, (Buffer) arrayList.get(i2));
                    } else {
                        GLES20.glVertexAttribPointer(this.b0, 3, 5126, false, 0, (Buffer) live3DRenderData.vertex_buffer);
                    }
                    live3DRenderData.normal_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.c0, 3, 5126, false, 0, (Buffer) live3DRenderData.normal_buffer);
                    live3DRenderData.texcoord_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.d0, 2, 5126, false, 0, (Buffer) live3DRenderData.texcoord_buffer);
                    Z(this.j0, fArr3, fArr2, fArr);
                }
                T(live3DRenderData);
                if (this.p3 == h.f25551a) {
                    GLES20.glBlendFuncSeparate(770, 771, 1, 771);
                } else {
                    GLES20.glBlendFunc(1, 0);
                }
                GLES20.glDrawArrays(4, 0, iMin);
            }
            i2++;
        }
        GLES20.glDepthMask(false);
        GLES20.glDisable(2884);
        for (int i4 = 0; i4 < length; i4++) {
            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 = live3DRenderDataArr[i4];
            if (live3DRenderData2 != null && (floatBuffer = live3DRenderData2.vertex_buffer) != null && live3DRenderData2.normal_buffer != null && live3DRenderData2.texcoord_buffer != null && live3DRenderData2.is_lens) {
                int iMin2 = Math.min(Math.min(floatBuffer.capacity() / 3, live3DRenderData2.normal_buffer.capacity() / 3), live3DRenderData2.texcoord_buffer.capacity() / 2);
                if (live3DRenderData2.isPBR || live3DRenderData2.isGem) {
                    GLES20.glUseProgram(this.S);
                    GLES20.glBlendFuncSeparate(770, 771, 1, 771);
                    boolean z3 = this.g4;
                    live3DRenderData2.vertex_buffer.position(0);
                    if (z3) {
                        GLES20.glVertexAttribPointer(this.y2, 3, 5126, false, 0, (Buffer) arrayList.get(i4));
                    } else {
                        GLES20.glVertexAttribPointer(this.y2, 3, 5126, false, 0, (Buffer) live3DRenderData2.vertex_buffer);
                    }
                    live3DRenderData2.normal_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.A2, 3, 5126, false, 0, (Buffer) live3DRenderData2.normal_buffer);
                    if (live3DRenderData2.normal_map_texture_id != -1) {
                        GLES20.glEnableVertexAttribArray(this.B2);
                        live3DRenderData2.tangent_buffer.position(0);
                        GLES20.glVertexAttribPointer(this.B2, 3, 5126, false, 0, (Buffer) live3DRenderData2.tangent_buffer);
                    }
                    if (live3DRenderData2.isGem) {
                        GLES20.glDisableVertexAttribArray(this.B2);
                    }
                    live3DRenderData2.texcoord_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.z2, 2, 5126, false, 0, (Buffer) live3DRenderData2.texcoord_buffer);
                    t(this.j0, fArr3, fArr2, fArr);
                } else {
                    GLES20.glUseProgram(this.a0);
                    GLES20.glBlendFunc(1, 771);
                    boolean z4 = this.g4;
                    live3DRenderData2.vertex_buffer.position(0);
                    if (z4) {
                        GLES20.glVertexAttribPointer(this.b0, 3, 5126, false, 0, (Buffer) arrayList.get(i4));
                    } else {
                        GLES20.glVertexAttribPointer(this.b0, 3, 5126, false, 0, (Buffer) live3DRenderData2.vertex_buffer);
                    }
                    live3DRenderData2.normal_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.c0, 3, 5126, false, 0, (Buffer) live3DRenderData2.normal_buffer);
                    live3DRenderData2.texcoord_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.d0, 2, 5126, false, 0, (Buffer) live3DRenderData2.texcoord_buffer);
                    Z(this.j0, fArr3, fArr2, fArr);
                }
                T(live3DRenderData2);
                GLES20.glDrawArrays(4, 0, iMin2);
            }
        }
        GLES20.glDepthMask(true);
        GLES20.glEnableVertexAttribArray(this.B2);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x007e A[Catch: all -> 0x0013, PHI: r6
      0x007e: PHI (r6v5 com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter) = 
      (r6v7 com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter)
      (r6v10 com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter)
     binds: [B:31:0x007c, B:25:0x0062] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0013, blocks: (B:4:0x0003, B:6:0x0011, B:10:0x0018, B:12:0x0020, B:14:0x0026, B:16:0x002a, B:18:0x002e, B:20:0x0032, B:22:0x004a, B:24:0x0051, B:28:0x0066, B:30:0x006c, B:33:0x0085, B:32:0x007e, B:34:0x0089, B:36:0x009d, B:37:0x00a2), top: B:41:0x0003 }] */
    public final void F(CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr, CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr2) {
        CLMakeupLive3DFilter cLMakeupLive3DFilter;
        FloatBuffer floatBuffer;
        CLMakeupLive3DFilter cLMakeupLive3DFilter2;
        synchronized (this.h0) {
            try {
                this.p0 = live3DRenderDataArr;
                this.q0 = live3DRenderDataArr2;
                this.g4 = false;
                this.h4 = false;
                this.U4 = true;
                int length = live3DRenderDataArr2 != null ? live3DRenderDataArr2.length : 0;
                this.p5.clear();
                int i2 = 0;
                while (i2 < length) {
                    CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.q0[i2];
                    if (live3DRenderData == null || (floatBuffer = live3DRenderData.vertex_buffer) == null || live3DRenderData.normal_buffer == null || live3DRenderData.texcoord_buffer == null) {
                        cLMakeupLive3DFilter = this;
                    } else {
                        int iCapacity = floatBuffer.capacity();
                        float[] fArr = new float[iCapacity];
                        live3DRenderData.vertex_buffer.get(fArr);
                        live3DRenderData.vertex_buffer.position(0);
                        ArrayList arrayList = new ArrayList();
                        int i3 = 0;
                        while (i3 < iCapacity) {
                            float f2 = fArr[i3];
                            if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                cLMakeupLive3DFilter2 = this;
                                if (cLMakeupLive3DFilter2.G(f2, fArr[i3 + 1], fArr[i3 + 2], this.q5, this.r5)) {
                                    arrayList.add(Integer.valueOf(i3));
                                }
                                i3 += 3;
                                this = cLMakeupLive3DFilter2;
                            } else {
                                cLMakeupLive3DFilter2 = this;
                            }
                            float f3 = fArr[i3];
                            if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM && cLMakeupLive3DFilter2.G(f3, fArr[i3 + 1], fArr[i3 + 2], cLMakeupLive3DFilter2.s5, cLMakeupLive3DFilter2.t5)) {
                                arrayList.add(Integer.valueOf(i3));
                            }
                            i3 += 3;
                            this = cLMakeupLive3DFilter2;
                        }
                        cLMakeupLive3DFilter = this;
                        cLMakeupLive3DFilter.p5.add((Integer[]) arrayList.toArray(new Integer[arrayList.size()]));
                    }
                    i2++;
                    this = cLMakeupLive3DFilter;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean G(float f2, float f3, float f4, float[] fArr, float[] fArr2) {
        boolean z = Math.min(Math.abs(f2 - fArr[0]) / 0.2f, 1.0f) < 1.0f && Math.min(Math.abs(f3 - 0.464f) / 0.3f, 1.0f) < 1.0f && Math.min(Math.abs(f4 - fArr[1]) / 0.3f, 1.0f) < 1.0f;
        float f5 = fArr2[1];
        float f6 = fArr[1];
        float f7 = f5 - f6;
        float f8 = fArr[0];
        float f9 = fArr2[0];
        float f10 = f8 - f9;
        float f11 = ((-f7) * f8) - (f6 * f10);
        boolean z2 = (((f10 * f4) + (f7 * f2)) + f11) * f11 <= Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f12 = this.u5;
        float fMax = Math.max(f8 + f12, Math.max(f9, f8 - f12));
        float f13 = fArr[0];
        return z || (((f2 >= Math.min(f13 + f12, Math.min(fArr2[0], f13 - f12)) && f2 <= fMax && f4 >= Math.min(fArr[1], fArr2[1]) && f4 > Math.max(fArr[1], fArr2[1])) || z2) && f3 >= 0.18f && f3 <= 0.57f);
    }

    public final boolean H(CLShare3DRelatedClasses.Live3DRenderData live3DRenderData, int[] iArr, int i2) {
        int i3;
        int i4;
        if (live3DRenderData.texcoord_buffer.capacity() == 0) {
            return false;
        }
        int width = live3DRenderData.bitmap.getWidth();
        int height = live3DRenderData.bitmap.getHeight();
        float[] fArr = new float[live3DRenderData.texcoord_buffer.capacity()];
        live3DRenderData.texcoord_buffer.get(fArr);
        live3DRenderData.texcoord_buffer.position(0);
        byte[] bArrI = I(live3DRenderData.bitmap);
        System.currentTimeMillis();
        for (int i5 = 0; i5 < live3DRenderData.texcoord_buffer.capacity() / 6; i5++) {
            int i6 = i5 * 6;
            float f2 = fArr[i6 + 1];
            float f3 = fArr[i6 + 3];
            int i7 = 2;
            if (f2 <= f3 && f2 <= fArr[i6 + 5]) {
                i4 = 0;
                i3 = 1;
            } else if (f3 < fArr[i6 + 5]) {
                i3 = 0;
                i4 = 1;
            } else {
                i3 = 1;
                i4 = 2;
                i7 = 0;
            }
            if (fArr[(i3 << 1) + i6 + 1] <= fArr[(i7 << 1) + i6 + 1]) {
                int i8 = i7;
                i7 = i3;
                i3 = i8;
            }
            int i9 = (i4 << 1) + i6;
            float f4 = width;
            float f5 = (fArr[i9] * f4) - 0.5f;
            float f6 = height;
            float f7 = (fArr[i9 + 1] * f6) - 0.5f;
            int i10 = (i7 << 1) + i6;
            float f8 = (fArr[i10] * f4) - 0.5f;
            float f9 = (fArr[i10 + 1] * f6) - 0.5f;
            int i11 = i6 + (i3 << 1);
            float f10 = (fArr[i11] * f4) - 0.5f;
            float f11 = (fArr[i11 + 1] * f6) - 0.5f;
            float f12 = f11 - f7;
            if (f12 > 1.0E-6d) {
                float fA = tr.a(f9, f7, (f10 - f5) / f12, f5);
                float f13 = f8 < fA ? f8 : fA;
                if (f8 < fA) {
                    f8 = fA;
                }
                float f14 = f8;
                o(f5, f7, f13, f9, f14, f9, bArrI, iArr, i2, width, height);
                o(f10, f11, f13, f9, f14, f9, bArrI, iArr, i2, width, height);
            }
        }
        return true;
    }

    public final float[] J(float f2, float f3, float f4, float[] fArr, float[] fArr2, float f5, ArrayList arrayList, float f6) {
        char c2;
        char c3;
        float f7;
        float f8;
        float f9;
        float[] fArr3;
        ArrayList arrayList2 = arrayList;
        int i2 = 0;
        char c4 = 1;
        float[] fArr4 = {fArr[0], fArr[1]};
        float f10 = 1.0f;
        float fMin = ((1.0f - Math.min(Math.abs(f4 - fArr4[1]) / 0.3f, 1.0f)) * (1.0f - Math.min(Math.abs(f3 - 0.464f) / 0.3f, 1.0f)) * (1.0f - Math.min(Math.abs(f2 - fArr4[0]) / 0.2f, 1.0f)) * f5) + f2;
        fArr4[0] = fArr4[0] + f5;
        float fMax = Math.max(fArr4[1], fArr2[1]);
        if (f4 < Math.min(fArr4[1], fArr2[1]) || f4 > fMax) {
            return new float[]{fMin, f3, f4};
        }
        float[] fArr5 = {fMin, f3, f4};
        float[] fArrC0 = c0(fArr5);
        float[] fArr6 = this.m0;
        float f11 = fArr6[6];
        float f12 = fArrC0[0];
        float f13 = fArr6[7];
        float f14 = fArrC0[1];
        float f15 = (f13 * f14) + (f11 * f12);
        float f16 = fArr6[8];
        float f17 = fArrC0[2];
        float f18 = (f16 * f17) + f15;
        float[] fArr7 = {((fArr6[2] * f17) + ((fArr6[1] * f14) + (fArr6[0] * f12))) / f18, ((f17 * fArr6[5]) + ((f14 * fArr6[4]) + (f12 * fArr6[3]))) / f18, f18};
        float[] fArr8 = {-1.0f, -1.0f};
        int size = arrayList2.size();
        float f19 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (size < 2) {
            fArr3 = new float[]{fArr8[0], fArr8[1], Call.Parameters.DEFAULT_CAMERA_ZOOM};
            c2 = 0;
            c3 = 1;
            f7 = 1.0f;
            f8 = 0.0f;
            f9 = 0.5f;
        } else {
            PointF pointF = (PointF) arrayList2.get(0);
            arrayList2.get(0);
            int i3 = -1;
            c2 = 0;
            float f20 = -1000.0f;
            while (true) {
                c3 = c4;
                if (i2 >= arrayList2.size() - 1) {
                    break;
                }
                int i4 = i2 + 1;
                PointF pointF2 = (PointF) arrayList2.get(i4);
                float f21 = pointF2.x;
                float f22 = f19;
                float f23 = pointF.x;
                float f24 = f10;
                float f25 = pointF2.y;
                float f26 = pointF.y;
                float[] fArr9 = new float[2];
                fArr9[0] = f21 - f23;
                fArr9[c3] = f25 - f26;
                float f27 = fArr9[0];
                float f28 = fArr9[c3];
                float f29 = (((f26 - fArr7[c3]) * f28) + ((f23 - fArr7[0]) * f27)) / (-((f28 * f28) + (f27 * f27)));
                if (f20 == -1000.0f || Math.abs(f29 - 0.5f) < Math.abs(f20 - 0.5f)) {
                    fArr8[0] = (f27 * f29) + pointF.x;
                    fArr8[c3] = (f28 * f29) + pointF.y;
                    i3 = i2;
                    f20 = f29;
                }
                f19 = f22;
                arrayList2 = arrayList;
                i2 = i4;
                pointF = pointF2;
                f10 = f24;
                c4 = c3;
            }
            f7 = f10;
            f8 = f19;
            f9 = 0.5f;
            float size2 = (i3 + f20) / (arrayList.size() - f7);
            float f30 = fArr8[0];
            float f31 = fArr8[c3];
            fArr3 = new float[3];
            fArr3[0] = f30;
            fArr3[c3] = f31;
            fArr3[2] = size2;
        }
        float f32 = fArr3[c2];
        float f33 = fArr3[c3];
        float[] fArr10 = new float[2];
        fArr10[c2] = f32;
        fArr10[c3] = f33;
        float f34 = f7;
        float[] fArr11 = new float[3];
        fArr11[c2] = tr.a(f34, (fArr10[c2] - fArr7[c2]) * fMin < f8 ? f8 : f6, (f34 - Math.max(f8, Math.min(f34, (Math.abs(fArr3[2] - f9) - f9) / f9))) * k(fArr5, fArr10, (f34 - Math.min(f34, Math.abs(Math.abs(this.i5) - 10.0f) / 5.0f)) * 0.025f), fMin);
        fArr11[c3] = f3;
        fArr11[2] = f4;
        return fArr11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int[] M(CLShare3DRelatedClasses.Live3DRenderData live3DRenderData, boolean z) {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glGenRenderbuffers(1, iArr2, 0);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        GLES20.glBindRenderbuffer(36161, iArr2[0]);
        GLES20.glRenderbufferStorage(36161, 33189, 512, 512);
        GLES20.glFramebufferRenderbuffer(36160, 36096, 36161, iArr2[0]);
        int[] iArr3 = new int[1];
        GLES20.glGenTextures(1, iArr3, 0);
        GLES20.glBindTexture(34067, iArr3[0]);
        for (int i2 = 0; i2 < 6; i2++) {
            GLES20.glTexImage2D(i2 + 34069, 0, 6408, 1024, 1024, 0, 6408, 5121, null);
        }
        GLES20.glTexParameterf(34067, 10242, 33071.0f);
        GLES20.glTexParameterf(34067, 10243, 33071.0f);
        GLES20.glTexParameterf(34067, 10241, 9729.0f);
        GLES20.glTexParameterf(34067, 10240, 9729.0f);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        GLES20.glBindRenderbuffer(36161, iArr2[0]);
        GLES20.glRenderbufferStorage(36161, 33189, 1024, 1024);
        GLES20.glEnable(2929);
        float[] fArr = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.00002f, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -0.0020000201f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 6, 16);
        float[] fArr3 = {live3DRenderData.gem_center_x, live3DRenderData.gem_center_y, live3DRenderData.gem_center_z};
        float[] fArr4 = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        float[] fArr5 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        fArr2[0] = L(fArr3, Y(fArr3, fArr4), fArr5);
        fArr4[0] = -1.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = 0.0f;
        fArr5[0] = 0.0f;
        fArr5[1] = -1.0f;
        fArr5[2] = 0.0f;
        fArr2[1] = L(fArr3, Y(fArr3, fArr4), fArr5);
        fArr4[0] = 0.0f;
        fArr4[1] = 1.0f;
        fArr4[2] = 0.0f;
        fArr5[0] = 0.0f;
        fArr5[1] = 0.0f;
        fArr5[2] = 1.0f;
        fArr2[2] = L(fArr3, Y(fArr3, fArr4), fArr5);
        fArr4[0] = 0.0f;
        fArr4[1] = -1.0f;
        fArr4[2] = 0.0f;
        fArr5[0] = 0.0f;
        fArr5[1] = 0.0f;
        fArr5[2] = -1.0f;
        fArr2[3] = L(fArr3, Y(fArr3, fArr4), fArr5);
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = 1.0f;
        fArr5[0] = 0.0f;
        fArr5[1] = -1.0f;
        fArr5[2] = 0.0f;
        fArr2[4] = L(fArr3, Y(fArr3, fArr4), fArr5);
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = -1.0f;
        fArr5[0] = 0.0f;
        fArr5[1] = -1.0f;
        fArr5[2] = 0.0f;
        fArr2[5] = L(fArr3, Y(fArr3, fArr4), fArr5);
        GLES20.glUseProgram(this.T);
        GLES20.glUniformMatrix4fv(this.H1, 1, false, fArr, 0);
        GLES20.glViewport(0, 0, 1024, 1024);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        for (int i3 = 0; i3 < 6; i3++) {
            GLES20.glUniform1i(this.J1, z ? 1 : 0);
            GLES20.glUniform3f(this.K1, live3DRenderData.gem_center_x, live3DRenderData.gem_center_y, live3DRenderData.gem_center_z);
            GLES20.glUniform3f(this.L1, live3DRenderData.gem_pos_scale_x, live3DRenderData.gem_pos_scale_y, live3DRenderData.gem_pos_scale_z);
            GLES20.glUniform3f(this.M1, live3DRenderData.gem_pos_shift_x, live3DRenderData.gem_pos_shift_y, live3DRenderData.gem_pos_shift_z);
            GLES20.glUniformMatrix4fv(this.I1, 1, false, fArr2[i3], 0);
            GLES20.glFramebufferTexture2D(36160, 36064, i3 + 34069, iArr3[0], 0);
            GLES20.glClear(16640);
            GLES20.glEnableVertexAttribArray(this.F1);
            GLES20.glEnableVertexAttribArray(this.G1);
            GLES20.glVertexAttribPointer(this.F1, 3, 5126, false, 0, (Buffer) live3DRenderData.vertex_buffer);
            GLES20.glVertexAttribPointer(this.G1, 3, 5126, false, 0, (Buffer) live3DRenderData.normal_buffer);
            GLES20.glDrawArrays(4, 0, Math.min(Math.min(live3DRenderData.vertex_buffer.capacity() / 3, live3DRenderData.normal_buffer.capacity() / 3), live3DRenderData.texcoord_buffer.capacity() / 2));
        }
        GLES20.glBindFramebuffer(36160, 0);
        int[] iArr4 = new int[1];
        GLES20.glGenTextures(1, iArr4, 0);
        GLES20.glBindTexture(3553, iArr4[0]);
        GLES20.glTexImage2D(3553, 0, 6408, 2048, 1024, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        GLES20.glBindRenderbuffer(36161, iArr2[0]);
        GLES20.glRenderbufferStorage(36161, 33189, 2048, 1024);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, iArr4[0], 0);
        GLES20.glViewport(0, 0, 2048, 1024);
        GLES20.glUseProgram(this.U);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(34067, iArr3[0]);
        GLES20.glUniform1i(this.P1, 0);
        GLES20.glClear(16640);
        GLES20.glEnableVertexAttribArray(this.N1);
        GLES20.glEnableVertexAttribArray(this.O1);
        GLES20.glVertexAttribPointer(this.N1, 2, 5126, false, 0, (Buffer) this.D1);
        GLES20.glVertexAttribPointer(this.O1, 2, 5126, false, 0, (Buffer) this.E1);
        GLES20.glDrawArrays(5, 0, 4);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(8388608);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        byteBufferAllocateDirect.position(0);
        GLES20.glReadPixels(0, 0, 2048, 1024, 6408, 5121, byteBufferAllocateDirect);
        byteBufferAllocateDirect.position(0);
        byte[] bArr = new byte[byteBufferAllocateDirect.capacity()];
        byteBufferAllocateDirect.get(bArr);
        byteBufferAllocateDirect.position(0);
        Object[] objArr = (bArr[3] & 255) == 255;
        byteBufferAllocateDirect.clear();
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glDeleteTextures(1, iArr3, 0);
        GLES20.glDeleteFramebuffers(1, iArr, 0);
        GLES20.glDeleteRenderbuffers(1, iArr2, 0);
        return new int[]{iArr4[0], objArr != true ? 0 : 1};
    }

    public final void N(int i2, float[] fArr, float[] fArr2, float[] fArr3) {
        float[] fArr4;
        char c2;
        int i3 = i2 - this.o0;
        if (i3 < 0) {
            i3 += 360;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            fArr4 = this.y0;
            c2 = 4;
            if (i5 >= 4) {
                break;
            }
            for (int i6 = 0; i6 < 3; i6++) {
                fArr4[(i5 << 2) + i6] = fArr[(i6 << 2) + i5];
            }
            i5++;
        }
        char c3 = 11;
        fArr4[11] = 0.0f;
        fArr4[7] = 0.0f;
        fArr4[3] = 0.0f;
        fArr4[15] = 1.0f;
        for (int i7 = 0; i7 < 4; i7++) {
            for (int i8 = 0; i8 < 4; i8++) {
                this.z0[(i7 << 2) + i8] = fArr2[(i8 << 2) + i7];
            }
        }
        float[] fArr5 = new float[9];
        P(fArr3, i3, fArr5);
        float[] fArr6 = {2.0f / this.g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2.0f / this.f25446h, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, -1.0f, 1.0f};
        float[] fArr7 = new float[9];
        while (true) {
            char c4 = c3;
            if (i4 >= 3) {
                char c5 = c2;
                float[] fArr8 = new float[9];
                V(fArr7, i3, fArr8);
                float f2 = fArr8[0];
                float[] fArr9 = this.A0;
                fArr9[0] = f2;
                fArr9[1] = fArr8[1];
                fArr9[2] = 0.0f;
                fArr9[3] = fArr8[2];
                fArr9[c5] = fArr8[3];
                fArr9[5] = fArr8[c5];
                fArr9[6] = 0.0f;
                fArr9[7] = fArr8[5];
                fArr9[8] = fArr8[6];
                fArr9[9] = fArr8[7];
                fArr9[10] = -1.0001999f;
                fArr9[c4] = fArr8[8];
                fArr9[12] = 0.0f;
                fArr9[13] = 0.0f;
                fArr9[14] = -0.20003319f;
                fArr9[15] = 0.0f;
                return;
            }
            int i9 = 0;
            while (i9 < 3) {
                int i10 = i4 * 3;
                int i11 = i10 + i9;
                fArr7[i11] = 0.0f;
                char c6 = c2;
                for (int i12 = 0; i12 < 3; i12++) {
                    fArr7[i11] = (fArr5[i10 + i12] * fArr6[(i12 * 3) + i9]) + fArr7[i11];
                }
                i9++;
                c2 = c6;
            }
            i4++;
            c3 = c4;
        }
    }

    public final void O(CLShare3DRelatedClasses.Live3DRenderData live3DRenderData) {
        if (live3DRenderData == null) {
            return;
        }
        F(new CLShare3DRelatedClasses.Live3DRenderData[]{live3DRenderData}, null);
    }

    public final void Q() {
        float[] fArr;
        float[] fArr2 = new float[23400];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            fArr = i.f25554a;
            if (i2 >= 1950) {
                break;
            }
            int i4 = i2 * 3;
            short[] sArr = j.f25555a;
            short s2 = sArr[i4];
            short s3 = sArr[i4 + 1];
            short s4 = sArr[i4 + 2];
            int i5 = s2 << 1;
            fArr2[i3] = fArr[i5];
            fArr2[i3 + 1] = fArr[i5 + 1];
            int i6 = s3 << 1;
            fArr2[i3 + 2] = fArr[i6];
            fArr2[i3 + 3] = fArr[i6 + 1];
            int i7 = s4 << 1;
            fArr2[i3 + 4] = fArr[i7];
            fArr2[i3 + 5] = fArr[i7 + 1];
            i3 += 6;
            i2++;
        }
        for (int i8 = 0; i8 < 1950; i8++) {
            int i9 = i8 * 3;
            short[] sArr2 = k.f25556a;
            short s5 = sArr2[i9];
            short s6 = sArr2[i9 + 1];
            short s7 = sArr2[i9 + 2];
            int i10 = s5 << 1;
            fArr2[i3] = fArr[i10];
            fArr2[i3 + 1] = fArr[i10 + 1];
            int i11 = s6 << 1;
            fArr2[i3 + 2] = fArr[i11];
            fArr2[i3 + 3] = fArr[i11 + 1];
            int i12 = s7 << 1;
            fArr2[i3 + 4] = fArr[i12];
            fArr2[i3 + 5] = fArr[i12 + 1];
            i3 += 6;
        }
        this.B0 = m(fArr2);
    }

    public void R() {
        if (this.i0 || this.t0.is_valid) {
            d0();
        } else {
            GLES20.glUniform1f(this.R0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    public final void S(float f2, float f3) {
        int i2;
        int i3;
        int i4;
        int i5;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5;
        int i6;
        int i7;
        int i8;
        float fMax = Math.max(0.4f, Math.min(1.6f, f3)) * 5.0f;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            pass1BufferData = new CLShare3DRelatedClasses.Pass1BufferData();
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData6 = new CLShare3DRelatedClasses.Pass1BufferData();
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData7 = new CLShare3DRelatedClasses.Pass1BufferData();
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData8 = new CLShare3DRelatedClasses.Pass1BufferData();
            i2 = 3042;
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData9 = this.t;
            i3 = 33984;
            float f4 = pass1BufferData9.width;
            i4 = 2929;
            float f5 = pass1BufferData9.height;
            i5 = 16640;
            pass1BufferData.CreateData((int) (f4 / fMax), (int) (f5 / fMax), true);
            GLES20.glBindFramebuffer(36160, pass1BufferData.frame_buffer[0]);
            GLES20.glUseProgram(this.W);
            GLES20.glViewport(0, 0, pass1BufferData.width, pass1BufferData.height);
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(16640);
            GLES20.glEnable(3042);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.p.frame_buffer_texture[0]);
            GLES20.glUniform1i(this.V1, 0);
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, this.t.frame_buffer_texture[0]);
            GLES20.glUniform1i(this.W1, 1);
            GLES20.glUniform1f(this.X1, 1.0f / f4);
            GLES20.glUniform1f(this.Y1, 1.0f / f5);
            GLES20.glVertexAttribPointer(this.T1, 2, 5126, false, 0, (Buffer) this.D1);
            GLES20.glEnableVertexAttribArray(this.T1);
            GLES20.glVertexAttribPointer(this.U1, 2, 5126, false, 0, (Buffer) this.E1);
            GLES20.glEnableVertexAttribArray(this.U1);
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(16640);
            GLES20.glDisable(2929);
            GLES20.glDrawArrays(5, 0, 4);
            pass1BufferData2 = pass1BufferData6;
            pass1BufferData3 = pass1BufferData7;
            pass1BufferData4 = pass1BufferData8;
        } else {
            i2 = 3042;
            i3 = 33984;
            i4 = 2929;
            i5 = 16640;
            pass1BufferData = null;
            pass1BufferData2 = null;
            pass1BufferData3 = null;
            pass1BufferData4 = null;
        }
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData10 = this.t;
            int i9 = pass1BufferData10.width;
            int i10 = pass1BufferData10.height;
            float fSqrt = 100.0f / ((float) Math.sqrt(i9 * i10));
            pass1BufferData2.CreateData((int) (i9 * fSqrt), (int) (i10 * fSqrt), false);
            GLES20.glBindFramebuffer(36160, pass1BufferData2.frame_buffer[0]);
            GLES20.glUseProgram(this.X);
            GLES20.glViewport(0, 0, pass1BufferData2.width, pass1BufferData2.height);
            GLES20.glActiveTexture(i3);
            GLES20.glBindTexture(3553, this.t.frame_buffer_texture[0]);
            GLES20.glUniform1i(this.b2, 0);
            GLES20.glVertexAttribPointer(this.Z1, 2, 5126, false, 0, (Buffer) this.D1);
            GLES20.glEnableVertexAttribArray(this.Z1);
            GLES20.glVertexAttribPointer(this.a2, 2, 5126, false, 0, (Buffer) this.E1);
            GLES20.glEnableVertexAttribArray(this.a2);
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(i5);
            GLES20.glDisable(i4);
            GLES20.glDrawArrays(5, 0, 4);
        }
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            pass1BufferData5.CreateData(pass1BufferData2.width, pass1BufferData2.height, false);
            GLES20.glBindFramebuffer(36160, pass1BufferData5.frame_buffer[0]);
            GLES20.glUseProgram(this.Y);
            GLES20.glViewport(0, 0, pass1BufferData5.width, pass1BufferData5.height);
            GLES20.glUniform2f(this.e2, pass1BufferData5.width, pass1BufferData5.height);
            GLES20.glUniform1i(this.f2, (int) Math.ceil(((((double) fMax) * 100.0d) * 5.0d) / 640.0d));
            GLES20.glActiveTexture(i3);
            GLES20.glBindTexture(3553, pass1BufferData2.frame_buffer_texture[0]);
            GLES20.glUniform1i(this.g2, 0);
            GLES20.glVertexAttribPointer(this.c2, 2, 5126, false, 0, (Buffer) this.D1);
            GLES20.glEnableVertexAttribArray(this.c2);
            GLES20.glVertexAttribPointer(this.d2, 2, 5126, false, 0, (Buffer) this.E1);
            GLES20.glEnableVertexAttribArray(this.d2);
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(i5);
            GLES20.glDisable(i4);
            GLES20.glDrawArrays(5, 0, 4);
        }
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            pass1BufferData5 = pass1BufferData3;
            pass1BufferData4.CreateData(pass1BufferData.width, pass1BufferData.height, true);
            GLES20.glBindFramebuffer(36160, pass1BufferData4.frame_buffer[0]);
            GLES20.glUseProgram(this.Z);
            GLES20.glViewport(0, 0, pass1BufferData4.width, pass1BufferData4.height);
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(i5);
            GLES20.glEnable(i2);
            GLES20.glActiveTexture(i3);
            GLES20.glBindTexture(3553, pass1BufferData.frame_buffer_texture[0]);
            GLES20.glUniform1i(this.l2, 0);
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, this.r2);
            if (this.t2) {
                pass1BufferData5 = pass1BufferData3;
                int i11 = 3844;
                byte[] bArr = new byte[3844];
                int i12 = 0;
                i6 = 2884;
                while (true) {
                    i8 = i11;
                    if (i12 >= 31) {
                        break;
                    }
                    int i13 = 0;
                    for (int i14 = 31; i13 < i14; i14 = 31) {
                        float f6 = i13 / 30.0f;
                        float f7 = i12 / 30.0f;
                        byte bRound = (byte) Math.round(Math.max(j(105.0f, f6, f7), Math.max(j(143.0f, f6, f7), j(200.0f, f6, f7))) * 255.0f);
                        int i15 = (i13 << 2) + ((i12 * 31) << 2);
                        bArr[i15] = bRound;
                        bArr[i15 + 1] = bRound;
                        bArr[i15 + 2] = bRound;
                        bArr[i15 + 3] = -1;
                        i13++;
                    }
                    i12++;
                    i11 = i8;
                }
                i7 = 2;
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i8);
                byteBufferAllocate.put(bArr);
                byteBufferAllocate.position(0);
                GLES20.glTexImage2D(3553, 0, 6408, 31, 31, 0, 6408, 5121, byteBufferAllocate);
                this.t2 = false;
            } else {
                pass1BufferData5 = pass1BufferData3;
                i6 = 2884;
                i7 = 2;
            }
            GLES20.glUniform1i(this.m2, 1);
            GLES20.glActiveTexture(33986);
            GLES20.glBindTexture(3553, pass1BufferData5.frame_buffer_texture[0]);
            GLES20.glUniform1i(this.n2, i7);
            GLES20.glUniform1f(this.o2, f2);
            GLES20.glUniform1f(this.j2, pass1BufferData4.width);
            GLES20.glUniform1f(this.k2, pass1BufferData4.height);
            GLES20.glUniform1f(this.p2, 6.0f);
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData11 = this.t;
            GLES20.glUniform1i(this.q2, Math.max(1, Math.round((Math.min(pass1BufferData11.width, pass1BufferData11.height) * 5.0f) / 640.0f)));
            GLES20.glVertexAttribPointer(this.h2, 2, 5126, false, 0, (Buffer) this.D1);
            GLES20.glEnableVertexAttribArray(this.h2);
            GLES20.glVertexAttribPointer(this.i2, 2, 5126, false, 0, (Buffer) this.E1);
            GLES20.glEnableVertexAttribArray(this.i2);
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(i5);
            GLES20.glDisable(i4);
            GLES20.glBlendFunc(1, 771);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glBindFramebuffer(36160, this.u.frame_buffer[0]);
            GLES20.glUseProgram(this.V);
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData12 = this.u;
            GLES20.glViewport(0, 0, pass1BufferData12.width, pass1BufferData12.height);
            GLES20.glActiveTexture(i3);
            GLES20.glBindTexture(3553, pass1BufferData4.frame_buffer_texture[0]);
            GLES20.glUniform1i(this.S1, 0);
            GLES20.glVertexAttribPointer(this.Q1, 2, 5126, false, 0, (Buffer) this.D1);
            GLES20.glEnableVertexAttribArray(this.Q1);
            GLES20.glVertexAttribPointer(this.R1, 2, 5126, false, 0, (Buffer) this.E1);
            GLES20.glEnableVertexAttribArray(this.R1);
            GLES20.glBlendFunc(770, 771);
            GLES20.glDisable(i6);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glEnable(i4);
        } else {
            pass1BufferData5 = pass1BufferData3;
            i6 = 2884;
        }
        if (pass1BufferData != null) {
            pass1BufferData5 = pass1BufferData3;
            pass1BufferData.DestroyData();
        }
        if (pass1BufferData2 != null) {
            pass1BufferData2.DestroyData();
        }
        if (pass1BufferData5 != null) {
            pass1BufferData5.DestroyData();
        }
        if (pass1BufferData4 != null) {
            pass1BufferData4.DestroyData();
        }
        GLES20.glUseProgram(this.a0);
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData13 = this.p;
        GLES20.glViewport(0, 0, pass1BufferData13.width, pass1BufferData13.height);
        GLES20.glEnable(i4);
        GLES20.glEnable(i2);
        GLES20.glBlendFunc(1, 771);
        GLES20.glDisable(i6);
        GLES20.glBindFramebuffer(36160, this.p.frame_buffer[0]);
    }

    public void T(CLShare3DRelatedClasses.Live3DRenderData live3DRenderData) {
        if (live3DRenderData.isPBR || live3DRenderData.isGem) {
            if (live3DRenderData.diffuse_texture_id != -1) {
                GLES20.glActiveTexture(33987);
                GLES20.glBindTexture(3553, live3DRenderData.diffuse_texture_id);
                GLES20.glUniform1i(this.K2, 3);
            }
            if (live3DRenderData.orm_texture_id != -1) {
                GLES20.glActiveTexture(33988);
                GLES20.glBindTexture(3553, live3DRenderData.orm_texture_id);
                GLES20.glUniform1i(this.L2, 4);
            }
            if (live3DRenderData.environment_texture_id != -1) {
                GLES20.glActiveTexture(33989);
                GLES20.glBindTexture(3553, live3DRenderData.environment_texture_id);
                GLES20.glUniform1i(this.M2, 5);
            }
            if (live3DRenderData.normal_map_texture_id != -1) {
                GLES20.glActiveTexture(33990);
                GLES20.glBindTexture(3553, live3DRenderData.normal_map_texture_id);
                GLES20.glUniform1i(this.P2, 6);
            }
            if (this.n3 != -1) {
                GLES20.glActiveTexture(33991);
                GLES20.glBindTexture(3553, this.n3);
                if (!this.o3) {
                    GLES20.glTexImage2D(3553, 0, 6408, live3DRenderData.brdf_lut_width, live3DRenderData.brdf_lut_height, 0, 6408, 5121, ByteBuffer.wrap(live3DRenderData.m_brdf_texture_buffer));
                    this.o3 = true;
                }
                GLES20.glUniform1i(this.O2, 7);
            }
            if (this.p3 != h.f25551a && live3DRenderData.custom_texture_id != -1) {
                GLES20.glActiveTexture(33986);
                GLES20.glBindTexture(3553, live3DRenderData.custom_texture_id);
                GLES20.glUniform1i(this.Q2, 2);
            }
        } else {
            if (live3DRenderData.ambient_texture_id != -1) {
                GLES20.glActiveTexture(33986);
                GLES20.glBindTexture(3553, live3DRenderData.ambient_texture_id);
                GLES20.glUniform1i(this.u0, 2);
            }
            if (live3DRenderData.diffuse_texture_id != -1) {
                GLES20.glActiveTexture(33987);
                GLES20.glBindTexture(3553, live3DRenderData.diffuse_texture_id);
                GLES20.glUniform1i(this.v0, 3);
            }
            if (live3DRenderData.specular_texture_id != -1) {
                GLES20.glActiveTexture(33988);
                GLES20.glBindTexture(3553, live3DRenderData.specular_texture_id);
                GLES20.glUniform1i(this.w0, 4);
            }
            if (live3DRenderData.environment_texture_id != -1) {
                GLES20.glActiveTexture(33989);
                GLES20.glBindTexture(3553, live3DRenderData.environment_texture_id);
                GLES20.glUniform1i(this.x0, 5);
            }
        }
        b0(live3DRenderData);
    }

    public final void W(CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr) {
        float f2;
        FloatBuffer floatBuffer;
        int i2;
        Object obj;
        char c2;
        int i3;
        FloatBuffer floatBuffer2;
        int i4;
        int i5;
        float[] fArr;
        float f3;
        float f4;
        float[] fArrJ;
        GLES20.glDisableVertexAttribArray(this.d0);
        GLES20.glColorMask(false, false, false, false);
        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr2 = this.p0;
        ArrayList arrayList = this.j4;
        float f5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (live3DRenderDataArr2 == null || this.q0 == null || this.a4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || (this.Z3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM && this.d4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
            this.h4 = 0;
        } else {
            float f6 = this.i5;
            float fMax = f6 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1.0f - (Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, 5.0f - f6) / 5.0f) : 0.0f;
            float f7 = this.i5;
            float fMax2 = f7 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1.0f - (Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, f7 + 5.0f) / 5.0f) : 0.0f;
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(this.j5);
            arrayList2.add(this.k5);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(this.m5);
            arrayList3.add(this.n5);
            float[] fArr2 = this.q5;
            char c3 = 2;
            float[] fArr3 = {fArr2[0], new float[]{-0.452971f, 0.463985f, 0.267245f}[1], fArr2[1]};
            PointF pointF = this.l5;
            float[] fArr4 = {pointF.x, pointF.y};
            float f8 = this.u5;
            float f9 = -f8;
            float fMax3 = Math.max(f9, Math.min(f8, k(fArr3, fArr4, Call.Parameters.DEFAULT_CAMERA_ZOOM)));
            float[] fArr5 = this.s5;
            int i6 = 0;
            float[] fArr6 = {fArr5[0], new float[]{0.452971f, 0.463985f, 0.267245f}[1], fArr5[1]};
            PointF pointF2 = this.o5;
            float fMax4 = Math.max(f9, Math.min(f8, k(fArr6, new float[]{pointF2.x, pointF2.y}, Call.Parameters.DEFAULT_CAMERA_ZOOM)));
            CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr3 = this.q0;
            int length = live3DRenderDataArr3 != null ? live3DRenderDataArr3.length : 0;
            int i7 = 0;
            while (true) {
                obj = null;
                if (i7 >= arrayList.size()) {
                    break;
                }
                if (((FloatBuffer) arrayList.get(i7)) != null) {
                    arrayList.set(i7, null);
                }
                i7++;
            }
            int i8 = 0;
            while (i8 < length) {
                CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.q0[i8];
                if (live3DRenderData == null || (floatBuffer2 = live3DRenderData.vertex_buffer) == null) {
                    c2 = c3;
                } else {
                    char c4 = c3;
                    if (live3DRenderData.normal_buffer == null || live3DRenderData.texcoord_buffer == null) {
                        c2 = c4;
                    } else {
                        int iCapacity = floatBuffer2.capacity();
                        float[] fArr7 = new float[iCapacity];
                        f5 = f5;
                        float[] fArr8 = new float[iCapacity];
                        live3DRenderData.vertex_buffer.get(fArr8);
                        live3DRenderData.vertex_buffer.position(i6);
                        for (int i9 = 0; i9 < iCapacity; i9++) {
                            fArr7[i9] = fArr8[i9];
                        }
                        Integer[] numArr = (Integer[]) this.p5.get(i8);
                        int i10 = 0;
                        while (i10 < numArr.length) {
                            int iIntValue = numArr[i10].intValue();
                            int i11 = iCapacity;
                            float f10 = fArr7[iIntValue];
                            int i12 = iIntValue + 1;
                            int i13 = i8;
                            float f11 = fArr7[i12];
                            int i14 = iIntValue + 2;
                            ArrayList arrayList4 = arrayList3;
                            float f12 = fArr7[i14];
                            float f13 = fMax4;
                            float[] fArr9 = new float[3];
                            fArr9[0] = f10;
                            fArr9[1] = f11;
                            fArr9[c4] = f12;
                            if (f10 < f5) {
                                i5 = i11;
                                fArr = fArr7;
                                i4 = i13;
                                fArrJ = J(f10, f11, f12, this.q5, this.r5, fMax3, arrayList2, fMax);
                                f3 = fMax2;
                                f4 = f13;
                            } else {
                                i4 = i13;
                                i5 = i11;
                                fArr = fArr7;
                                f3 = fMax2;
                                f4 = f13;
                                fArrJ = J(f10, f11, f12, this.s5, this.t5, f4, arrayList4, f3);
                            }
                            float f14 = fArrJ[0];
                            fArr9[0] = f14;
                            fArr9[1] = fArrJ[1];
                            fArr9[c4] = fArrJ[c4];
                            fArr[iIntValue] = f14;
                            fArr[i12] = fArr9[1];
                            fArr[i14] = fArr9[c4];
                            i10++;
                            fMax2 = f3;
                            i8 = i4;
                            fArr7 = fArr;
                            iCapacity = i5;
                            arrayList3 = arrayList4;
                            length = length;
                            c4 = c4;
                            fMax = fMax;
                            arrayList2 = arrayList2;
                            fMax4 = f4;
                            fMax3 = fMax3;
                        }
                        int i15 = iCapacity;
                        arrayList3 = arrayList3;
                        fMax3 = fMax3;
                        arrayList2 = arrayList2;
                        fMax = fMax;
                        fMax4 = fMax4;
                        length = length;
                        fMax2 = fMax2;
                        c2 = c4;
                        i3 = i8;
                        float[] fArr10 = fArr7;
                        while (arrayList.size() <= i3) {
                            arrayList.add(null);
                        }
                        obj = null;
                        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(i15 << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
                        floatBufferAsFloatBuffer.put(fArr10);
                        floatBufferAsFloatBuffer.position(0);
                        arrayList.set(i3, floatBufferAsFloatBuffer);
                    }
                    i8 = i3 + 1;
                    obj = obj;
                    fMax4 = fMax4;
                    fMax2 = fMax2;
                    f5 = f5;
                    arrayList3 = arrayList3;
                    length = length;
                    c3 = c2;
                    fMax = fMax;
                    arrayList2 = arrayList2;
                    fMax3 = fMax3;
                    i6 = 0;
                }
                i3 = i8;
                i8 = i3 + 1;
                obj = obj;
                fMax4 = fMax4;
                fMax2 = fMax2;
                f5 = f5;
                arrayList3 = arrayList3;
                length = length;
                c3 = c2;
                fMax = fMax;
                arrayList2 = arrayList2;
                fMax3 = fMax3;
                i6 = 0;
            }
            f5 = f5;
            this.h4 = true;
        }
        if (this.w5) {
            GLES20.glFrontFace(2305);
            GLES20.glCullFace(1029);
            GLES20.glColorMask(true, true, true, true);
        }
        int length2 = live3DRenderDataArr.length;
        int i16 = 0;
        while (i16 < length2) {
            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 = live3DRenderDataArr[i16];
            if (live3DRenderData2 == null || (floatBuffer = live3DRenderData2.vertex_buffer) == null || live3DRenderData2.normal_buffer == null) {
                f2 = f5;
            } else {
                int iMin = Math.min(floatBuffer.capacity() / 3, live3DRenderData2.normal_buffer.capacity() / 3);
                if (this.h4) {
                    GLES20.glVertexAttribPointer(this.b0, 3, 5126, false, 0, (Buffer) arrayList.get(i16));
                    i2 = 0;
                } else {
                    i2 = 0;
                    live3DRenderData2.vertex_buffer.position(0);
                    GLES20.glVertexAttribPointer(this.b0, 3, 5126, false, 0, (Buffer) live3DRenderData2.vertex_buffer);
                }
                live3DRenderData2.normal_buffer.position(i2);
                GLES20.glVertexAttribPointer(this.c0, 3, 5126, false, 0, (Buffer) live3DRenderData2.normal_buffer);
                Z(this.j0, this.l0, this.n0, this.m0);
                T(live3DRenderData2);
                if (this.w5) {
                    f2 = f5;
                    GLES20.glUniform1f(this.M0, f2);
                } else {
                    f2 = f5;
                }
                GLES20.glDrawArrays(4, 0, iMin);
            }
            i16++;
            f5 = f2;
        }
        GLES20.glEnableVertexAttribArray(this.d0);
        GLES20.glColorMask(true, true, true, true);
    }

    public final void Z(int i2, float[] fArr, float[] fArr2, float[] fArr3) {
        N(i2, fArr, fArr2, fArr3);
        GLES20.glUniformMatrix4fv(this.O0, 1, false, this.y0, 0);
        GLES20.glUniformMatrix4fv(this.P0, 1, false, this.z0, 0);
        GLES20.glUniformMatrix4fv(this.Q0, 1, false, this.A0, 0);
    }

    public void b0(CLShare3DRelatedClasses.Live3DRenderData live3DRenderData) {
        if (live3DRenderData.isPBR || live3DRenderData.isGem) {
            GLES20.glUniform1f(this.R2, live3DRenderData.exposure);
            float f2 = live3DRenderData.diffuse_texture_id != -1 ? 1.0f : 0.0f;
            float f3 = live3DRenderData.environment_texture_id != -1 ? 1.0f : 0.0f;
            float f4 = live3DRenderData.normal_map_texture_id != -1 ? 1.0f : 0.0f;
            float f5 = live3DRenderData.orm_texture_id != -1 ? 1.0f : 0.0f;
            GLES20.glUniform1f(this.F2, f2);
            GLES20.glUniform1f(this.G2, f5);
            GLES20.glUniform1f(this.H2, f3);
            GLES20.glUniform1f(this.I2, live3DRenderData.isPBR ? 1.0f : 0.0f);
            GLES20.glUniform1f(this.J2, f4);
            GLES20.glUniform1f(this.V2, this.a1 ? 1.0f : 0.0f);
            GLES20.glUniform1f(this.W2, this.b1 ? 1.0f : 0.0f);
            GLES20.glUniform1f(this.X2, (live3DRenderData.hori_orien * 3.14159f) / 180.0f);
            GLES20.glUniform1f(this.Y2, (live3DRenderData.vert_orien * 3.14159f) / 180.0f);
            GLES20.glUniform1f(this.Z2, live3DRenderData.is_enable_mirror_hdr ? 1.0f : 0.0f);
            GLES20.glUniform1f(this.a3, 1.0f);
            GLES20.glUniform1f(this.S2, this.C3 ? 1.0f : 0.0f);
            GLES20.glUniform1i(this.T2, this.B3);
            GLES20.glUniform1f(this.U2, (!live3DRenderData.isGem || this.x2) ? 0.5f : 1.0f);
            GLES20.glUniform1f(this.b3, 1.0f);
            GLES20.glUniform1f(this.e3, live3DRenderData.fresnel_intensity);
            GLES20.glUniform1f(this.c3, live3DRenderData.isGem ? 1.0f : 0.0f);
            GLES20.glUniform1f(this.N2, live3DRenderData.hdr_width);
            int i2 = this.h3;
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData = this.p;
            GLES20.glUniform2f(i2, pass1BufferData.width, pass1BufferData.height);
            int i3 = this.i3;
            int i4 = this.p3;
            int i5 = h.f25551a;
            GLES20.glUniform1f(i3, i4 != i5 ? 1.0f : 0.0f);
            int i6 = this.p3;
            if (i6 != i5 && (i6 == h.f25552b || i6 == h.f25553c)) {
                GLES20.glUniform1f(this.j3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                GLES20.glUniform1f(this.l3, this.q3);
                GLES20.glUniform1f(this.k3, this.r3);
                GLES20.glUniform1f(this.m3, this.s3);
            }
            boolean z = live3DRenderData.isGem;
            int i7 = this.d3;
            if (!z) {
                GLES20.glUniform1i(i7, 0);
                float[] fArr = new float[16];
                for (int i8 = 0; i8 < 16; i8++) {
                    fArr[i8] = 0.0f;
                }
                GLES20.glUniformMatrix4fv(this.f3, 1, false, fArr, 0);
                return;
            }
            GLES20.glUniform1i(i7, live3DRenderData.gem_bounces);
            GLES20.glUniformMatrix4fv(this.f3, 1, false, new float[]{live3DRenderData.gem_center_x, live3DRenderData.gem_center_y, live3DRenderData.gem_center_z, live3DRenderData.gem_ior, live3DRenderData.gem_pos_scale_x, live3DRenderData.gem_pos_scale_y, live3DRenderData.gem_pos_scale_z, live3DRenderData.gem_dispersion, live3DRenderData.gem_pos_shift_x, live3DRenderData.gem_pos_shift_y, live3DRenderData.gem_pos_shift_z, live3DRenderData.gem_absorption, live3DRenderData.gem_color_x, live3DRenderData.gem_color_y, live3DRenderData.gem_color_z, Call.Parameters.DEFAULT_CAMERA_ZOOM}, 0);
            GLES20.glUniformMatrix3fv(this.g3, 1, false, live3DRenderData.small_gem_rotation_mat, 0);
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, live3DRenderData.isSmallGem ? live3DRenderData.referencing_small_gem.gemMeshPosEnvTexture[0] : live3DRenderData.gemMeshPosEnvTexture[0]);
            GLES20.glUniform1i(this.K2, 3);
            GLES20.glActiveTexture(33988);
            GLES20.glBindTexture(3553, live3DRenderData.isSmallGem ? live3DRenderData.referencing_small_gem.gemMeshNormEnvTexture[0] : live3DRenderData.gemMeshNormEnvTexture[0]);
            GLES20.glUniform1i(this.L2, 4);
            GLES20.glUniform1f(this.F2, 1.0f);
            GLES20.glUniform1f(this.G2, 1.0f);
            return;
        }
        GLES20.glUniform1f(this.M0, this.C0 ? 0.0f : 1.0f);
        GLES20.glUniform1f(this.N0, 0.8f);
        float[] fArr2 = live3DRenderData.ambient_color;
        GLES20.glUniform3f(this.D0, fArr2[0], fArr2[1], fArr2[2]);
        float[] fArr3 = live3DRenderData.diffuse_color;
        GLES20.glUniform3f(this.E0, fArr3[0], fArr3[1], fArr3[2]);
        float[] fArr4 = live3DRenderData.specular_color;
        GLES20.glUniform3f(this.F0, fArr4[0], fArr4[1], fArr4[2]);
        float[] fArr5 = live3DRenderData.transmission_filter;
        GLES20.glUniform3f(this.L0, fArr5[0], fArr5[1], fArr5[2]);
        float f6 = live3DRenderData.ambient_texture_id != -1 ? 1.0f : 0.0f;
        float f7 = live3DRenderData.diffuse_texture_id != -1 ? 1.0f : 0.0f;
        float f8 = live3DRenderData.specular_texture_id != -1 ? 1.0f : 0.0f;
        float f9 = live3DRenderData.environment_texture_id != -1 ? 1.0f : 0.0f;
        GLES20.glUniform1f(this.G0, f6);
        GLES20.glUniform1f(this.H0, f7);
        GLES20.glUniform1f(this.I0, f8);
        GLES20.glUniform1f(this.J0, f9);
        GLES20.glUniform1f(this.K0, live3DRenderData.dissolve);
        GLES20.glUniform1f(this.e1, live3DRenderData.environment_mode);
        GLES20.glUniform1f(this.f1, live3DRenderData.environment_intensity);
        GLES20.glUniform1f(this.g1, live3DRenderData.environment_tile_x);
        GLES20.glUniform1f(this.h1, live3DRenderData.environment_tile_y);
        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
        GLES20.glGetIntegerv(35661, intBufferAllocate);
        C(this.z1, this.X0);
        C(this.A1, this.W0);
        C(this.B1, this.Z0);
        C(this.C1, this.Y0);
        GLES20.glUniform1f(this.V0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (!live3DRenderData.is_lens || this.T4 == null) {
            GLES20.glUniform1f(this.i1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glUniform1f(this.k1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glUniform1f(this.m1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glUniform1f(this.q1, this.M4 ? 1.0f : 0.0f);
            GLES20.glUniform1f(this.r1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glUniform1f(this.s1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glUniform1f(this.t1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glUniform1f(this.v1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            if (this.O4 == -1 || !this.M4) {
                return;
            }
            if (intBufferAllocate.get(0) > 8) {
                GLES20.glActiveTexture(33992);
                GLES20.glBindTexture(3553, this.O4);
                GLES20.glUniform1i(this.y1, 8);
                return;
            } else {
                GLES20.glActiveTexture(33988);
                GLES20.glBindTexture(3553, this.O4);
                GLES20.glUniform1i(this.y1, 4);
                return;
            }
        }
        float[] fArr6 = this.t4;
        boolean z2 = (fArr6[0] == -1.0f || fArr6[1] == -1.0f || fArr6[2] == -1.0f) ? false : true;
        float[] fArr7 = this.u4;
        boolean z3 = (fArr7[0] == -1.0f || fArr7[1] == -1.0f || fArr7[2] == -1.0f) ? false : true;
        float[] fArr8 = this.v4;
        boolean z4 = (fArr8[0] == -1.0f || fArr8[1] == -1.0f || fArr8[2] == -1.0f) ? false : true;
        GLES20.glUniform1f(this.i1, z2 ? 1.0f : 0.0f);
        GLES20.glUniform1f(this.k1, (z3 && this.T4.g) ? 1.0f : 0.0f);
        GLES20.glUniform1f(this.m1, (z4 && this.T4.f25535j) ? 1.0f : 0.0f);
        int i9 = this.j1;
        if (z2) {
            GLES20.glUniform2f(i9, fArr6[1] / 255.0f, fArr6[2] / 255.0f);
        } else {
            GLES20.glUniform2f(i9, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        int i10 = this.l1;
        if (z3) {
            GLES20.glUniform2f(i10, fArr7[1] / 255.0f, fArr7[2] / 255.0f);
        } else {
            GLES20.glUniform2f(i10, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        int i11 = this.n1;
        if (z4) {
            GLES20.glUniform2f(i11, fArr8[1] / 255.0f, fArr8[2] / 255.0f);
        } else {
            GLES20.glUniform2f(i11, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        int i12 = this.o1;
        float[] fArr9 = this.w4;
        GLES20.glUniform3f(i12, fArr9[0], fArr9[1], fArr9[2]);
        GLES20.glUniform1f(this.q1, this.k4 != -1.0f ? 1.0f : 0.0f);
        GLES20.glUniform1f(this.r1, (this.l4 == -1.0f || !this.T4.g) ? 0.0f : 1.0f);
        GLES20.glUniform1f(this.s1, (this.m4 == -1.0f || !this.T4.f25535j) ? 0.0f : 1.0f);
        GLES20.glUniform1f(this.t1, this.T4.g ? 1.0f : 0.0f);
        GLES20.glUniform1f(this.v1, this.T4.f25535j ? 1.0f : 0.0f);
        GLES20.glUniform2f(this.p1, 0.011764706f, 255.0f / (Math.min(Math.max(this.P4.f25626f, 4.0f), 16.0f) - 3.0f));
        if (this.T4.g) {
            int i13 = this.u1;
            float[] fArr10 = this.x4;
            GLES20.glUniform4f(i13, fArr10[0], fArr10[1], fArr10[2], fArr10[3]);
        }
        if (this.T4.f25535j) {
            int i14 = this.w1;
            float[] fArr11 = this.y4;
            GLES20.glUniform4f(i14, fArr11[0], fArr11[1], fArr11[2], fArr11[3]);
        }
        if (this.B4 != -1 && (this.G4 || this.H4 || this.I4)) {
            GLES20.glActiveTexture(33991);
            GLES20.glBindTexture(3553, this.B4);
            GLES20.glUniform1i(this.x1, 7);
        }
        if (this.C4 != -1) {
            if (this.J4 || this.K4 || this.L4) {
                if (intBufferAllocate.get(0) > 8) {
                    GLES20.glActiveTexture(33992);
                    GLES20.glBindTexture(3553, this.C4);
                    GLES20.glUniform1i(this.y1, 8);
                } else {
                    GLES20.glActiveTexture(33988);
                    GLES20.glBindTexture(3553, this.C4);
                    GLES20.glUniform1i(this.y1, 4);
                }
            }
        }
    }

    public final float[] c0(float[] fArr) {
        float f2 = fArr[0];
        float[] fArr2 = this.l0;
        float f3 = fArr2[0] * f2;
        float f4 = fArr[1];
        float f5 = (fArr2[1] * f4) + f3;
        float f6 = fArr[2];
        return new float[]{(fArr2[2] * f6) + f5 + fArr2[3], (fArr2[6] * f6) + (fArr2[5] * f4) + (fArr2[4] * f2) + fArr2[7], (f6 * fArr2[10]) + (f4 * fArr2[9]) + (f2 * fArr2[8]) + fArr2[11]};
    }

    public void d0() {
        GLES20.glUniform1f(this.R0, 1.0f);
        GLES20.glUniform1f(this.S0, 0.25f / this.g);
        GLES20.glUniform1f(this.T0, 0.25f / this.f25446h);
        GLES20.glUniform2fv(this.c1, 1, this.m, 0);
        GLES20.glUniform2fv(this.d1, 1, this.n, 0);
    }

    public final void e0() {
        float[] fArr;
        char c2;
        int i2 = this.j0 - this.o0;
        if (i2 < 0) {
            i2 += 360;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            fArr = this.y0;
            c2 = 4;
            if (i4 >= 4) {
                break;
            }
            for (int i5 = 0; i5 < 3; i5++) {
                fArr[(i4 << 2) + i5] = this.l0[(i5 << 2) + i4];
            }
            i4++;
        }
        char c3 = 11;
        fArr[11] = 0.0f;
        fArr[7] = 0.0f;
        fArr[3] = 0.0f;
        fArr[15] = 1.0f;
        for (int i6 = 0; i6 < 4; i6++) {
            for (int i7 = 0; i7 < 4; i7++) {
                this.z0[(i6 << 2) + i7] = this.n0[(i7 << 2) + i6];
            }
        }
        float[] fArr2 = new float[9];
        P(this.m0, i2, fArr2);
        float[] fArr3 = {2.0f / this.g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2.0f / this.f25446h, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, -1.0f, 1.0f};
        float[] fArr4 = new float[9];
        while (true) {
            char c4 = c3;
            if (i3 >= 3) {
                char c5 = c2;
                float[] fArr5 = new float[9];
                V(fArr4, i2, fArr5);
                float f2 = fArr5[0];
                float[] fArr6 = this.A0;
                fArr6[0] = f2;
                fArr6[1] = fArr5[1];
                fArr6[2] = 0.0f;
                fArr6[3] = fArr5[2];
                fArr6[c5] = fArr5[3];
                fArr6[5] = fArr5[c5];
                fArr6[6] = 0.0f;
                fArr6[7] = fArr5[5];
                fArr6[8] = fArr5[6];
                fArr6[9] = fArr5[7];
                fArr6[10] = -1.0001999f;
                fArr6[c4] = fArr5[8];
                fArr6[12] = 0.0f;
                fArr6[13] = 0.0f;
                fArr6[14] = -0.20003319f;
                fArr6[15] = 0.0f;
                return;
            }
            int i8 = 0;
            while (i8 < 3) {
                int i9 = i3 * 3;
                int i10 = i9 + i8;
                fArr4[i10] = 0.0f;
                char c6 = c2;
                for (int i11 = 0; i11 < 3; i11++) {
                    fArr4[i10] = (fArr2[i9 + i11] * fArr3[(i11 * 3) + i8]) + fArr4[i10];
                }
                i8++;
                c2 = c6;
            }
            i3++;
            c3 = c4;
        }
    }

    public final void f0(CLShare3DRelatedClasses.Live3DRenderData live3DRenderData) {
        GLES20.glDisableVertexAttribArray(this.d0);
        GLES20.glColorMask(false, false, false, false);
        if (live3DRenderData == null || live3DRenderData.vertex_buffer == null || live3DRenderData.normal_buffer == null) {
            return;
        }
        if (this.v5) {
            GLES20.glFrontFace(2305);
            GLES20.glCullFace(1029);
            GLES20.glColorMask(true, true, true, true);
        }
        int iMin = Math.min(live3DRenderData.vertex_buffer.capacity() / 3, live3DRenderData.normal_buffer.capacity() / 3);
        live3DRenderData.vertex_buffer.position(0);
        GLES20.glVertexAttribPointer(this.b0, 3, 5126, false, 0, (Buffer) live3DRenderData.vertex_buffer);
        live3DRenderData.normal_buffer.position(0);
        GLES20.glVertexAttribPointer(this.c0, 3, 5126, false, 0, (Buffer) live3DRenderData.normal_buffer);
        LiveEarringMetadata liveEarringMetadata = this.t0;
        Z(liveEarringMetadata.rotation, liveEarringMetadata.occluder_pnp_matrix, liveEarringMetadata.occluder_normal_pnp_matrix, liveEarringMetadata.occluder_camera_matrix);
        T(live3DRenderData);
        if (this.v5) {
            GLES20.glUniform1f(this.M0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        GLES20.glDrawArrays(4, 0, iMin);
        GLES20.glEnableVertexAttribArray(this.d0);
        GLES20.glColorMask(true, true, true, true);
    }

    public final void h0() {
        if (this.t0.is_valid) {
            for (CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr : this.r0) {
                int length = live3DRenderDataArr != null ? live3DRenderDataArr.length : 0;
                for (int i2 = 0; i2 < length; i2++) {
                    CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = live3DRenderDataArr[i2];
                    if (live3DRenderData.isGem && ((!live3DRenderData.isSmallGem || live3DRenderData.is_referenced_small_gem) && !live3DRenderData.isGemMeshEnvValid)) {
                        int[] iArrM = M(live3DRenderData, true);
                        live3DRenderData.gemMeshNormEnvTexture[0] = iArrM[0];
                        boolean z = iArrM[1] == 1;
                        int[] iArrM2 = M(live3DRenderData, false);
                        live3DRenderData.gemMeshPosEnvTexture[0] = iArrM2[0];
                        live3DRenderData.isGemMeshEnvValid = z && (iArrM2[1] == 1);
                    }
                }
            }
        }
        if (this.i0) {
            CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr2 = this.p0;
            int length2 = live3DRenderDataArr2 != null ? live3DRenderDataArr2.length : 0;
            for (int i3 = 0; i3 < length2; i3++) {
                CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 = this.p0[i3];
                if (live3DRenderData2.isGem && ((!live3DRenderData2.isSmallGem || live3DRenderData2.is_referenced_small_gem) && !live3DRenderData2.isGemMeshEnvValid)) {
                    int[] iArrM3 = M(live3DRenderData2, true);
                    live3DRenderData2.gemMeshNormEnvTexture[0] = iArrM3[0];
                    boolean z2 = iArrM3[1] == 1;
                    int[] iArrM4 = M(live3DRenderData2, false);
                    live3DRenderData2.gemMeshPosEnvTexture[0] = iArrM4[0];
                    live3DRenderData2.isGemMeshEnvValid = z2 && (iArrM4[1] == 1);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:136:0x048f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v41, types: [int] */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r31v7 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17, types: [int] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r9v18 */
    public final boolean i0() {
        boolean z;
        int iGlGetError;
        float f2;
        float f3;
        FloatBuffer floatBuffer;
        float f4;
        boolean z2;
        boolean z3;
        while (GLES20.glGetError() != 0) {
        }
        IntBuffer intBufferAllocate = IntBuffer.allocate(1024);
        GLES20.glGetIntegerv(36006, intBufferAllocate);
        IntBuffer intBufferAllocate2 = IntBuffer.allocate(4);
        GLES20.glGetIntegerv(2978, intBufferAllocate2);
        synchronized (this.h0) {
            h0();
        }
        GLES20.glUseProgram(this.a0);
        boolean z4 = this.s2;
        float f5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        boolean z6 = false;
        if (z4) {
            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData = this.u;
            GLES20.glViewport(0, 0, pass1BufferData.width, pass1BufferData.height);
            GLES20.glBindFramebuffer(36160, this.u.frame_buffer[0]);
            GLES20.glEnable(2929);
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(16640);
        }
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2 = this.p;
        GLES20.glViewport(0, 0, pass1BufferData2.width, pass1BufferData2.height);
        GLES20.glBindFramebuffer(36160, this.p.frame_buffer[0]);
        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        GLES20.glClear(16640);
        GLES20.glEnable(2929);
        GLES20.glEnable(3042);
        boolean z7 = true;
        if (this.C0) {
            GLES20.glBlendFunc(1, 0);
            GLES20.glEnable(2884);
            GLES20.glFrontFace(2304);
            GLES20.glCullFace(1029);
        } else {
            GLES20.glBlendFunc(1, 771);
            GLES20.glDisable(2884);
        }
        GLES20.glEnableVertexAttribArray(this.b0);
        GLES20.glEnableVertexAttribArray(this.c0);
        GLES20.glEnableVertexAttribArray(this.d0);
        synchronized (this.h0) {
            try {
                GLES20.glUniform1f(this.K3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                GLES20.glUniform1i(this.L3, -1);
                this.C3 = false;
                this.B3 = -1;
                if (this.t0.is_valid) {
                    GLES20.glUseProgram(this.a0);
                    GLES20.glClear(256);
                    if (this.C0) {
                        GLES20.glEnable(2884);
                    } else {
                        GLES20.glDisable(2884);
                    }
                    GLES20.glUniform1f(this.U0, 1.0f);
                    CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.s0;
                    if (live3DRenderData != null) {
                        f0(live3DRenderData);
                    }
                    if (this.r0.size() > 0) {
                        j0();
                    }
                    if (this.s2) {
                        float f6 = -1.0f;
                        float f7 = -1.0f;
                        for (CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr : this.r0) {
                            int length = live3DRenderDataArr != null ? live3DRenderDataArr.length : 0;
                            for (int i2 = 0; i2 < length; i2++) {
                                CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 = live3DRenderDataArr[i2];
                                if (f7 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    float f8 = live3DRenderData2.bloom_intensity;
                                    if (f8 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        f7 = f8;
                                        f6 = live3DRenderData2.bloom_scale;
                                    }
                                }
                                if (f6 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f7 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    this.u2 = true;
                                    break;
                                }
                            }
                        }
                        f2 = f6;
                        f3 = f7;
                    } else {
                        f2 = -1.0f;
                        f3 = -1.0f;
                    }
                    if (this.t3) {
                        this.D3 = true;
                        GLES20.glUseProgram(this.a0);
                        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3 = this.r;
                        GLES20.glViewport(0, 0, pass1BufferData3.width, pass1BufferData3.height);
                        GLES20.glBindFramebuffer(36160, this.r.frame_buffer[0]);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        GLES20.glEnable(2929);
                        GLES20.glEnable(3042);
                        GLES20.glBlendFunc(1, 771);
                        GLES20.glUniform1f(this.K3, 1.0f);
                        GLES20.glUniform1i(this.L3, 2);
                        GLES20.glUniform1f(this.M3, this.x3);
                        GLES20.glUniform1f(this.N3, this.y3);
                        GLES20.glUniform1f(this.O3, 1.0f);
                        this.C3 = true;
                        this.B3 = 2;
                        GLES20.glEnableVertexAttribArray(this.b0);
                        GLES20.glEnableVertexAttribArray(this.c0);
                        GLES20.glEnableVertexAttribArray(this.d0);
                        boolean z8 = this.v5;
                        this.v5 = true;
                        f0(this.s0);
                        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4 = this.t;
                        GLES20.glViewport(0, 0, pass1BufferData4.width, pass1BufferData4.height);
                        GLES20.glBindFramebuffer(36160, this.t.frame_buffer[0]);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        GLES20.glEnable(2929);
                        GLES20.glEnable(3042);
                        GLES20.glBlendFunc(1, 771);
                        GLES20.glUniform1f(this.K3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glUniform1i(this.L3, -1);
                        GLES20.glUniform1f(this.M3, this.x3);
                        GLES20.glUniform1f(this.N3, this.y3);
                        GLES20.glUniform1f(this.O3, 1.0f);
                        f0(this.s0);
                        this.v5 = z8;
                        GLES20.glBindFramebuffer(36160, this.r.frame_buffer[0]);
                        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            GLES20.glUseProgram(this.a0);
                            GLES20.glUniform1i(this.L3, 1);
                            GLES20.glUniform1f(this.O3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            this.B3 = 1;
                            j0();
                        } else {
                            GLES20.glUseProgram(this.a0);
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5 = this.t;
                            GLES20.glViewport(0, 0, pass1BufferData5.width, pass1BufferData5.height);
                            GLES20.glBindFramebuffer(36160, this.t.frame_buffer[0]);
                            GLES20.glEnable(3042);
                            GLES20.glUniform1f(this.K3, 1.0f);
                            GLES20.glUniform1i(this.L3, 1);
                            this.C3 = true;
                            this.B3 = 1;
                            GLES20.glUniform1f(this.M3, -1.0f);
                            GLES20.glUniform1f(this.N3, -1.0f);
                            GLES20.glUniform1f(this.O3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            j0();
                            GLES20.glUseProgram(this.V);
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData6 = this.r;
                            GLES20.glViewport(0, 0, pass1BufferData6.width, pass1BufferData6.height);
                            GLES20.glBindFramebuffer(36160, this.r.frame_buffer[0]);
                            GLES20.glEnable(3042);
                            GLES20.glBlendFunc(770, 771);
                            GLES20.glActiveTexture(33984);
                            GLES20.glBindTexture(3553, this.t.frame_buffer_texture[0]);
                            GLES20.glUniform1i(this.S1, 0);
                            GLES20.glVertexAttribPointer(this.Q1, 2, 5126, false, 0, (Buffer) this.D1);
                            GLES20.glEnableVertexAttribArray(this.Q1);
                            GLES20.glVertexAttribPointer(this.R1, 2, 5126, false, 0, (Buffer) this.E1);
                            GLES20.glEnableVertexAttribArray(this.R1);
                            GLES20.glDisable(2929);
                            GLES20.glDrawArrays(5, 0, 4);
                            GLES20.glBlendFunc(1, 771);
                            GLES20.glEnable(2929);
                        }
                        GLES20.glUseProgram(this.a0);
                        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData7 = this.s;
                        GLES20.glViewport(0, 0, pass1BufferData7.width, pass1BufferData7.height);
                        GLES20.glBindFramebuffer(36160, this.s.frame_buffer[0]);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        GLES20.glEnable(2929);
                        GLES20.glEnable(3042);
                        GLES20.glBlendFunc(1, 771);
                        GLES20.glEnableVertexAttribArray(this.b0);
                        GLES20.glEnableVertexAttribArray(this.c0);
                        GLES20.glEnableVertexAttribArray(this.d0);
                        GLES20.glUniform1f(this.K3, 1.0f);
                        GLES20.glUniform1i(this.L3, 2);
                        GLES20.glUniform1f(this.M3, this.x3);
                        GLES20.glUniform1f(this.N3, this.y3);
                        GLES20.glUniform1f(this.O3, 1.0f);
                        this.C3 = true;
                        this.B3 = 2;
                        boolean z9 = this.v5;
                        this.v5 = true;
                        f0(this.s0);
                        this.v5 = z9;
                        GLES20.glUseProgram(this.a0);
                        GLES20.glUniform1i(this.L3, 0);
                        GLES20.glUniform1f(this.O3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        this.B3 = 0;
                        int i3 = 0;
                        for (CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr2 : this.r0) {
                            int length2 = live3DRenderDataArr2.length;
                            boolean[] zArr = new boolean[this.t0.matrix_counts[i3]];
                            for (int i4 = z6 ? 1 : 0; i4 < this.t0.matrix_counts[i3]; i4++) {
                                zArr[i4] = z6;
                            }
                            int i5 = z6 ? 1 : 0;
                            while (i5 < length2) {
                                CLShare3DRelatedClasses.Live3DRenderData live3DRenderData3 = live3DRenderDataArr2[i5];
                                if (live3DRenderData3 != null) {
                                    z3 = z7;
                                    FloatBuffer floatBuffer2 = live3DRenderData3.vertex_buffer;
                                    if (floatBuffer2 != null) {
                                        f4 = f5;
                                        if (live3DRenderData3.normal_buffer != null && live3DRenderData3.texcoord_buffer != null) {
                                            floatBuffer2.position(z6 ? 1 : 0);
                                            boolean z10 = live3DRenderData3.vertex_buffer.get() < f4 ? z3 : z6 ? 1 : 0;
                                            int i6 = live3DRenderDataArr2[i5].earring_matrix_index;
                                            if (i6 >= 0) {
                                                LiveEarringMetadata liveEarringMetadata = this.t0;
                                                z2 = z6 ? 1 : 0;
                                                if (i6 >= liveEarringMetadata.matrix_counts[i3] || zArr[i6]) {
                                                    zArr = zArr;
                                                } else {
                                                    float[] fArr = liveEarringMetadata.pnp_matrices[i3][i6];
                                                    float f9 = fArr[3];
                                                    zArr = zArr;
                                                    float f10 = this.w3;
                                                    fArr[3] = (f10 * 0.5f * ((float) (z10 ? z3 : -1))) + f9;
                                                    fArr[7] = fArr[7] - f10;
                                                    zArr[i6] = z3;
                                                }
                                            }
                                        }
                                    } else {
                                        f4 = f5;
                                    }
                                    z2 = z6 ? 1 : 0;
                                } else {
                                    zArr = zArr;
                                    f4 = f5;
                                    z2 = z6 ? 1 : 0;
                                    z3 = z7;
                                }
                                i5++;
                                z7 = z3;
                                f5 = f4;
                                z6 = z2;
                                zArr = zArr;
                            }
                            ?? r9 = z6 ? 1 : 0;
                            i3++;
                        }
                        float f11 = f5;
                        boolean z11 = z6 ? 1 : 0;
                        z = z7;
                        j0();
                        Iterator it = this.r0.iterator();
                        int i7 = z11 ? 1 : 0;
                        while (it.hasNext()) {
                            CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr3 = (CLShare3DRelatedClasses.Live3DRenderData[]) it.next();
                            int length3 = live3DRenderDataArr3.length;
                            boolean[] zArr2 = new boolean[this.t0.matrix_counts[i7]];
                            for (int i8 = z11 ? 1 : 0; i8 < this.t0.matrix_counts[i7]; i8++) {
                                zArr2[i8] = z11;
                            }
                            int i9 = z11 ? 1 : 0;
                            while (i9 < length3) {
                                CLShare3DRelatedClasses.Live3DRenderData live3DRenderData4 = live3DRenderDataArr3[i9];
                                if (live3DRenderData4 != null && (floatBuffer = live3DRenderData4.vertex_buffer) != null && live3DRenderData4.normal_buffer != null && live3DRenderData4.texcoord_buffer != null) {
                                    floatBuffer.position(z11 ? 1 : 0);
                                    boolean z12 = live3DRenderData4.vertex_buffer.get() < f11 ? z : false;
                                    int i10 = live3DRenderDataArr3[i9].earring_matrix_index;
                                    if (i10 >= 0) {
                                        LiveEarringMetadata liveEarringMetadata2 = this.t0;
                                        if (i10 < liveEarringMetadata2.matrix_counts[i7] && !zArr2[i10]) {
                                            float[] fArr2 = liveEarringMetadata2.pnp_matrices[i7][i10];
                                            float f12 = fArr2[3];
                                            float f13 = this.w3;
                                            fArr2[3] = f12 - ((f13 * 0.5f) * ((float) (z12 ? z : -1)));
                                            fArr2[7] = fArr2[7] + f13;
                                            zArr2[i10] = z;
                                        }
                                    }
                                }
                                i9++;
                                it = it;
                                z11 = false;
                            }
                            i7++;
                            z11 = false;
                        }
                        GLES20.glUseProgram(this.a0);
                        GLES20.glUniform1f(this.K3, f11);
                        GLES20.glUniform1i(this.L3, -1);
                        this.C3 = false;
                        this.B3 = -1;
                        GLES20.glDisable(2929);
                        GLES20.glDisable(3042);
                        GLES20.glDisable(2884);
                        GLES20.glFrontFace(2305);
                        this.D3 = false;
                    } else {
                        z = true;
                    }
                    if (this.s2) {
                        S(f3, f2);
                    }
                    this.C3 = false;
                } else {
                    z = true;
                }
                if (this.i0) {
                    GLES20.glUseProgram(this.a0);
                    GLES20.glClear(256);
                    if (this.C0) {
                        GLES20.glEnable(2884);
                    } else {
                        GLES20.glDisable(2884);
                    }
                    GLES20.glUniform1f(this.U0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr4 = this.q0;
                    if (live3DRenderDataArr4 != null) {
                        W(live3DRenderDataArr4);
                    }
                    CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr5 = this.p0;
                    if (live3DRenderDataArr5 != null) {
                        E(live3DRenderDataArr5);
                    }
                    if (this.s2) {
                        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr6 = this.p0;
                        int length4 = live3DRenderDataArr6 != null ? live3DRenderDataArr6.length : 0;
                        float f14 = -1.0f;
                        float f15 = -1.0f;
                        int i11 = 0;
                        while (i11 < length4) {
                            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData5 = this.p0[i11];
                            if (f14 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                float f16 = live3DRenderData5.bloom_scale;
                                if (f16 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f14 = f16;
                                }
                            }
                            if (f15 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                float f17 = live3DRenderData5.bloom_intensity;
                                if (f17 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f15 = f17;
                                }
                            }
                            if (f14 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f15 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                this.u2 = z;
                                break;
                            }
                            i11++;
                            z = true;
                        }
                        GLES20.glUseProgram(this.a0);
                        GLES20.glBindFramebuffer(36160, this.t.frame_buffer[0]);
                        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData8 = this.t;
                        GLES20.glViewport(0, 0, pass1BufferData8.width, pass1BufferData8.height);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        GLES20.glEnable(2929);
                        GLES20.glEnable(3042);
                        GLES20.glBlendFunc(1, 771);
                        GLES20.glUniform1f(this.K3, 1.0f);
                        GLES20.glUniform1i(this.L3, 2);
                        GLES20.glUniform1f(this.M3, -1.0f);
                        GLES20.glUniform1f(this.N3, -1.0f);
                        GLES20.glUniform1f(this.O3, 1.0f);
                        boolean z13 = this.w5;
                        this.w5 = true;
                        W(this.q0);
                        this.w5 = z13;
                        GLES20.glBindFramebuffer(36160, this.t.frame_buffer[0]);
                        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData9 = this.t;
                        GLES20.glViewport(0, 0, pass1BufferData9.width, pass1BufferData9.height);
                        GLES20.glEnable(3042);
                        GLES20.glUniform1f(this.K3, 1.0f);
                        GLES20.glUniform1i(this.L3, 1);
                        this.C3 = true;
                        this.B3 = 1;
                        GLES20.glUniform1f(this.M3, -1.0f);
                        GLES20.glUniform1f(this.N3, -1.0f);
                        GLES20.glUniform1f(this.O3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        E(this.p0);
                        S(f15, f14);
                        this.C3 = false;
                        this.B3 = -1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        GLES20.glUseProgram(this.a0);
        GLES20.glDisable(2929);
        GLES20.glDisable(3042);
        GLES20.glDisable(2884);
        GLES20.glFrontFace(2305);
        GLES20.glDisableVertexAttribArray(this.b0);
        GLES20.glDisableVertexAttribArray(this.c0);
        GLES20.glDisableVertexAttribArray(this.d0);
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
        GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(1), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
        do {
            iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                return true;
            }
            if (iGlGetError == 1285) {
                return false;
            }
        } while (iGlGetError != 1286);
        return false;
    }

    public final void j0() {
        FloatBuffer floatBuffer;
        int i2 = 0;
        for (CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr : this.r0) {
            LiveEarringMetadata liveEarringMetadata = this.t0;
            int i3 = liveEarringMetadata.rotation;
            if (live3DRenderDataArr != null) {
                float f2 = -1.0f;
                float f3 = -1.0f;
                for (CLShare3DRelatedClasses.Live3DRenderData live3DRenderData : live3DRenderDataArr) {
                    if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        float f4 = live3DRenderData.bloom_intensity;
                        if (f4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            f3 = live3DRenderData.bloom_scale;
                            f2 = f4;
                        }
                    }
                    if (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        break;
                    }
                }
                if (f2 == -1.0f) {
                    this.x2 = true;
                } else {
                    this.x2 = false;
                }
                for (CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 : live3DRenderDataArr) {
                    if (live3DRenderData2 != null && (floatBuffer = live3DRenderData2.vertex_buffer) != null && live3DRenderData2.normal_buffer != null && live3DRenderData2.texcoord_buffer != null) {
                        int iMin = Math.min(Math.min(floatBuffer.capacity() / 3, live3DRenderData2.normal_buffer.capacity() / 3), live3DRenderData2.texcoord_buffer.capacity() / 2);
                        if (live3DRenderData2.isPBR || live3DRenderData2.isGem) {
                            GLES20.glUseProgram(this.S);
                            if (this.D3) {
                                GLES20.glBlendFunc(1, 771);
                            } else {
                                GLES20.glBlendFuncSeparate(770, 771, 1, 771);
                            }
                            if (!this.D3 && live3DRenderData2.isGem) {
                                GLES20.glEnable(2884);
                                GLES20.glFrontFace(2304);
                                GLES20.glCullFace(1029);
                            } else {
                                GLES20.glDisable(2884);
                            }
                            live3DRenderData2.vertex_buffer.position(0);
                            GLES20.glVertexAttribPointer(this.y2, 3, 5126, false, 0, (Buffer) live3DRenderData2.vertex_buffer);
                            live3DRenderData2.normal_buffer.position(0);
                            GLES20.glVertexAttribPointer(this.A2, 3, 5126, false, 0, (Buffer) live3DRenderData2.normal_buffer);
                            if (live3DRenderData2.normal_map_texture_id != -1) {
                                GLES20.glEnableVertexAttribArray(this.B2);
                                live3DRenderData2.tangent_buffer.position(0);
                                GLES20.glVertexAttribPointer(this.B2, 3, 5126, false, 0, (Buffer) live3DRenderData2.tangent_buffer);
                            }
                            live3DRenderData2.texcoord_buffer.position(0);
                            GLES20.glVertexAttribPointer(this.z2, 2, 5126, false, 0, (Buffer) live3DRenderData2.texcoord_buffer);
                            int i4 = live3DRenderData2.earring_matrix_index;
                            t(i3, liveEarringMetadata.pnp_matrices[i2][i4], liveEarringMetadata.normal_pnp_matrices[i2][i4], liveEarringMetadata.camera_matrix);
                        } else {
                            GLES20.glUseProgram(this.a0);
                            GLES20.glBlendFunc(1, 771);
                            live3DRenderData2.vertex_buffer.position(0);
                            GLES20.glVertexAttribPointer(this.b0, 3, 5126, false, 0, (Buffer) live3DRenderData2.vertex_buffer);
                            live3DRenderData2.normal_buffer.position(0);
                            GLES20.glVertexAttribPointer(this.c0, 3, 5126, false, 0, (Buffer) live3DRenderData2.normal_buffer);
                            FloatBuffer floatBuffer2 = live3DRenderData2.texcoord_buffer;
                            floatBuffer2.position(0);
                            GLES20.glVertexAttribPointer(this.d0, 2, 5126, false, 0, (Buffer) floatBuffer2);
                            int i5 = live3DRenderData2.earring_matrix_index;
                            Z(i3, liveEarringMetadata.pnp_matrices[i2][i5], liveEarringMetadata.normal_pnp_matrices[i2][i5], liveEarringMetadata.camera_matrix);
                        }
                        T(live3DRenderData2);
                        GLES20.glDrawArrays(4, 0, iMin);
                    }
                }
                GLES20.glDisable(2884);
            }
            i2++;
        }
    }

    public final float k(float[] fArr, float[] fArr2, float f2) {
        float[] fArrC0 = c0(fArr);
        float f3 = fArr2[0];
        float[] fArr3 = this.m0;
        float[] fArr4 = {(1.0f - f2) * ((f3 + fArr3[2]) / fArr3[0]), (fArr2[1] + fArr3[5]) / fArr3[4]};
        float f4 = fArr4[0];
        float f5 = fArrC0[2];
        float f6 = (f4 * f5) + fArrC0[0];
        float[] fArr5 = this.l0;
        float f7 = fArr5[8];
        float f8 = (f4 * f7) + fArr5[0];
        float f9 = fArr4[1];
        float f10 = (f5 * f9) + fArrC0[1];
        float f11 = (f9 * f7) + fArr5[4];
        return (-((f10 * f11) + (f6 * f8))) / ((f11 * f11) + (f8 * f8));
    }

    public final void n(float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z) {
        ArrayList arrayList;
        Object obj;
        float f9;
        int i2;
        Object obj2;
        FloatBuffer floatBuffer;
        float f10;
        float f11;
        float f12 = f2;
        float f13 = f5;
        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = this.p0;
        int i3 = 0;
        if (live3DRenderDataArr == null) {
            this.g4 = false;
            return;
        }
        if (!z && this.Z3 == f12 && this.a4 == f3 && this.b4 == f4 && this.c4 == f13 && this.d4 == f6 && this.e4 == f7 && this.f4 == f8) {
            return;
        }
        this.Z3 = f12;
        this.a4 = f3;
        this.b4 = f4;
        this.c4 = f13;
        this.d4 = f6;
        this.e4 = f7;
        this.f4 = f8;
        float f14 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (f12 > Call.Parameters.DEFAULT_CAMERA_ZOOM || f6 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                if (f6 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (f13 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f13 = f7;
                    }
                    f12 = (f6 * 0.578986f) / f13;
                } else if (f13 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f12 *= 0.578986f / f13;
                }
                float f15 = f12 / (f3 / f4);
                float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.462178f, 0.467589f};
                float[] fArr2 = {-0.6709463f, 0.4678327f, -0.4385596f};
                float[] fArr3 = {0.6709463f, 0.4678327f, -0.4385596f};
                float f16 = fArr2[0];
                float f17 = fArr[0];
                float f18 = (((f16 - f17) * f15) + f17) - f16;
                float f19 = fArr3[0];
                float f20 = (((f19 - f17) * f15) + f17) - f19;
                int length = live3DRenderDataArr.length;
                int i4 = 0;
                while (true) {
                    arrayList = this.i4;
                    obj = null;
                    if (i4 >= arrayList.size()) {
                        break;
                    }
                    if (((FloatBuffer) arrayList.get(i4)) != null) {
                        arrayList.set(i4, null);
                    }
                    i4++;
                }
                int i5 = 0;
                while (i5 < length) {
                    CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.p0[i5];
                    if (live3DRenderData == null || (floatBuffer = live3DRenderData.vertex_buffer) == null) {
                        f9 = f14;
                    } else {
                        f9 = f14;
                        if (live3DRenderData.normal_buffer != null && live3DRenderData.texcoord_buffer != null) {
                            int iCapacity = floatBuffer.capacity();
                            float[] fArr4 = new float[iCapacity];
                            float[] fArr5 = new float[iCapacity];
                            live3DRenderData.vertex_buffer.get(fArr5);
                            live3DRenderData.vertex_buffer.position(i3);
                            for (int i6 = i3; i6 < iCapacity; i6++) {
                                fArr4[i6] = fArr5[i6];
                            }
                            int i7 = i3;
                            while (i7 < iCapacity) {
                                float f21 = fArr4[i7];
                                float f22 = fArr[i3];
                                fArr4[i7] = tr.a(f21, f22, f15, f22);
                                int i8 = i7 + 1;
                                float f23 = fArr4[i8];
                                int i9 = i3;
                                float f24 = fArr[1];
                                fArr4[i8] = tr.a(f23, f24, f15, f24);
                                if (fArr4[i7] < fArr[i9]) {
                                    float f25 = fArr4[i7 + 2];
                                    float f26 = fArr2[2];
                                    float fMax = Math.max(-1.0f, Math.min(1.0f, (f25 - f26) / (fArr[2] - f26)));
                                    float f27 = fArr4[i7];
                                    if (fMax > 0.95f) {
                                        f11 = f9;
                                    } else {
                                        if (fMax > f9) {
                                            fMax /= 0.95f;
                                        }
                                        f11 = (1.0f - fMax) * f18;
                                    }
                                    fArr4[i7] = f27 - f11;
                                } else {
                                    float f28 = fArr4[i7 + 2];
                                    float f29 = fArr3[2];
                                    float fMax2 = Math.max(-1.0f, Math.min(1.0f, (f28 - f29) / (fArr[2] - f29)));
                                    float f30 = fArr4[i7];
                                    if (fMax2 > 0.95f) {
                                        f10 = f9;
                                    } else {
                                        if (fMax2 > f9) {
                                            fMax2 /= 0.95f;
                                        }
                                        f10 = (1.0f - fMax2) * f20;
                                    }
                                    fArr4[i7] = f30 - f10;
                                }
                                i7 += 3;
                                i3 = i9;
                            }
                            int i10 = i3;
                            while (arrayList.size() <= i5) {
                                arrayList.add(null);
                            }
                            obj2 = null;
                            FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(iCapacity << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
                            floatBufferAsFloatBuffer.put(fArr4);
                            i2 = i10;
                            floatBufferAsFloatBuffer.position(i2);
                            arrayList.set(i5, floatBufferAsFloatBuffer);
                        }
                        i5++;
                        f14 = f9;
                        obj = obj2;
                        i3 = i2;
                    }
                    i2 = i3;
                    obj2 = obj;
                    i5++;
                    f14 = f9;
                    obj = obj2;
                    i3 = i2;
                }
                this.g4 = true;
            }
        }
    }

    public final void o(float f2, float f3, float f4, float f5, float f6, float f7, byte[] bArr, int[] iArr, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        float f8 = f3 - f5;
        if (Math.abs(f8) < 1.0E-6d) {
            return;
        }
        float f9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f10 = f8 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? -1.0f : 1.0f;
        float f11 = (f4 - f2) / (f5 - f3);
        float f12 = (f6 - f2) / (f7 - f3);
        float fFloor = (float) (f10 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? Math.floor(f3) : Math.ceil(f3));
        float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Math.round(f5) - fFloor) * f10) + 1.0f);
        float f13 = fFloor - f3;
        float f14 = (f11 * f13) + f2;
        float f15 = (f13 * f12) + f2;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            float f16 = i10;
            if (f16 >= fMax) {
                return;
            }
            float f17 = (f16 * f10) + fFloor;
            if (f17 >= f9 && f17 <= i4 - 1) {
                int i11 = i3 - 1;
                float fMax2 = Math.max(i9, Math.min(i11, Math.round(f14)));
                float fMax3 = Math.max(i9, Math.min(i11, Math.round(f15)));
                int iRound = Math.round((4.0f * fMax2) + (f17 * i3 * 4.0f));
                int i12 = (int) fMax2;
                while (i12 <= fMax3) {
                    if (i2 == 0) {
                        i7 = iArr[iRound];
                        i8 = iArr[iRound + 1];
                        i5 = iArr[iRound + 2];
                        i6 = iArr[iRound + 3];
                    } else {
                        int i13 = bArr[iRound] & 255;
                        int i14 = bArr[iRound + 1] & 255;
                        i5 = bArr[iRound + 2] & 255;
                        i6 = bArr[iRound + 3] & 255;
                        i7 = i13;
                        i8 = i14;
                    }
                    s(i7, i8, i5, i6, i2);
                    i12++;
                    iRound += 4;
                }
            }
            i10++;
            f14 += f11;
            f15 += f12;
            f9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            i9 = 0;
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onDestroy() {
        GLES20.glDeleteProgram(this.a0);
        GLES20.glDeleteTextures(1, new int[]{this.B4}, 0);
        this.B4 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.C4}, 0);
        this.C4 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.O4}, 0);
        this.O4 = -1;
        GLES20.glDeleteTextures(1, new int[]{this.n3}, 0);
        this.n3 = -1;
        this.o3 = false;
        synchronized (this.h0) {
            this.p0 = null;
            this.q0 = null;
            this.r0.clear();
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        int i3;
        FloatBuffer floatBuffer3;
        int i4;
        int i5;
        float f2;
        int i6;
        Object obj;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5;
        if (isInitialized()) {
            synchronized (this.v) {
                try {
                    CLShare3DRelatedClasses.Pass1BufferData pass1BufferData6 = this.p;
                    if (pass1BufferData6 != null && pass1BufferData6.frame_buffer != null && pass1BufferData6.frame_buffer_texture != null && pass1BufferData6.depth_buffer != null && pass1BufferData6.width > 0 && pass1BufferData6.height > 0 && ((!this.t3 || ((pass1BufferData3 = this.q) != null && (pass1BufferData4 = this.r) != null && (pass1BufferData5 = this.s) != null && pass1BufferData3.frame_buffer != null && pass1BufferData3.frame_buffer_texture != null && pass1BufferData3.depth_buffer != null && pass1BufferData4.frame_buffer != null && pass1BufferData4.frame_buffer_texture != null && pass1BufferData4.depth_buffer != null && pass1BufferData5.frame_buffer != null && pass1BufferData5.frame_buffer_texture != null && pass1BufferData5.depth_buffer != null && pass1BufferData3.width > 0 && pass1BufferData3.height > 0 && pass1BufferData4.width > 0 && pass1BufferData4.height > 0 && pass1BufferData5.width > 0 && pass1BufferData5.height > 0)) && (!this.s2 || ((pass1BufferData = this.t) != null && (pass1BufferData2 = this.u) != null && pass1BufferData.frame_buffer != null && pass1BufferData.frame_buffer_texture != null && pass1BufferData.depth_buffer != null && pass1BufferData.width > 0 && pass1BufferData.height > 0 && pass1BufferData2.frame_buffer != null && pass1BufferData2.frame_buffer_texture != null && pass1BufferData2.depth_buffer != null && pass1BufferData2.width > 0 && pass1BufferData2.height > 0)))) {
                        f();
                        this.D1 = floatBuffer;
                        this.E1 = floatBuffer2;
                        if (!i0()) {
                            CLShare3DRelatedClasses.Pass1BufferData pass1BufferData7 = this.p;
                            int i7 = pass1BufferData7.width >> 1;
                            int i8 = pass1BufferData7.height >> 1;
                            pass1BufferData7.DestroyData();
                            this.p.CreateData(i7, i8);
                            i0();
                        }
                        if (!this.t3 || !this.t0.is_valid || this.s0 == null || this.r0.size() <= 0) {
                            i3 = 0;
                            floatBuffer3 = floatBuffer;
                            i4 = 3553;
                            i5 = 33990;
                            f2 = 4.0f;
                            i6 = 33984;
                        } else {
                            Object obj2 = this.h0;
                            synchronized (obj2) {
                                try {
                                    try {
                                        IntBuffer intBufferAllocate = IntBuffer.allocate(1024);
                                        GLES20.glGetIntegerv(36006, intBufferAllocate);
                                        IntBuffer intBufferAllocate2 = IntBuffer.allocate(4);
                                        GLES20.glGetIntegerv(2978, intBufferAllocate2);
                                        GLES20.glUseProgram(this.e0);
                                        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData8 = this.q;
                                        i6 = 33984;
                                        GLES20.glViewport(0, 0, pass1BufferData8.width, pass1BufferData8.height);
                                        GLES20.glBindFramebuffer(36160, this.q.frame_buffer[0]);
                                        floatBuffer.position(0);
                                        try {
                                            i3 = 0;
                                            i4 = 3553;
                                            i5 = 33990;
                                            f2 = 4.0f;
                                            GLES20.glVertexAttribPointer(this.f0, 2, 5126, false, 0, (Buffer) floatBuffer);
                                            GLES20.glEnableVertexAttribArray(this.f0);
                                            floatBuffer2.position(0);
                                            floatBuffer3 = floatBuffer;
                                            GLES20.glVertexAttribPointer(this.g0, 2, 5126, false, 0, (Buffer) floatBuffer2);
                                            GLES20.glEnableVertexAttribArray(this.g0);
                                            GLES20.glUniform1f(this.G3, this.q.width / 4.0f);
                                            GLES20.glUniform1f(this.H3, this.q.height / 4.0f);
                                            GLES20.glUniform1i(this.I3, this.u3);
                                            GLES20.glUniform1i(this.J3, this.v3);
                                            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                            GLES20.glClear(16640);
                                            GLES20.glEnable(2929);
                                            GLES20.glEnable(3042);
                                            GLES20.glActiveTexture(33990);
                                            GLES20.glBindTexture(3553, this.s.frame_buffer_texture[0]);
                                            GLES20.glUniform1i(this.E3, 6);
                                            GLES20.glActiveTexture(33984);
                                            GLES20.glBindTexture(3553, this.r.frame_buffer_texture[0]);
                                            GLES20.glUniform1i(this.F3, 0);
                                            GLES20.glDrawArrays(5, 0, 4);
                                            GLES20.glDisableVertexAttribArray(this.f0);
                                            GLES20.glDisableVertexAttribArray(this.g0);
                                            GLES20.glDisable(2929);
                                            GLES20.glDisable(3042);
                                            GLES20.glDisable(2884);
                                            GLES20.glFrontFace(2305);
                                            GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
                                            GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(1), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
                                        } catch (Throwable th) {
                                            th = th;
                                            obj = obj2;
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    obj = obj2;
                                }
                            }
                        }
                        GLES20.glUseProgram(this.mGLProgId);
                        floatBuffer3.position(i3);
                        GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer3);
                        GLES20.glEnableVertexAttribArray(this.d);
                        this.o.position(i3);
                        GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) this.o);
                        GLES20.glEnableVertexAttribArray(this.f25445f);
                        floatBuffer2.position(i3);
                        GLES20.glVertexAttribPointer(this.R, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.R);
                        if (this.p.frame_buffer_texture[i3] != -1) {
                            GLES20.glActiveTexture(i5);
                            GLES20.glBindTexture(i4, this.p.frame_buffer_texture[i3]);
                            GLES20.glUniform1i(this.f25444e, 6);
                        }
                        if (i2 != -1) {
                            GLES20.glActiveTexture(i6);
                            GLES20.glBindTexture(i4, i2);
                            GLES20.glUniform1i(this.Q, i3);
                        }
                        if (this.t3 && this.t0.is_valid && this.s0 != null && this.r0.size() > 0) {
                            synchronized (this.h0) {
                                try {
                                    if (this.q.frame_buffer_texture[i3] != -1) {
                                        GLES20.glActiveTexture(33991);
                                        GLES20.glBindTexture(i4, this.q.frame_buffer_texture[i3]);
                                        GLES20.glUniform1i(this.T3, 7);
                                    }
                                    if (this.r.frame_buffer_texture[i3] != -1) {
                                        GLES20.glActiveTexture(33989);
                                        GLES20.glBindTexture(i4, this.r.frame_buffer_texture[i3]);
                                        GLES20.glUniform1i(this.U3, 5);
                                    }
                                    GLES20.glUniform1i(this.V3, 1);
                                    GLES20.glUniform1i(this.W3, 1);
                                    GLES20.glUniform1i(this.P3, this.u3);
                                    GLES20.glUniform1i(this.Q3, this.v3);
                                    GLES20.glUniform1f(this.R3, this.q.width / f2);
                                    GLES20.glUniform1f(this.S3, this.q.height / f2);
                                    GLES20.glUniform1f(this.X3, this.z3);
                                    GLES20.glUniform1f(this.Y3, this.A3);
                                } catch (Throwable th4) {
                                    throw th4;
                                }
                            }
                        }
                        if (this.s2) {
                            int i9 = this.w2;
                            int i10 = 1;
                            if (!this.u2) {
                                i10 = i3;
                            }
                            GLES20.glUniform1i(i9, i10);
                            GLES20.glActiveTexture(33988);
                            GLES20.glBindTexture(i4, this.u.frame_buffer_texture[i3]);
                            GLES20.glUniform1i(this.v2, 4);
                        }
                        synchronized (this.h0) {
                            R();
                        }
                        GLES20.glDrawArrays(5, i3, 4);
                        GLES20.glDisableVertexAttribArray(this.d);
                        GLES20.glDisableVertexAttribArray(this.f25445f);
                        GLES20.glDisableVertexAttribArray(this.R);
                        GLES20.glBindTexture(i4, i3);
                    }
                } catch (Throwable th5) {
                    throw th5;
                }
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onInit() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        int iD = OpenGlUtils.d(this.w, this.x);
        this.a0 = iD;
        this.b0 = GLES20.glGetAttribLocation(iD, "position");
        this.c0 = GLES20.glGetAttribLocation(this.a0, "normal");
        this.d0 = GLES20.glGetAttribLocation(this.a0, "inputTextureCoordinate");
        super.onInit();
        this.Q = GLES20.glGetUniformLocation(getProgram(), "inputImageTexture2");
        this.R = GLES20.glGetAttribLocation(getProgram(), "inputTextureCoordinate2");
        this.O0 = GLES20.glGetUniformLocation(this.a0, "modelViewProjMatrix");
        this.P0 = GLES20.glGetUniformLocation(this.a0, "normalTransformMatrix");
        this.Q0 = GLES20.glGetUniformLocation(this.a0, "projectMatrix");
        this.u0 = GLES20.glGetUniformLocation(this.a0, "ambientTexture");
        this.v0 = GLES20.glGetUniformLocation(this.a0, "diffuseTexture");
        this.w0 = GLES20.glGetUniformLocation(this.a0, "specularTexture");
        this.x0 = GLES20.glGetUniformLocation(this.a0, "environmentTexture");
        this.D0 = GLES20.glGetUniformLocation(this.a0, "ambientColor");
        this.E0 = GLES20.glGetUniformLocation(this.a0, "diffuseColor");
        this.F0 = GLES20.glGetUniformLocation(this.a0, "specularColor");
        this.G0 = GLES20.glGetUniformLocation(this.a0, "isAmbientTexture");
        this.H0 = GLES20.glGetUniformLocation(this.a0, "isDiffuseTexture");
        this.I0 = GLES20.glGetUniformLocation(this.a0, "isSpecularTexture");
        this.J0 = GLES20.glGetUniformLocation(this.a0, "isEnvironmentTexture");
        this.K0 = GLES20.glGetUniformLocation(this.a0, "dissolve");
        this.L0 = GLES20.glGetUniformLocation(this.a0, "transmissionFilter");
        this.M0 = GLES20.glGetUniformLocation(this.a0, "isLightingAngleClipping");
        this.N0 = GLES20.glGetUniformLocation(this.a0, "lightingAngleLowerbound");
        this.e1 = GLES20.glGetUniformLocation(this.a0, "environmentMode");
        this.f1 = GLES20.glGetUniformLocation(this.a0, "environmentIntensity");
        this.g1 = GLES20.glGetUniformLocation(this.a0, "environmentTileX");
        this.h1 = GLES20.glGetUniformLocation(this.a0, "environmentTileY");
        this.U0 = GLES20.glGetUniformLocation(this.a0, "is_dynamic_range");
        this.W0 = GLES20.glGetUniformLocation(this.a0, "dynamic_range_offset");
        this.X0 = GLES20.glGetUniformLocation(this.a0, "dynamic_range_compress");
        this.Y0 = GLES20.glGetUniformLocation(this.a0, "dynamic_range_offset_environment");
        this.Z0 = GLES20.glGetUniformLocation(this.a0, "dynamic_range_compress_environment");
        this.V0 = GLES20.glGetUniformLocation(this.a0, "adjust_natural_intensity");
        String str10 = this.y;
        if (str10 != null && (str9 = this.z) != null) {
            int iD2 = OpenGlUtils.d(str10, str9);
            this.e0 = iD2;
            this.f0 = GLES20.glGetAttribLocation(iD2, "position");
            GLES20.glGetAttribLocation(this.e0, "normal");
            this.g0 = GLES20.glGetAttribLocation(this.e0, "inputTextureCoordinate");
            this.E3 = GLES20.glGetUniformLocation(this.e0, "inputImageShiftTexture");
            this.F3 = GLES20.glGetUniformLocation(this.e0, "inputImageTexture");
            this.G3 = GLES20.glGetUniformLocation(this.e0, "frameWidth");
            this.H3 = GLES20.glGetUniformLocation(this.e0, "frameHeight");
            GLES20.glGetUniformLocation(this.e0, "frameRotation");
            this.I3 = GLES20.glGetUniformLocation(this.e0, "smoothHalfKernel");
            this.J3 = GLES20.glGetUniformLocation(this.e0, "smoothCircleHalfKernel");
            this.K3 = GLES20.glGetUniformLocation(this.a0, "isRenderSilhouette");
            this.L3 = GLES20.glGetUniformLocation(this.a0, "silhouetteChannel");
            this.M3 = GLES20.glGetUniformLocation(this.a0, "left_earbottom_y");
            this.N3 = GLES20.glGetUniformLocation(this.a0, "right_earbottom_y");
            this.O3 = GLES20.glGetUniformLocation(this.a0, "is_occluder");
            this.P3 = GLES20.glGetUniformLocation(getProgram(), "earringShadowSmoothHalfKernel");
            this.Q3 = GLES20.glGetUniformLocation(getProgram(), "earringCircleShadowSmoothHalfKernel");
            this.R3 = GLES20.glGetUniformLocation(getProgram(), "frameWidth");
            this.S3 = GLES20.glGetUniformLocation(getProgram(), "frameHeight");
            GLES20.glGetUniformLocation(getProgram(), "frame_rotation");
            this.T3 = GLES20.glGetUniformLocation(getProgram(), "shadowSmoothTexture");
            this.U3 = GLES20.glGetUniformLocation(getProgram(), "earringShadowTexture");
            this.V3 = GLES20.glGetUniformLocation(getProgram(), "isShadow");
            this.W3 = GLES20.glGetUniformLocation(getProgram(), "isCircleShadow");
            this.X3 = GLES20.glGetUniformLocation(getProgram(), "earringShadowSmoothStrength");
            this.Y3 = GLES20.glGetUniformLocation(getProgram(), "earringCircleShadowSmoothStrength");
            this.v2 = GLES20.glGetUniformLocation(getProgram(), "bloom_texture");
            this.w2 = GLES20.glGetUniformLocation(getProgram(), "is_bloom");
        }
        String str11 = this.C;
        if (str11 != null && (str8 = this.D) != null) {
            int iD3 = OpenGlUtils.d(str11, str8);
            this.T = iD3;
            this.F1 = GLES20.glGetAttribLocation(iD3, "pos");
            this.G1 = GLES20.glGetAttribLocation(this.T, "norm");
            this.H1 = GLES20.glGetUniformLocation(this.T, "projection");
            this.I1 = GLES20.glGetUniformLocation(this.T, "view");
            this.J1 = GLES20.glGetUniformLocation(this.T, "is_norm");
            this.K1 = GLES20.glGetUniformLocation(this.T, "gem_center");
            this.L1 = GLES20.glGetUniformLocation(this.T, "pos_scale");
            this.M1 = GLES20.glGetUniformLocation(this.T, "pos_shift");
        }
        String str12 = this.E;
        if (str12 != null && (str7 = this.F) != null) {
            int iD4 = OpenGlUtils.d(str12, str7);
            this.U = iD4;
            this.N1 = GLES20.glGetAttribLocation(iD4, "pos");
            this.O1 = GLES20.glGetAttribLocation(this.U, "texcoord");
            this.P1 = GLES20.glGetUniformLocation(this.U, "cubemap");
        }
        String str13 = this.G;
        if (str13 != null && (str6 = this.H) != null) {
            int iD5 = OpenGlUtils.d(str13, str6);
            this.V = iD5;
            this.Q1 = GLES20.glGetAttribLocation(iD5, "position");
            this.R1 = GLES20.glGetAttribLocation(this.V, "inputTexcoord");
            this.S1 = GLES20.glGetUniformLocation(this.V, "input_texture");
        }
        String str14 = this.I;
        if (str14 != null && (str5 = this.J) != null) {
            int iD6 = OpenGlUtils.d(str14, str5);
            this.W = iD6;
            this.T1 = GLES20.glGetAttribLocation(iD6, "position");
            this.U1 = GLES20.glGetAttribLocation(this.W, "inputTexcoord");
            this.V1 = GLES20.glGetUniformLocation(this.W, "input_texture");
            this.W1 = GLES20.glGetUniformLocation(this.W, "silhouette_texture");
            this.X1 = GLES20.glGetUniformLocation(this.W, "step_x");
            this.Y1 = GLES20.glGetUniformLocation(this.W, "step_y");
        }
        String str15 = this.K;
        if (str15 != null && (str4 = this.L) != null) {
            int iD7 = OpenGlUtils.d(str15, str4);
            this.X = iD7;
            this.Z1 = GLES20.glGetAttribLocation(iD7, "position");
            this.a2 = GLES20.glGetAttribLocation(this.X, "inputTexcoord");
            this.b2 = GLES20.glGetUniformLocation(this.X, "silhouette_texture");
        }
        String str16 = this.M;
        if (str16 != null && (str3 = this.N) != null) {
            int iD8 = OpenGlUtils.d(str16, str3);
            this.Y = iD8;
            this.c2 = GLES20.glGetAttribLocation(iD8, "position");
            this.d2 = GLES20.glGetAttribLocation(this.Y, "inputTexcoord");
            this.e2 = GLES20.glGetUniformLocation(this.Y, "frame_size");
            this.f2 = GLES20.glGetUniformLocation(this.Y, "half_kernel");
            this.g2 = GLES20.glGetUniformLocation(this.Y, "input_texture");
        }
        String str17 = this.O;
        if (str17 != null && (str2 = this.P) != null) {
            int iD9 = OpenGlUtils.d(str17, str2);
            this.Z = iD9;
            this.h2 = GLES20.glGetAttribLocation(iD9, "position");
            this.i2 = GLES20.glGetAttribLocation(this.Z, "inputTextureCoordinate");
            this.j2 = GLES20.glGetUniformLocation(this.Z, "frame_width");
            this.k2 = GLES20.glGetUniformLocation(this.Z, "frame_height");
            this.l2 = GLES20.glGetUniformLocation(this.Z, "inputImageTexture");
            this.m2 = GLES20.glGetUniformLocation(this.Z, "kernel_texture");
            this.n2 = GLES20.glGetUniformLocation(this.Z, "roi_texture");
            this.o2 = GLES20.glGetUniformLocation(this.Z, "bloom_intensity");
            this.p2 = GLES20.glGetUniformLocation(this.Z, "threshold");
            this.q2 = GLES20.glGetUniformLocation(this.Z, "half_kernel");
        }
        String str18 = this.A;
        if (str18 != null && (str = this.B) != null) {
            int iD10 = OpenGlUtils.d(str18, str);
            this.S = iD10;
            this.y2 = GLES20.glGetAttribLocation(iD10, "position");
            this.z2 = GLES20.glGetAttribLocation(this.S, "inputTextureCoordinate");
            this.A2 = GLES20.glGetAttribLocation(this.S, "normal");
            this.B2 = GLES20.glGetAttribLocation(this.S, "tangent");
            this.C2 = GLES20.glGetUniformLocation(this.S, "modelViewProjMatrix");
            this.D2 = GLES20.glGetUniformLocation(this.S, "normalTransformMatrix");
            this.E2 = GLES20.glGetUniformLocation(this.S, "projectMatrix");
            this.F2 = GLES20.glGetUniformLocation(this.S, "isAlbedoTexture");
            this.G2 = GLES20.glGetUniformLocation(this.S, "isOrmTexture");
            this.H2 = GLES20.glGetUniformLocation(this.S, "isEnvironmentTexture");
            this.I2 = GLES20.glGetUniformLocation(this.S, "isBrdfLutTexture");
            this.J2 = GLES20.glGetUniformLocation(this.S, "isNormalMapTexture");
            this.K2 = GLES20.glGetUniformLocation(this.S, "albedoTexture");
            this.L2 = GLES20.glGetUniformLocation(this.S, "ormTexture");
            this.M2 = GLES20.glGetUniformLocation(this.S, "environmentTexture");
            this.O2 = GLES20.glGetUniformLocation(this.S, "brdfLutTexture");
            this.P2 = GLES20.glGetUniformLocation(this.S, "normalMapTexture");
            this.Q2 = GLES20.glGetUniformLocation(this.S, "customTexture");
            this.R2 = GLES20.glGetUniformLocation(this.S, "exposure");
            this.S2 = GLES20.glGetUniformLocation(this.S, "isRenderSilhouette");
            this.T2 = GLES20.glGetUniformLocation(this.S, "silhouetteChannel");
            this.V2 = GLES20.glGetUniformLocation(this.S, "isIBLDiffuse");
            this.W2 = GLES20.glGetUniformLocation(this.S, "isIBLSpecular");
            this.X2 = GLES20.glGetUniformLocation(this.S, "horiOrien");
            this.Y2 = GLES20.glGetUniformLocation(this.S, "vertOrien");
            this.Z2 = GLES20.glGetUniformLocation(this.S, "isEnableMirrorHDR");
            this.a3 = GLES20.glGetUniformLocation(this.S, "maxLuma");
            this.b3 = GLES20.glGetUniformLocation(this.S, "zoom_scale_ratio");
            this.c3 = GLES20.glGetUniformLocation(this.S, "isGem");
            this.d3 = GLES20.glGetUniformLocation(this.S, "gemBounces");
            GLES20.glGetUniformLocation(this.S, "isHDREnvMap");
            this.e3 = GLES20.glGetUniformLocation(this.S, "fresnelIntensity");
            GLES20.glGetUniformLocation(this.S, "gemContrast");
            this.f3 = GLES20.glGetUniformLocation(this.S, "gemParams");
            this.U2 = GLES20.glGetUniformLocation(this.S, "silhouetteValue");
            this.N2 = GLES20.glGetUniformLocation(this.S, "environmentTextureWidth");
            this.g3 = GLES20.glGetUniformLocation(this.S, "smallGemRotationMatrix");
            this.h3 = GLES20.glGetUniformLocation(this.S, "frameSize");
            this.i3 = GLES20.glGetUniformLocation(this.S, "isMetallicEyeshadow");
            this.j3 = GLES20.glGetUniformLocation(this.S, "metallicEyeshadowContrast");
            this.l3 = GLES20.glGetUniformLocation(this.S, "metallicEyeshadowNormalScale");
            this.k3 = GLES20.glGetUniformLocation(this.S, "metallicEyeshadowNormalIntensity");
            this.m3 = GLES20.glGetUniformLocation(this.S, "metallicEyeshadowRoughness");
            this.p3 = h.f25551a;
            this.q3 = 0.04f;
            this.r3 = 0.5f;
            this.s3 = 0.5f;
            this.a1 = true;
            this.b1 = true;
            int[] iArr = new int[4];
            GLES20.glGenTextures(4, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.n3 = iArr[0];
            GLES20.glBindTexture(3553, iArr[1]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.r2 = iArr[1];
            GLES20.glBindTexture(3553, iArr[2]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glBindTexture(3553, iArr[3]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        this.R0 = GLES20.glGetUniformLocation(getProgram(), "intensity");
        this.S0 = GLES20.glGetUniformLocation(getProgram(), "step_3D_x");
        this.T0 = GLES20.glGetUniformLocation(getProgram(), "step_3D_y");
        this.c1 = GLES20.glGetUniformLocation(getProgram(), "grid_roi_start");
        this.d1 = GLES20.glGetUniformLocation(getProgram(), "grid_roi_end");
        this.i1 = GLES20.glGetUniformLocation(this.a0, "isChangeColor1");
        this.j1 = GLES20.glGetUniformLocation(this.a0, "targetColor1UV");
        this.k1 = GLES20.glGetUniformLocation(this.a0, "isChangeColor2");
        this.l1 = GLES20.glGetUniformLocation(this.a0, "targetColor2UV");
        this.m1 = GLES20.glGetUniformLocation(this.a0, "isChangeColor3");
        this.n1 = GLES20.glGetUniformLocation(this.a0, "targetColor3UV");
        this.o1 = GLES20.glGetUniformLocation(this.a0, "clearColorRatio");
        this.p1 = GLES20.glGetUniformLocation(this.a0, "maxAlphaFactors");
        this.q1 = GLES20.glGetUniformLocation(this.a0, "isRemapAlpha1");
        this.r1 = GLES20.glGetUniformLocation(this.a0, "isRemapAlpha2");
        this.s1 = GLES20.glGetUniformLocation(this.a0, "isRemapAlpha3");
        this.t1 = GLES20.glGetUniformLocation(this.a0, "isEnableGradient1");
        this.u1 = GLES20.glGetUniformLocation(this.a0, "gradient1Factors");
        this.v1 = GLES20.glGetUniformLocation(this.a0, "isEnableGradient2");
        this.w1 = GLES20.glGetUniformLocation(this.a0, "gradient2Factors");
        this.x1 = GLES20.glGetUniformLocation(this.a0, "lumaHistogramTexture");
        this.y1 = GLES20.glGetUniformLocation(this.a0, "alphaHistogramTexture");
        int[] iArr2 = new int[3];
        GLES20.glGenTextures(3, iArr2, 0);
        GLES20.glBindTexture(3553, iArr2[0]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.B4 = iArr2[0];
        GLES20.glBindTexture(3553, iArr2[1]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.C4 = iArr2[1];
        GLES20.glBindTexture(3553, iArr2[2]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        this.O4 = iArr2[2];
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onOutputSizeChanged(int i2, int i3) {
        this.g = i2;
        this.f25446h = i3;
    }

    public void r(int i2) {
        this.o0 = i2;
    }

    public final void s(int i2, int i3, int i4, int i5, int i6) {
        if (i5 <= 0) {
            return;
        }
        if (i6 == 0) {
            int iRound = Math.round((i4 * 0.114f) + (i3 * 0.587f) + (i2 * 0.299f));
            int[] iArr = this.D4;
            iArr[iRound] = iArr[iRound] + i5;
            if (i5 >= 4) {
                int[] iArr2 = this.E4;
                iArr2[i5] = (int) (((double) iArr2[i5]) + 1.0d);
            }
        }
        if (i6 == 1) {
            int[] iArr3 = this.F4;
            iArr3[i5] = (int) (((double) iArr3[i5]) + 1.0d);
        }
    }

    public final void t(int i2, float[] fArr, float[] fArr2, float[] fArr3) {
        N(i2, fArr, fArr2, fArr3);
        GLES20.glUniformMatrix4fv(this.C2, 1, false, this.y0, 0);
        GLES20.glUniformMatrix4fv(this.D2, 1, false, this.z0, 0);
        GLES20.glUniformMatrix4fv(this.E2, 1, false, this.A0, 0);
    }

    public final void u(CLShare3DRelatedClasses.Pass1BufferData pass1BufferData) {
        synchronized (this.v) {
            this.p = pass1BufferData;
        }
    }

    public final void v(CLShare3DRelatedClasses.Pass1BufferData pass1BufferData, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData6) {
        synchronized (this.v) {
            this.p = pass1BufferData;
            this.q = pass1BufferData2;
            this.r = pass1BufferData3;
            this.s = pass1BufferData4;
            this.t = pass1BufferData5;
            this.u = pass1BufferData6;
        }
    }

    public final void w(LiveObject3DMetadata liveObject3DMetadata, int i2, LiveEarringMetadata liveEarringMetadata) {
        synchronized (this.h0) {
            try {
                boolean z = liveObject3DMetadata.is_valid;
                this.i0 = z;
                if (z) {
                    this.j0 = liveObject3DMetadata.rotation;
                    this.k0 = liveObject3DMetadata.is_flip;
                    System.arraycopy(liveObject3DMetadata.camera_matrix, 0, this.m0, 0, 9);
                    if (i2 < 0 || i2 >= 3) {
                        i2 = 0;
                    }
                    System.arraycopy(liveObject3DMetadata.pnp_matrices, i2 * 12, this.l0, 0, 12);
                    System.arraycopy(liveObject3DMetadata.normal_pnp_matrices, i2 << 4, this.n0, 0, 16);
                    this.i5 = liveObject3DMetadata.yaw_degree;
                    this.j5 = liveObject3DMetadata.left_ear_top;
                    this.k5 = liveObject3DMetadata.left_ear_mid;
                    this.l5 = liveObject3DMetadata.left_eye;
                    this.m5 = liveObject3DMetadata.right_ear_top;
                    this.n5 = liveObject3DMetadata.right_ear_mid;
                    this.o5 = liveObject3DMetadata.right_eye;
                    this.C0 = false;
                }
                this.t0.Copy(liveEarringMetadata);
                if (this.t0.is_valid) {
                    synchronized (this.h0) {
                        try {
                            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.s0;
                            FloatBuffer floatBuffer = live3DRenderData.normal_buffer;
                            if (floatBuffer == null || live3DRenderData.vertex_buffer == null || floatBuffer.capacity() != liveEarringMetadata.occluder_triangle_count * 9 || this.s0.vertex_buffer.capacity() != liveEarringMetadata.occluder_triangle_count * 9) {
                                this.s0.normal_buffer = m(liveEarringMetadata.p_occluder_normals);
                                this.s0.vertex_buffer = m(liveEarringMetadata.p_occluder_vertices);
                            } else {
                                this.s0.normal_buffer.put(liveEarringMetadata.p_occluder_normals);
                                this.s0.normal_buffer.position(0);
                                this.s0.vertex_buffer.put(liveEarringMetadata.p_occluder_vertices);
                                this.s0.vertex_buffer.position(0);
                            }
                            this.x3 = liveEarringMetadata.left_earbottom_y;
                            this.y3 = liveEarringMetadata.right_earbottom_y;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:123:0x0250  */
    /* JADX WARN: Code duplicated, block: B:174:0x0392  */
    /* JADX WARN: Code duplicated, block: B:201:0x0251 A[SYNTHETIC] */
    public final void x(Object3DEyewearGlassInfo object3DEyewearGlassInfo) {
        int i2;
        char c2;
        float f2;
        float f3;
        FloatBuffer floatBuffer;
        ArrayList arrayList;
        int i3;
        int i4;
        int i5;
        ArrayList arrayList2;
        float f4;
        int i6;
        FloatBuffer floatBuffer2;
        int i7;
        float f5;
        if (object3DEyewearGlassInfo == null || this.p0 == null) {
            return;
        }
        float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.Z3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.d4 = -1.0f;
        this.e4 = -1.0f;
        this.f4 = -1.0f;
        this.c4 = -1.0f;
        int i8 = 0;
        int i9 = 0;
        boolean z = false;
        while (true) {
            i2 = 3;
            c2 = 1;
            if (i9 >= 3) {
                break;
            }
            if (object3DEyewearGlassInfo.d[i9] != -1.0f || object3DEyewearGlassInfo.f25527e[i9] != -1.0f) {
                z = true;
            }
            i9++;
        }
        if (z) {
            this.c4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            int i10 = 0;
            while (true) {
                f5 = this.c4;
                if (i10 >= 3) {
                    break;
                }
                float f7 = object3DEyewearGlassInfo.d[i10] - object3DEyewearGlassInfo.f25527e[i10];
                this.c4 = (f7 * f7) + f5;
                i10++;
            }
            this.c4 = ((float) Math.sqrt(f5)) / 10.0f;
        }
        this.e4 = -1.0f;
        float f8 = 0.467589f;
        this.f4 = 0.467589f;
        if (object3DEyewearGlassInfo.f25524a > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            ArrayList arrayList3 = new ArrayList();
            int i11 = 2;
            float f9 = -1000.0f;
            float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, -1000.0f};
            float[] fArr2 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, -1000.0f};
            CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = this.p0;
            int length = live3DRenderDataArr != null ? live3DRenderDataArr.length : 0;
            int i12 = 0;
            while (true) {
                f2 = f6;
                if (i12 >= length) {
                    break;
                }
                CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = this.p0[i12];
                if (live3DRenderData == null || (floatBuffer2 = live3DRenderData.vertex_buffer) == null) {
                    f4 = f8;
                } else {
                    f4 = f8;
                    if (live3DRenderData.normal_buffer != null && live3DRenderData.texcoord_buffer != null && !live3DRenderData.is_lens) {
                        int iCapacity = floatBuffer2.capacity();
                        float[] fArr3 = new float[iCapacity];
                        live3DRenderData.vertex_buffer.get(fArr3);
                        live3DRenderData.vertex_buffer.position(0);
                        int i13 = 0;
                        while (i13 < iCapacity) {
                            float f10 = fArr3[i13];
                            float f11 = fArr3[i13 + 1];
                            float f12 = fArr3[i13 + 2];
                            if (f12 <= 0.3316667f || f10 >= f2) {
                                i7 = i11;
                            } else {
                                i7 = i11;
                                float[] fArr4 = new float[3];
                                fArr4[0] = f10;
                                fArr4[1] = f11;
                                fArr4[i7] = f12;
                                arrayList3.add(fArr4);
                                if (fArr[0] > f10) {
                                    fArr[0] = f10;
                                    this.f4 = f12;
                                }
                                if (fArr[1] < f10) {
                                    fArr[1] = f10;
                                }
                                if (fArr2[0] > f11) {
                                    fArr2[0] = f11;
                                }
                                if (fArr2[1] < f11) {
                                    fArr2[1] = f11;
                                }
                            }
                            i13 += 3;
                            i11 = i7;
                        }
                        i6 = i11;
                    }
                    i12++;
                    f6 = f2;
                    f8 = f4;
                    f9 = f9;
                    i11 = i6;
                }
                i6 = i11;
                i12++;
                f6 = f2;
                f8 = f4;
                f9 = f9;
                i11 = i6;
            }
            float f13 = f8;
            int i14 = i11;
            float f14 = f9;
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            ArrayList arrayList7 = new ArrayList();
            int i15 = 0;
            while (i15 < arrayList3.size()) {
                float[] fArr5 = (float[]) arrayList3.get(i15);
                float f15 = fArr5[0];
                float f16 = fArr[0];
                float f17 = (f15 - f16) / (fArr[c2] - f16);
                if (f17 < 0.2f) {
                    ArrayList arrayList8 = arrayList7;
                    int iMax = Math.max(0, Math.min(3, (int) Math.floor(f17 / 0.05f)));
                    if (iMax == 0) {
                        arrayList2 = arrayList8;
                        arrayList4.add(fArr5);
                    } else if (iMax == 1) {
                        arrayList2 = arrayList8;
                        arrayList5.add(fArr5);
                    } else if (iMax == i14) {
                        arrayList2 = arrayList8;
                        arrayList6.add(fArr5);
                    } else if (iMax != 3) {
                        arrayList2 = arrayList8;
                    } else {
                        arrayList2 = arrayList8;
                        arrayList2.add(fArr5);
                    }
                } else {
                    arrayList2 = arrayList7;
                }
                i15++;
                arrayList7 = arrayList2;
                c2 = 1;
                i14 = 2;
            }
            ArrayList arrayList9 = arrayList7;
            ArrayList arrayList10 = new ArrayList();
            int i16 = 0;
            float f18 = f13;
            while (i16 < 4) {
                if (i16 == 0) {
                    arrayList = arrayList4;
                } else if (i16 == 1) {
                    arrayList = arrayList5;
                } else if (i16 != 2) {
                    arrayList = i16 != i2 ? null : arrayList9;
                } else {
                    arrayList = arrayList6;
                }
                if (arrayList.size() != 1) {
                    int i17 = i8;
                    i3 = -1;
                    while (true) {
                        i4 = i8;
                        if (i17 >= arrayList.size() - 1) {
                            break;
                        }
                        int i18 = i17 + 1;
                        if (((float[]) arrayList.get(i17))[2] >= ((float[]) arrayList.get(i18))[2] || ((float[]) arrayList.get(i17))[2] >= f13) {
                            if (((float[]) arrayList.get(i18))[2] < f18) {
                                f18 = ((float[]) arrayList.get(i18))[2];
                                i3 = i18;
                            }
                        } else if (((float[]) arrayList.get(i17))[1] < f18) {
                            f18 = ((float[]) arrayList.get(i17))[2];
                            i3 = i17;
                        }
                        i17 = i18;
                        i8 = i4;
                    }
                } else {
                    if (((float[]) arrayList.get(i8))[2] >= f13 || ((float[]) arrayList.get(i8))[2] >= f18) {
                        i4 = i8;
                        i5 = -1;
                        i3 = -1;
                    } else {
                        f18 = ((float[]) arrayList.get(i8))[2];
                        i3 = i8;
                        i4 = i3;
                    }
                    if (i3 != i5) {
                        arrayList10 = arrayList;
                    }
                    i16++;
                    i8 = i4;
                    i2 = 3;
                }
                i5 = -1;
                if (i3 != i5) {
                    arrayList10 = arrayList;
                }
                i16++;
                i8 = i4;
                i2 = 3;
            }
            int i19 = i8;
            float f19 = f2;
            int i20 = i19;
            int i21 = i20;
            while (i20 < arrayList10.size()) {
                if (((float[]) arrayList10.get(i20))[2] < (0.9f * f18) + 0.0467589f) {
                    f19 += ((float[]) arrayList10.get(i20))[1];
                    i21++;
                }
                i20++;
            }
            float f20 = f19 / i21;
            ArrayList arrayList11 = new ArrayList();
            float[] fArr6 = new float[2];
            fArr6[i19] = f2;
            fArr6[1] = f14;
            int i22 = i19;
            while (i22 < length) {
                CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 = this.p0[i22];
                if (live3DRenderData2 != null && (floatBuffer = live3DRenderData2.vertex_buffer) != null && live3DRenderData2.normal_buffer != null && live3DRenderData2.texcoord_buffer != null) {
                    int iCapacity2 = floatBuffer.capacity();
                    float[] fArr7 = new float[iCapacity2];
                    live3DRenderData2.vertex_buffer.get(fArr7);
                    live3DRenderData2.vertex_buffer.position(i19);
                    for (int i23 = 0; i23 < iCapacity2; i23 += 3) {
                        float f21 = fArr7[i23];
                        float f22 = fArr7[i23 + 1];
                        float f23 = fArr7[i23 + 2];
                        if (f23 > 0.3316667f && f21 < f2 && Math.abs(f22 - f20) / (fArr2[1] - fArr2[0]) < 0.1d) {
                            arrayList11.add(new float[]{f21, f22, f23});
                            if (fArr6[0] > f21) {
                                fArr6[0] = f21;
                            }
                            if (fArr6[1] < f21) {
                                fArr6[1] = f21;
                            }
                        }
                    }
                }
                i22++;
                i19 = 0;
            }
            float f24 = f2;
            float f25 = f24;
            float f26 = f25;
            for (int i24 = 0; i24 < arrayList11.size(); i24++) {
                if (((float[]) arrayList11.get(i24))[0] < (((double) fArr6[1]) * 0.01d) + (((double) fArr6[0]) * 0.99d)) {
                    f24 += ((float[]) arrayList11.get(i24))[0];
                    f26 += ((float[]) arrayList11.get(i24))[2];
                    f25 += 1.0f;
                }
            }
            this.e4 = Math.abs(f24 / f25) * 2.0f;
            this.f4 = Math.abs(f26 / f25);
        } else {
            f2 = 0.0f;
        }
        float f27 = object3DEyewearGlassInfo.f25525b;
        if (f27 > 0.0d) {
            float f28 = object3DEyewearGlassInfo.f25526c;
            if (f28 > 0.0d) {
                f3 = f27 + f28;
            } else {
                f3 = f2;
            }
        } else {
            f3 = f2;
        }
        this.Z3 = f3;
        float f29 = object3DEyewearGlassInfo.f25524a;
        float f30 = ((double) f29) > 0.0d ? f29 : -1.0f;
        this.d4 = f30;
        n(f3, this.a4, this.b4, this.c4, f30, this.e4, this.f4, true);
    }

    /* JADX WARN: Failed to calculate best type for var: r14v8 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r14v8 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r9v63 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r9v63 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r9v63 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r9v63 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r9v64 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r9v64 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r9v63 ??, new type: float
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public final void y(com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter.Object3DEyewearSetting r34) {
        /*
            Method dump skipped, instruction units count: 1870
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter.y(com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter$Object3DEyewearSetting):void");
    }

    public CLMakeupLive3DFilter() {
        this(CLMakeupLiveDecode.a(q.f25563a), CLMakeupLiveDecode.a(r.f25564a).concat(CLMakeupLiveDecode.a(s.f25565a)), CLMakeupLiveDecode.a(t.f25566a), CLMakeupLiveDecode.a(t.f25567b));
        String strA = CLMakeupLiveDecode.a(g.f25549a);
        String strA2 = CLMakeupLiveDecode.a(g.f25550b);
        this.y = strA;
        this.z = strA2;
        this.t3 = true;
        String strA3 = CLMakeupLiveDecode.a(m.f25559a);
        String str = CLMakeupLiveDecode.a(n.f25560a) + CLMakeupLiveDecode.a(o.f25561a) + CLMakeupLiveDecode.a(p.f25562a);
        this.A = strA3;
        this.B = str;
        String strA4 = CLMakeupLiveDecode.a(l.f25557a);
        String strA5 = CLMakeupLiveDecode.a(l.f25558b);
        this.C = strA4;
        this.D = strA5;
        String strA6 = CLMakeupLiveDecode.a(e.f25545a);
        String strA7 = CLMakeupLiveDecode.a(e.f25546b);
        this.E = strA6;
        this.F = strA7;
        String strA8 = CLMakeupLiveDecode.a(d.f25543a);
        String strA9 = CLMakeupLiveDecode.a(d.f25544b);
        this.G = strA8;
        this.H = strA9;
        String strA10 = CLMakeupLiveDecode.a(f.f25547a);
        String strA11 = CLMakeupLiveDecode.a(f.f25548b);
        this.I = strA10;
        this.J = strA11;
        String strA12 = CLMakeupLiveDecode.a(c.f25541a);
        String strA13 = CLMakeupLiveDecode.a(c.f25542b);
        this.K = strA12;
        this.L = strA13;
        String strA14 = CLMakeupLiveDecode.a(b.f25539a);
        String strA15 = CLMakeupLiveDecode.a(b.f25540b);
        this.M = strA14;
        this.N = strA15;
        String strA16 = CLMakeupLiveDecode.a(a.f25537a);
        String strA17 = CLMakeupLiveDecode.a(a.f25538b);
        this.O = strA16;
        this.P = strA17;
        this.s2 = true;
    }
}
