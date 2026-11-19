package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLiveDecode;
import com.cyberlink.clgpuimage.GPUImageFilter;
import defpackage.fc;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public final class CLMakeupLiveFaceReshapeFilter extends GPUImageFilter {
    public static final float[] I = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public ByteBuffer H;
    public final Object o;
    public final LiveFaceReshapeMetadata p;
    public int q;
    public int r;
    public final FloatBuffer s;
    public final boolean t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public static class LiveFaceReshapeMetadata {
        public boolean is_flip;
        public int rotation;
        public int view_frame_height;
        public int view_frame_width;
        public byte[] warp_table;
        public float warp_value_factor;
        public boolean is_valid = false;
        int view_frame_roi_width = 0;
        int view_frame_roi_height = 0;
        int view_frame_roi_start_x = 0;
        int view_frame_roi_start_y = 0;
        public int table_width = 0;
        public int table_height = 0;

        public void AllocateArray(int i2, int i3) {
            if (this.table_width == i2 && this.table_height == i3) {
                return;
            }
            this.table_width = i2;
            this.table_height = i3;
            this.warp_table = new byte[(i2 * i3) << 2];
        }

        public void Copy(LiveFaceReshapeMetadata liveFaceReshapeMetadata) {
            CopyScalar(liveFaceReshapeMetadata);
            if (this.is_valid) {
                if (liveFaceReshapeMetadata.table_width <= 0 || liveFaceReshapeMetadata.table_height <= 0) {
                    this.warp_table = null;
                } else {
                    this.warp_table = (byte[]) liveFaceReshapeMetadata.warp_table.clone();
                }
            }
        }

        public void CopyScalar(LiveFaceReshapeMetadata liveFaceReshapeMetadata) {
            boolean z = liveFaceReshapeMetadata.is_valid;
            this.is_valid = z;
            if (z) {
                this.view_frame_width = liveFaceReshapeMetadata.view_frame_width;
                this.view_frame_height = liveFaceReshapeMetadata.view_frame_height;
                this.view_frame_roi_width = liveFaceReshapeMetadata.view_frame_roi_width;
                this.view_frame_roi_height = liveFaceReshapeMetadata.view_frame_roi_height;
                this.view_frame_roi_start_x = liveFaceReshapeMetadata.view_frame_roi_start_x;
                this.view_frame_roi_start_y = liveFaceReshapeMetadata.view_frame_roi_start_y;
                this.rotation = liveFaceReshapeMetadata.rotation;
                this.is_flip = liveFaceReshapeMetadata.is_flip;
                this.table_width = liveFaceReshapeMetadata.table_width;
                this.table_height = liveFaceReshapeMetadata.table_height;
                this.warp_value_factor = liveFaceReshapeMetadata.warp_value_factor;
            }
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25657a = {194, 194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 245, 140, 254, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 143, 242, 254, 128, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 128, 250, 139, 137, 248, 141, 250, 251, 245, 254, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 143, 250, 245, 242, 253, 248, 255, 245, 250, 240, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 139, 136, 141, 250, 141, 242, 136, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 143, 254, 139, 141, 242, 252, 250, 245, 248, 255, 245, 242, 137, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 128, 250, 139, 137, 248, 143, 250, 245, 142, 254, 248, 255, 250, 252, 141, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 252, 136, 139, 139, 254, 252, 141, 248, 255, 245, 136, 250, 141, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 242, 247, 143, 248, 169, 172, 173, 232, 164, 232, 168, 149, 151, 232, 150, 232, 169, 172, 173, 149, 151, 162, 194, 194, 143, 254, 252, 169, 232, 186, 136, 139, 139, 254, 252, 141, 189, 245, 136, 250, 141, 239, 250, 245, 142, 254, 159, 143, 254, 252, 169, 232, 140, 139, 252, 248, 143, 250, 245, 142, 254, 144, 194, 132, 194, 143, 254, 252, 169, 232, 253, 140, 141, 248, 143, 250, 245, 142, 254, 232, 164, 232, 140, 139, 252, 248, 143, 250, 245, 142, 254, 162, 194, 194, 242, 255, 232, 159, 140, 139, 252, 248, 143, 250, 245, 142, 254, 149, 129, 232, 163, 232, 151, 149, 172, 144, 194, 253, 140, 141, 248, 143, 250, 245, 142, 254, 149, 129, 232, 164, 232, 140, 139, 252, 248, 143, 250, 245, 142, 254, 149, 129, 232, 145, 232, 169, 172, 173, 149, 151, 232, 150, 232, 169, 172, 172, 149, 151, 162, 194, 254, 245, 140, 254, 194, 253, 140, 141, 248, 143, 250, 245, 142, 254, 149, 129, 232, 164, 232, 159, 140, 139, 252, 248, 143, 250, 245, 142, 254, 149, 129, 232, 148, 232, 168, 149, 151, 232, 150, 232, 169, 172, 173, 149, 151, 144, 232, 145, 232, 169, 172, 173, 149, 151, 232, 150, 232, 169, 172, 172, 149, 151, 162, 194, 242, 255, 232, 159, 140, 139, 252, 248, 143, 250, 245, 142, 254, 149, 130, 232, 163, 232, 151, 149, 172, 144, 194, 253, 140, 141, 248, 143, 250, 245, 142, 254, 149, 130, 232, 164, 232, 140, 139, 252, 248, 143, 250, 245, 142, 254, 149, 130, 232, 145, 232, 169, 172, 173, 149, 151, 232, 150, 232, 169, 172, 172, 149, 151, 162, 194, 254, 245, 140, 254, 194, 253, 140, 141, 248, 143, 250, 245, 142, 254, 149, 130, 232, 164, 232, 159, 140, 139, 252, 248, 143, 250, 245, 142, 254, 149, 130, 232, 148, 232, 168, 149, 151, 232, 150, 232, 169, 172, 173, 149, 151, 144, 232, 145, 232, 169, 172, 173, 149, 151, 232, 150, 232, 169, 172, 172, 149, 151, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 253, 140, 141, 248, 143, 250, 245, 142, 254, 162, 194, 134, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 194, 242, 255, 232, 159, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 144, 144, 232, 133, 133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 144, 144, 232, 133, 133, 194, 143, 250, 245, 242, 253, 248, 255, 245, 250, 240, 232, 164, 164, 232, 151, 144, 194, 132, 194, 240, 245, 248, 
        189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 143, 254, 252, 171, 232, 141, 250, 251, 245, 254, 248, 143, 250, 245, 142, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 128, 250, 139, 137, 248, 141, 250, 251, 245, 254, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 242, 254, 128, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 143, 254, 252, 169, 232, 253, 129, 248, 143, 250, 245, 142, 254, 232, 164, 232, 141, 250, 251, 245, 254, 248, 143, 250, 245, 142, 254, 149, 139, 240, 162, 194, 143, 254, 252, 169, 232, 253, 130, 248, 143, 250, 245, 142, 254, 232, 164, 232, 141, 250, 251, 245, 254, 248, 143, 250, 245, 142, 254, 149, 251, 250, 162, 194, 242, 255, 232, 159, 252, 136, 139, 139, 254, 252, 141, 248, 255, 245, 136, 250, 141, 232, 152, 164, 232, 151, 144, 194, 132, 194, 253, 129, 248, 143, 250, 245, 142, 254, 232, 164, 232, 186, 136, 139, 139, 254, 252, 141, 189, 245, 136, 250, 141, 239, 250, 245, 142, 254, 159, 253, 129, 248, 143, 250, 245, 142, 254, 144, 162, 194, 253, 130, 248, 143, 250, 245, 142, 254, 232, 164, 232, 186, 136, 139, 139, 254, 252, 141, 189, 245, 136, 250, 141, 239, 250, 245, 142, 254, 159, 253, 130, 248, 143, 250, 245, 142, 254, 144, 162, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 253, 129, 232, 164, 232, 159, 253, 129, 248, 143, 250, 245, 142, 254, 149, 129, 232, 146, 232, 253, 129, 248, 143, 250, 245, 142, 254, 149, 130, 232, 145, 232, 242, 247, 143, 248, 169, 172, 173, 232, 148, 232, 151, 149, 172, 144, 232, 145, 232, 128, 250, 139, 137, 248, 143, 250, 245, 142, 254, 248, 255, 250, 252, 141, 136, 139, 162, 194, 255, 245, 136, 250, 141, 232, 253, 130, 232, 164, 232, 159, 253, 130, 248, 143, 250, 245, 142, 254, 149, 129, 232, 146, 232, 253, 130, 248, 143, 250, 245, 142, 254, 149, 130, 232, 145, 232, 242, 247, 143, 248, 169, 172, 173, 232, 148, 232, 151, 149, 172, 144, 232, 145, 232, 128, 250, 139, 137, 248, 143, 250, 245, 142, 254, 248, 255, 250, 252, 141, 136, 139, 162, 194, 194, 143, 254, 252, 169, 232, 140, 241, 242, 255, 141, 248, 143, 254, 252, 141, 136, 139, 232, 164, 232, 143, 254, 252, 169, 159, 151, 149, 151, 144, 162, 194, 242, 255, 232, 159, 139, 136, 141, 250, 141, 242, 136, 247, 232, 164, 164, 232, 151, 144, 194, 140, 241, 242, 255, 141, 248, 143, 254, 252, 141, 136, 139, 232, 164, 232, 143, 254, 252, 169, 159, 253, 129, 147, 232, 253, 130, 144, 162, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 139, 136, 141, 250, 141, 242, 136, 247, 232, 164, 164, 232, 168, 144, 194, 140, 241, 242, 255, 141, 248, 143, 254, 252, 141, 136, 139, 232, 164, 232, 143, 254, 252, 169, 159, 253, 130, 147, 232, 148, 253, 129, 144, 162, 194, 254, 245, 140, 254, 232, 242, 255, 232, 159, 139, 136, 141, 250, 141, 242, 136, 247, 232, 164, 164, 232, 169, 144, 194, 140, 241, 242, 255, 141, 248, 143, 254, 252, 141, 136, 139, 232, 164, 232, 143, 254, 252, 169, 159, 148, 253, 129, 147, 232, 148, 253, 130, 144, 162, 194, 254, 245, 140, 254, 194, 140, 241, 242, 255, 141, 248, 143, 254, 252, 141, 136, 139, 232, 164, 232, 143, 254, 252, 169, 159, 148, 253, 130, 147, 232, 253, 129, 144, 162, 194, 194, 242, 255, 232, 159, 143, 254, 139, 141, 242, 252, 250, 245, 248, 255, 245, 242, 137, 232, 152, 164, 232, 151, 144, 194, 140, 241, 242, 255, 141, 248, 143, 254, 252, 141, 136, 139, 149, 130, 232, 164, 232, 148, 140, 241, 242, 255, 141, 248, 143, 254, 252, 141, 136, 139, 149, 130, 162, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 146, 232, 140, 241, 242, 255, 141, 248, 143, 254, 252, 141, 136, 139, 144, 162, 194, 134, 194, 134, 194};
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25658a = {194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 248, 143, 242, 254, 128, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 139, 136, 242, 248, 128, 242, 253, 141, 241, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 139, 136, 242, 248, 241, 254, 242, 240, 241, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 139, 136, 242, 248, 140, 141, 250, 139, 141, 248, 129, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 139, 136, 242, 248, 140, 141, 250, 139, 141, 248, 130, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 143, 242, 254, 128, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 143, 242, 254, 128, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 143, 242, 254, 128, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 148, 232, 139, 136, 242, 248, 140, 141, 250, 139, 141, 248, 129, 144, 232, 150, 232, 139, 136, 242, 248, 128, 242, 253, 141, 241, 162, 194, 194, 143, 242, 254, 128, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 159, 242, 247, 137, 142, 141, 248, 143, 242, 254, 128, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 148, 232, 139, 136, 242, 248, 140, 141, 250, 139, 141, 248, 130, 144, 232, 150, 232, 139, 136, 242, 248, 241, 254, 242, 240, 241, 141, 162, 194, 194, 134, 194};
    }

    public CLMakeupLiveFaceReshapeFilter(boolean z) {
        super(CLMakeupLiveDecode.a(b.f25658a), CLMakeupLiveDecode.a(a.f25657a));
        this.o = new Object();
        this.p = new LiveFaceReshapeMetadata();
        this.q = 90;
        this.t = false;
        this.F = -1;
        this.s = fc.v(ByteBuffer.allocateDirect(32));
        this.t = z;
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void d() {
        float[] fArr;
        synchronized (this.o) {
            try {
                this.s.clear();
                FloatBuffer floatBuffer = this.s;
                float[] fArr2 = I;
                int i2 = this.p.rotation;
                int i3 = this.q;
                int i4 = 3;
                if (i2 == (i3 + Sink.ORIENTATION_270) % 360) {
                    fArr = new float[]{fArr2[4], fArr2[5], fArr2[0], fArr2[1], fArr2[6], fArr2[7], fArr2[2], fArr2[3]};
                } else if (i2 == (i3 + Sink.ORIENTATION_180) % 360) {
                    fArr = new float[]{fArr2[6], fArr2[7], fArr2[4], fArr2[5], fArr2[2], fArr2[3], fArr2[0], fArr2[1]};
                } else {
                    fArr = i2 == (i3 + 90) % 360 ? new float[]{fArr2[2], fArr2[3], fArr2[6], fArr2[7], fArr2[0], fArr2[1], fArr2[4], fArr2[5]} : new float[]{fArr2[0], fArr2[1], fArr2[2], fArr2[3], fArr2[4], fArr2[5], fArr2[6], fArr2[7]};
                }
                floatBuffer.put(fArr);
                this.s.position(0);
                GLES20.glVertexAttribPointer(this.r, 2, 5126, false, 0, (Buffer) this.s);
                GLES20.glEnableVertexAttribArray(this.r);
                GLES20.glUniform1i(this.u, this.p.is_valid ? 1 : 0);
                LiveFaceReshapeMetadata liveFaceReshapeMetadata = this.p;
                if (liveFaceReshapeMetadata.is_valid) {
                    int i5 = liveFaceReshapeMetadata.rotation - this.q;
                    if (i5 < 0) {
                        i5 += 360;
                    }
                    if (i5 == 90) {
                        i4 = 1;
                    } else if (i5 == 180) {
                        i4 = 2;
                    } else if (i5 != 270) {
                        i4 = 0;
                    }
                    GLES20.glUniform1i(this.v, i4);
                    GLES20.glUniform1i(this.w, 1);
                    GLES20.glUniform1f(this.x, this.p.warp_value_factor);
                    GLES20.glUniform1i(this.y, this.t ? 1 : 0);
                    float fMax = Math.max(1, this.p.view_frame_width);
                    float fMax2 = Math.max(1, this.p.view_frame_height);
                    GLES20.glUniform1f(this.z, this.p.view_frame_roi_width / fMax);
                    GLES20.glUniform1f(this.A, this.p.view_frame_roi_height / fMax2);
                    GLES20.glUniform1f(this.B, this.p.view_frame_roi_start_x / fMax);
                    GLES20.glUniform1f(this.C, this.p.view_frame_roi_start_y / fMax2);
                    GLES20.glUniform2fv(this.D, 1, this.m, 0);
                    GLES20.glUniform2fv(this.E, 1, this.n, 0);
                    if (this.F != -1) {
                        GLES20.glActiveTexture(33986);
                        GLES20.glBindTexture(3553, this.F);
                        GLES20.glUniform1i(this.G, 2);
                        LiveFaceReshapeMetadata liveFaceReshapeMetadata2 = this.p;
                        GLES20.glTexImage2D(3553, 0, 6408, liveFaceReshapeMetadata2.table_width, liveFaceReshapeMetadata2.table_height, 0, 6408, 5121, this.H);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j(LiveFaceReshapeMetadata liveFaceReshapeMetadata) {
        synchronized (this.o) {
            try {
                this.p.CopyScalar(liveFaceReshapeMetadata);
                if (liveFaceReshapeMetadata.warp_table != null) {
                    int i2 = (liveFaceReshapeMetadata.table_width * liveFaceReshapeMetadata.table_height) << 2;
                    ByteBuffer byteBuffer = this.H;
                    if (byteBuffer == null || byteBuffer.capacity() != i2) {
                        this.H = ByteBuffer.allocate(i2);
                    }
                    this.H.clear();
                    this.H.put(liveFaceReshapeMetadata.warp_table, 0, i2);
                    this.H.position(0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        synchronized (this.o) {
            try {
                int i2 = this.F;
                if (i2 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i2}, 0);
                    this.F = -1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        this.r = GLES20.glGetAttribLocation(getProgram(), "input_view_texture_coordinate");
        this.G = GLES20.glGetUniformLocation(getProgram(), "warp_table_texture");
        this.u = GLES20.glGetUniformLocation(getProgram(), "valid_flag");
        this.v = GLES20.glGetUniformLocation(getProgram(), "rotation");
        this.w = GLES20.glGetUniformLocation(getProgram(), "vertical_flip");
        this.x = GLES20.glGetUniformLocation(getProgram(), "warp_value_factor");
        this.y = GLES20.glGetUniformLocation(getProgram(), "correct_float");
        this.z = GLES20.glGetUniformLocation(getProgram(), "roi_width");
        this.A = GLES20.glGetUniformLocation(getProgram(), "roi_height");
        this.B = GLES20.glGetUniformLocation(getProgram(), "roi_start_x");
        this.C = GLES20.glGetUniformLocation(getProgram(), "roi_start_y");
        this.D = GLES20.glGetUniformLocation(getProgram(), "grid_roi_start");
        this.E = GLES20.glGetUniformLocation(getProgram(), "grid_roi_end");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i2 = iArr[0];
        this.F = i2;
        GLES20.glBindTexture(3553, i2);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        this.g = i2;
        this.f25446h = i3;
    }
}
