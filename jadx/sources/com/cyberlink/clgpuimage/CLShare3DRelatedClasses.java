package com.cyberlink.clgpuimage;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import com.perfectcorp.common.debug.opengl.a;
import defpackage.ct0;
import defpackage.fc;
import defpackage.pq0;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CLShare3DRelatedClasses {

    public static class Live3DHDRTextureData {
        public ArrayList<Integer> object_indices = new ArrayList<>();
        public int texture_id = -1;
        public int width = 0;
        public int height = 0;
        public int stride = 0;
        public int texture_channel = 4;
        public boolean isHDR = false;
        public byte[] hdrBuffer = null;

        public void Allocate(int i2, int i3, int i4) {
            this.width = i2;
            this.height = i3;
            this.stride = i4 * i2;
            this.isHDR = true;
            this.hdrBuffer = new byte[(i2 * i3) << 2];
        }
    }

    public static class LiveObject3DModel {
        public static int brdf_lut_height;
        public static int brdf_lut_width;
        public static byte[] m_brdf_texture_buffer;
        public int gem_bounces;
        public float[] tangent_array;
        int vertex_array_size = 0;
        int normal_array_size = 0;
        int texcoord_array_size = 0;
        int tangent_array_size = 0;
        public float dissolve = 1.0f;
        public float[] transmission_filter = {1.0f, 1.0f, 1.0f};
        public float environment_mode = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float environment_intensity = 1.0f;
        public float environment_tile_x = 1.0f;
        public float environment_tile_y = 1.0f;
        public boolean isPBR = false;
        public float exposure = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float hori_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float vert_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public boolean is_enable_mirror_hdr = false;
        public boolean isGem = false;
        public float gem_center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_pos_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_pos_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_pos_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_pos_shift_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_pos_shift_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_pos_shift_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_absorption = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_color_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_color_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_color_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_dispersion = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float gem_ior = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float fresnel_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public boolean isSmallGem = false;
        public float bloom_scale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float bloom_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float[] small_gem_rotation_mat = new float[9];
        public boolean is_referenced_small_gem = false;
        public int small_gem_id = -1;
        public int referencing_small_gem_id = -1;
        public boolean is_lens = false;
        public float[] vertex_array = null;
        public float[] normal_array = null;
        public float[] texcoord_array = null;
        public String mtl_name = "";
        public LiveObject3DMaterialData ambient_data = new LiveObject3DMaterialData(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM});
        public LiveObject3DMaterialData diffuse_data = new LiveObject3DMaterialData(new float[]{1.0f, 1.0f, 1.0f});
        public LiveObject3DMaterialData specular_data = new LiveObject3DMaterialData(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM});
        public LiveObject3DMaterialData environment_data = new LiveObject3DMaterialData(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM});
        public LiveObject3DMaterialData normal_map_data = new LiveObject3DMaterialData(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM});
        public LiveObject3DMaterialData orm_data = new LiveObject3DMaterialData(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM});
        public int earring_matrix_index = 0;

        public void Allocate(int i2, int i3, int i4) {
            this.vertex_array_size = i2;
            this.normal_array_size = i3;
            this.texcoord_array_size = i4;
            this.vertex_array = new float[i2];
            this.normal_array = new float[i3];
            this.texcoord_array = new float[i4];
            this.earring_matrix_index = 0;
        }

        public void AllocateBrdfLutBuffers(int i2, int i3) {
            if (brdf_lut_width == i2 && brdf_lut_height == i3) {
                return;
            }
            brdf_lut_width = i2;
            brdf_lut_height = i3;
            m_brdf_texture_buffer = new byte[(i2 * i3) << 2];
        }

        public boolean IsUseAmbientTexture() {
            return this.ambient_data.IsUseTexture();
        }

        public boolean IsUseDiffuseTexture() {
            return this.diffuse_data.IsUseTexture();
        }

        public boolean IsUseEnvironmentTexture() {
            return this.environment_data.IsUseTexture();
        }

        public boolean IsUseNormalMapTexture() {
            return this.normal_map_data.IsUseTexture();
        }

        public boolean IsUseOrmTexture() {
            return this.orm_data.IsUseTexture();
        }

        public boolean IsUseSpecularTexture() {
            return this.specular_data.IsUseTexture();
        }

        public boolean IsValid() {
            float[] fArr;
            float[] fArr2;
            float[] fArr3 = this.vertex_array;
            return fArr3 != null && (fArr = this.normal_array) != null && (fArr2 = this.texcoord_array) != null && fArr3.length >= this.vertex_array_size && fArr.length >= this.normal_array_size && fArr2.length >= this.texcoord_array_size;
        }

        public void SetTangentArray() {
            int i2;
            if (this.vertex_array == null || this.texcoord_array == null || (i2 = this.vertex_array_size) <= 0 || this.texcoord_array_size <= 0) {
                return;
            }
            if (i2 != this.tangent_array_size) {
                this.tangent_array_size = i2;
                this.tangent_array = new float[i2];
            }
            char c2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (i3 < this.vertex_array_size) {
                float[] fArr = this.vertex_array;
                float f2 = fArr[i3];
                int i5 = i3 + 1;
                float f3 = fArr[i5];
                int i6 = i3 + 2;
                float f4 = fArr[i6];
                float[] fArr2 = new float[3];
                fArr2[c2] = f2;
                fArr2[1] = f3;
                fArr2[2] = f4;
                int i7 = i3 + 3;
                float f5 = fArr[i7];
                int i8 = i3 + 4;
                float f6 = fArr[i8];
                int i9 = i3 + 5;
                float f7 = fArr[i9];
                char c3 = c2;
                float[] fArr3 = new float[3];
                fArr3[c3] = f5;
                fArr3[1] = f6;
                fArr3[2] = f7;
                int i10 = i3 + 6;
                float f8 = fArr[i10];
                int i11 = i3 + 7;
                float f9 = fArr[i11];
                int i12 = i3 + 8;
                float f10 = fArr[i12];
                float[] fArr4 = new float[3];
                fArr4[c3] = f8;
                fArr4[1] = f9;
                fArr4[2] = f10;
                float[] fArr5 = this.texcoord_array;
                float f11 = fArr5[i4];
                float f12 = fArr5[i4 + 1];
                float[] fArr6 = new float[2];
                fArr6[c3] = f11;
                fArr6[1] = f12;
                float f13 = fArr5[i4 + 2];
                float f14 = fArr5[i4 + 3];
                float[] fArr7 = new float[2];
                fArr7[c3] = f13;
                fArr7[1] = f14;
                float f15 = fArr5[i4 + 4];
                float f16 = fArr5[i4 + 5];
                float[] fArr8 = new float[2];
                fArr8[c3] = f15;
                fArr8[1] = f16;
                float[] fArr9 = new float[3];
                float f17 = fArr3[c3];
                float f18 = fArr2[c3];
                float f19 = fArr3[1];
                float f20 = fArr2[1];
                float f21 = fArr3[2];
                float f22 = fArr2[2];
                float[] fArr10 = new float[3];
                fArr10[c3] = f17 - f18;
                fArr10[1] = f19 - f20;
                fArr10[2] = f21 - f22;
                float f23 = fArr4[c3] - f18;
                float f24 = fArr4[1] - f20;
                float f25 = fArr4[2] - f22;
                float[] fArr11 = new float[3];
                fArr11[c3] = f23;
                fArr11[1] = f24;
                fArr11[2] = f25;
                float f26 = fArr7[c3];
                float f27 = fArr6[c3];
                float f28 = fArr7[1];
                float f29 = fArr6[1];
                int i13 = i3;
                float[] fArr12 = new float[2];
                fArr12[c3] = f26 - f27;
                fArr12[1] = f28 - f29;
                float f30 = fArr8[c3] - f27;
                float f31 = fArr8[1] - f29;
                float[] fArr13 = new float[2];
                fArr13[c3] = f30;
                fArr13[1] = f31;
                float f32 = fArr12[c3];
                float f33 = fArr13[1];
                float f34 = f32 * f33;
                float f35 = fArr13[c3];
                float f36 = fArr12[1];
                float f37 = 1.0f;
                float f38 = 1.0f / (f34 - (f35 * f36));
                int i14 = i4;
                float fA = pq0.a(f36, fArr11[c3], f33 * fArr10[c3], f38);
                fArr9[c3] = fA;
                float fA2 = pq0.a(f36, fArr11[1], f33 * fArr10[1], f38);
                fArr9[1] = fA2;
                float fA3 = pq0.a(fArr12[1], fArr11[2], fArr13[1] * fArr10[2], f38);
                fArr9[2] = fA3;
                float fSqrt = (float) Math.sqrt((fA3 * fA3) + (fA2 * fA2) + (fA * fA));
                if (fSqrt != 0.0d) {
                    f37 = fSqrt;
                }
                float f39 = fArr9[c3] / f37;
                fArr9[c3] = f39;
                fArr9[1] = fArr9[1] / f37;
                fArr9[2] = fArr9[2] / f37;
                float[] fArr14 = this.tangent_array;
                fArr14[i13] = f39;
                fArr14[i5] = fArr9[1];
                fArr14[i6] = fArr9[2];
                fArr14[i7] = fArr9[c3];
                fArr14[i8] = fArr9[1];
                fArr14[i9] = fArr9[2];
                fArr14[i10] = fArr9[c3];
                fArr14[i11] = fArr9[1];
                fArr14[i12] = fArr9[2];
                i3 = i13 + 9;
                i4 = i14 + 6;
                c2 = c3;
            }
        }
    }

    public static FloatBuffer a(int i2) {
        return fc.v(ByteBuffer.allocateDirect(i2 << 2));
    }

    public static FloatBuffer b(float[] fArr) {
        FloatBuffer floatBufferA = a(fArr.length);
        floatBufferA.put(fArr);
        floatBufferA.position(0);
        return floatBufferA;
    }

    public static void c(boolean z) {
        if (z) {
            return;
        }
        ct0.c();
    }

    public static void d(boolean z, int i2, int i3, int i4, int i5) {
        if (z) {
            int i6 = a.f39183a;
            GLES20.glEnable(3042);
            a.a("glEnable");
        } else {
            int i7 = a.f39183a;
            GLES20.glDisable(3042);
            a.a("glDisable");
        }
        GLES20.glBlendFuncSeparate(i2, i3, i4, i5);
        a.a("glBlendFuncSeparate");
    }

    public static class LiveObject3DMaterialData {
        public float[] color;
        public String texture_image;

        public LiveObject3DMaterialData() {
            this.color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.texture_image = new String();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean IsUseTexture() {
            return this.texture_image.length() > 0;
        }

        public LiveObject3DMaterialData(float[] fArr) {
            this();
            if (fArr == null || fArr.length < 3) {
                return;
            }
            for (int i2 = 0; i2 < 3; i2++) {
                this.color[i2] = fArr[i2];
            }
        }
    }

    public static class Live3DRenderData {
        public float[] ambient_color;
        public int ambient_texture_id;
        public Bitmap bitmap;
        public float bloom_intensity;
        public float bloom_scale;
        public int brdf_lut_height;
        public int brdf_lut_width;
        public int custom_texture_id;
        public float[] diffuse_color;
        public int diffuse_texture_id;
        public float dissolve;
        public int earring_matrix_index;
        public float environment_intensity;
        public float environment_mode;
        public int environment_texture_id;
        public float environment_tile_x;
        public float environment_tile_y;
        public float exposure;
        public float fresnel_intensity;
        public int[] gemMeshNormEnvTexture;
        public int[] gemMeshPosEnvTexture;
        public float gem_absorption;
        public int gem_bounces;
        public float gem_center_x;
        public float gem_center_y;
        public float gem_center_z;
        public float gem_color_x;
        public float gem_color_y;
        public float gem_color_z;
        public float gem_dispersion;
        public float gem_ior;
        public float gem_pos_scale_x;
        public float gem_pos_scale_y;
        public float gem_pos_scale_z;
        public float gem_pos_shift_x;
        public float gem_pos_shift_y;
        public float gem_pos_shift_z;
        public int hdr_width;
        public float hori_orien;
        public boolean isGem;
        public boolean isGemMeshEnvValid;
        public boolean isPBR;
        public boolean isSmallGem;
        public boolean is_enable_mirror_hdr;
        public boolean is_lens;
        public boolean is_referenced_small_gem;
        public byte[] m_brdf_texture_buffer;
        public String mtl_name;
        public FloatBuffer normal_buffer;
        public int normal_map_texture_id;
        public int orm_texture_id;
        public Live3DRenderData referencing_small_gem;
        public float[] small_gem_rotation_mat;
        public float[] specular_color;
        public int specular_texture_id;
        public FloatBuffer tangent_buffer;
        public FloatBuffer texcoord_buffer;
        public float[] transmission_filter;
        public float vert_orien;
        public FloatBuffer vertex_buffer;

        public Live3DRenderData(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, String str, float[] fArr5, float[] fArr6, float[] fArr7, float f2, float[] fArr8, float f3, float f4, float f5, float f6, boolean z, Bitmap bitmap, boolean z2, float f7, float f8, float f9, boolean z3, boolean z4, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, int i2, float f20, float f21, float f22, float f23, float f24, float f25, boolean z5, float f26, float f27, int i3, int i4, byte[] bArr, float[] fArr9, boolean z6) {
            this.normal_buffer = null;
            this.vertex_buffer = null;
            this.texcoord_buffer = null;
            this.ambient_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.diffuse_color = new float[]{1.0f, 1.0f, 1.0f};
            this.specular_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.ambient_texture_id = -1;
            this.diffuse_texture_id = -1;
            this.specular_texture_id = -1;
            this.environment_texture_id = -1;
            this.normal_map_texture_id = -1;
            this.orm_texture_id = -1;
            this.custom_texture_id = -1;
            this.dissolve = 1.0f;
            this.transmission_filter = new float[]{1.0f, 1.0f, 1.0f};
            this.environment_mode = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.environment_intensity = 1.0f;
            this.environment_tile_x = 1.0f;
            this.environment_tile_y = 1.0f;
            this.isPBR = false;
            this.exposure = 1.0f;
            this.hori_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.vert_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.is_enable_mirror_hdr = false;
            this.isGem = false;
            this.gem_center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_absorption = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_dispersion = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_ior = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.fresnel_intensity = 1.0f;
            this.isSmallGem = false;
            this.bloom_scale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.bloom_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.isGemMeshEnvValid = false;
            this.gemMeshNormEnvTexture = new int[1];
            this.gemMeshPosEnvTexture = new int[1];
            this.hdr_width = 0;
            this.small_gem_rotation_mat = new float[9];
            this.is_referenced_small_gem = false;
            this.referencing_small_gem = null;
            this.is_lens = false;
            this.bitmap = null;
            this.earring_matrix_index = 0;
            if (fArr != null) {
                this.vertex_buffer = CLShare3DRelatedClasses.b(fArr);
            } else {
                this.vertex_buffer = null;
            }
            if (fArr2 != null) {
                this.normal_buffer = CLShare3DRelatedClasses.b(fArr2);
            } else {
                this.normal_buffer = null;
            }
            if (fArr3 != null) {
                this.texcoord_buffer = CLShare3DRelatedClasses.b(fArr3);
            } else {
                this.texcoord_buffer = null;
            }
            this.tangent_buffer = fArr4 != null ? CLShare3DRelatedClasses.b(fArr4) : null;
            this.mtl_name = str;
            SetRenderParameters(fArr5, fArr6, fArr7, f2, fArr8, f3, f4, f5, f6, z, bitmap, z2, f7, f8, f9, z3, z4, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, i2, f20, f21, f22, f23, f24, f25, z5, f26, f27, i3, i4, bArr, fArr9, z6);
            this.earring_matrix_index = 0;
        }

        public void ReleaseTextures() {
            GLES20.glDeleteTextures(1, this.gemMeshNormEnvTexture, 0);
            GLES20.glDeleteTextures(1, this.gemMeshPosEnvTexture, 0);
        }

        public void SetAmbientTextureID(int i2) {
            this.ambient_texture_id = i2;
        }

        public void SetCustomTextureID(int i2) {
            this.custom_texture_id = i2;
        }

        public void SetDiffuseTextureID(int i2) {
            this.diffuse_texture_id = i2;
        }

        public void SetEnvironmentTextureID(int i2) {
            this.environment_texture_id = i2;
        }

        public void SetNormalMapTextureID(int i2) {
            this.normal_map_texture_id = i2;
        }

        public void SetOrmTextureID(int i2) {
            this.orm_texture_id = i2;
        }

        public void SetRenderParameters(float[] fArr, float[] fArr2, float[] fArr3, float f2, float[] fArr4, float f3, float f4, float f5, float f6, boolean z, Bitmap bitmap, boolean z2, float f7, float f8, float f9, boolean z3, boolean z4, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, int i2, float f20, float f21, float f22, float f23, float f24, float f25, boolean z5, float f26, float f27, int i3, int i4, byte[] bArr, float[] fArr5, boolean z6) {
            for (int i5 = 0; i5 < 3; i5++) {
                this.ambient_color[i5] = fArr[i5];
                this.diffuse_color[i5] = fArr2[i5];
                this.specular_color[i5] = fArr3[i5];
                this.transmission_filter[i5] = fArr4[i5];
            }
            this.dissolve = f2;
            this.environment_mode = f3;
            this.environment_intensity = f4;
            this.environment_tile_x = f5;
            this.environment_tile_y = f6;
            this.is_lens = z;
            this.bitmap = bitmap;
            this.isPBR = z2;
            this.exposure = f7;
            this.hori_orien = f8;
            this.vert_orien = f9;
            this.is_enable_mirror_hdr = z3;
            this.isGem = z4;
            this.gem_center_x = f10;
            this.gem_center_y = f11;
            this.gem_center_z = f12;
            this.gem_pos_scale_x = f13;
            this.gem_pos_scale_y = f14;
            this.gem_pos_scale_z = f15;
            this.gem_pos_shift_x = f16;
            this.gem_pos_shift_y = f17;
            this.gem_pos_shift_z = f18;
            this.gem_absorption = f19;
            this.gem_bounces = i2;
            this.gem_color_x = f20;
            this.gem_color_y = f21;
            this.gem_color_z = f22;
            this.gem_dispersion = f23;
            this.gem_ior = f24;
            this.fresnel_intensity = f25;
            this.isSmallGem = z5;
            this.bloom_scale = f26;
            this.bloom_intensity = f27;
            this.brdf_lut_width = i3;
            this.brdf_lut_height = i4;
            this.m_brdf_texture_buffer = bArr;
            System.arraycopy(fArr5, 0, this.small_gem_rotation_mat, 0, 9);
            this.is_referenced_small_gem = z6;
        }

        public void SetSpecularTextureID(int i2) {
            this.specular_texture_id = i2;
        }

        public void UpdateBrdf(int i2, int i3, byte[] bArr) {
            this.brdf_lut_width = i2;
            this.brdf_lut_height = i3;
            this.m_brdf_texture_buffer = bArr;
        }

        public void UpdateCoordinates(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
            int iMin = (fArr == null || fArr2 == null || fArr4 == null) ? 0 : Math.min(fArr.length / 3, fArr2.length / 3);
            if (fArr3 != null) {
                iMin = Math.min(iMin, fArr3.length / 2);
            }
            FloatBuffer floatBuffer = this.texcoord_buffer;
            if (floatBuffer != null) {
                iMin = Math.min(iMin, floatBuffer.capacity() / 2);
            }
            if (iMin <= 0) {
                this.vertex_buffer = null;
                this.normal_buffer = null;
                this.tangent_buffer = null;
                return;
            }
            int i2 = iMin * 3;
            FloatBuffer floatBuffer2 = this.vertex_buffer;
            if (floatBuffer2 == null || floatBuffer2.capacity() != i2) {
                this.vertex_buffer = CLShare3DRelatedClasses.a(i2);
            }
            this.vertex_buffer.clear();
            this.vertex_buffer.put(fArr, 0, i2);
            this.vertex_buffer.position(0);
            FloatBuffer floatBuffer3 = this.normal_buffer;
            if (floatBuffer3 == null || floatBuffer3.capacity() != i2) {
                this.normal_buffer = CLShare3DRelatedClasses.a(i2);
            }
            this.normal_buffer.clear();
            this.normal_buffer.put(fArr2, 0, i2);
            this.normal_buffer.position(0);
            int i3 = iMin << 1;
            if (this.texcoord_buffer == null) {
                this.texcoord_buffer = CLShare3DRelatedClasses.a(i3);
            }
            if (fArr3 != null) {
                this.texcoord_buffer.clear();
                this.texcoord_buffer.put(fArr3, 0, i3);
                this.texcoord_buffer.position(0);
            }
            FloatBuffer floatBuffer4 = this.tangent_buffer;
            if (floatBuffer4 == null || floatBuffer4.capacity() != i2) {
                this.tangent_buffer = CLShare3DRelatedClasses.a(i2);
            }
            this.tangent_buffer.clear();
            this.tangent_buffer.put(fArr4, 0, i2);
            this.tangent_buffer.position(0);
        }

        public void SetRenderParameters(float[] fArr, float[] fArr2, float[] fArr3, float f2, float[] fArr4, float f3, float f4, float f5, float f6, boolean z, float f7, float f8, float f9, boolean z2, boolean z3, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, int i2, float f20, float f21, float f22, float f23, float f24, float f25, boolean z4, float f26, float f27, int i3, int i4, byte[] bArr, float[] fArr5, boolean z5) {
            SetRenderParameters(fArr, fArr2, fArr3, f2, fArr4, f3, f4, f5, f6);
            this.isPBR = z;
            this.exposure = f7;
            this.hori_orien = f8;
            this.vert_orien = f9;
            this.isGem = z3;
            this.gem_center_x = f10;
            this.gem_center_y = f11;
            this.gem_center_z = f12;
            this.gem_pos_scale_x = f13;
            this.gem_pos_scale_y = f14;
            this.gem_pos_scale_z = f15;
            this.gem_pos_shift_x = f16;
            this.gem_pos_shift_y = f17;
            this.gem_pos_shift_z = f18;
            this.gem_absorption = f19;
            this.gem_bounces = i2;
            this.gem_color_x = f20;
            this.gem_color_y = f21;
            this.gem_color_z = f22;
            this.gem_dispersion = f23;
            this.gem_ior = f24;
            this.fresnel_intensity = f25;
            this.isSmallGem = z4;
            this.bloom_scale = f26;
            this.bloom_intensity = f27;
            this.brdf_lut_width = i3;
            this.brdf_lut_height = i4;
            this.m_brdf_texture_buffer = bArr;
            System.arraycopy(fArr5, 0, this.small_gem_rotation_mat, 0, 9);
            this.is_referenced_small_gem = z5;
        }

        public void SetRenderParameters(float[] fArr, float[] fArr2, float[] fArr3, float f2, float[] fArr4, float f3, float f4, float f5, float f6, boolean z, Bitmap bitmap) {
            for (int i2 = 0; i2 < 3; i2++) {
                this.ambient_color[i2] = fArr[i2];
                this.diffuse_color[i2] = fArr2[i2];
                this.specular_color[i2] = fArr3[i2];
                this.transmission_filter[i2] = fArr4[i2];
            }
            this.dissolve = f2;
            this.environment_mode = f3;
            this.environment_intensity = f4;
            this.environment_tile_x = f5;
            this.environment_tile_y = f6;
            this.is_lens = z;
            this.bitmap = bitmap;
        }

        public void UpdateCoordinates(float[] fArr, float[] fArr2, float[] fArr3) {
            int iMin = (fArr == null || fArr2 == null) ? 0 : Math.min(fArr.length / 3, fArr2.length / 3);
            if (fArr3 != null) {
                iMin = Math.min(iMin, fArr3.length / 2);
            }
            FloatBuffer floatBuffer = this.texcoord_buffer;
            if (floatBuffer != null) {
                iMin = Math.min(iMin, floatBuffer.capacity() / 2);
            }
            if (iMin <= 0) {
                this.vertex_buffer = null;
                this.normal_buffer = null;
                return;
            }
            int i2 = iMin * 3;
            FloatBuffer floatBuffer2 = this.vertex_buffer;
            if (floatBuffer2 == null || floatBuffer2.capacity() != i2) {
                this.vertex_buffer = CLShare3DRelatedClasses.a(i2);
            }
            this.vertex_buffer.clear();
            this.vertex_buffer.put(fArr, 0, i2);
            this.vertex_buffer.position(0);
            FloatBuffer floatBuffer3 = this.normal_buffer;
            if (floatBuffer3 == null || floatBuffer3.capacity() != i2) {
                this.normal_buffer = CLShare3DRelatedClasses.a(i2);
            }
            this.normal_buffer.clear();
            this.normal_buffer.put(fArr2, 0, i2);
            this.normal_buffer.position(0);
            int i3 = iMin << 1;
            if (this.texcoord_buffer == null) {
                this.texcoord_buffer = CLShare3DRelatedClasses.a(i3);
            }
            if (fArr3 != null) {
                this.texcoord_buffer.clear();
                this.texcoord_buffer.put(fArr3, 0, i3);
                this.texcoord_buffer.position(0);
            }
        }

        public void SetRenderParameters(float[] fArr, float[] fArr2, float[] fArr3, float f2, float[] fArr4, float f3, float f4, float f5, float f6) {
            for (int i2 = 0; i2 < 3; i2++) {
                this.ambient_color[i2] = fArr[i2];
                this.diffuse_color[i2] = fArr2[i2];
                this.specular_color[i2] = fArr3[i2];
                this.transmission_filter[i2] = fArr4[i2];
            }
            this.dissolve = f2;
            this.environment_mode = f3;
            this.environment_intensity = f4;
            this.environment_tile_x = f5;
            this.environment_tile_y = f6;
        }

        public Live3DRenderData() {
            this.normal_buffer = null;
            this.vertex_buffer = null;
            this.texcoord_buffer = null;
            this.ambient_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.diffuse_color = new float[]{1.0f, 1.0f, 1.0f};
            this.specular_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.ambient_texture_id = -1;
            this.diffuse_texture_id = -1;
            this.specular_texture_id = -1;
            this.environment_texture_id = -1;
            this.normal_map_texture_id = -1;
            this.orm_texture_id = -1;
            this.custom_texture_id = -1;
            this.dissolve = 1.0f;
            this.transmission_filter = new float[]{1.0f, 1.0f, 1.0f};
            this.environment_mode = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.environment_intensity = 1.0f;
            this.environment_tile_x = 1.0f;
            this.environment_tile_y = 1.0f;
            this.isPBR = false;
            this.exposure = 1.0f;
            this.hori_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.vert_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.is_enable_mirror_hdr = false;
            this.isGem = false;
            this.gem_center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_absorption = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_dispersion = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_ior = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.fresnel_intensity = 1.0f;
            this.isSmallGem = false;
            this.bloom_scale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.bloom_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.isGemMeshEnvValid = false;
            this.gemMeshNormEnvTexture = new int[1];
            this.gemMeshPosEnvTexture = new int[1];
            this.hdr_width = 0;
            this.small_gem_rotation_mat = new float[9];
            this.is_referenced_small_gem = false;
            this.referencing_small_gem = null;
            this.is_lens = false;
            this.bitmap = null;
            this.earring_matrix_index = 0;
        }

        public Live3DRenderData(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6, float f2, float[] fArr7, float f3, float f4, float f5, float f6) {
            this.normal_buffer = null;
            this.vertex_buffer = null;
            this.texcoord_buffer = null;
            this.ambient_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.diffuse_color = new float[]{1.0f, 1.0f, 1.0f};
            this.specular_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.ambient_texture_id = -1;
            this.diffuse_texture_id = -1;
            this.specular_texture_id = -1;
            this.environment_texture_id = -1;
            this.normal_map_texture_id = -1;
            this.orm_texture_id = -1;
            this.custom_texture_id = -1;
            this.dissolve = 1.0f;
            this.transmission_filter = new float[]{1.0f, 1.0f, 1.0f};
            this.environment_mode = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.environment_intensity = 1.0f;
            this.environment_tile_x = 1.0f;
            this.environment_tile_y = 1.0f;
            this.isPBR = false;
            this.exposure = 1.0f;
            this.hori_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.vert_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.is_enable_mirror_hdr = false;
            this.isGem = false;
            this.gem_center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_absorption = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_dispersion = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_ior = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.fresnel_intensity = 1.0f;
            this.isSmallGem = false;
            this.bloom_scale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.bloom_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.isGemMeshEnvValid = false;
            this.gemMeshNormEnvTexture = new int[1];
            this.gemMeshPosEnvTexture = new int[1];
            this.hdr_width = 0;
            this.small_gem_rotation_mat = new float[9];
            this.is_referenced_small_gem = false;
            this.referencing_small_gem = null;
            this.is_lens = false;
            this.bitmap = null;
            this.earring_matrix_index = 0;
            if (fArr != null) {
                this.vertex_buffer = CLShare3DRelatedClasses.b(fArr);
            } else {
                this.vertex_buffer = null;
            }
            if (fArr2 != null) {
                this.normal_buffer = CLShare3DRelatedClasses.b(fArr2);
            } else {
                this.normal_buffer = null;
            }
            this.texcoord_buffer = fArr3 != null ? CLShare3DRelatedClasses.b(fArr3) : null;
            SetRenderParameters(fArr4, fArr5, fArr6, f2, fArr7, f3, f4, f5, f6);
            this.earring_matrix_index = 0;
        }

        public Live3DRenderData(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6, float f2, float[] fArr7, float f3, float f4, float f5, float f6, int i2) {
            this.normal_buffer = null;
            this.vertex_buffer = null;
            this.texcoord_buffer = null;
            this.ambient_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.diffuse_color = new float[]{1.0f, 1.0f, 1.0f};
            this.specular_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.ambient_texture_id = -1;
            this.diffuse_texture_id = -1;
            this.specular_texture_id = -1;
            this.environment_texture_id = -1;
            this.normal_map_texture_id = -1;
            this.orm_texture_id = -1;
            this.custom_texture_id = -1;
            this.dissolve = 1.0f;
            this.transmission_filter = new float[]{1.0f, 1.0f, 1.0f};
            this.environment_mode = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.environment_intensity = 1.0f;
            this.environment_tile_x = 1.0f;
            this.environment_tile_y = 1.0f;
            this.isPBR = false;
            this.exposure = 1.0f;
            this.hori_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.vert_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.is_enable_mirror_hdr = false;
            this.isGem = false;
            this.gem_center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_absorption = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_dispersion = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_ior = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.fresnel_intensity = 1.0f;
            this.isSmallGem = false;
            this.bloom_scale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.bloom_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.isGemMeshEnvValid = false;
            this.gemMeshNormEnvTexture = new int[1];
            this.gemMeshPosEnvTexture = new int[1];
            this.hdr_width = 0;
            this.small_gem_rotation_mat = new float[9];
            this.is_referenced_small_gem = false;
            this.referencing_small_gem = null;
            this.is_lens = false;
            this.bitmap = null;
            this.earring_matrix_index = 0;
            if (fArr != null) {
                this.vertex_buffer = CLShare3DRelatedClasses.b(fArr);
            } else {
                this.vertex_buffer = null;
            }
            if (fArr2 != null) {
                this.normal_buffer = CLShare3DRelatedClasses.b(fArr2);
            } else {
                this.normal_buffer = null;
            }
            if (fArr3 != null) {
                this.texcoord_buffer = CLShare3DRelatedClasses.b(fArr3);
            } else {
                this.texcoord_buffer = null;
            }
            SetRenderParameters(fArr4, fArr5, fArr6, f2, fArr7, f3, f4, f5, f6);
            this.earring_matrix_index = i2;
        }

        public Live3DRenderData(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6, float f2, float[] fArr7, float f3, float f4, float f5, float f6, boolean z, Bitmap bitmap) {
            this.normal_buffer = null;
            this.vertex_buffer = null;
            this.texcoord_buffer = null;
            this.ambient_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.diffuse_color = new float[]{1.0f, 1.0f, 1.0f};
            this.specular_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.ambient_texture_id = -1;
            this.diffuse_texture_id = -1;
            this.specular_texture_id = -1;
            this.environment_texture_id = -1;
            this.normal_map_texture_id = -1;
            this.orm_texture_id = -1;
            this.custom_texture_id = -1;
            this.dissolve = 1.0f;
            this.transmission_filter = new float[]{1.0f, 1.0f, 1.0f};
            this.environment_mode = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.environment_intensity = 1.0f;
            this.environment_tile_x = 1.0f;
            this.environment_tile_y = 1.0f;
            this.isPBR = false;
            this.exposure = 1.0f;
            this.hori_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.vert_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.is_enable_mirror_hdr = false;
            this.isGem = false;
            this.gem_center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_absorption = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_dispersion = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_ior = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.fresnel_intensity = 1.0f;
            this.isSmallGem = false;
            this.bloom_scale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.bloom_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.isGemMeshEnvValid = false;
            this.gemMeshNormEnvTexture = new int[1];
            this.gemMeshPosEnvTexture = new int[1];
            this.hdr_width = 0;
            this.small_gem_rotation_mat = new float[9];
            this.is_referenced_small_gem = false;
            this.referencing_small_gem = null;
            this.is_lens = false;
            this.bitmap = null;
            this.earring_matrix_index = 0;
            if (fArr != null) {
                this.vertex_buffer = CLShare3DRelatedClasses.b(fArr);
            } else {
                this.vertex_buffer = null;
            }
            if (fArr2 != null) {
                this.normal_buffer = CLShare3DRelatedClasses.b(fArr2);
            } else {
                this.normal_buffer = null;
            }
            this.texcoord_buffer = fArr3 != null ? CLShare3DRelatedClasses.b(fArr3) : null;
            SetRenderParameters(fArr4, fArr5, fArr6, f2, fArr7, f3, f4, f5, f6, z, bitmap);
            this.earring_matrix_index = 0;
        }

        public Live3DRenderData(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6, float[] fArr7, float f2, float[] fArr8, float f3, float f4, float f5, float f6, int i2, boolean z, float f7, float f8, float f9, boolean z2, boolean z3, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, int i3, float f20, float f21, float f22, float f23, float f24, float f25, boolean z4, float f26, float f27, int i4, int i5, byte[] bArr, float[] fArr9, boolean z5) {
            this.normal_buffer = null;
            this.vertex_buffer = null;
            this.texcoord_buffer = null;
            this.ambient_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.diffuse_color = new float[]{1.0f, 1.0f, 1.0f};
            this.specular_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.ambient_texture_id = -1;
            this.diffuse_texture_id = -1;
            this.specular_texture_id = -1;
            this.environment_texture_id = -1;
            this.normal_map_texture_id = -1;
            this.orm_texture_id = -1;
            this.custom_texture_id = -1;
            this.dissolve = 1.0f;
            this.transmission_filter = new float[]{1.0f, 1.0f, 1.0f};
            this.environment_mode = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.environment_intensity = 1.0f;
            this.environment_tile_x = 1.0f;
            this.environment_tile_y = 1.0f;
            this.isPBR = false;
            this.exposure = 1.0f;
            this.hori_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.vert_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.is_enable_mirror_hdr = false;
            this.isGem = false;
            this.gem_center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_absorption = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_dispersion = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_ior = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.fresnel_intensity = 1.0f;
            this.isSmallGem = false;
            this.bloom_scale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.bloom_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.isGemMeshEnvValid = false;
            this.gemMeshNormEnvTexture = new int[1];
            this.gemMeshPosEnvTexture = new int[1];
            this.hdr_width = 0;
            this.small_gem_rotation_mat = new float[9];
            this.is_referenced_small_gem = false;
            this.referencing_small_gem = null;
            this.is_lens = false;
            this.bitmap = null;
            this.earring_matrix_index = 0;
            if (fArr != null) {
                this.vertex_buffer = CLShare3DRelatedClasses.b(fArr);
            } else {
                this.vertex_buffer = null;
            }
            if (fArr2 != null) {
                this.normal_buffer = CLShare3DRelatedClasses.b(fArr2);
            } else {
                this.normal_buffer = null;
            }
            if (fArr3 != null) {
                this.texcoord_buffer = CLShare3DRelatedClasses.b(fArr3);
            } else {
                this.texcoord_buffer = null;
            }
            this.tangent_buffer = fArr4 != null ? CLShare3DRelatedClasses.b(fArr4) : null;
            SetRenderParameters(fArr5, fArr6, fArr7, f2, fArr8, f3, f4, f5, f6, z, f7, f8, f9, z2, z3, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, i3, f20, f21, f22, f23, f24, f25, z4, f26, f27, i4, i5, bArr, fArr9, z5);
            this.earring_matrix_index = i2;
        }

        public Live3DRenderData(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6, float[] fArr7, float f2, float[] fArr8, float f3, float f4, float f5, float f6, boolean z, Bitmap bitmap, boolean z2, float f7, float f8, float f9, boolean z3, boolean z4, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, int i2, float f20, float f21, float f22, float f23, float f24, float f25, boolean z5, float f26, float f27, int i3, int i4, byte[] bArr, float[] fArr9, boolean z6) {
            this.normal_buffer = null;
            this.vertex_buffer = null;
            this.texcoord_buffer = null;
            this.ambient_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.diffuse_color = new float[]{1.0f, 1.0f, 1.0f};
            this.specular_color = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            this.ambient_texture_id = -1;
            this.diffuse_texture_id = -1;
            this.specular_texture_id = -1;
            this.environment_texture_id = -1;
            this.normal_map_texture_id = -1;
            this.orm_texture_id = -1;
            this.custom_texture_id = -1;
            this.dissolve = 1.0f;
            this.transmission_filter = new float[]{1.0f, 1.0f, 1.0f};
            this.environment_mode = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.environment_intensity = 1.0f;
            this.environment_tile_x = 1.0f;
            this.environment_tile_y = 1.0f;
            this.isPBR = false;
            this.exposure = 1.0f;
            this.hori_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.vert_orien = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.is_enable_mirror_hdr = false;
            this.isGem = false;
            this.gem_center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_pos_shift_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_absorption = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_color_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_dispersion = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.gem_ior = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.fresnel_intensity = 1.0f;
            this.isSmallGem = false;
            this.bloom_scale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.bloom_intensity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.isGemMeshEnvValid = false;
            this.gemMeshNormEnvTexture = new int[1];
            this.gemMeshPosEnvTexture = new int[1];
            this.hdr_width = 0;
            this.small_gem_rotation_mat = new float[9];
            this.is_referenced_small_gem = false;
            this.referencing_small_gem = null;
            this.is_lens = false;
            this.bitmap = null;
            this.earring_matrix_index = 0;
            if (fArr != null) {
                this.vertex_buffer = CLShare3DRelatedClasses.b(fArr);
            } else {
                this.vertex_buffer = null;
            }
            if (fArr2 != null) {
                this.normal_buffer = CLShare3DRelatedClasses.b(fArr2);
            } else {
                this.normal_buffer = null;
            }
            if (fArr3 != null) {
                this.texcoord_buffer = CLShare3DRelatedClasses.b(fArr3);
            } else {
                this.texcoord_buffer = null;
            }
            this.tangent_buffer = fArr4 != null ? CLShare3DRelatedClasses.b(fArr4) : null;
            SetRenderParameters(fArr5, fArr6, fArr7, f2, fArr8, f3, f4, f5, f6, z, bitmap, z2, f7, f8, f9, z3, z4, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, i2, f20, f21, f22, f23, f24, f25, z5, f26, f27, i3, i4, bArr, fArr9, z6);
            this.earring_matrix_index = 0;
        }
    }

    public static class Pass1BufferData {
        public int[] frame_buffer = null;
        public int[] frame_buffer_texture = null;
        public int[] depth_buffer = null;
        public int width = 0;
        public int height = 0;

        public boolean CreateData(int i2, int i3, boolean z) {
            while (GLES20.glGetError() != 0) {
            }
            int[] iArr = new int[1];
            this.frame_buffer = iArr;
            this.frame_buffer_texture = new int[1];
            GLES20.glGenFramebuffers(1, iArr, 0);
            GLES20.glGenTextures(1, this.frame_buffer_texture, 0);
            GLES20.glBindTexture(3553, this.frame_buffer_texture[0]);
            GLES20.glTexImage2D(3553, 0, 6408, i2, i3, 0, 6408, 5121, null);
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 1285 || iGlGetError == 1286) {
                return false;
            }
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            IntBuffer intBufferAllocate = IntBuffer.allocate(1);
            IntBuffer intBufferAllocate2 = IntBuffer.allocate(1);
            GLES20.glGetIntegerv(36006, intBufferAllocate);
            GLES20.glGetIntegerv(36007, intBufferAllocate2);
            GLES20.glBindFramebuffer(36160, this.frame_buffer[0]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.frame_buffer_texture[0], 0);
            if (z) {
                int[] iArr2 = new int[1];
                this.depth_buffer = iArr2;
                GLES20.glGenRenderbuffers(1, iArr2, 0);
                GLES20.glBindRenderbuffer(36161, this.depth_buffer[0]);
                GLES20.glRenderbufferStorage(36161, 33189, i2, i3);
                int iGlGetError2 = GLES20.glGetError();
                if (iGlGetError2 == 1285 || iGlGetError2 == 1286) {
                    return false;
                }
                GLES20.glFramebufferRenderbuffer(36160, 36096, 36161, this.depth_buffer[0]);
            }
            GLES20.glBindTexture(3553, 0);
            GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
            GLES20.glBindRenderbuffer(36161, intBufferAllocate2.get(0));
            this.width = i2;
            this.height = i3;
            return true;
        }

        public void DestroyData() {
            int[] iArr = this.frame_buffer_texture;
            if (iArr != null) {
                GLES20.glDeleteTextures(iArr.length, iArr, 0);
                this.frame_buffer_texture = null;
            }
            int[] iArr2 = this.frame_buffer;
            if (iArr2 != null) {
                GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
                this.frame_buffer = null;
            }
            int[] iArr3 = this.depth_buffer;
            if (iArr3 != null) {
                GLES20.glDeleteRenderbuffers(iArr3.length, iArr3, 0);
                this.depth_buffer = null;
            }
            this.width = 0;
            this.height = 0;
        }

        public boolean CreateData(int i2, int i3) {
            return CreateData(i2, i3, true);
        }
    }
}
