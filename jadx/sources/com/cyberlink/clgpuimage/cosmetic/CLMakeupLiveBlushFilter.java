package com.cyberlink.clgpuimage.cosmetic;

import android.graphics.PointF;
import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLiveDecode;
import com.cyberlink.clgpuimage.GPUImageFilter;
import defpackage.fc;
import defpackage.tr;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public final class CLMakeupLiveBlushFilter extends GPUImageFilter {
    public static final float[] N = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    public static final char[] O = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 246, 137, 245, 250, 141, 254, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 179, 254, 255, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 235, 242, 240, 241, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 245, 254, 255, 141, 248, 251, 245, 142, 140, 241, 248, 139, 136, 242, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 139, 242, 240, 241, 141, 248, 251, 245, 142, 140, 241, 248, 139, 136, 242, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 245, 254, 255, 141, 248, 251, 245, 142, 140, 241, 248, 140, 141, 139, 254, 141, 252, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 139, 242, 240, 241, 141, 248, 251, 245, 142, 140, 241, 248, 140, 141, 139, 254, 141, 252, 241, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 186, 136, 140, 248, 236, 242, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 247, 254, 240, 236, 242, 247, 248, 186, 136, 140, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 235, 136, 141, 250, 141, 254, 186, 254, 247, 141, 254, 139, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 143, 254, 252, 169, 232, 141, 246, 137, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 246, 137, 245, 250, 141, 254, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 232, 148, 232, 235, 136, 141, 250, 141, 254, 186, 254, 247, 141, 254, 139, 162, 194, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 235, 136, 141, 250, 141, 254, 186, 254, 247, 141, 254, 139, 232, 146, 232, 143, 254, 252, 169, 159, 141, 246, 137, 149, 129, 147, 232, 141, 246, 137, 149, 129, 144, 145, 186, 136, 140, 248, 236, 242, 247, 232, 146, 232, 143, 254, 252, 169, 159, 141, 246, 137, 149, 130, 147, 232, 141, 246, 137, 149, 130, 144, 145, 247, 254, 240, 236, 242, 247, 248, 186, 136, 140, 162, 194, 179, 254, 255, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 159, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 245, 254, 255, 141, 248, 251, 245, 142, 140, 241, 248, 139, 136, 242, 144, 145, 245, 254, 255, 141, 248, 251, 245, 142, 140, 241, 248, 140, 141, 139, 254, 141, 252, 241, 162, 194, 235, 242, 240, 241, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 159, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 139, 242, 240, 241, 141, 248, 251, 245, 142, 140, 241, 248, 139, 136, 242, 144, 145, 139, 242, 240, 241, 141, 248, 251, 245, 142, 140, 241, 248, 140, 141, 139, 254, 141, 252, 241, 162, 194, 179, 254, 255, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 168, 149, 151, 232, 148, 232, 179, 254, 255, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 162, 194, 235, 242, 240, 241, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 168, 149, 151, 232, 148, 232, 235, 242, 240, 241, 141, 
    185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 162, 194, 134, 194};
    public static final char[] P = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 245, 254, 255, 141, 248, 251, 245, 142, 140, 241, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 139, 242, 240, 241, 141, 248, 251, 245, 142, 140, 241, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 179, 254, 255, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 235, 242, 240, 241, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 251, 245, 142, 140, 241, 248, 140, 141, 139, 254, 247, 240, 141, 241, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 251, 245, 142, 140, 241, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 180, 242, 253, 248, 225, 248, 136, 255, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 143, 254, 252, 170, 232, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 162, 194, 242, 255, 232, 159, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 144, 144, 232, 133, 133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 136, 142, 139, 252, 254, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 245, 254, 255, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 245, 254, 255, 141, 248, 251, 245, 142, 140, 241, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 179, 254, 255, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 139, 242, 240, 241, 141, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 139, 242, 240, 241, 141, 248, 251, 245, 142, 140, 241, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 235, 242, 240, 241, 141, 185, 245, 142, 140, 241, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 232, 164, 232, 251, 245, 142, 140, 241, 248, 140, 141, 139, 254, 247, 240, 141, 241, 232, 145, 232, 246, 242, 129, 159, 250, 245, 137, 241, 250, 248, 245, 254, 255, 141, 147, 232, 250, 245, 137, 241, 250, 248, 139, 242, 240, 241, 141, 147, 232, 140, 141, 254, 137, 159, 180, 242, 253, 248, 225, 248, 136, 255, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 147, 232, 181, 136, 235, 136, 141, 250, 141, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 144, 144, 162, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 251, 245, 142, 140, 241, 248, 252, 136, 245, 136, 139, 147, 232, 250, 245, 137, 241, 250, 144, 162, 194, 240, 245, 248, 189, 139, 
    250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194};
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
    public int L;
    public final CLMakeupLiveFilter.LiveDynamicRangeMetadata M;
    public final Object o;
    public int p;
    public final FloatBuffer q;
    public final float r;
    public final float[] s;
    public final float[] t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public static class LiveBlushMakeupdata {
        public float m_cos_val;
        public boolean m_is_flipped;
        public int m_rotation;
        public float m_sin_val;
        public PointF m_center = new PointF();
        public a m_left_blush_roi = new a();
        public a m_right_blush_roi = new a();

        public void ComputeData(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4, PointF pointF5, PointF pointF6, PointF pointF7, PointF pointF8, PointF pointF9, PointF pointF10) {
            double d = -Math.atan2(pointF10.y - pointF5.y, pointF10.x - pointF5.x);
            this.m_cos_val = (float) Math.cos(d);
            float fSin = (float) Math.sin(d);
            this.m_sin_val = fSin;
            PointF pointF11 = this.m_center;
            pointF11.x = (pointF2.x + pointF7.x) * 0.5f;
            pointF11.y = (pointF2.y + pointF7.y) * 0.5f;
            a aVar = this.m_left_blush_roi;
            aVar.f25577a = Float.MAX_VALUE;
            aVar.f25578b = Float.MAX_VALUE;
            aVar.f25579c = Float.MIN_VALUE;
            aVar.d = Float.MIN_VALUE;
            aVar.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, fSin, pointF11, pointF));
            this.m_left_blush_roi.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF2));
            this.m_left_blush_roi.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF3));
            this.m_left_blush_roi.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF4));
            this.m_left_blush_roi.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF5));
            a aVar2 = this.m_right_blush_roi;
            aVar2.f25577a = Float.MAX_VALUE;
            aVar2.f25578b = Float.MAX_VALUE;
            aVar2.f25579c = Float.MIN_VALUE;
            aVar2.d = Float.MIN_VALUE;
            aVar2.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF6));
            this.m_right_blush_roi.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF7));
            this.m_right_blush_roi.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF8));
            this.m_right_blush_roi.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF9));
            this.m_right_blush_roi.a(CLMakeupLiveBlushFilter.j(this.m_cos_val, this.m_sin_val, this.m_center, pointF10));
        }

        public void Copy(LiveBlushMakeupdata liveBlushMakeupdata) {
            this.m_cos_val = liveBlushMakeupdata.m_cos_val;
            this.m_sin_val = liveBlushMakeupdata.m_sin_val;
            PointF pointF = this.m_center;
            PointF pointF2 = liveBlushMakeupdata.m_center;
            pointF.x = pointF2.x;
            pointF.y = pointF2.y;
            a aVar = this.m_left_blush_roi;
            a aVar2 = liveBlushMakeupdata.m_left_blush_roi;
            aVar.f25577a = aVar2.f25577a;
            aVar.f25579c = aVar2.f25579c;
            aVar.f25578b = aVar2.f25578b;
            aVar.d = aVar2.d;
            a aVar3 = this.m_right_blush_roi;
            a aVar4 = liveBlushMakeupdata.m_right_blush_roi;
            aVar3.f25577a = aVar4.f25577a;
            aVar3.f25579c = aVar4.f25579c;
            aVar3.f25578b = aVar4.f25578b;
            aVar3.d = aVar4.d;
            this.m_rotation = liveBlushMakeupdata.m_rotation;
            this.m_is_flipped = liveBlushMakeupdata.m_is_flipped;
        }

        public void SetBlushFeaturePts(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4, PointF pointF5, PointF pointF6, PointF pointF7, PointF pointF8, PointF pointF9, PointF pointF10) {
            ComputeData(CLMakeupLiveBlushFilter.k(pointF), CLMakeupLiveBlushFilter.k(pointF2), CLMakeupLiveBlushFilter.k(pointF3), CLMakeupLiveBlushFilter.k(pointF4), CLMakeupLiveBlushFilter.k(pointF5), CLMakeupLiveBlushFilter.k(pointF6), CLMakeupLiveBlushFilter.k(pointF7), CLMakeupLiveBlushFilter.k(pointF8), CLMakeupLiveBlushFilter.k(pointF9), CLMakeupLiveBlushFilter.k(pointF10));
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f25577a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f25578b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f25579c;
        public float d;

        public final void a(PointF pointF) {
            this.f25577a = Math.min(this.f25577a, pointF.x);
            this.f25578b = Math.min(this.f25578b, pointF.y);
            this.f25579c = Math.max(this.f25579c, pointF.x);
            this.d = Math.max(this.d, pointF.y);
        }
    }

    public CLMakeupLiveBlushFilter() {
        super(CLMakeupLiveDecode.a(O), CLMakeupLiveDecode.a(P));
        this.o = new Object();
        this.r = 1.0f;
        this.s = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.t = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.A = -1;
        this.E = -1;
        this.L = 90;
        this.M = new CLMakeupLiveFilter.LiveDynamicRangeMetadata();
        this.q = fc.v(ByteBuffer.allocateDirect(32));
    }

    public static PointF j(float f2, float f3, PointF pointF, PointF pointF2) {
        PointF pointF3 = new PointF();
        float f4 = pointF.x;
        float fA = tr.a(pointF2.x, f4, f2, f4);
        float f5 = pointF2.y;
        float f6 = pointF.y;
        pointF3.x = ((f5 - f6) * (-f3)) + fA;
        pointF3.y = tr.a(f5, f6, f2, tr.a(pointF2.x, pointF.x, f3, f6));
        return pointF3;
    }

    public static PointF k(PointF pointF) {
        return new PointF(pointF.x, 1.0f - pointF.y);
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void d() {
        float[] fArr;
        this.q.clear();
        FloatBuffer floatBuffer = this.q;
        float[] fArr2 = N;
        int i2 = this.K;
        int i3 = this.L;
        if (i2 == (i3 + Sink.ORIENTATION_270) % 360) {
            fArr = new float[]{fArr2[4], fArr2[5], fArr2[0], fArr2[1], fArr2[6], fArr2[7], fArr2[2], fArr2[3]};
        } else if (i2 == (i3 + Sink.ORIENTATION_180) % 360) {
            fArr = new float[]{fArr2[6], fArr2[7], fArr2[4], fArr2[5], fArr2[2], fArr2[3], fArr2[0], fArr2[1]};
        } else {
            fArr = i2 == (i3 + 90) % 360 ? new float[]{fArr2[2], fArr2[3], fArr2[6], fArr2[7], fArr2[0], fArr2[1], fArr2[4], fArr2[5]} : new float[]{fArr2[0], fArr2[1], fArr2[2], fArr2[3], fArr2[4], fArr2[5], fArr2[6], fArr2[7]};
        }
        floatBuffer.put(fArr);
        this.q.position(0);
        GLES20.glVertexAttribPointer(this.p, 2, 5126, false, 0, (Buffer) this.q);
        GLES20.glEnableVertexAttribArray(this.p);
        GLES20.glUniform1f(this.u, this.r);
        synchronized (this.o) {
            for (int i4 = 0; i4 < 3; i4++) {
                try {
                    float[] fArr3 = this.t;
                    CLMakeupLiveFilter.LiveDynamicRangeMetadata liveDynamicRangeMetadata = this.M;
                    float f2 = liveDynamicRangeMetadata.min_rgb[i4];
                    fArr3[i4] = ((liveDynamicRangeMetadata.max_rgb[i4] - f2) * this.s[i4]) + f2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        GLES20.glUniform3fv(this.v, 1, FloatBuffer.wrap(this.t));
        if (this.A != -1) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, this.A);
            GLES20.glUniform1i(this.B, 3);
        }
        if (this.E != -1) {
            GLES20.glActiveTexture(33988);
            GLES20.glBindTexture(3553, this.E);
            GLES20.glUniform1i(this.F, 4);
        }
    }

    public final void l(LiveBlushMakeupdata liveBlushMakeupdata, CLMakeupLiveFilter.LiveDynamicRangeMetadata liveDynamicRangeMetadata) {
        synchronized (this.o) {
            this.M.Copy(liveDynamicRangeMetadata);
            i(this.z, new PointF(-liveBlushMakeupdata.m_sin_val, liveBlushMakeupdata.m_cos_val));
            i(this.y, new PointF(liveBlushMakeupdata.m_cos_val, liveBlushMakeupdata.m_sin_val));
            i(this.x, liveBlushMakeupdata.m_center);
            setFloat(this.w, liveBlushMakeupdata.m_center.x);
            int i2 = this.D;
            a aVar = liveBlushMakeupdata.m_left_blush_roi;
            i(i2, new PointF(1.0f / (aVar.f25579c - aVar.f25577a), 1.0f / (aVar.d - aVar.f25578b)));
            int i3 = this.C;
            a aVar2 = liveBlushMakeupdata.m_left_blush_roi;
            i(i3, new PointF(aVar2.f25577a, aVar2.f25578b));
            int i4 = this.H;
            a aVar3 = liveBlushMakeupdata.m_right_blush_roi;
            i(i4, new PointF(1.0f / (aVar3.f25579c - aVar3.f25577a), 1.0f / (aVar3.d - aVar3.f25578b)));
            int i5 = this.G;
            a aVar4 = liveBlushMakeupdata.m_right_blush_roi;
            i(i5, new PointF(aVar4.f25577a, aVar4.f25578b));
            GLES20.glUniform2fv(this.I, 1, this.m, 0);
            GLES20.glUniform2fv(this.J, 1, this.n, 0);
            this.K = liveBlushMakeupdata.m_rotation;
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        this.p = GLES20.glGetAttribLocation(getProgram(), "inputTemplateTextureCoordinate");
        this.u = GLES20.glGetUniformLocation(getProgram(), "blush_strength");
        this.v = GLES20.glGetUniformLocation(getProgram(), "blush_color");
        this.w = GLES20.glGetUniformLocation(getProgram(), "Mid_X_of_left_right");
        this.x = GLES20.glGetUniformLocation(getProgram(), "RotateCenter");
        this.y = GLES20.glGetUniformLocation(getProgram(), "Cos_Sin");
        this.z = GLES20.glGetUniformLocation(getProgram(), "negSin_Cos");
        this.B = GLES20.glGetUniformLocation(getProgram(), "left_blush_texture");
        this.C = GLES20.glGetUniformLocation(getProgram(), "left_blush_roi");
        this.D = GLES20.glGetUniformLocation(getProgram(), "left_blush_stretch");
        this.F = GLES20.glGetUniformLocation(getProgram(), "right_blush_texture");
        this.G = GLES20.glGetUniformLocation(getProgram(), "right_blush_roi");
        this.H = GLES20.glGetUniformLocation(getProgram(), "right_blush_stretch");
        this.I = GLES20.glGetUniformLocation(getProgram(), "grid_roi_start");
        this.J = GLES20.glGetUniformLocation(getProgram(), "grid_roi_end");
    }
}
