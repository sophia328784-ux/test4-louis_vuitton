package com.cyberlink.clgpuimage.cosmetic;

import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLiveDecode;
import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.cyberlink.clgpuimage.OpenGlUtils;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public class CLMakeupLiveEyeFilter extends CLMakeupLive3DFilter {
    public static final float[] G7 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};
    public static final char[] H7 = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 246, 137, 245, 250, 141, 254, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 255, 245, 242, 137, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 248, 252, 136, 140, 248, 140, 242, 247, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 250, 247, 250, 245, 130, 131, 242, 247, 240, 248, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 248, 241, 254, 242, 240, 241, 141, 248, 242, 247, 248, 137, 242, 129, 254, 245, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 248, 138, 142, 250, 141, 242, 136, 247, 248, 250, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 248, 138, 142, 250, 141, 242, 136, 247, 248, 251, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 248, 138, 142, 250, 141, 242, 136, 247, 248, 252, 162, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 143, 254, 252, 169, 232, 139, 254, 247, 253, 254, 139, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 246, 137, 245, 250, 141, 254, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 232, 145, 232, 250, 247, 250, 245, 130, 131, 242, 247, 240, 248, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 248, 241, 254, 242, 240, 241, 141, 248, 242, 247, 248, 137, 242, 129, 254, 245, 162, 194, 194, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 232, 164, 232, 139, 254, 247, 253, 254, 139, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 145, 232, 254, 250, 139, 248, 138, 142, 250, 141, 242, 136, 247, 248, 250, 232, 146, 232, 139, 254, 247, 253, 254, 139, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 145, 232, 254, 250, 139, 248, 138, 142, 250, 141, 242, 136, 247, 248, 251, 232, 146, 232, 254, 250, 139, 248, 138, 142, 250, 141, 242, 136, 247, 248, 252, 162, 194, 194, 255, 245, 136, 250, 141, 232, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 255, 245, 242, 137, 137, 254, 253, 248, 129, 232, 164, 232, 246, 242, 129, 159, 242, 247, 137, 142, 141, 237, 254, 246, 137, 245, 250, 141, 254, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 147, 232, 168, 149, 151, 232, 148, 232, 242, 247, 137, 142, 141, 237, 254, 246, 137, 245, 250, 141, 254, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 147, 232, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 255, 245, 242, 137, 144, 162, 194, 143, 254, 252, 169, 232, 141, 254, 246, 137, 245, 250, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 248, 242, 247, 248, 137, 242, 129, 254, 245, 232, 164, 232, 143, 254, 252, 169, 159, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 255, 245, 242, 137, 137, 254, 253, 248, 129, 147, 232, 242, 247, 137, 142, 141, 237, 254, 246, 137, 245, 250, 141, 254, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 144, 232, 145, 232, 250, 247, 250, 245, 130, 131, 242, 247, 240, 248, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 248, 241, 254, 242, 240, 241, 141, 248, 242, 247, 248, 137, 242, 129, 254, 245, 149, 129, 130, 162, 194, 245, 254, 143, 
    254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 248, 252, 136, 140, 248, 140, 242, 247, 149, 129, 232, 145, 232, 141, 254, 246, 137, 245, 250, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 248, 242, 247, 248, 137, 242, 129, 254, 245, 149, 129, 232, 148, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 248, 252, 136, 140, 248, 140, 242, 247, 149, 130, 232, 145, 232, 141, 254, 246, 137, 245, 250, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 248, 242, 247, 248, 137, 242, 129, 254, 245, 149, 130, 162, 194, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 248, 252, 136, 140, 248, 140, 242, 247, 149, 130, 232, 145, 232, 141, 254, 246, 137, 245, 250, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 248, 242, 247, 248, 137, 242, 129, 254, 245, 149, 129, 232, 146, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 248, 252, 136, 140, 248, 140, 242, 247, 149, 129, 232, 145, 232, 141, 254, 246, 137, 245, 250, 141, 254, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 248, 242, 247, 248, 137, 242, 129, 254, 245, 149, 130, 162, 194, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 232, 150, 164, 232, 250, 247, 250, 245, 130, 131, 242, 247, 240, 248, 255, 139, 250, 246, 254, 248, 128, 242, 253, 141, 241, 248, 241, 254, 242, 240, 241, 141, 248, 242, 247, 248, 137, 242, 129, 254, 245, 149, 129, 130, 162, 194, 134, 194};
    public static final char[] I7 = {250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 250, 141, 141, 139, 242, 251, 142, 141, 254, 232, 143, 254, 252, 171, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 162, 194, 194, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 194, 132, 194, 194, 240, 245, 248, 233, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 137, 136, 140, 242, 141, 242, 136, 247, 162, 194, 194, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 242, 247, 137, 142, 141, 237, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 162, 194, 194, 194, 194, 143, 254, 252, 169, 232, 139, 136, 242, 248, 128, 248, 241, 232, 164, 232, 143, 254, 252, 169, 159, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 130, 232, 148, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 129, 147, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 128, 232, 148, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 131, 144, 162, 194, 194, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 130, 232, 148, 232, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 139, 136, 242, 149, 129, 131, 144, 232, 150, 232, 139, 136, 242, 248, 128, 248, 241, 149, 129, 130, 162, 194, 194, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 164, 232, 168, 149, 151, 232, 148, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 162, 194, 194, 134, 194, 194};
    public static final char[] J7 = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 140, 180, 250, 244, 254, 142, 137, 237, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 246, 250, 244, 254, 142, 137, 180, 250, 140, 244, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 248, 140, 241, 136, 128, 248, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 246, 250, 140, 244, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 248, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 246, 250, 140, 244, 248, 143, 250, 245, 242, 253, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 232, 132, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 140, 244, 242, 247, 248, 137, 139, 136, 251, 232, 164, 232, 168, 149, 151, 162, 194, 242, 255, 232, 159, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 165, 164, 232, 151, 149, 151, 232, 157, 157, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 163, 164, 232, 168, 149, 151, 232, 157, 157, 194, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 165, 164, 232, 151, 149, 151, 232, 157, 157, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 232, 163, 164, 232, 168, 149, 151, 232, 157, 157, 194, 242, 140, 248, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 246, 250, 140, 244, 248, 143, 250, 245, 242, 253, 232, 165, 232, 151, 144, 194, 132, 194, 140, 244, 242, 247, 248, 137, 139, 136, 251, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 246, 250, 244, 254, 142, 137, 180, 250, 140, 244, 237, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 244, 254, 142, 137, 248, 246, 250, 140, 244, 248, 141, 254, 129, 141, 142, 139, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 134, 194, 242, 255, 232, 159, 242, 140, 248, 140, 241, 136, 128, 248, 246, 250, 244, 254, 142, 137, 248, 139, 254, 240, 242, 136, 247, 248, 246, 250, 140, 244, 232, 165, 232, 151, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 136, 142, 139, 252, 254, 149, 139, 232, 146, 232, 140, 244, 242, 247, 248, 137, 139, 136, 251, 232, 145, 232, 151, 149, 170, 147, 232, 140, 136, 142, 139, 252, 254, 149, 240, 147, 232, 140, 136, 142, 139, 252, 254, 149, 251, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 246, 250, 244, 254, 142, 137, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 140, 180, 250, 244, 254, 142, 137, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 246, 250, 244, 254, 142, 137, 147, 232, 140, 244, 242, 247, 248, 137, 139, 136, 251, 144, 162, 194, 134, 194};
    public int A6;
    public int A7;
    public int B6;
    public int B7;
    public int C5;
    public int C6;
    public int C7;
    public FloatBuffer D5;
    public int D6;
    public int D7;
    public int E5;
    public int E6;
    public int E7;
    public int F5;
    public int F6;
    public CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata F7;
    public float G5;
    public int G6;
    public int H5;
    public int H6;
    public int I5;
    public boolean I6;
    public int J5;
    public boolean J6;
    public int K5;
    public boolean K6;
    public float[] L5;
    public int L6;
    public float[] M5;
    public int M6;
    public int N5;
    public int N6;
    public int O5;
    public float O6;
    public int P5;
    public float P6;
    public float[] Q5;
    public int Q6;
    public float[] R5;
    public int R6;
    public int S5;
    public int S6;
    public int T5;
    public int T6;
    public int U5;
    public int U6;
    public PointF[] V5;
    public int V6;
    public PointF[] W5;
    public int W6;
    public int X5;
    public int X6;
    public int Y5;
    public int Y6;
    public int[] Z5;
    public int Z6;
    public int[] a6;
    public int a7;
    public int b6;
    public int b7;
    public int c6;
    public int c7;
    public int d6;
    public int d7;
    public int e6;
    public Object e7;
    public int f6;
    public LiveEyeMakeupMetadata f7;
    public int g6;
    public CLMakeupLiveFilter.LiveDynamicRangeMetadata g7;
    public int h6;
    public float h7;
    public int i6;
    public float i7;
    public int j6;
    public CLShare3DRelatedClasses.Pass1BufferData j7;
    public int k6;
    public CLShare3DRelatedClasses.Pass1BufferData k7;
    public Rect l6;
    public CLShare3DRelatedClasses.Pass1BufferData l7;
    public Rect m6;
    public CLShare3DRelatedClasses.Pass1BufferData m7;
    public Rect n6;
    public boolean n7;
    public int o6;
    public int o7;
    public int p6;
    public float[] p7;
    public int q6;
    public int q7;
    public int r6;
    public int r7;
    public int s6;
    public int s7;
    public int t6;
    public int t7;
    public int u6;
    public int u7;
    public int v6;
    public int v7;
    public int w6;
    public int w7;
    public int x6;
    public float x7;
    public int y6;
    public int y7;
    public int z6;
    public int z7;

    public static class LiveEye3DMetadata {
        public static int brdf_lut_height;
        public static int brdf_lut_width;
        public static byte[] m_brdf_texture_buffer;
        public boolean is_flip;
        public int rotation;
        int vertex_array_size = 0;
        int normal_array_size = 0;
        int texcoord_array_size = 0;
        int tangent_array_size = 0;
        public boolean is_valid = false;
        public int num_triangles = 0;
        public float[] vertex_array = null;
        public float[] normal_array = null;
        public float[] texcoord_array = null;
        public float[] tangent_array = null;
        public boolean is_texcoord_changed = true;
        public float[] camera_matrix = new float[9];
        public float[] pnp_matrix = new float[12];
        public float[] normal_pnp_matrix = new float[16];

        public LiveEye3DMetadata() {
            brdf_lut_width = 0;
            brdf_lut_height = 0;
            m_brdf_texture_buffer = null;
        }

        public void AllocArray(int i2) {
            if (i2 <= 0) {
                this.num_triangles = 0;
                this.vertex_array_size = 0;
                this.normal_array_size = 0;
                this.texcoord_array_size = 0;
                this.tangent_array_size = 0;
                this.vertex_array = null;
                this.normal_array = null;
                this.texcoord_array = null;
                this.tangent_array = null;
                return;
            }
            if (this.num_triangles != i2) {
                this.num_triangles = i2;
                this.vertex_array_size = i2 * 9;
                this.normal_array_size = i2 * 9;
                this.texcoord_array_size = i2 * 6;
                this.tangent_array_size = i2 * 9;
                this.vertex_array = new float[i2 * 9];
                this.normal_array = new float[i2 * 9];
                this.texcoord_array = new float[i2 * 6];
                this.tangent_array = new float[i2 * 9];
            }
        }

        public void AllocateBrdfLutBuffer(int i2, int i3) {
            if (brdf_lut_width == i2 && brdf_lut_height == i3) {
                return;
            }
            brdf_lut_width = i2;
            brdf_lut_height = i3;
            m_brdf_texture_buffer = new byte[(i2 * i3) << 2];
        }

        public void Copy(LiveEye3DMetadata liveEye3DMetadata) {
            float[] fArr;
            boolean z = liveEye3DMetadata.is_valid;
            this.is_valid = z;
            if (!z) {
                AllocArray(0);
                return;
            }
            this.rotation = liveEye3DMetadata.rotation;
            this.is_flip = liveEye3DMetadata.is_flip;
            AllocArray(liveEye3DMetadata.num_triangles);
            if (liveEye3DMetadata.num_triangles > 0 && (fArr = liveEye3DMetadata.vertex_array) != null && liveEye3DMetadata.normal_array != null && liveEye3DMetadata.texcoord_array != null) {
                System.arraycopy(fArr, 0, this.vertex_array, 0, fArr.length);
                float[] fArr2 = liveEye3DMetadata.normal_array;
                System.arraycopy(fArr2, 0, this.normal_array, 0, fArr2.length);
                this.is_texcoord_changed = liveEye3DMetadata.is_texcoord_changed;
                if (liveEye3DMetadata.is_texcoord_changed) {
                    float[] fArr3 = liveEye3DMetadata.texcoord_array;
                    System.arraycopy(fArr3, 0, this.texcoord_array, 0, fArr3.length);
                }
                float[] fArr4 = liveEye3DMetadata.tangent_array;
                System.arraycopy(fArr4, 0, this.tangent_array, 0, fArr4.length);
                this.vertex_array_size = liveEye3DMetadata.vertex_array_size;
                this.normal_array_size = liveEye3DMetadata.normal_array_size;
                this.texcoord_array_size = liveEye3DMetadata.texcoord_array_size;
                this.tangent_array_size = liveEye3DMetadata.tangent_array_size;
            }
            System.arraycopy(liveEye3DMetadata.camera_matrix, 0, this.camera_matrix, 0, 9);
            System.arraycopy(liveEye3DMetadata.pnp_matrix, 0, this.pnp_matrix, 0, 12);
            System.arraycopy(liveEye3DMetadata.normal_pnp_matrix, 0, this.normal_pnp_matrix, 0, 16);
            if (brdf_lut_width <= 0 || brdf_lut_height <= 0) {
                return;
            }
            byte[] bArr = m_brdf_texture_buffer;
            System.arraycopy(bArr, 0, bArr, 0, bArr.length);
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

    public static class LiveEyeMakeupMetadata {
        int m_analyzing_frame_height;
        int m_analyzing_frame_width;
        float m_ear_line_distance_limit;
        float m_ear_line_equation_a;
        float m_ear_line_equation_b;
        float m_ear_line_equation_c;
        PointF[] m_eye_points = new PointF[4];
        public float m_eye_scale_left_to_right;
        public boolean m_is_flipped;
        public EyeMode m_mode;
        PointF[] m_oriented_eye_centers;
        PointF[] m_oriented_eye_points;
        float[] m_parabolic_polar_transform_bottom_left_dst_aligned_coeff;
        PointF m_parabolic_polar_transform_bottom_left_dst_center;
        float[] m_parabolic_polar_transform_bottom_left_src_aligned_coeff;
        PointF m_parabolic_polar_transform_bottom_left_src_center;
        float[] m_parabolic_polar_transform_bottom_right_dst_aligned_coeff;
        PointF m_parabolic_polar_transform_bottom_right_dst_center;
        float[] m_parabolic_polar_transform_bottom_right_src_aligned_coeff;
        PointF m_parabolic_polar_transform_bottom_right_src_center;
        float[] m_parabolic_polar_transform_top_left_dst_aligned_coeff;
        PointF m_parabolic_polar_transform_top_left_dst_center;
        float[] m_parabolic_polar_transform_top_left_src_aligned_coeff;
        PointF m_parabolic_polar_transform_top_left_src_center;
        float[] m_parabolic_polar_transform_top_right_dst_aligned_coeff;
        PointF m_parabolic_polar_transform_top_right_dst_center;
        float[] m_parabolic_polar_transform_top_right_src_aligned_coeff;
        PointF m_parabolic_polar_transform_top_right_src_center;
        public float m_ratio_of_actual_lower_lid_height_to_limited_height;
        public float m_ratio_of_actual_upper_lid_height_to_limited_height;
        public int m_rotation;
        float m_target_eye_lower_lid_luma;
        float m_target_level_orientation_cos;
        float m_target_level_orientation_sin;

        public enum EyeMode {
            NORMAL,
            BLINK
        }

        public LiveEyeMakeupMetadata() {
            for (int i2 = 0; i2 < 4; i2++) {
                this.m_eye_points[i2] = new PointF();
            }
            this.m_oriented_eye_points = new PointF[4];
            for (int i3 = 0; i3 < 4; i3++) {
                this.m_oriented_eye_points[i3] = new PointF();
            }
            this.m_oriented_eye_centers = new PointF[2];
            for (int i4 = 0; i4 < 2; i4++) {
                this.m_oriented_eye_centers[i4] = new PointF();
            }
            this.m_parabolic_polar_transform_top_left_src_center = new PointF();
            this.m_parabolic_polar_transform_top_left_dst_center = new PointF();
            this.m_parabolic_polar_transform_top_left_src_aligned_coeff = new float[2];
            this.m_parabolic_polar_transform_top_left_dst_aligned_coeff = new float[2];
            this.m_parabolic_polar_transform_top_right_src_center = new PointF();
            this.m_parabolic_polar_transform_top_right_dst_center = new PointF();
            this.m_parabolic_polar_transform_top_right_src_aligned_coeff = new float[2];
            this.m_parabolic_polar_transform_top_right_dst_aligned_coeff = new float[2];
            this.m_parabolic_polar_transform_bottom_left_src_center = new PointF();
            this.m_parabolic_polar_transform_bottom_left_dst_center = new PointF();
            this.m_parabolic_polar_transform_bottom_left_src_aligned_coeff = new float[2];
            this.m_parabolic_polar_transform_bottom_left_dst_aligned_coeff = new float[2];
            this.m_parabolic_polar_transform_bottom_right_src_center = new PointF();
            this.m_parabolic_polar_transform_bottom_right_dst_center = new PointF();
            this.m_parabolic_polar_transform_bottom_right_src_aligned_coeff = new float[2];
            this.m_parabolic_polar_transform_bottom_right_dst_aligned_coeff = new float[2];
            this.m_eye_scale_left_to_right = 1.0f;
            this.m_ear_line_equation_a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.m_ear_line_equation_b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.m_ear_line_equation_c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.m_ear_line_distance_limit = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        public void Copy(LiveEyeMakeupMetadata liveEyeMakeupMetadata) {
            this.m_target_eye_lower_lid_luma = liveEyeMakeupMetadata.m_target_eye_lower_lid_luma;
            this.m_analyzing_frame_width = liveEyeMakeupMetadata.m_analyzing_frame_width;
            this.m_analyzing_frame_height = liveEyeMakeupMetadata.m_analyzing_frame_height;
            this.m_target_level_orientation_cos = liveEyeMakeupMetadata.m_target_level_orientation_cos;
            this.m_target_level_orientation_sin = liveEyeMakeupMetadata.m_target_level_orientation_sin;
            for (int i2 = 0; i2 < 4; i2++) {
                PointF pointF = this.m_eye_points[i2];
                PointF pointF2 = liveEyeMakeupMetadata.m_eye_points[i2];
                pointF.x = pointF2.x;
                pointF.y = pointF2.y;
                PointF pointF3 = this.m_oriented_eye_points[i2];
                PointF pointF4 = liveEyeMakeupMetadata.m_oriented_eye_points[i2];
                pointF3.x = pointF4.x;
                pointF3.y = pointF4.y;
            }
            for (int i3 = 0; i3 < 2; i3++) {
                PointF pointF5 = this.m_oriented_eye_centers[i3];
                PointF pointF6 = liveEyeMakeupMetadata.m_oriented_eye_centers[i3];
                pointF5.x = pointF6.x;
                pointF5.y = pointF6.y;
            }
            PointF pointF7 = this.m_parabolic_polar_transform_top_left_src_center;
            PointF pointF8 = liveEyeMakeupMetadata.m_parabolic_polar_transform_top_left_src_center;
            pointF7.x = pointF8.x;
            pointF7.y = pointF8.y;
            PointF pointF9 = this.m_parabolic_polar_transform_top_left_dst_center;
            PointF pointF10 = liveEyeMakeupMetadata.m_parabolic_polar_transform_top_left_dst_center;
            pointF9.x = pointF10.x;
            pointF9.y = pointF10.y;
            for (int i4 = 0; i4 < 2; i4++) {
                this.m_parabolic_polar_transform_top_left_src_aligned_coeff[i4] = liveEyeMakeupMetadata.m_parabolic_polar_transform_top_left_src_aligned_coeff[i4];
                this.m_parabolic_polar_transform_top_left_dst_aligned_coeff[i4] = liveEyeMakeupMetadata.m_parabolic_polar_transform_top_left_dst_aligned_coeff[i4];
            }
            PointF pointF11 = this.m_parabolic_polar_transform_top_right_src_center;
            PointF pointF12 = liveEyeMakeupMetadata.m_parabolic_polar_transform_top_right_src_center;
            pointF11.x = pointF12.x;
            pointF11.y = pointF12.y;
            PointF pointF13 = this.m_parabolic_polar_transform_top_right_dst_center;
            PointF pointF14 = liveEyeMakeupMetadata.m_parabolic_polar_transform_top_right_dst_center;
            pointF13.x = pointF14.x;
            pointF13.y = pointF14.y;
            for (int i5 = 0; i5 < 2; i5++) {
                this.m_parabolic_polar_transform_top_right_src_aligned_coeff[i5] = liveEyeMakeupMetadata.m_parabolic_polar_transform_top_right_src_aligned_coeff[i5];
                this.m_parabolic_polar_transform_top_right_dst_aligned_coeff[i5] = liveEyeMakeupMetadata.m_parabolic_polar_transform_top_right_dst_aligned_coeff[i5];
            }
            PointF pointF15 = this.m_parabolic_polar_transform_bottom_left_src_center;
            PointF pointF16 = liveEyeMakeupMetadata.m_parabolic_polar_transform_bottom_left_src_center;
            pointF15.x = pointF16.x;
            pointF15.y = pointF16.y;
            PointF pointF17 = this.m_parabolic_polar_transform_bottom_left_dst_center;
            PointF pointF18 = liveEyeMakeupMetadata.m_parabolic_polar_transform_bottom_left_dst_center;
            pointF17.x = pointF18.x;
            pointF17.y = pointF18.y;
            for (int i6 = 0; i6 < 2; i6++) {
                this.m_parabolic_polar_transform_bottom_left_src_aligned_coeff[i6] = liveEyeMakeupMetadata.m_parabolic_polar_transform_bottom_left_src_aligned_coeff[i6];
                this.m_parabolic_polar_transform_bottom_left_dst_aligned_coeff[i6] = liveEyeMakeupMetadata.m_parabolic_polar_transform_bottom_left_dst_aligned_coeff[i6];
            }
            PointF pointF19 = this.m_parabolic_polar_transform_bottom_right_src_center;
            PointF pointF20 = liveEyeMakeupMetadata.m_parabolic_polar_transform_bottom_right_src_center;
            pointF19.x = pointF20.x;
            pointF19.y = pointF20.y;
            PointF pointF21 = this.m_parabolic_polar_transform_bottom_right_dst_center;
            PointF pointF22 = liveEyeMakeupMetadata.m_parabolic_polar_transform_bottom_right_dst_center;
            pointF21.x = pointF22.x;
            pointF21.y = pointF22.y;
            for (int i7 = 0; i7 < 2; i7++) {
                this.m_parabolic_polar_transform_bottom_right_src_aligned_coeff[i7] = liveEyeMakeupMetadata.m_parabolic_polar_transform_bottom_right_src_aligned_coeff[i7];
                this.m_parabolic_polar_transform_bottom_right_dst_aligned_coeff[i7] = liveEyeMakeupMetadata.m_parabolic_polar_transform_bottom_right_dst_aligned_coeff[i7];
            }
            this.m_rotation = liveEyeMakeupMetadata.m_rotation;
            this.m_is_flipped = liveEyeMakeupMetadata.m_is_flipped;
            this.m_mode = liveEyeMakeupMetadata.m_mode;
            this.m_ratio_of_actual_upper_lid_height_to_limited_height = liveEyeMakeupMetadata.m_ratio_of_actual_upper_lid_height_to_limited_height;
            this.m_ratio_of_actual_lower_lid_height_to_limited_height = liveEyeMakeupMetadata.m_ratio_of_actual_lower_lid_height_to_limited_height;
            this.m_eye_scale_left_to_right = liveEyeMakeupMetadata.m_eye_scale_left_to_right;
            this.m_ear_line_equation_a = liveEyeMakeupMetadata.m_ear_line_equation_a;
            this.m_ear_line_equation_b = liveEyeMakeupMetadata.m_ear_line_equation_b;
            this.m_ear_line_equation_c = liveEyeMakeupMetadata.m_ear_line_equation_c;
            this.m_ear_line_distance_limit = liveEyeMakeupMetadata.m_ear_line_distance_limit;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25634a = {194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 245, 140, 254, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 162, 194, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 139, 136, 136, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 140, 241, 242, 246, 246, 254, 139, 248, 252, 136, 245, 136, 139, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 245, 250, 140, 241, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 139, 254, 140, 142, 245, 141, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 246, 254, 141, 250, 245, 245, 242, 252, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 246, 254, 141, 250, 245, 245, 242, 252, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 254, 130, 254, 245, 242, 247, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 130, 248, 139, 254, 246, 250, 137, 137, 242, 247, 240, 248, 255, 250, 252, 141, 136, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 250, 137, 137, 245, 130, 248, 136, 247, 248, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 255, 250, 252, 254, 248, 250, 143, 254, 139, 250, 240, 254, 248, 245, 142, 246, 250, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 248, 245, 142, 246, 250, 248, 247, 136, 139, 246, 250, 245, 242, 131, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 142, 137, 137, 254, 139, 248, 245, 242, 253, 248, 252, 254, 247, 141, 254, 139, 
        162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 252, 254, 247, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 136, 139, 242, 240, 242, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 241, 242, 255, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 141, 136, 137, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 141, 136, 137, 248, 245, 254, 255, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 141, 136, 137, 248, 139, 242, 240, 241, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 251, 136, 141, 141, 136, 246, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 251, 136, 141, 141, 136, 246, 248, 139, 242, 240, 241, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 254, 130, 254, 245, 250, 140, 241, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 250, 253, 243, 142, 140, 141, 248, 128, 254, 242, 240, 241, 141, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 248, 139, 254, 247, 253, 254, 139, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 136, 247, 245, 130, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 242, 140, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 137, 250, 140, 140, 162, 194, 194, 252, 136, 247, 140, 141, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 139, 240, 251, 248, 141, 136, 248, 130, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 169, 160, 160, 147, 232, 151, 149, 172, 175, 174, 147, 232, 151, 149, 168, 168, 171, 144, 162, 194, 252, 136, 247, 140, 141, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 232, 164, 232, 151, 149, 151, 151, 168, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 242, 247, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 250, 140, 241, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 139, 136, 242, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 
        169, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 245, 142, 246, 250, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 246, 250, 129, 248, 252, 136, 245, 136, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 141, 136, 137, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 142, 137, 137, 254, 139, 248, 245, 242, 253, 248, 254, 130, 254, 245, 250, 140, 241, 248, 130, 248, 140, 252, 250, 245, 254, 248, 250, 253, 243, 142, 140, 141, 254, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 251, 136, 141, 141, 136, 246, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 248, 246, 136, 253, 254, 245, 248, 140, 252, 250, 245, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 245, 142, 246, 250, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 245, 142, 246, 250, 248, 139, 250, 247, 240, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 151, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 168, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 248, 254, 138, 142, 250, 141, 242, 136, 247, 248, 245, 242, 246, 242, 141, 162, 194, 194, 255, 245, 136, 250, 141, 232, 189, 242, 247, 253, 235, 250, 253, 242, 142, 140, 189, 139, 136, 246, 184, 245, 242, 240, 247, 254, 253, 233, 250, 139, 250, 251, 136, 245, 242, 252, 159, 143, 254, 252, 169, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 143, 254, 252, 169, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 151, 149, 151, 162, 194, 143, 254, 252, 170, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 232, 164, 232, 143, 254, 252, 170, 159, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 129, 232, 145, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 149, 129, 232, 145, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 149, 129, 147, 232, 148, 168, 149, 151, 232, 145, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 149, 130, 147, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 130, 144, 162, 194, 194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 194, 242, 255, 232, 159, 250, 251, 140, 159, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 144, 232, 163, 232, 151, 149, 151, 168, 144, 232, 194, 194, 194, 154, 254, 245, 140, 254, 194, 194, 194, 242, 255, 232, 159, 250, 251, 140, 
        159, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 144, 232, 163, 232, 151, 149, 168, 144, 232, 194, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 132, 194, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 148, 168, 149, 151, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 131, 232, 150, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 130, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 253, 254, 245, 141, 250, 232, 164, 232, 140, 138, 139, 141, 159, 246, 250, 129, 159, 151, 149, 151, 147, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 130, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 130, 232, 148, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 131, 232, 145, 232, 171, 149, 151, 144, 144, 162, 194, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 159, 148, 168, 149, 151, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 130, 232, 146, 232, 140, 242, 240, 247, 159, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 144, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 253, 254, 245, 141, 250, 144, 232, 150, 232, 159, 169, 149, 151, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 144, 162, 194, 134, 194, 139, 254, 141, 142, 139, 247, 232, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 162, 194, 134, 194, 194, 143, 254, 252, 171, 232, 233, 250, 139, 250, 251, 136, 245, 242, 252, 233, 136, 245, 250, 139, 237, 139, 250, 247, 140, 255, 136, 139, 246, 159, 143, 254, 252, 169, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 140, 139, 252, 147, 232, 143, 254, 252, 169, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 252, 254, 247, 141, 254, 139, 147, 232, 143, 254, 252, 169, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 147, 232, 194, 143, 254, 252, 169, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 143, 254, 252, 169, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 255, 245, 136, 250, 141, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 147, 232, 194, 143, 254, 252, 169, 232, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 147, 232, 255, 245, 136, 250, 141, 232, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 255, 245, 136, 250, 141, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 194, 132, 194, 143, 254, 252, 169, 232, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 232, 164, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 140, 139, 252, 232, 148, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 252, 254, 247, 141, 254, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 130, 248, 250, 253, 243, 142, 140, 141, 232, 164, 232, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 129, 232, 148, 232, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 129, 144, 232, 145, 232, 246, 242, 247, 159, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 149, 129, 232, 145, 232, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 149, 129, 144, 232, 146, 232, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 250, 245, 242, 240, 247, 254, 253, 
        248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 130, 232, 148, 232, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 130, 144, 162, 194, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 149, 130, 232, 146, 164, 232, 130, 248, 250, 253, 243, 142, 140, 141, 162, 194, 194, 255, 245, 136, 250, 141, 232, 139, 250, 253, 242, 142, 140, 232, 164, 232, 245, 254, 247, 240, 141, 241, 159, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 144, 162, 194, 143, 254, 252, 169, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 232, 164, 232, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 232, 150, 232, 139, 250, 253, 242, 142, 140, 162, 194, 194, 255, 245, 136, 250, 141, 232, 140, 139, 252, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 189, 242, 247, 253, 235, 250, 253, 242, 142, 140, 189, 139, 136, 246, 184, 245, 242, 240, 247, 254, 253, 233, 250, 139, 250, 251, 136, 245, 242, 252, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 144, 162, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 189, 242, 247, 253, 235, 250, 253, 242, 142, 140, 189, 139, 136, 246, 184, 245, 242, 240, 247, 254, 253, 233, 250, 139, 250, 251, 136, 245, 242, 252, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 253, 140, 141, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 146, 232, 159, 139, 250, 253, 242, 142, 140, 232, 148, 232, 140, 139, 252, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 144, 232, 145, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 162, 194, 143, 254, 252, 169, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 253, 140, 141, 248, 139, 250, 253, 242, 142, 140, 232, 145, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 162, 194, 143, 254, 252, 169, 232, 253, 140, 141, 248, 137, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 232, 146, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 250, 128, 250, 130, 248, 251, 136, 142, 247, 253, 250, 139, 130, 232, 164, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 159, 253, 140, 141, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 148, 232, 253, 140, 141, 248, 139, 250, 253, 242, 142, 140, 144, 232, 150, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 130, 248, 137, 136, 140, 242, 141, 242, 136, 247, 248, 255, 136, 139, 248, 254, 130, 254, 140, 245, 250, 140, 241, 232, 164, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 149, 130, 194, 146, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 130, 194, 146, 232, 159, 168, 149, 151, 232, 148, 232, 142, 137, 137, 254, 139, 248, 245, 242, 253, 248, 254, 130, 254, 245, 250, 140, 241, 248, 130, 248, 140, 252, 250, 245, 254, 248, 250, 253, 243, 142, 140, 141, 254, 139, 144, 232, 145, 232, 246, 242, 129, 159, 168, 149, 151, 147, 232, 151, 149, 174, 147, 232, 250, 128, 250, 130, 248, 251, 136, 142, 247, 253, 250, 139, 130, 144, 194, 145, 232, 159, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 130, 232, 148, 232, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 129, 232, 145, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 129, 232, 145, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 129, 
        232, 146, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 130, 144, 144, 162, 194, 253, 140, 141, 248, 130, 248, 137, 136, 140, 242, 141, 242, 136, 247, 248, 255, 136, 139, 248, 254, 130, 254, 140, 245, 250, 140, 241, 232, 164, 232, 246, 242, 129, 159, 253, 140, 141, 248, 130, 248, 137, 136, 140, 242, 141, 242, 136, 247, 248, 255, 136, 139, 248, 254, 130, 254, 140, 245, 250, 140, 241, 147, 232, 253, 140, 141, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 130, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 171, 159, 253, 140, 141, 248, 137, 136, 140, 242, 141, 242, 136, 247, 147, 232, 159, 139, 250, 253, 242, 142, 140, 232, 150, 232, 140, 139, 252, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 144, 232, 148, 232, 168, 149, 151, 147, 232, 253, 140, 141, 248, 130, 248, 137, 136, 140, 242, 141, 242, 136, 247, 248, 255, 136, 139, 248, 254, 130, 254, 140, 245, 250, 140, 241, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 141, 136, 191, 186, 239, 159, 143, 254, 252, 170, 232, 139, 240, 251, 144, 194, 132, 194, 143, 254, 252, 171, 232, 137, 232, 164, 232, 159, 139, 240, 251, 149, 240, 232, 163, 232, 139, 240, 251, 149, 251, 144, 232, 166, 232, 143, 254, 252, 171, 159, 139, 240, 251, 149, 251, 240, 147, 232, 148, 168, 149, 151, 147, 232, 151, 149, 173, 173, 173, 173, 173, 173, 173, 174, 144, 232, 161, 232, 143, 254, 252, 171, 159, 139, 240, 251, 149, 240, 251, 147, 232, 151, 149, 151, 147, 232, 148, 151, 149, 170, 170, 170, 170, 170, 170, 170, 170, 144, 162, 194, 143, 254, 252, 171, 232, 138, 232, 164, 232, 159, 139, 240, 251, 149, 139, 232, 163, 232, 137, 149, 129, 144, 232, 166, 232, 143, 254, 252, 171, 159, 137, 149, 129, 130, 128, 147, 232, 139, 240, 251, 149, 139, 144, 232, 161, 232, 143, 254, 252, 171, 159, 139, 240, 251, 149, 139, 147, 232, 137, 149, 130, 131, 129, 144, 162, 194, 255, 245, 136, 250, 141, 232, 252, 232, 164, 232, 138, 149, 129, 232, 148, 232, 246, 242, 247, 159, 138, 149, 128, 147, 232, 138, 149, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 241, 232, 164, 232, 250, 251, 140, 159, 159, 138, 149, 128, 232, 148, 232, 138, 149, 130, 144, 232, 150, 232, 159, 173, 149, 151, 232, 145, 232, 252, 232, 146, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 232, 146, 232, 138, 149, 131, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 241, 147, 232, 252, 147, 232, 138, 149, 129, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 235, 190, 185, 141, 136, 191, 236, 179, 159, 143, 254, 252, 170, 232, 139, 240, 251, 144, 194, 132, 194, 143, 254, 252, 170, 232, 241, 252, 143, 232, 164, 232, 235, 190, 185, 141, 136, 191, 186, 239, 159, 139, 240, 251, 144, 162, 194, 255, 245, 136, 250, 141, 232, 245, 232, 164, 232, 241, 252, 143, 149, 131, 232, 148, 232, 241, 252, 143, 149, 130, 232, 145, 232, 151, 149, 172, 162, 194, 255, 245, 136, 250, 141, 232, 140, 232, 164, 232, 241, 252, 143, 149, 130, 232, 150, 232, 159, 168, 149, 151, 232, 148, 232, 250, 251, 140, 159, 245, 232, 145, 232, 169, 149, 151, 232, 148, 232, 168, 149, 151, 144, 232, 146, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 170, 159, 241, 252, 143, 149, 129, 147, 232, 140, 147, 232, 245, 144, 162, 194, 134, 194, 194, 143, 254, 252, 170, 232, 191, 236, 179, 141, 136, 235, 190, 185, 159, 143, 254, 252, 170, 232, 241, 140, 245, 144, 194, 132, 194, 143, 254, 252, 170, 232, 139, 240, 251, 162, 194, 255, 245, 136, 250, 141, 232, 129, 232, 164, 232, 241, 140, 245, 149, 129, 232, 145, 232, 173, 149, 151, 162, 194, 139, 240, 251, 149, 139, 232, 164, 232, 250, 251, 140, 159, 129, 232, 148, 232, 170, 149, 151, 144, 232, 148, 232, 168, 149, 151, 162, 194, 139, 240, 251, 149, 240, 232};
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25635a = {164, 232, 169, 149, 151, 232, 148, 232, 250, 251, 140, 159, 129, 232, 148, 232, 169, 149, 151, 144, 162, 194, 139, 240, 251, 149, 251, 232, 164, 232, 169, 149, 151, 232, 148, 232, 250, 251, 140, 159, 129, 232, 148, 232, 171, 149, 151, 144, 162, 194, 139, 240, 251, 232, 164, 232, 252, 245, 250, 246, 137, 159, 139, 240, 251, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 252, 232, 164, 232, 159, 168, 149, 151, 232, 148, 232, 250, 251, 140, 159, 169, 149, 151, 232, 145, 232, 241, 140, 245, 149, 131, 232, 148, 232, 168, 149, 151, 144, 144, 232, 145, 232, 241, 140, 245, 149, 130, 162, 194, 139, 240, 251, 232, 164, 232, 252, 245, 250, 246, 137, 159, 159, 139, 240, 251, 232, 148, 232, 143, 254, 252, 170, 159, 151, 149, 172, 144, 144, 232, 145, 232, 143, 254, 252, 170, 159, 252, 144, 232, 146, 232, 143, 254, 252, 170, 159, 241, 140, 245, 149, 131, 144, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 139, 240, 251, 162, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 235, 190, 185, 141, 136, 179, 159, 143, 254, 252, 170, 232, 139, 240, 251, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 139, 240, 251, 232, 164, 232, 246, 250, 129, 159, 246, 250, 129, 159, 139, 240, 251, 149, 139, 147, 232, 139, 240, 251, 149, 240, 144, 147, 232, 139, 240, 251, 149, 251, 144, 162, 194, 255, 245, 136, 250, 141, 232, 246, 242, 247, 248, 139, 240, 251, 232, 164, 232, 246, 242, 247, 159, 246, 242, 247, 159, 139, 240, 251, 149, 139, 147, 232, 139, 240, 251, 149, 240, 144, 147, 232, 139, 240, 251, 149, 251, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 159, 246, 250, 129, 248, 139, 240, 251, 232, 146, 232, 246, 242, 247, 248, 139, 240, 251, 144, 232, 145, 232, 151, 149, 172, 162, 194, 134, 194, 194, 143, 254, 252, 169, 232, 235, 190, 185, 141, 136, 236, 179, 159, 143, 254, 252, 170, 232, 139, 240, 251, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 139, 240, 251, 232, 164, 232, 246, 250, 129, 159, 246, 250, 129, 159, 139, 240, 251, 149, 139, 147, 232, 139, 240, 251, 149, 240, 144, 147, 232, 139, 240, 251, 149, 251, 144, 162, 194, 255, 245, 136, 250, 141, 232, 246, 242, 247, 248, 139, 240, 251, 232, 164, 232, 246, 242, 247, 159, 246, 242, 247, 159, 139, 240, 251, 149, 139, 147, 232, 139, 240, 251, 149, 240, 144, 147, 232, 139, 240, 251, 149, 251, 144, 162, 194, 143, 254, 252, 169, 232, 140, 245, 232, 164, 232, 143, 254, 252, 169, 159, 159, 246, 250, 129, 248, 139, 240, 251, 232, 148, 232, 246, 242, 247, 248, 139, 240, 251, 144, 232, 150, 232, 159, 246, 250, 129, 159, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 147, 232, 168, 149, 151, 232, 148, 232, 250, 251, 140, 159, 246, 250, 129, 248, 139, 240, 251, 232, 146, 232, 246, 242, 247, 248, 139, 240, 251, 232, 148, 232, 168, 149, 151, 144, 144, 144, 147, 194, 159, 246, 250, 129, 248, 139, 240, 251, 232, 146, 232, 246, 242, 247, 248, 139, 240, 251, 144, 232, 145, 232, 151, 149, 172, 144, 162, 194, 139, 254, 141, 142, 139, 247, 232, 140, 245, 162, 194, 134, 194, 194, 255, 245, 136, 250, 141, 232, 139, 250, 247, 253, 136, 246, 159, 143, 254, 252, 169, 232, 247, 147, 232, 255, 245, 136, 250, 141, 232, 253, 144, 194, 132, 194, 139, 254, 141, 142, 139, 247, 232, 253, 232, 145, 232, 151, 149, 172, 232, 145, 232, 255, 139, 250, 252, 141, 159, 140, 242, 247, 159, 253, 136, 141, 159, 247, 149, 129, 130, 147, 232, 143, 254, 252, 169, 159, 168, 169, 149, 160, 175, 160, 175, 147, 232, 174, 175, 149, 169, 170, 170, 144, 144, 144, 145, 232, 171, 170, 174, 172, 175, 149, 172, 171, 172, 170, 144, 162, 194, 134, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 242, 255, 232, 159, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 144, 144, 232, 133, 133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 136, 142, 139, 252, 254, 149, 139, 240, 251, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 
        232, 164, 232, 168, 149, 151, 162, 194, 194, 242, 255, 232, 159, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 232, 165, 232, 151, 149, 151, 144, 194, 194, 132, 194, 194, 242, 255, 232, 159, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 232, 163, 232, 254, 250, 139, 248, 254, 138, 142, 250, 141, 242, 136, 247, 248, 245, 242, 246, 242, 141, 144, 194, 194, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 232, 164, 232, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 232, 150, 232, 254, 250, 139, 248, 254, 138, 142, 250, 141, 242, 136, 247, 248, 245, 242, 246, 242, 141, 162, 194, 194, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 232, 164, 232, 168, 149, 151, 232, 148, 232, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 162, 194, 194, 134, 194, 194, 194, 242, 255, 232, 159, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 163, 232, 168, 232, 157, 157, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 242, 247, 254, 139, 232, 163, 232, 168, 232, 157, 157, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 250, 140, 241, 232, 163, 232, 168, 144, 232, 133, 133, 232, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 139, 136, 242, 149, 140, 137, 144, 144, 232, 133, 133, 232, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 139, 136, 242, 149, 141, 138, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 159, 242, 140, 248, 139, 254, 247, 253, 254, 139, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 136, 247, 245, 130, 232, 164, 164, 232, 168, 144, 166, 232, 143, 254, 252, 171, 159, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 147, 232, 151, 149, 151, 144, 232, 161, 232, 140, 136, 142, 139, 252, 254, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 255, 245, 136, 250, 141, 232, 141, 136, 137, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 164, 232, 140, 141, 254, 137, 159, 136, 139, 242, 254, 247, 141, 254, 253, 248, 142, 137, 137, 254, 139, 248, 245, 242, 253, 248, 252, 254, 247, 141, 254, 139, 149, 129, 147, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 144, 162, 194, 143, 254, 252, 171, 232, 141, 136, 137, 248, 245, 242, 253, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 232, 164, 232, 246, 242, 129, 159, 141, 136, 137, 248, 245, 254, 255, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 141, 136, 137, 248, 139, 242, 240, 241, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 141, 136, 137, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 232, 164, 232, 140, 141, 254, 137, 159, 136, 139, 242, 254, 247, 141, 254, 253, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 252, 254, 247, 141, 254, 139, 149, 129, 147, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 144, 162, 194, 143, 254, 252, 171, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 232, 164, 232, 246, 242, 129, 159, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 140, 137, 245, 242, 
        247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 251, 136, 141, 141, 136, 246, 248, 139, 242, 240, 241, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 232, 164, 232, 140, 141, 254, 137, 159, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 136, 139, 242, 240, 242, 247, 149, 130, 147, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 141, 136, 137, 248, 245, 242, 253, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 232, 164, 232, 246, 242, 129, 159, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 141, 136, 137, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 149, 129, 147, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 141, 136, 137, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 149, 130, 147, 232, 141, 136, 137, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 255, 245, 136, 250, 141, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 232, 164, 232, 246, 242, 129, 159, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 251, 136, 141, 141, 136, 246, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 149, 129, 147, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 251, 136, 141, 141, 136, 246, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 149, 130, 147, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 169, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 242, 247, 141, 232, 164, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 141, 136, 137, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 149, 129, 130, 162, 194, 143, 254, 252, 169, 232, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 232, 164, 232, 246, 242, 129, 159, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 129, 130, 147, 232, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 131, 130, 147, 232, 141, 136, 137, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 143, 254, 252, 169, 232, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 232, 164, 232, 246, 242, 129, 159, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 129, 130, 147, 232, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 131, 130, 147, 232, 251, 136, 141, 
        141, 136, 246, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 232, 145, 164, 232, 140, 141, 254, 137, 159, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 130, 147, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 242, 247, 141, 149, 130, 232, 148, 232, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 129, 232, 145, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 242, 247, 141, 149, 129, 232, 145, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 242, 247, 141, 149, 129, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 232, 164, 232, 246, 242, 129, 159, 141, 136, 137, 248, 245, 242, 253, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 143, 254, 252, 169, 232, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 232, 164, 232, 246, 242, 129, 159, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 147, 232, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 171, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 252, 254, 247, 141, 254, 139, 232, 164, 232, 246, 242, 129, 159, 141, 136, 137, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 147, 232, 251, 136, 141, 141, 136, 246, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 143, 254, 252, 171, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 232, 164, 232, 246, 242, 129, 159, 141, 136, 137, 248, 245, 242, 253, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 171, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 232, 164, 232, 233, 250, 139, 250, 251, 136, 245, 242, 252, 233, 136, 245, 250, 139, 237, 139, 250, 247, 140, 255, 136, 139, 246, 159, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 252, 254, 247, 141, 254, 139, 149, 129, 130, 147, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 252, 254, 247, 141, 254, 139, 149, 131, 128, 147, 232, 194, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 129, 130, 147, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 131, 128, 147, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 
        140, 252, 250, 245, 254, 248, 129, 147, 232, 194, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 147, 232, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 169, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 232, 164, 232, 159, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 136, 139, 242, 240, 242, 247, 144, 232, 145, 232, 143, 254, 252, 169, 159, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 129, 147, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 130, 144, 232, 146, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 136, 139, 242, 240, 242, 247, 232, 146, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 241, 242, 255, 141, 162, 232, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 232, 143, 254, 252, 171, 159, 151, 149, 151, 144, 162, 194, 143, 254, 252, 169, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 232, 246, 242, 129, 159, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 129, 130, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 130, 232, 145, 164, 232, 255, 139, 250, 246, 254, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 130, 248, 139, 254, 246, 250, 137, 137, 242, 247, 240, 248, 255, 250, 252, 141, 136, 139, 162, 194, 242, 255, 232, 159, 242, 140, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 137, 250, 140, 140, 232, 164, 164, 232, 168, 144, 194, 132, 194, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 162, 194, 242, 255, 232, 159, 242, 140, 248, 139, 254, 247, 253, 254, 139, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 136, 247, 245, 130, 232, 164, 164, 232, 168, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 139, 136, 136, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 140, 136, 142, 139, 252, 254, 232, 164, 232, 246, 242, 129, 159, 140, 136, 142, 139, 252, 254, 147, 232, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 254, 147, 232, 246, 242, 247, 159, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 250, 232, 145, 232, 250, 137, 137, 245, 130, 248, 136, 247, 248, 139, 136, 136, 141, 248, 140, 136, 142, 139, 252, 254, 147, 232, 168, 149, 151, 144, 144, 162, 194, 134, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 140, 136, 142, 139, 252, 254, 149, 139, 240, 251, 162, 194, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 140, 139, 252, 248, 130, 232, 164, 232, 253, 136, 141, 159, 252, 136, 245, 136, 139, 147, 232, 139, 240, 251, 248, 141, 136, 248, 130, 144, 162, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 250, 251, 140, 159, 140, 139, 252, 248, 130, 232, 148, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 144, 232, 150, 232, 246, 250, 129, 159, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 147, 232, 168, 
        149, 151, 232, 148, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 168, 149, 151, 232, 148, 232, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 162, 194, 255, 245, 136, 250, 141, 232, 139, 254, 255, 248, 130, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 130, 147, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 147, 232, 151, 149, 174, 144, 162, 194, 255, 245, 136, 250, 141, 232, 245, 139, 248, 245, 142, 246, 250, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 247, 159, 139, 254, 255, 248, 130, 232, 150, 232, 159, 255, 250, 252, 254, 248, 250, 143, 254, 139, 250, 240, 254, 248, 245, 142, 246, 250, 232, 146, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 147, 232, 168, 149, 151, 144, 162, 194, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 232, 145, 164, 232, 245, 139, 248, 245, 142, 246, 250, 248, 128, 254, 242, 240, 241, 141, 162, 194, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 168, 149, 151, 232, 148, 232, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 162, 194, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 247, 136, 139, 246, 250, 245, 248, 130, 232, 164, 232, 246, 242, 247, 159, 140, 139, 252, 248, 130, 232, 150, 232, 246, 250, 129, 159, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 147, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 144, 147, 232, 168, 149, 151, 144, 162, 194, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 139, 250, 141, 242, 136, 248, 130, 232, 164, 232, 246, 250, 129, 159, 159, 247, 136, 139, 246, 250, 245, 248, 130, 232, 148, 232, 151, 149, 171, 144, 232, 150, 232, 151, 149, 173, 147, 232, 151, 149, 151, 144, 232, 145, 232, 151, 149, 170, 232, 146, 232, 151, 149, 175, 162, 194, 194, 194, 242, 255, 232, 159, 242, 140, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 137, 250, 140, 140, 232, 164, 164, 232, 168, 144, 194, 132, 194, 132, 194, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 246, 254, 141, 250, 245, 245, 242, 252, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 149, 250, 162, 194, 143, 254, 252, 171, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 246, 254, 141, 250, 245, 245, 242, 252, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 147, 232, 168, 149, 151, 148, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 144, 144, 162, 194, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 232, 246, 242, 129, 159, 254, 130, 254, 140, 241, 250, 253, 136, 128, 147, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 147, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 144, 162, 194, 134, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 255, 254, 250, 141, 241, 254, 139, 232, 164, 232, 246, 242, 129, 159, 151, 149, 172, 147, 232, 168, 149, 151, 147, 232, 140, 246, 136, 136, 141, 241, 140, 141, 254, 137, 159, 151, 149, 151, 147, 232, 151, 149, 168, 169, 172, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 131, 144, 144, 162, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 136, 142, 141, 140, 242, 253, 254, 248, 254, 130, 254, 232, 164, 232, 140, 141, 254, 137, 159, 151, 149, 151, 147, 232, 246, 250, 137, 137, 242};
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25636a = {247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 131, 144, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 255, 254, 250, 141, 241, 254, 139, 232, 145, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 162, 194, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 145, 164, 232, 136, 142, 141, 140, 242, 253, 254, 248, 254, 130, 254, 162, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 250, 232, 146, 232, 159, 246, 250, 129, 248, 252, 136, 245, 136, 139, 232, 148, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 139, 240, 251, 232, 145, 232, 139, 250, 141, 242, 136, 248, 130, 162, 194, 194, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 232, 145, 164, 232, 250, 245, 137, 241, 250, 248, 250, 253, 243, 142, 140, 141, 248, 128, 254, 242, 240, 241, 141, 162, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 250, 232, 146, 232, 159, 246, 250, 129, 248, 252, 136, 245, 136, 139, 232, 148, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 139, 240, 251, 232, 145, 232, 252, 136, 245, 136, 139, 232, 145, 232, 139, 250, 141, 242, 136, 248, 130, 162, 194, 194, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 232, 145, 164, 232, 250, 245, 137, 241, 250, 248, 250, 253, 243, 142, 140, 141, 248, 128, 254, 242, 240, 241, 141, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 252, 136, 245, 136, 139, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 250, 232, 145, 232, 250, 245, 137, 241, 250, 248, 250, 253, 243, 142, 140, 141, 248, 128, 254, 242, 240, 241, 141, 144, 232, 146, 232, 246, 242, 129, 159, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 147, 232, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 147, 232, 252, 245, 250, 246, 137, 159, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 252, 245, 250, 246, 137, 159, 252, 136, 245, 136, 139, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 240, 245, 242, 141, 141, 254, 139, 248, 250, 245, 137, 241, 250, 232, 164, 232, 246, 242, 129, 159, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 168, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 149, 240, 147, 194, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 151, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 149, 240, 147, 194, 140, 241, 242, 246, 246, 254, 139, 248, 246, 136, 253, 254, 245, 248, 140, 252, 250, 245, 254, 144, 162, 194, 255, 245, 136, 250, 141, 232, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 164, 232, 246, 242, 129, 159, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 168, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 149, 139, 147, 194, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 151, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 149, 139, 147, 194, 140, 241, 242, 246, 246, 254, 139, 248, 246, 136, 253, 254, 245, 248, 140, 252, 250, 245, 254, 144, 162, 194, 240, 245, 242, 141, 141, 254, 139, 248, 250, 245, 137, 241, 250, 232, 145, 164, 232, 136, 142, 141, 140, 242, 253, 254, 248, 254, 130, 254, 162, 194, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 145, 164, 232, 136, 142, 141, 140, 242, 253, 254, 248, 254, 130, 254, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 248, 242, 247, 141, 
        254, 247, 140, 242, 141, 130, 232, 164, 232, 168, 151, 151, 149, 151, 232, 150, 232, 169, 175, 149, 151, 162, 194, 194, 242, 255, 232, 159, 240, 245, 242, 141, 141, 254, 139, 248, 250, 245, 137, 241, 250, 232, 165, 232, 151, 149, 151, 232, 133, 133, 232, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 165, 232, 151, 149, 151, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 136, 142, 139, 252, 254, 248, 245, 232, 164, 232, 235, 190, 185, 141, 136, 179, 159, 140, 136, 142, 139, 252, 254, 149, 139, 240, 251, 144, 162, 194, 255, 245, 136, 250, 141, 232, 247, 136, 139, 246, 250, 245, 248, 245, 232, 164, 232, 159, 140, 241, 242, 246, 246, 254, 139, 248, 245, 142, 246, 250, 248, 247, 136, 139, 246, 250, 245, 242, 131, 254, 139, 232, 165, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 232, 166, 232, 140, 136, 142, 139, 252, 254, 248, 245, 232, 150, 232, 140, 241, 242, 246, 246, 254, 139, 248, 245, 142, 246, 250, 248, 247, 136, 139, 246, 250, 245, 242, 131, 254, 139, 232, 161, 232, 140, 136, 142, 139, 252, 254, 248, 245, 162, 194, 143, 254, 252, 170, 232, 252, 142, 139, 139, 248, 241, 140, 245, 232, 164, 232, 235, 190, 185, 141, 136, 191, 236, 179, 159, 252, 136, 245, 136, 139, 144, 162, 194, 247, 136, 139, 246, 250, 245, 248, 245, 232, 145, 164, 232, 159, 168, 149, 151, 232, 148, 232, 252, 142, 139, 139, 248, 241, 140, 245, 149, 131, 144, 162, 194, 143, 254, 252, 169, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 140, 245, 232, 164, 232, 235, 190, 185, 141, 136, 236, 179, 159, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 139, 240, 251, 144, 162, 194, 255, 245, 136, 250, 141, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 164, 232, 247, 136, 139, 246, 250, 245, 248, 245, 232, 145, 232, 159, 240, 245, 242, 141, 141, 254, 139, 248, 250, 245, 137, 241, 250, 232, 146, 232, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 145, 232, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 145, 232, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 145, 232, 140, 241, 242, 246, 246, 254, 139, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 144, 162, 194, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 145, 164, 232, 245, 139, 248, 245, 142, 246, 250, 248, 128, 254, 242, 240, 241, 141, 162, 194, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 145, 164, 232, 245, 142, 246, 250, 248, 139, 250, 247, 240, 254, 162, 194, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 146, 164, 232, 139, 250, 247, 253, 136, 246, 159, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 147, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 144, 162, 194, 252, 142, 139, 139, 248, 241, 140, 245, 149, 131, 232, 164, 232, 246, 250, 129, 159, 246, 242, 247, 159, 252, 142, 139, 139, 248, 241, 140, 245, 149, 131, 232, 146, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 147, 232, 246, 250, 129, 248, 245, 142, 246, 250, 144, 147, 232, 252, 142, 139, 139, 248, 241, 140, 245, 149, 131, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 140, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 145, 232, 172, 149, 151, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 140, 245, 149, 130, 144, 144, 162, 194, 252, 142, 139, 139, 248, 241, 140, 245, 149, 130, 232, 164, 232, 252, 142, 139, 139, 248, 241, 140, 245, 149, 130, 232, 148, 232, 140, 248, 128, 254, 242, 240, 241, 141, 232, 145, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 159, 252, 142, 139, 139, 248, 241, 140, 245, 149, 130, 232, 148, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 140, 245, 149, 129, 144, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 191, 236, 179, 141, 136, 235, 190, 185, 159, 252, 142, 139, 139, 248, 241, 140, 245, 144, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 245, 251, 136, 142, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 250, 129, 159, 246, 242, 247, 159, 159, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 232, 148, 232, 140, 139, 252, 248, 130, 144, 232, 150, 232, 246, 250, 129, 159, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 147, 232, 151, 149, 151, 151, 168, 144, 147, 232, 168, 149, 151, 144, 147, 232, 151, 149, 151, 144, 162, 194, 255, 245, 136, 250, 141, 232, 140, 244, 242, 247, 248, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 232, 150, 232, 246, 250, 129, 248, 245, 142, 246, 250, 162, 194, 140, 244, 242, 247, 248, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 
        232, 164, 232, 168, 149, 151, 232, 148, 232, 246, 242, 247, 159, 246, 250, 129, 159, 159, 140, 244, 242, 247, 248, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 232, 148, 232, 151, 149, 170, 144, 232, 145, 232, 169, 149, 172, 147, 232, 151, 149, 151, 144, 147, 232, 168, 149, 151, 144, 162, 194, 245, 251, 136, 142, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 245, 251, 136, 142, 247, 253, 248, 128, 254, 242, 240, 241, 141, 232, 145, 232, 140, 244, 242, 247, 248, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 252, 136, 245, 136, 139, 147, 232, 140, 136, 142, 139, 252, 254, 149, 139, 240, 251, 147, 232, 245, 251, 136, 142, 247, 253, 248, 128, 254, 242, 240, 241, 141, 144, 162, 194, 194, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 143, 254, 252, 170, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 137, 250, 140, 140, 248, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 139, 254, 140, 142, 245, 141, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 139, 240, 251, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 137, 250, 140, 140, 248, 252, 136, 245, 136, 139, 162, 194, 194, 143, 254, 252, 169, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 232, 164, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 129, 130, 162, 194, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 149, 130, 232, 145, 164, 232, 255, 139, 250, 246, 254, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 130, 248, 139, 254, 246, 250, 137, 137, 242, 247, 240, 248, 255, 250, 252, 141, 136, 139, 162, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 254, 130, 254, 245, 242, 247, 254, 139, 232, 164, 232, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 232, 145, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 162, 194, 254, 130, 254, 245, 242, 247, 254, 139, 232, 145, 164, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 162, 194, 194, 242, 255, 232, 159, 242, 140, 248, 139, 254, 247, 253, 254, 139, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 136, 247, 245, 130, 232, 164, 164, 232, 168, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 254, 130, 254, 245, 242, 247, 254, 139, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 132, 194, 255, 245, 136, 250, 141, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 246, 254, 141, 250, 245, 245, 242, 252, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 149, 250, 162, 194, 143, 254, 252, 171, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 254, 130, 254, 245, 242, 247, 254, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 246, 254, 141, 250, 245, 245, 242, 252, 248, 254, 130, 254, 245, 242, 247, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 143, 254, 252, 169, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 147, 232, 168, 149, 151, 148, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 144, 144, 162, 194, 254, 130, 254, 245, 242, 247, 254, 139, 232, 164, 232, 246, 242, 129, 159, 254, 130, 254, 245, 242, 247, 254, 139, 147, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 254, 130, 254, 245, 242, 247, 254, 139, 147, 232, 246, 254, 141, 250, 245, 245, 242, 252, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 144, 232, 145, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 162, 194, 134, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 130, 254, 
        245, 242, 247, 254, 139, 149, 250, 232, 146, 232, 159, 246, 250, 129, 248, 252, 136, 245, 136, 139, 232, 148, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 139, 240, 251, 232, 145, 232, 139, 250, 141, 242, 136, 248, 130, 162, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 250, 232, 146, 232, 159, 246, 250, 129, 248, 252, 136, 245, 136, 139, 232, 148, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 139, 240, 251, 232, 145, 232, 252, 136, 245, 136, 139, 232, 145, 232, 139, 250, 141, 242, 136, 248, 130, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 252, 136, 245, 136, 139, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 250, 144, 232, 146, 232, 246, 242, 129, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 147, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 147, 232, 252, 245, 250, 246, 137, 159, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 144, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 252, 245, 250, 246, 137, 159, 252, 136, 245, 136, 139, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 194, 255, 245, 136, 250, 141, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 240, 245, 242, 141, 141, 254, 139, 248, 250, 245, 137, 241, 250, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 149, 240, 162, 194, 255, 245, 136, 250, 141, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 240, 245, 242, 141, 141, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 149, 139, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 232, 164, 232, 169, 149, 151, 162, 194, 194, 242, 255, 232, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 146, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 240, 245, 242, 141, 141, 254, 139, 248, 250, 245, 137, 241, 250, 232, 165, 232, 151, 149, 151, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 247, 136, 139, 246, 250, 245, 248, 245, 232, 164, 232, 235, 190, 185, 141, 136, 179, 159, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 137, 250, 140, 140, 248, 252, 136, 245, 136, 139, 144, 232, 150, 232, 140, 241, 242, 246, 246, 254, 139, 248, 245, 142, 246, 250, 248, 247, 136, 139, 246, 250, 245, 242, 131, 254, 139, 162, 194, 247, 136, 139, 246, 250, 245, 248, 245, 232, 145, 164, 232, 159, 168, 149, 151, 232, 148, 232, 235, 190, 185, 141, 136, 179, 159, 252, 136, 245, 136, 139, 144, 144, 162, 194, 194, 143, 254, 252, 169, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 140, 245, 232, 164, 232, 235, 190, 185, 141, 136, 236, 179, 159, 254, 130, 254, 245, 242, 247, 254, 139, 149, 139, 240, 251, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 248, 252, 142, 251, 254, 232, 164, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 164, 232, 247, 136, 139, 246, 250, 245, 248, 245, 232, 145, 232, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 240, 245, 242, 141, 141, 254, 139, 248, 250, 245, 137, 241, 250, 232, 146, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 139, 242, 240, 241, 141, 248, 250, 245, 137, 241, 250, 248, 252, 142, 251, 254, 232, 145, 232, 140, 241, 242, 246, 246, 254, 139, 248, 242, 247, 141, 254, 247, 140, 242, 141, 130, 144, 162, 194, 253, 242, 255, 255, 
        254, 139, 254, 247, 252, 254, 232, 145, 164, 232, 245, 139, 248, 245, 142, 246, 250, 248, 128, 254, 242, 240, 241, 141, 162, 194, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 145, 164, 232, 245, 142, 246, 250, 248, 139, 250, 247, 240, 254, 162, 194, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 145, 164, 232, 246, 250, 129, 248, 245, 142, 246, 250, 162, 194, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 146, 164, 232, 139, 250, 247, 253, 136, 246, 159, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 147, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 144, 162, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 140, 241, 242, 246, 246, 254, 139, 248, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 140, 241, 242, 246, 246, 254, 139, 248, 252, 136, 245, 136, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 149, 139, 240, 251, 162, 194, 255, 245, 136, 250, 141, 232, 240, 245, 136, 251, 140, 245, 248, 246, 242, 247, 142, 140, 248, 245, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 140, 241, 242, 246, 246, 254, 139, 248, 252, 136, 245, 136, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 149, 250, 162, 194, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 145, 164, 232, 240, 245, 136, 251, 140, 245, 248, 246, 242, 247, 142, 140, 248, 245, 162, 194, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 145, 164, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 162, 194, 194, 143, 254, 252, 170, 232, 250, 253, 253, 242, 141, 242, 242, 136, 247, 248, 141, 254, 139, 246, 232, 164, 232, 140, 241, 242, 246, 246, 254, 139, 248, 252, 136, 245, 136, 139, 232, 145, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 159, 252, 136, 245, 136, 139, 232, 146, 232, 250, 253, 253, 242, 141, 242, 242, 136, 247, 248, 141, 254, 139, 246, 147, 232, 143, 254, 252, 170, 159, 168, 149, 151, 144, 144, 162, 194, 194, 143, 254, 252, 170, 232, 252, 142, 139, 139, 248, 241, 140, 245, 232, 164, 232, 235, 190, 185, 141, 136, 191, 236, 179, 159, 252, 136, 245, 136, 139, 144, 162, 194, 252, 142, 139, 139, 248, 241, 140, 245, 149, 131, 232, 164, 232, 246, 250, 129, 159, 246, 242, 247, 159, 252, 142, 139, 139, 248, 241, 140, 245, 149, 131, 232, 146, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 147, 232, 246, 250, 129, 248, 245, 142, 246, 250, 144, 147, 232, 252, 142, 139, 139, 248, 241, 140, 245, 149, 131, 144, 162, 194, 194, 143, 254, 252, 169, 232, 140, 241, 242, 246, 246, 254, 139, 248, 140, 245, 232, 164, 232, 235, 190, 185, 141, 136, 236, 179, 159, 140, 241, 242, 246, 246, 254, 139, 248, 252, 136, 245, 136, 139, 144, 162, 194, 255, 245, 136, 250, 141, 232, 140, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 253, 242, 255, 255, 254, 139, 254, 247, 252, 254, 232, 145, 232, 172, 149, 151, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 140, 245, 149, 130, 144, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 140, 241, 242, 246, 246, 254, 139, 248, 140, 245, 149, 130, 144, 144, 162, 194, 194, 252, 142, 139, 139, 248, 241, 140, 245, 149, 130, 232, 164, 232, 252, 142, 139, 139, 248, 241, 140, 245, 149, 130, 232, 148, 232, 140, 248, 128, 254, 242, 240, 241, 141, 232, 145, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 159, 252, 142, 139, 139, 248, 241, 140, 245, 149, 130, 232, 148, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 140, 245, 149, 129, 144, 144, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 140, 241, 242, 246, 246, 254, 139, 248, 140, 245, 149, 129, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 252, 136, 245, 136, 139, 147, 232, 191, 236, 179, 141, 136, 235, 190, 185, 159, 252, 142, 139, 139, 248, 241, 140, 245, 144, 147, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 250, 144, 162, 194, 134, 194, 194, 143, 254, 252, 169, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 250, 140, 241, 232, 164, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 129, 128, 162, 194, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 250, 140, 241, 149, 130, 232, 145, 164, 232, 255, 139, 250, 246, 254, 248, 141, 136, 248, 141, 254, 246, 137, 245, 
        250, 141, 254, 248, 130, 248, 139, 254, 246, 250, 137, 137, 242, 247, 240, 248, 255, 250, 252, 141, 136, 139, 162, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 254, 130, 254, 245, 250, 140, 241, 248, 250, 245, 137, 241, 250, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 250, 140, 241, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 250, 140, 241, 144, 149, 250, 162, 194, 254, 130, 254, 245, 250, 140, 241, 248, 250, 245, 137, 241, 250, 232, 145, 164, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 250, 140, 241, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 252, 136, 245, 136, 139, 147, 232, 254, 130, 254, 245, 250, 140, 241, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 252, 136, 245, 136, 139, 147, 232, 254, 130, 254, 245, 250, 140, 241, 248, 250, 245, 137, 241, 250, 144, 162, 194, 134, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194, 134, 194};
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25637a = {194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 241, 242, 240, 241, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 245, 140, 254, 194, 194, 194, 137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 130, 254, 245, 250, 140, 241, 248, 141, 254, 129, 141, 142, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 255, 139, 250, 246, 254, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 130, 248, 139, 254, 246, 250, 137, 137, 242, 247, 240, 248, 255, 250, 252, 141, 136, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 255, 250, 252, 254, 248, 250, 143, 254, 139, 250, 240, 254, 248, 245, 142, 246, 250, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 140, 241, 242, 246, 246, 254, 139, 248, 245, 142, 246, 250, 248, 247, 136, 139, 246, 250, 245, 242, 131, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 142, 137, 137, 254, 139, 248, 245, 242, 253, 248, 252, 254, 247, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 252, 254, 247, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 136, 139, 242, 240, 242, 247, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 241, 242, 255, 141, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 129, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 130, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 141, 136, 137, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 141, 136, 137, 248, 245, 254, 255, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 141, 136, 137, 248, 139, 242, 240, 241, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 162, 194, 
        194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 251, 136, 141, 141, 136, 246, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 251, 136, 141, 141, 136, 246, 248, 139, 242, 240, 241, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 254, 130, 254, 245, 250, 140, 241, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 250, 245, 137, 241, 250, 248, 250, 253, 243, 142, 140, 141, 248, 128, 254, 242, 240, 241, 141, 162, 194, 194, 252, 136, 247, 140, 141, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 139, 240, 251, 248, 141, 136, 248, 130, 232, 164, 232, 143, 254, 252, 170, 159, 151, 149, 169, 160, 160, 147, 232, 151, 149, 172, 175, 174, 147, 232, 151, 149, 168, 168, 171, 144, 162, 194, 252, 136, 247, 140, 141, 232, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 232, 164, 232, 151, 149, 151, 151, 168, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 242, 247, 254, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 242, 247, 141, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 250, 140, 241, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 171, 232, 139, 136, 242, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 169, 232, 254, 247, 143, 242, 139, 136, 247, 246, 254, 247, 141, 248, 245, 142, 246, 250, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 246, 250, 129, 248, 252, 136, 245, 136, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 141, 136, 137, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 142, 137, 137, 254, 139, 248, 245, 242, 253, 248, 254, 130, 254, 245, 250, 140, 241, 248, 130, 248, 140, 252, 250, 245, 254, 248, 250, 253, 243, 142, 140, 141, 254, 139, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 169, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 251, 136, 141, 141, 136, 246, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 143, 254, 252, 170, 232, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 255, 245, 136, 250, 141, 232, 254, 250, 139, 248, 254, 138, 142, 250, 141, 242, 136, 247, 248, 245, 242, 246, 242, 141, 162, 194, 194, 255, 245, 136, 250, 141, 232, 189, 242, 247, 253, 235, 250, 253, 242, 142, 140, 189, 139, 136, 246, 184, 245, 242, 240, 247, 
        254, 253, 233, 250, 139, 250, 251, 136, 245, 242, 252, 159, 143, 254, 252, 169, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 143, 254, 252, 169, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 144, 194, 132, 194, 255, 245, 136, 250, 141, 232, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 151, 149, 151, 162, 194, 143, 254, 252, 170, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 232, 164, 232, 143, 254, 252, 170, 159, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 129, 232, 145, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 149, 129, 232, 145, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 149, 129, 147, 232, 148, 168, 149, 151, 232, 145, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 149, 130, 147, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 130, 144, 162, 194, 194, 194, 154, 242, 255, 253, 254, 255, 232, 190, 179, 248, 189, 235, 184, 190, 180, 188, 181, 237, 248, 233, 235, 188, 186, 176, 236, 176, 182, 181, 248, 191, 176, 190, 191, 194, 194, 194, 242, 255, 232, 159, 250, 251, 140, 159, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 144, 232, 163, 232, 151, 149, 151, 168, 144, 232, 194, 194, 194, 154, 254, 245, 140, 254, 194, 194, 194, 242, 255, 232, 159, 250, 251, 140, 159, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 144, 232, 163, 232, 151, 149, 168, 144, 232, 194, 194, 194, 154, 254, 247, 253, 242, 255, 194, 194, 194, 132, 194, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 148, 168, 149, 151, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 131, 232, 150, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 130, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 255, 245, 136, 250, 141, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 253, 254, 245, 141, 250, 232, 164, 232, 140, 138, 139, 141, 159, 246, 250, 129, 159, 151, 149, 151, 147, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 130, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 130, 232, 148, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 131, 232, 145, 232, 171, 149, 151, 144, 144, 162, 194, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 159, 148, 168, 149, 151, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 130, 232, 146, 232, 140, 242, 240, 247, 159, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 144, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 253, 254, 245, 141, 250, 144, 232, 150, 232, 159, 169, 149, 151, 232, 145, 232, 140, 136, 245, 143, 254, 248, 139, 250, 253, 242, 142, 140, 248, 252, 136, 254, 255, 255, 149, 129, 144, 162, 194, 134, 194, 139, 254, 141, 142, 139, 247, 232, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 162, 194, 134, 194, 194, 143, 254, 252, 171, 232, 233, 250, 139, 250, 251, 136, 245, 242, 252, 233, 136, 245, 250, 139, 237, 139, 250, 247, 140, 255, 136, 139, 246, 159, 143, 254, 252, 169, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 140, 139, 252, 147, 232, 143, 254, 252, 169, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 252, 254, 247, 141, 254, 139, 147, 232, 143, 254, 252, 169, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 147, 232, 194, 143, 254, 252, 169, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 143, 254, 252, 169, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 255, 245, 136, 250, 141, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 147, 232, 194, 143, 254, 252, 169, 232, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 
        250, 251, 136, 245, 242, 252, 147, 232, 255, 245, 136, 250, 141, 232, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 255, 245, 136, 250, 141, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 194, 132, 194, 143, 254, 252, 169, 232, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 232, 164, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 140, 139, 252, 232, 148, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 252, 254, 247, 141, 254, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 130, 248, 250, 253, 243, 142, 140, 141, 232, 164, 232, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 129, 232, 148, 232, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 129, 144, 232, 145, 232, 246, 242, 247, 159, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 149, 129, 232, 145, 232, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 149, 129, 144, 232, 146, 232, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 130, 232, 148, 232, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 130, 144, 162, 194, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 149, 130, 232, 146, 164, 232, 130, 248, 250, 253, 243, 142, 140, 141, 162, 194, 194, 255, 245, 136, 250, 141, 232, 139, 250, 253, 242, 142, 140, 232, 164, 232, 245, 254, 247, 240, 141, 241, 159, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 144, 162, 194, 143, 254, 252, 169, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 232, 164, 232, 140, 241, 242, 255, 141, 248, 137, 136, 242, 247, 141, 232, 150, 232, 139, 250, 253, 242, 142, 140, 162, 194, 194, 255, 245, 136, 250, 141, 232, 140, 139, 252, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 189, 242, 247, 253, 235, 250, 253, 242, 142, 140, 189, 139, 136, 246, 184, 245, 242, 240, 247, 254, 253, 233, 250, 139, 250, 251, 136, 245, 242, 252, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 144, 162, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 189, 242, 247, 253, 235, 250, 253, 242, 142, 140, 189, 139, 136, 246, 184, 245, 242, 240, 247, 254, 253, 233, 250, 139, 250, 251, 136, 245, 242, 252, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 139, 250, 253, 242, 142, 140, 232, 164, 232, 253, 140, 141, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 146, 232, 159, 139, 250, 253, 242, 142, 140, 232, 148, 232, 140, 139, 252, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 144, 232, 145, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 162, 194, 143, 254, 252, 169, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 253, 140, 141, 248, 139, 250, 253, 242, 142, 140, 232, 145, 232, 252, 136, 140, 242, 247, 254, 248, 140, 242, 247, 254, 162, 194, 143, 254, 252, 169, 232, 253, 140, 141, 248, 137, 136, 140, 242, 141, 242, 136, 247, 232, 164, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 232, 146, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 162, 194, 194, 255, 245, 136, 250, 141, 232, 250, 128, 250, 130, 248, 251, 136, 142, 247, 253, 250, 139, 130, 232, 164, 232, 246, 242, 247, 159, 168, 149, 151, 147, 232, 159, 253, 140, 141, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 232, 148, 232, 253, 140, 141, 248, 139, 250, 253, 242, 142, 140, 144, 232, 150, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 
        141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 130, 144, 162, 194, 255, 245, 136, 250, 141, 232, 253, 140, 141, 248, 130, 248, 137, 136, 140, 242, 141, 242, 136, 247, 248, 255, 136, 139, 248, 254, 130, 254, 140, 245, 250, 140, 241, 232, 164, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 149, 130, 194, 146, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 130, 194, 146, 232, 159, 168, 149, 151, 232, 148, 232, 142, 137, 137, 254, 139, 248, 245, 242, 253, 248, 254, 130, 254, 245, 250, 140, 241, 248, 130, 248, 140, 252, 250, 245, 254, 248, 250, 253, 243, 142, 140, 141, 254, 139, 144, 232, 145, 232, 246, 242, 129, 159, 168, 149, 151, 147, 232, 151, 149, 174, 147, 232, 250, 128, 250, 130, 248, 251, 136, 142, 247, 253, 250, 139, 130, 144, 194, 145, 232, 159, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 130, 232, 148, 232, 159, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 129, 232, 145, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 129, 232, 145, 232, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 129, 232, 146, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 130, 144, 144, 162, 194, 253, 140, 141, 248, 130, 248, 137, 136, 140, 242, 141, 242, 136, 247, 248, 255, 136, 139, 248, 254, 130, 254, 140, 245, 250, 140, 241, 232, 164, 232, 246, 242, 129, 159, 253, 140, 141, 248, 130, 248, 137, 136, 140, 242, 141, 242, 136, 247, 248, 255, 136, 139, 248, 254, 130, 254, 140, 245, 250, 140, 241, 147, 232, 253, 140, 141, 248, 137, 136, 140, 242, 141, 242, 136, 247, 149, 130, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 139, 254, 141, 142, 139, 247, 232, 143, 254, 252, 171, 159, 253, 140, 141, 248, 137, 136, 140, 242, 141, 242, 136, 247, 147, 232, 159, 139, 250, 253, 242, 142, 140, 232, 150, 232, 140, 139, 252, 248, 252, 142, 139, 143, 254, 248, 139, 250, 253, 242, 142, 140, 144, 232, 148, 232, 168, 149, 151, 147, 232, 253, 140, 141, 248, 130, 248, 137, 136, 140, 242, 141, 242, 136, 247, 248, 255, 136, 139, 248, 254, 130, 254, 140, 245, 250, 140, 241, 144, 162, 194, 134, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 140, 136, 142, 139, 252, 254, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 194, 242, 255, 232, 159, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 140, 141, 250, 139, 141, 144, 144, 232, 133, 133, 194, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 240, 139, 242, 253, 248, 139, 136, 242, 248, 254, 247, 253, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 140, 136, 142, 139, 252, 254, 149, 139, 240, 251, 147, 232, 168, 149, 151, 144, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 255, 245, 136, 250, 141, 232, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 232, 164, 232, 168, 149, 151, 162, 194, 194, 242, 255, 232, 159, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 232, 165, 232, 151, 149, 151, 144, 194, 194, 132, 194, 194, 242, 255, 232, 159, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 232, 163, 232, 254, 250, 139, 248, 254, 138, 142, 250, 141, 242, 136, 247, 248, 245, 242, 246, 242, 141, 144, 194, 194, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 232, 164, 232, 254, 250, 139, 248, 245, 242, 247, 254, 248, 143, 250, 245, 142, 254, 232, 150, 232, 254, 250, 139, 248, 254, 138, 142, 250, 141, 242, 136, 247, 248, 245, 242, 246, 242, 141, 162, 194, 194, 136, 142, 141, 140, 242, 253, 254, 
        248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 232, 164, 232, 168, 149, 151, 232, 148, 232, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 162, 194, 194, 134, 194, 194, 194, 242, 255, 232, 159, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 163, 232, 168, 232, 157, 157, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 242, 247, 254, 139, 232, 163, 232, 168, 232, 157, 157, 232, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 250, 140, 241, 232, 163, 232, 168, 144, 232, 133, 133, 232, 250, 247, 130, 159, 245, 254, 140, 140, 237, 241, 250, 247, 159, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 139, 136, 242, 149, 140, 137, 144, 144, 232, 133, 133, 232, 250, 247, 130, 159, 240, 139, 254, 250, 141, 254, 139, 237, 241, 250, 247, 159, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 139, 136, 242, 149, 141, 138, 144, 144, 144, 194, 132, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 140, 136, 142, 139, 252, 254, 162, 194, 139, 254, 141, 142, 139, 247, 162, 194, 134, 194, 254, 245, 140, 254, 194, 132, 194, 255, 245, 136, 250, 141, 232, 141, 136, 137, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 164, 232, 140, 141, 254, 137, 159, 136, 139, 242, 254, 247, 141, 254, 253, 248, 142, 137, 137, 254, 139, 248, 245, 242, 253, 248, 252, 254, 247, 141, 254, 139, 149, 129, 147, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 144, 162, 194, 143, 254, 252, 171, 232, 141, 136, 137, 248, 245, 242, 253, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 232, 164, 232, 246, 242, 129, 159, 141, 136, 137, 248, 245, 254, 255, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 141, 136, 137, 248, 139, 242, 240, 241, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 141, 136, 137, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 232, 164, 232, 140, 141, 254, 137, 159, 136, 139, 242, 254, 247, 141, 254, 253, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 252, 254, 247, 141, 254, 139, 149, 129, 147, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 144, 162, 194, 143, 254, 252, 171, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 232, 164, 232, 246, 242, 129, 159, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 251, 136, 141, 141, 136, 246, 248, 139, 242, 240, 241, 141, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 232, 164, 232, 140, 141, 254, 137, 159, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 136, 139, 242, 240, 242, 247, 149, 130, 147, 232, 245, 254, 143, 254, 245, 248, 136, 
        139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 130, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 141, 136, 137, 248, 245, 242, 253, 248, 252, 136};
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final char[] f25638a = {139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 232, 164, 232, 246, 242, 129, 159, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 141, 136, 137, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 149, 129, 147, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 141, 136, 137, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 149, 130, 147, 232, 141, 136, 137, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 255, 245, 136, 250, 141, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 232, 164, 232, 246, 242, 129, 159, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 251, 136, 141, 141, 136, 246, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 149, 129, 147, 232, 136, 139, 242, 254, 247, 141, 254, 253, 248, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 251, 136, 141, 141, 136, 246, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 149, 130, 147, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 169, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 242, 247, 141, 232, 164, 232, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 141, 136, 137, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 149, 129, 130, 162, 194, 143, 254, 252, 169, 232, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 232, 164, 232, 246, 242, 129, 159, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 129, 130, 147, 232, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 131, 130, 147, 232, 141, 136, 137, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 143, 254, 252, 169, 232, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 232, 164, 232, 246, 242, 129, 159, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 129, 130, 147, 232, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 131, 130, 147, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 245, 254, 255, 141, 248, 139, 242, 240, 241, 141, 248, 137, 250, 139, 141, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 232, 145, 164, 232, 140, 141, 254, 137, 159, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 130, 147, 232, 246, 250, 129, 159, 151, 149, 151, 147, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 242, 247, 141, 149, 130, 232, 148, 232, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 149, 129, 232, 145, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 242, 247, 141, 149, 129, 232, 145, 232, 250, 245, 242, 240, 247, 254, 253, 248, 137, 136, 242, 247, 141, 149, 129, 144, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 232, 164, 232, 246, 242, 129, 159, 141, 136, 137, 248, 245, 242, 253, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 251, 136, 
        141, 141, 136, 246, 248, 245, 242, 253, 248, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 143, 254, 252, 169, 232, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 232, 164, 232, 246, 242, 129, 159, 250, 252, 141, 142, 250, 245, 248, 141, 136, 137, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 147, 232, 250, 252, 141, 142, 250, 245, 248, 251, 136, 141, 141, 136, 246, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 171, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 252, 254, 247, 141, 254, 139, 232, 164, 232, 246, 242, 129, 159, 141, 136, 137, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 147, 232, 251, 136, 141, 141, 136, 246, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 140, 139, 252, 248, 253, 140, 141, 248, 252, 254, 247, 141, 254, 139, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 143, 254, 252, 171, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 232, 164, 232, 246, 242, 129, 159, 141, 136, 137, 248, 245, 242, 253, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 171, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 232, 164, 232, 233, 250, 139, 250, 251, 136, 245, 242, 252, 233, 136, 245, 250, 139, 237, 139, 250, 247, 140, 255, 136, 139, 246, 159, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 147, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 252, 254, 247, 141, 254, 139, 149, 129, 130, 147, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 252, 254, 247, 141, 254, 139, 149, 131, 128, 147, 232, 194, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 129, 130, 147, 232, 140, 137, 245, 242, 247, 254, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 248, 250, 245, 242, 240, 247, 254, 253, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 252, 136, 254, 255, 255, 149, 131, 128, 147, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 129, 147, 232, 194, 250, 252, 141, 142, 250, 245, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 147, 232, 252, 136, 139, 247, 254, 139, 248, 141, 136, 248, 252, 254, 247, 141, 254, 139, 248, 140, 138, 142, 250, 139, 254, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 194, 143, 254, 252, 169, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 232, 164, 232, 159, 245, 254, 143, 254, 245, 248, 136, 139, 242, 254, 247, 141, 254, 253, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 148, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 136, 139, 242, 240, 242, 247, 144, 232, 145, 232, 143, 254, 252, 169, 159, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 129, 147, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 252, 250, 245, 254, 248, 130, 144, 232, 146, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 136, 139, 242, 240, 242, 247, 232, 146, 232, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 248, 140, 241, 242, 255, 
        141, 162, 232, 194, 194, 143, 254, 252, 169, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 232, 246, 242, 129, 159, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 140, 242, 246, 242, 245, 250, 139, 242, 141, 130, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 129, 130, 147, 232, 141, 136, 137, 248, 251, 136, 141, 141, 136, 246, 248, 245, 242, 253, 248, 140, 254, 245, 254, 252, 141, 136, 139, 144, 162, 194, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 130, 232, 145, 164, 232, 255, 139, 250, 246, 254, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 130, 248, 139, 254, 246, 250, 137, 137, 242, 247, 240, 248, 255, 250, 252, 141, 136, 139, 162, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 162, 194, 194, 143, 254, 252, 169, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 232, 164, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 129, 130, 162, 194, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 149, 130, 232, 145, 164, 232, 255, 139, 250, 246, 254, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 130, 248, 139, 254, 246, 250, 137, 137, 242, 247, 240, 248, 255, 250, 252, 141, 136, 139, 162, 194, 245, 136, 128, 137, 232, 143, 254, 252, 171, 232, 254, 130, 254, 245, 242, 247, 254, 139, 232, 164, 232, 136, 142, 141, 140, 242, 253, 254, 248, 255, 250, 252, 254, 248, 250, 253, 243, 142, 140, 141, 248, 250, 245, 137, 241, 250, 232, 145, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 162, 194, 194, 143, 254, 252, 169, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 250, 140, 241, 232, 164, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 129, 128, 162, 194, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 250, 140, 241, 149, 130, 232, 145, 164, 232, 255, 139, 250, 246, 254, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 130, 248, 139, 254, 246, 250, 137, 137, 242, 247, 240, 248, 255, 250, 252, 141, 136, 139, 162, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 254, 130, 254, 245, 250, 140, 241, 248, 250, 245, 137, 241, 250, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 130, 254, 245, 250, 140, 241, 248, 141, 254, 129, 141, 142, 139, 254, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 255, 136, 139, 248, 254, 130, 254, 245, 250, 140, 241, 144, 149, 250, 162, 194, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 255, 254, 250, 141, 241, 254, 139, 232, 164, 232, 246, 242, 129, 159, 151, 149, 172, 147, 232, 168, 149, 151, 147, 232, 140, 246, 136, 136, 141, 241, 140, 141, 254, 137, 159, 151, 149, 151, 147, 232, 151, 149, 168, 169, 172, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 131, 144, 144, 162, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 136, 142, 141, 140, 242, 253, 254, 248, 254, 130, 254, 232, 164, 232, 140, 141, 254, 137, 159, 151, 149, 151, 147, 232, 246, 250, 137, 137, 242, 247, 240, 248, 141, 136, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 251, 130, 248, 137, 250, 139, 250, 251, 136, 245, 242, 252, 248, 137, 136, 245, 250, 139, 248, 141, 139, 250, 247, 140, 255, 136, 139, 246, 149, 131, 144, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 248, 255, 254, 250, 141, 241, 254, 139, 232, 145, 232, 255, 245, 136, 250, 141, 159, 254, 247, 
        250, 251, 245, 254, 248, 254, 130, 254, 140, 241, 250, 253, 136, 128, 144, 162, 194, 194, 254, 130, 254, 140, 241, 250, 253, 136, 128, 232, 145, 164, 232, 136, 142, 141, 140, 242, 253, 254, 248, 254, 130, 254, 162, 194, 254, 130, 254, 245, 242, 247, 254, 139, 232, 145, 164, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 242, 247, 254, 139, 144, 162, 194, 254, 130, 254, 245, 250, 140, 241, 248, 250, 245, 137, 241, 250, 232, 145, 164, 232, 255, 245, 136, 250, 141, 159, 254, 247, 250, 251, 245, 254, 248, 254, 130, 254, 245, 250, 140, 241, 144, 162, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 232, 164, 232, 140, 136, 142, 139, 252, 254, 149, 139, 240, 251, 162, 194, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 140, 139, 252, 248, 130, 232, 164, 232, 253, 136, 141, 159, 252, 136, 245, 136, 139, 147, 232, 139, 240, 251, 248, 141, 136, 248, 130, 144, 162, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 250, 251, 140, 159, 140, 139, 252, 248, 130, 232, 148, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 144, 232, 150, 232, 246, 250, 129, 159, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 147, 232, 168, 149, 151, 232, 148, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 144, 162, 194, 194, 255, 245, 136, 250, 141, 232, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 168, 149, 151, 232, 148, 232, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 162, 194, 255, 245, 136, 250, 141, 232, 139, 254, 255, 248, 130, 232, 164, 232, 246, 242, 129, 159, 140, 139, 252, 248, 130, 147, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 147, 232, 151, 149, 174, 144, 162, 194, 255, 245, 136, 250, 141, 232, 245, 139, 248, 245, 142, 246, 250, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 246, 242, 247, 159, 139, 254, 255, 248, 130, 232, 150, 232, 159, 255, 250, 252, 254, 248, 250, 143, 254, 139, 250, 240, 254, 248, 245, 142, 246, 250, 232, 146, 232, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 144, 147, 232, 168, 149, 151, 144, 162, 194, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 232, 145, 164, 232, 245, 139, 248, 245, 142, 246, 250, 248, 128, 254, 242, 240, 241, 141, 162, 194, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 232, 164, 232, 168, 149, 151, 232, 148, 232, 252, 136, 245, 136, 139, 248, 128, 254, 242, 240, 241, 141, 162, 194, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 247, 136, 139, 246, 250, 245, 248, 130, 232, 164, 232, 246, 242, 247, 159, 140, 139, 252, 248, 130, 232, 150, 232, 246, 250, 129, 159, 255, 245, 141, 248, 254, 137, 140, 242, 245, 136, 247, 147, 232, 141, 250, 139, 240, 254, 141, 248, 254, 130, 254, 248, 245, 136, 128, 254, 139, 248, 245, 242, 253, 248, 245, 142, 246, 250, 144, 147, 232, 168, 149, 151, 144, 162, 194, 194, 245, 136, 128, 137, 232, 255, 245, 136, 250, 141, 232, 139, 250, 141, 242, 136, 248, 130, 232, 164, 232, 246, 250, 129, 159, 159, 247, 136, 139, 246, 250, 245, 248, 130, 232, 148, 232, 151, 149, 171, 144, 232, 150, 232, 151, 149, 173, 147, 232, 151, 149, 151, 144, 232, 145, 232, 151, 149, 170, 232, 146, 232, 151, 149, 175, 162, 194, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 250, 232, 146, 232, 159, 246, 250, 129, 248, 252, 136, 245, 136, 139, 232, 148, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 139, 240, 251, 232, 145, 232, 139, 250, 141, 242, 136, 248, 130, 162, 194, 194, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 232, 145, 164, 232, 250, 245, 137, 241, 250, 248, 250, 253, 243, 142, 140, 141, 248, 128, 254, 242, 240, 241, 141, 162, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 250, 232, 146, 232, 159, 246, 250, 129, 248, 252, 136, 245, 136, 139, 232, 148, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 139, 240, 251, 232, 145, 232, 252, 136, 245, 136, 139, 232, 145, 232, 139, 250, 141, 242, 136, 248, 130, 162, 194, 194, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 232, 
        145, 164, 232, 250, 245, 137, 241, 250, 248, 250, 253, 243, 142, 140, 141, 248, 128, 254, 242, 240, 241, 141, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 252, 136, 245, 136, 139, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 130, 254, 140, 241, 250, 253, 136, 128, 149, 250, 232, 145, 232, 250, 245, 137, 241, 250, 248, 250, 253, 243, 142, 140, 141, 248, 128, 254, 242, 240, 241, 141, 144, 232, 146, 232, 246, 242, 129, 159, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 147, 232, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 147, 232, 252, 245, 250, 246, 137, 159, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 144, 162, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 252, 245, 250, 246, 137, 159, 252, 136, 245, 136, 139, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 250, 232, 146, 232, 159, 246, 250, 129, 248, 252, 136, 245, 136, 139, 232, 148, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 139, 240, 251, 232, 145, 232, 139, 250, 141, 242, 136, 248, 130, 162, 194, 245, 136, 128, 137, 232, 143, 254, 252, 170, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 250, 232, 146, 232, 159, 246, 250, 129, 248, 252, 136, 245, 136, 139, 232, 148, 232, 246, 242, 247, 248, 252, 136, 245, 136, 139, 144, 232, 145, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 139, 240, 251, 232, 145, 232, 252, 136, 245, 136, 139, 232, 145, 232, 139, 250, 141, 242, 136, 248, 130, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 252, 136, 245, 136, 139, 232, 145, 232, 159, 168, 149, 151, 232, 148, 232, 254, 130, 254, 245, 242, 247, 254, 139, 149, 250, 144, 232, 146, 232, 246, 242, 129, 159, 254, 130, 254, 245, 242, 247, 254, 139, 248, 251, 245, 254, 247, 253, 248, 252, 136, 245, 136, 139, 147, 232, 254, 130, 254, 245, 242, 247, 254, 139, 248, 246, 142, 245, 141, 242, 137, 245, 130, 248, 252, 136, 245, 136, 139, 147, 232, 252, 245, 250, 246, 137, 159, 246, 142, 245, 141, 242, 137, 245, 130, 248, 128, 254, 242, 240, 241, 141, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 144, 162, 194, 252, 136, 245, 136, 139, 232, 164, 232, 252, 245, 250, 246, 137, 159, 252, 136, 245, 136, 139, 147, 232, 151, 149, 151, 147, 232, 168, 149, 151, 144, 162, 194, 194, 194, 252, 136, 245, 136, 139, 232, 164, 232, 246, 242, 129, 159, 252, 136, 245, 136, 139, 147, 232, 254, 130, 254, 245, 250, 140, 241, 248, 141, 254, 246, 137, 245, 250, 141, 254, 248, 252, 136, 245, 136, 139, 147, 232, 254, 130, 254, 245, 250, 140, 241, 248, 250, 245, 137, 241, 250, 144, 162, 194, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 252, 136, 245, 136, 139, 147, 232, 168, 149, 151, 144, 162, 194, 134, 194, 134, 194};
    }

    public static class f extends CLShare3DRelatedClasses.Live3DRenderData {
        public f() {
            super(null, null, null, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{1.0f, 1.0f, 1.0f}, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}, 1.0f, new float[]{1.0f, 1.0f, 1.0f}, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
            this.isPBR = true;
        }
    }

    public CLMakeupLiveEyeFilter(boolean z) {
        super(CLMakeupLiveDecode.a(H7), CLMakeupLiveDecode.a(a.f25634a) + CLMakeupLiveDecode.a(b.f25635a) + CLMakeupLiveDecode.a(c.f25636a), null, null);
        this.E5 = -1;
        this.G5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.I5 = -1;
        this.L5 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.M5 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.N5 = -1;
        this.Q5 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.R5 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.S5 = -1;
        this.V5 = new PointF[4];
        this.W5 = new PointF[4];
        this.Z5 = new int[2];
        this.a6 = new int[2];
        this.c6 = -1;
        this.f6 = -1;
        this.h6 = -1;
        this.j6 = -1;
        this.l6 = new Rect();
        this.m6 = new Rect();
        this.n6 = new Rect();
        this.I6 = false;
        this.J6 = false;
        this.K6 = false;
        this.Y6 = -1;
        this.e7 = new Object();
        this.f7 = new LiveEyeMakeupMetadata();
        this.g7 = new CLMakeupLiveFilter.LiveDynamicRangeMetadata();
        this.j7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.k7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.l7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.m7 = new CLShare3DRelatedClasses.Pass1BufferData();
        this.n7 = true;
        this.p7 = new float[4];
        this.x7 = 1.0f;
        this.F7 = new CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata();
        String strA = CLMakeupLiveDecode.a(CLMakeupLive3DFilter.m.f25559a);
        String str = CLMakeupLiveDecode.a(CLMakeupLive3DFilter.n.f25560a) + CLMakeupLiveDecode.a(CLMakeupLive3DFilter.o.f25561a) + CLMakeupLiveDecode.a(CLMakeupLive3DFilter.p.f25562a);
        this.A = strA;
        this.B = str;
        this.D5 = fc.v(ByteBuffer.allocateDirect(32));
        for (int i2 = 0; i2 < 4; i2++) {
            this.V5[i2] = new PointF();
            this.W5[i2] = new PointF();
        }
        this.n7 = z;
        for (int i3 = 0; i3 < 2; i3++) {
            this.Z5[i3] = -1;
        }
        this.c6 = -1;
        this.f6 = -1;
        this.h6 = -1;
        this.j6 = -1;
        this.E5 = -1;
        this.G5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0107  */
    /* JADX WARN: Code duplicated, block: B:44:0x0143 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x0145 A[Catch: all -> 0x00df, TryCatch #1 {all -> 0x00df, blocks: (B:24:0x0096, B:27:0x00c4, B:30:0x00e2, B:32:0x00f9, B:34:0x0101, B:38:0x010b, B:39:0x0117, B:41:0x013c, B:49:0x0158, B:52:0x03b5, B:53:0x03ca, B:55:0x03e4, B:56:0x048f, B:54:0x03ce, B:45:0x0145, B:47:0x014d), top: B:65:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x014d A[Catch: all -> 0x00df, TryCatch #1 {all -> 0x00df, blocks: (B:24:0x0096, B:27:0x00c4, B:30:0x00e2, B:32:0x00f9, B:34:0x0101, B:38:0x010b, B:39:0x0117, B:41:0x013c, B:49:0x0158, B:52:0x03b5, B:53:0x03ca, B:55:0x03e4, B:56:0x048f, B:54:0x03ce, B:45:0x0145, B:47:0x014d), top: B:65:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0157  */
    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void d() {
        float f2;
        float fMax;
        float f3;
        int i2;
        FloatBuffer floatBufferWrap;
        synchronized (this.e7) {
            try {
                CLMakeupLiveFilter.LiveDynamicRangeMetadata liveDynamicRangeMetadata = this.g7;
                float f4 = liveDynamicRangeMetadata.min_luma;
                float f5 = liveDynamicRangeMetadata.max_luma;
                this.O6 = f5;
                this.P6 = f5 - f4;
                boolean z = this.n7;
                float[] fArr = z ? liveDynamicRangeMetadata.left_min_rgb : liveDynamicRangeMetadata.right_min_rgb;
                float[] fArr2 = z ? liveDynamicRangeMetadata.left_max_rgb : liveDynamicRangeMetadata.right_max_rgb;
                for (int i3 = 0; i3 < 3; i3++) {
                    float[] fArr3 = this.M5;
                    float f6 = fArr[i3];
                    fArr3[i3] = ((fArr2[i3] - f6) * this.L5[i3]) + f6;
                    float[] fArr4 = this.R5;
                    float f7 = fArr[i3];
                    fArr4[i3] = ((fArr2[i3] - f7) * this.Q5[i3]) + f7;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        GLES20.glUniform3fv(this.K5, 1, FloatBuffer.wrap(this.M5));
        GLES20.glUniform3fv(this.P5, 1, FloatBuffer.wrap(this.R5));
        GLES20.glUniform1f(this.R6, this.O6);
        GLES20.glUniform1f(this.S6, this.P6);
        GLES20.glUniform1f(this.o7, this.n7 ? 0.0f : 1.0f);
        GLES20.glUniform1f(this.y7, this.x7);
        GLES20.glUniform2fv(this.c7, 1, this.m, 0);
        GLES20.glUniform2fv(this.d7, 1, this.n, 0);
        synchronized (this.e7) {
            try {
                this.D5.clear();
                this.D5.put(o0(G7, this.f7.m_rotation));
                this.D5.position(0);
                GLES20.glVertexAttribPointer(this.C5, 2, 5126, false, 0, (Buffer) this.D5);
                GLES20.glEnableVertexAttribArray(this.C5);
                for (int i4 = 0; i4 < 4; i4++) {
                    PointF pointF = this.V5[i4];
                    PointF pointF2 = this.W5[i4];
                    pointF.x = pointF2.x / this.X5;
                    pointF.y = pointF2.y / this.Y5;
                }
                int i5 = this.r7;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata = this.f7;
                GLES20.glUniform2f(i5, liveEyeMakeupMetadata.m_analyzing_frame_width, liveEyeMakeupMetadata.m_analyzing_frame_height);
                int i6 = this.X5;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata2 = this.f7;
                int i7 = liveEyeMakeupMetadata2.m_analyzing_frame_height;
                if (i6 * i7 > 0) {
                    int i8 = this.Y5;
                    int i9 = liveEyeMakeupMetadata2.m_analyzing_frame_width;
                    if (i8 * i9 > 0) {
                        f2 = (i8 * i9) / (i6 * i7);
                    } else {
                        f2 = 1.0f;
                    }
                } else {
                    f2 = 1.0f;
                }
                for (int i10 = 0; i10 < 4; i10++) {
                    this.V5[i10].y *= f2;
                }
                GLES20.glUniform1f(this.o6, 1.0f / f2);
                PointF[] pointFArr = this.V5;
                float f8 = pointFArr[2].x - pointFArr[0].x;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata3 = this.f7;
                PointF[] pointFArr2 = liveEyeMakeupMetadata3.m_oriented_eye_points;
                float f9 = f8 / (pointFArr2[2].x - pointFArr2[0].x);
                boolean z2 = this.n7;
                if (z2) {
                    fMax = liveEyeMakeupMetadata3.m_eye_scale_left_to_right;
                    if (fMax >= 1.0f) {
                        if (z2) {
                            fMax = 1.0f;
                        } else {
                            f3 = liveEyeMakeupMetadata3.m_eye_scale_left_to_right;
                            if (1.0f / f3 < 1.0f) {
                                fMax = 1.0f / Math.max(f3, 1.0E-5f);
                            } else {
                                fMax = 1.0f;
                            }
                        }
                    }
                } else if (z2) {
                    f3 = liveEyeMakeupMetadata3.m_eye_scale_left_to_right;
                    if (1.0f / f3 < 1.0f) {
                        fMax = 1.0f / Math.max(f3, 1.0E-5f);
                    } else {
                        fMax = 1.0f;
                    }
                } else {
                    fMax = 1.0f;
                }
                float fMin = Math.min(1.0f, fMax / 0.9f) * f9;
                GLES20.glUniform1f(this.Q6, Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, ((((1.0f / f9) * this.X5) / Call.Parameters.DEFAULT_CAMERA_ZOOM) - 0.35f) / 0.3f)));
                Rect rect = new Rect();
                rect.union(this.l6);
                rect.union(this.m6);
                rect.union(this.n6);
                PointF[] pointFArr3 = this.W5;
                PointF pointF3 = new PointF(pointFArr3[1].x, pointFArr3[0].y);
                float[] fArr5 = this.p7;
                float f10 = pointF3.x;
                float f11 = f10 - rect.left;
                PointF[] pointFArr4 = this.W5;
                fArr5[0] = f11 / (f10 - pointFArr4[0].x);
                float f12 = pointF3.y;
                fArr5[1] = (f12 - rect.top) / (f12 - pointFArr4[1].y);
                fArr5[2] = (rect.right - f10) / (pointFArr4[2].x - f10);
                fArr5[3] = (rect.bottom - f12) / (pointFArr4[3].y - f12);
                PointF[] pointFArr5 = this.f7.m_oriented_eye_centers;
                float fMax2 = Math.max(pointFArr5[0].x, pointFArr5[1].x);
                float f13 = this.p7[0];
                LiveEyeMakeupMetadata liveEyeMakeupMetadata4 = this.f7;
                float f14 = liveEyeMakeupMetadata4.m_oriented_eye_points[0].x;
                PointF[] pointFArr6 = liveEyeMakeupMetadata4.m_oriented_eye_centers;
                float fMin2 = Math.min(tr.a(f14, Math.max(pointFArr6[0].x, pointFArr6[1].x), f13, fMax2), this.f7.m_oriented_eye_centers[0].x - ((this.V5[1].x - (rect.left / this.X5)) / f9));
                PointF[] pointFArr7 = this.f7.m_oriented_eye_centers;
                float fMin3 = Math.min(pointFArr7[0].x, pointFArr7[1].x);
                float f15 = this.p7[2];
                LiveEyeMakeupMetadata liveEyeMakeupMetadata5 = this.f7;
                float f16 = liveEyeMakeupMetadata5.m_oriented_eye_points[2].x;
                PointF[] pointFArr8 = liveEyeMakeupMetadata5.m_oriented_eye_centers;
                float fMax3 = Math.max(tr.a(f16, Math.min(pointFArr8[0].x, pointFArr8[1].x), f15, fMin3), (((rect.right / this.X5) - this.V5[1].x) / f9) + this.f7.m_oriented_eye_centers[0].x);
                LiveEyeMakeupMetadata liveEyeMakeupMetadata6 = this.f7;
                float f17 = liveEyeMakeupMetadata6.m_oriented_eye_centers[0].y;
                float fMin4 = Math.min(tr.a(liveEyeMakeupMetadata6.m_oriented_eye_points[1].y, f17, this.p7[1], f17), f17 - ((this.V5[0].y - ((rect.top / this.Y5) * f2)) / fMin));
                float f18 = this.f7.m_oriented_eye_points[3].y;
                PointF[] pointFArr9 = this.V5;
                GLES20.glUniform4f(this.q7, fMin2, fMax3, fMin4, Math.max((((this.p7[3] - 1.0f) * (pointFArr9[3].y - pointFArr9[0].y)) / fMin) + f18, f18));
                GLES20.glUniform1f(this.p6, this.f7.m_target_eye_lower_lid_luma);
                GLES20.glUniform1f(this.q6, this.h7);
                GLES20.glUniform1f(this.r6, this.i7);
                int i11 = this.s6;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata7 = this.f7;
                GLES20.glUniform2f(i11, liveEyeMakeupMetadata7.m_target_level_orientation_cos, liveEyeMakeupMetadata7.m_target_level_orientation_sin);
                int i12 = this.t6;
                PointF pointF4 = this.f7.m_oriented_eye_centers[0];
                GLES20.glUniform2f(i12, pointF4.x, pointF4.y);
                int i13 = this.u6;
                PointF pointF5 = this.f7.m_oriented_eye_centers[1];
                GLES20.glUniform2f(i13, pointF5.x, pointF5.y);
                int i14 = this.v6;
                PointF pointF6 = this.f7.m_oriented_eye_points[0];
                GLES20.glUniform2f(i14, pointF6.x, pointF6.y);
                int i15 = this.w6;
                PointF pointF7 = this.V5[0];
                float f19 = pointF7.x;
                PointF pointF8 = this.f7.m_oriented_eye_points[0];
                GLES20.glUniform2f(i15, f19 - pointF8.x, pointF7.y - pointF8.y);
                GLES20.glUniform1f(this.x6, f9);
                GLES20.glUniform1f(this.y6, fMin);
                int i16 = this.z6;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata8 = this.f7;
                PointF pointF9 = liveEyeMakeupMetadata8.m_parabolic_polar_transform_top_left_src_center;
                float f20 = pointF9.x;
                float f21 = pointF9.y;
                PointF pointF10 = liveEyeMakeupMetadata8.m_parabolic_polar_transform_top_left_dst_center;
                GLES20.glUniform4f(i16, f20, f21, pointF10.x, pointF10.y);
                int i17 = this.A6;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata9 = this.f7;
                float[] fArr6 = liveEyeMakeupMetadata9.m_parabolic_polar_transform_top_left_src_aligned_coeff;
                float f22 = fArr6[0];
                float f23 = fArr6[1];
                float[] fArr7 = liveEyeMakeupMetadata9.m_parabolic_polar_transform_top_left_dst_aligned_coeff;
                GLES20.glUniform4f(i17, f22, f23, fArr7[0], fArr7[1]);
                int i18 = this.B6;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata10 = this.f7;
                float[] fArr8 = liveEyeMakeupMetadata10.m_parabolic_polar_transform_top_right_src_aligned_coeff;
                float f24 = fArr8[0];
                float f25 = fArr8[1];
                float[] fArr9 = liveEyeMakeupMetadata10.m_parabolic_polar_transform_top_right_dst_aligned_coeff;
                GLES20.glUniform4f(i18, f24, f25, fArr9[0], fArr9[1]);
                int i19 = this.C6;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata11 = this.f7;
                PointF pointF11 = liveEyeMakeupMetadata11.m_parabolic_polar_transform_bottom_left_src_center;
                float f26 = pointF11.x;
                float f27 = pointF11.y;
                PointF pointF12 = liveEyeMakeupMetadata11.m_parabolic_polar_transform_bottom_left_dst_center;
                GLES20.glUniform4f(i19, f26, f27, pointF12.x, pointF12.y);
                int i20 = this.D6;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata12 = this.f7;
                float[] fArr10 = liveEyeMakeupMetadata12.m_parabolic_polar_transform_bottom_left_src_aligned_coeff;
                float f28 = fArr10[0];
                float f29 = fArr10[1];
                float[] fArr11 = liveEyeMakeupMetadata12.m_parabolic_polar_transform_bottom_left_dst_aligned_coeff;
                GLES20.glUniform4f(i20, f28, f29, fArr11[0], fArr11[1]);
                int i21 = this.E6;
                LiveEyeMakeupMetadata liveEyeMakeupMetadata13 = this.f7;
                float[] fArr12 = liveEyeMakeupMetadata13.m_parabolic_polar_transform_bottom_right_src_aligned_coeff;
                float f30 = fArr12[0];
                float f31 = fArr12[1];
                float[] fArr13 = liveEyeMakeupMetadata13.m_parabolic_polar_transform_bottom_right_dst_aligned_coeff;
                GLES20.glUniform4f(i21, f30, f31, fArr13[0], fArr13[1]);
                int i22 = this.F6;
                CLMakeupLiveFilter.LiveDynamicRangeMetadata liveDynamicRangeMetadata2 = this.g7;
                GLES20.glUniform2f(i22, liveDynamicRangeMetadata2.min_luma, liveDynamicRangeMetadata2.max_luma);
                boolean z3 = this.n7;
                int i23 = this.G6;
                if (z3) {
                    GLES20.glUniform3fv(i23, 1, FloatBuffer.wrap(this.g7.left_min_rgb));
                    i2 = this.H6;
                    floatBufferWrap = FloatBuffer.wrap(this.g7.left_max_rgb);
                } else {
                    GLES20.glUniform3fv(i23, 1, FloatBuffer.wrap(this.g7.right_min_rgb));
                    i2 = this.H6;
                    floatBufferWrap = FloatBuffer.wrap(this.g7.right_max_rgb);
                }
                GLES20.glUniform3fv(i2, 1, floatBufferWrap);
                LiveEyeMakeupMetadata liveEyeMakeupMetadata14 = this.f7;
                GLES20.glUniform1f(this.s7, Math.max(0.2f, Math.min(1.0f, ((liveEyeMakeupMetadata14.m_parabolic_polar_transform_top_left_src_aligned_coeff[1] * f9) / liveEyeMakeupMetadata14.m_parabolic_polar_transform_top_left_dst_aligned_coeff[1]) * 1.2f)));
                LiveEyeMakeupMetadata liveEyeMakeupMetadata15 = this.f7;
                float f32 = liveEyeMakeupMetadata15.m_oriented_eye_centers[0].x;
                PointF[] pointFArr10 = liveEyeMakeupMetadata15.m_oriented_eye_points;
                float f33 = f32 - pointFArr10[0].x;
                float f34 = pointFArr10[2].x - f32;
                float f35 = f33 * f33;
                float f36 = f34 * f34;
                GLES20.glUniform2f(this.z7, f35, f36);
                LiveEyeMakeupMetadata liveEyeMakeupMetadata16 = this.f7;
                float fMin5 = liveEyeMakeupMetadata16.m_parabolic_polar_transform_top_left_src_aligned_coeff[1] * Math.min(1.0f, liveEyeMakeupMetadata16.m_ratio_of_actual_upper_lid_height_to_limited_height);
                float f37 = fMin5 * (-1.0f);
                GLES20.glUniform3f(this.A7, f37 / f35, fMin5, f37 / f36);
                LiveEyeMakeupMetadata liveEyeMakeupMetadata17 = this.f7;
                float f38 = liveEyeMakeupMetadata17.m_oriented_eye_centers[1].x;
                PointF[] pointFArr11 = liveEyeMakeupMetadata17.m_oriented_eye_points;
                float f39 = f38 - pointFArr11[0].x;
                float f40 = pointFArr11[2].x - f38;
                float f41 = f39 * f39;
                float f42 = f40 * f40;
                GLES20.glUniform2f(this.B7, f41, f42);
                LiveEyeMakeupMetadata liveEyeMakeupMetadata18 = this.f7;
                float fMin6 = liveEyeMakeupMetadata18.m_parabolic_polar_transform_bottom_left_src_aligned_coeff[1] * Math.min(1.0f, liveEyeMakeupMetadata18.m_ratio_of_actual_lower_lid_height_to_limited_height);
                float f43 = (-1.0f) * fMin6;
                GLES20.glUniform3f(this.C7, f43 / f41, fMin6, f43 / f42);
                GLES20.glUniform1f(this.t7, this.f7.m_ear_line_equation_a);
                GLES20.glUniform1f(this.u7, this.f7.m_ear_line_equation_b);
                GLES20.glUniform1f(this.v7, this.f7.m_ear_line_equation_c);
                GLES20.glUniform1f(this.w7, this.f7.m_ear_line_distance_limit);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        GLES20.glUniform1i(this.L6, this.I6 ? 1 : 0);
        GLES20.glUniform1i(this.M6, this.J6 ? 1 : 0);
        GLES20.glUniform1i(this.N6, this.K6 ? 1 : 0);
        GLES20.glUniform1f(this.H5, this.G5);
    }

    public final void k0(int i2, int i3, int i4, int[] iArr, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.I5 = i2;
        this.N5 = i3;
        this.S5 = i4;
        this.E5 = i9;
        int length = iArr.length;
        int[] iArr2 = this.Z5;
        int iMin = Math.min(length, iArr2.length);
        for (int i11 = 0; i11 < iMin; i11++) {
            iArr2[i11] = iArr[i11];
        }
        this.c6 = i5;
        this.f6 = i6;
        this.h6 = i8;
        this.j6 = i7;
        this.Y6 = i10;
    }

    public final void l0(int i2, int i3, PointF[] pointFArr) {
        PointF[] pointFArr2 = this.W5;
        this.X5 = i2;
        this.Y5 = i3;
        for (int i4 = 0; i4 < 4; i4++) {
            pointFArr2[i4] = pointFArr[i4];
        }
        PointF pointF = new PointF(pointFArr2[1].x, pointFArr2[0].y);
        float[] fArr = this.p7;
        float f2 = pointF.x;
        fArr[0] = f2 / (f2 - pointFArr2[0].x);
        float f3 = pointF.y;
        fArr[1] = f3 / (f3 - pointFArr2[1].y);
        fArr[2] = (i2 - f2) / (pointFArr2[2].x - f2);
        fArr[3] = (i3 - f3) / (pointFArr2[3].y - f3);
        this.l6.set(Math.round(f2), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
        this.m6.set(Math.round(pointF.x), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
        this.n6.set(Math.round(pointF.x), Math.round(pointF.y), Math.round(pointF.x), Math.round(pointF.y));
    }

    public final void m0(CLShare3DRelatedClasses.Pass1BufferData pass1BufferData, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4, CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5) {
        synchronized (this.v) {
            this.j7 = pass1BufferData;
            this.p = pass1BufferData2;
            this.l7 = pass1BufferData3;
            this.k7 = pass1BufferData4;
            this.m7 = pass1BufferData5;
        }
    }

    public final void n0(LiveEyeMakeupMetadata liveEyeMakeupMetadata, CLMakeupLiveFilter.LiveDynamicRangeMetadata liveDynamicRangeMetadata, float f2, float f3, LiveEye3DMetadata liveEye3DMetadata) {
        synchronized (this.e7) {
            this.f7.Copy(liveEyeMakeupMetadata);
            this.g7.Copy(liveDynamicRangeMetadata);
            this.h7 = f2;
            this.i7 = f3;
        }
        synchronized (this.h0) {
            try {
                boolean z = liveEye3DMetadata.is_valid;
                this.i0 = z;
                if (z) {
                    this.j0 = liveEye3DMetadata.rotation;
                    this.k0 = liveEye3DMetadata.is_flip;
                    System.arraycopy(liveEye3DMetadata.pnp_matrix, 0, this.l0, 0, 12);
                    System.arraycopy(liveEye3DMetadata.camera_matrix, 0, this.m0, 0, 9);
                    System.arraycopy(liveEye3DMetadata.normal_pnp_matrix, 0, this.n0, 0, 16);
                    CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = this.p0;
                    if (live3DRenderDataArr != null && live3DRenderDataArr[0] != null) {
                        liveEye3DMetadata.SetTangentArray();
                        this.p0[0].UpdateCoordinates(liveEye3DMetadata.vertex_array, liveEye3DMetadata.normal_array, liveEye3DMetadata.texcoord_array, liveEye3DMetadata.tangent_array);
                        this.p0[0].UpdateBrdf(LiveEye3DMetadata.brdf_lut_width, LiveEye3DMetadata.brdf_lut_height, LiveEye3DMetadata.m_brdf_texture_buffer);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final float[] o0(float[] fArr, int i2) {
        int i3 = this.o0;
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
        this.j7.DestroyData();
        this.l7.DestroyData();
        this.k7.DestroyData();
        this.m7.DestroyData();
        this.F7.p_buffer = null;
        GLES20.glDeleteProgram(this.T6);
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter, com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        CLShare3DRelatedClasses.Live3DRenderData live3DRenderData;
        CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2;
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData4;
        if (isInitialized()) {
            synchronized (this.v) {
                try {
                    CLShare3DRelatedClasses.Pass1BufferData pass1BufferData5 = this.j7;
                    if (pass1BufferData5 != null && pass1BufferData5.frame_buffer != null && pass1BufferData5.frame_buffer_texture != null && pass1BufferData5.width > 0 && pass1BufferData5.height > 0 && (pass1BufferData = this.p) != null && pass1BufferData.frame_buffer != null && pass1BufferData.frame_buffer_texture != null && pass1BufferData.depth_buffer != null && pass1BufferData.width > 0 && pass1BufferData.height > 0 && (pass1BufferData2 = this.k7) != null && pass1BufferData2.frame_buffer != null && pass1BufferData2.frame_buffer_texture != null && pass1BufferData2.depth_buffer != null && pass1BufferData2.width > 0 && pass1BufferData2.height > 0 && (pass1BufferData3 = this.l7) != null && pass1BufferData3.frame_buffer != null && pass1BufferData3.frame_buffer_texture != null && pass1BufferData3.width > 0 && pass1BufferData3.height > 0 && (!this.F7.is_valid || ((pass1BufferData4 = this.m7) != null && pass1BufferData4.frame_buffer != null && pass1BufferData4.frame_buffer_texture != null && pass1BufferData4.width > 0 && pass1BufferData4.height > 0))) {
                        IntBuffer intBufferAllocate = IntBuffer.allocate(1024);
                        GLES20.glGetIntegerv(36006, intBufferAllocate);
                        GLES20.glUseProgram(this.mGLProgId);
                        GLES20.glBindFramebuffer(36160, this.j7.frame_buffer[0]);
                        floatBuffer.position(0);
                        GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer);
                        GLES20.glEnableVertexAttribArray(this.d);
                        floatBuffer2.position(0);
                        GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.f25445f);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        if (i2 != -1) {
                            GLES20.glActiveTexture(33984);
                            GLES20.glBindTexture(3553, i2);
                            GLES20.glUniform1i(this.f25444e, 0);
                        }
                        int i8 = 33985;
                        if (this.I5 != -1) {
                            GLES20.glActiveTexture(33985);
                            GLES20.glBindTexture(3553, this.I5);
                            GLES20.glUniform1i(this.J5, 1);
                        }
                        GLES20.glUniform1i(this.D7, 1);
                        GLES20.glUniform1i(this.E7, 1);
                        d();
                        GLES20.glDrawArrays(5, 0, 4);
                        GLES20.glDisableVertexAttribArray(this.d);
                        GLES20.glDisableVertexAttribArray(this.f25445f);
                        GLES20.glBindTexture(3553, 0);
                        GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
                        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = this.p0;
                        if (live3DRenderDataArr != null && (live3DRenderData2 = live3DRenderDataArr[0]) != null) {
                            this.p3 = CLMakeupLive3DFilter.h.f25552b;
                            live3DRenderData2.SetCustomTextureID(this.j7.frame_buffer_texture[0]);
                            if (!i0()) {
                                CLShare3DRelatedClasses.Pass1BufferData pass1BufferData6 = this.p;
                                int i9 = pass1BufferData6.width >> 1;
                                int i10 = pass1BufferData6.height >> 1;
                                pass1BufferData6.DestroyData();
                                this.p.CreateData(i9, i10);
                                q0(this.p3);
                            }
                        }
                        IntBuffer intBufferAllocate2 = IntBuffer.allocate(1024);
                        GLES20.glGetIntegerv(36006, intBufferAllocate2);
                        GLES20.glUseProgram(this.mGLProgId);
                        GLES20.glBindFramebuffer(36160, this.j7.frame_buffer[0]);
                        floatBuffer.position(0);
                        GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer);
                        GLES20.glEnableVertexAttribArray(this.d);
                        floatBuffer2.position(0);
                        GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.f25445f);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        if (i2 != -1) {
                            GLES20.glActiveTexture(33984);
                            GLES20.glBindTexture(3553, i2);
                            GLES20.glUniform1i(this.f25444e, 0);
                        }
                        if (this.N5 != -1) {
                            GLES20.glActiveTexture(33985);
                            GLES20.glBindTexture(3553, this.N5);
                            GLES20.glUniform1i(this.O5, 1);
                        }
                        GLES20.glUniform1i(this.D7, 1);
                        GLES20.glUniform1i(this.E7, 0);
                        d();
                        GLES20.glDrawArrays(5, 0, 4);
                        GLES20.glDisableVertexAttribArray(this.d);
                        GLES20.glDisableVertexAttribArray(this.f25445f);
                        GLES20.glBindTexture(3553, 0);
                        GLES20.glBindFramebuffer(36160, intBufferAllocate2.get(0));
                        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr2 = this.p0;
                        if (live3DRenderDataArr2 != null && (live3DRenderData = live3DRenderDataArr2[0]) != null) {
                            this.p3 = CLMakeupLive3DFilter.h.f25553c;
                            live3DRenderData.SetCustomTextureID(this.j7.frame_buffer_texture[0]);
                            if (!q0(this.p3)) {
                                CLShare3DRelatedClasses.Pass1BufferData pass1BufferData7 = this.k7;
                                int i11 = pass1BufferData7.width >> 1;
                                int i12 = pass1BufferData7.height >> 1;
                                pass1BufferData7.DestroyData();
                                this.k7.CreateData(i11, i12);
                                q0(this.p3);
                            }
                        }
                        IntBuffer intBufferAllocate3 = IntBuffer.allocate(1024);
                        GLES20.glGetIntegerv(36006, intBufferAllocate3);
                        GLES20.glUseProgram(this.mGLProgId);
                        GLES20.glBindFramebuffer(36160, this.l7.frame_buffer[0]);
                        floatBuffer.position(0);
                        GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer);
                        GLES20.glEnableVertexAttribArray(this.d);
                        floatBuffer2.position(0);
                        GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.f25445f);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        if (i2 != -1) {
                            GLES20.glActiveTexture(33984);
                            GLES20.glBindTexture(3553, i2);
                            GLES20.glUniform1i(this.f25444e, 0);
                        }
                        if (this.I5 != -1) {
                            GLES20.glActiveTexture(33985);
                            GLES20.glBindTexture(3553, this.I5);
                            GLES20.glUniform1i(this.J5, 1);
                            i3 = 2;
                            i4 = 33986;
                        } else {
                            i3 = 1;
                            i4 = 33985;
                        }
                        for (int i13 = 0; i13 < 2; i13++) {
                            if (this.Z5[i13] != -1) {
                                GLES20.glActiveTexture(i4);
                                GLES20.glBindTexture(3553, this.Z5[i13]);
                                GLES20.glUniform1i(this.a6[i13], i3);
                                i4++;
                                i3++;
                            }
                        }
                        if (this.p.frame_buffer_texture[0] != -1) {
                            GLES20.glActiveTexture(i4);
                            GLES20.glBindTexture(3553, this.p.frame_buffer_texture[0]);
                            GLES20.glUniform1i(this.b6, i3);
                            i4++;
                            i3++;
                        }
                        if (this.c6 != -1) {
                            GLES20.glActiveTexture(i4);
                            GLES20.glBindTexture(3553, this.c6);
                            GLES20.glUniform1i(this.d6, i3);
                            i4++;
                            i3++;
                        }
                        if (this.E5 != -1) {
                            GLES20.glActiveTexture(i4);
                            GLES20.glBindTexture(3553, this.E5);
                            GLES20.glUniform1i(this.F5, i3);
                        }
                        GLES20.glUniform1i(this.D7, 0);
                        GLES20.glUniform1i(this.E7, 1);
                        d();
                        GLES20.glDrawArrays(5, 0, 4);
                        GLES20.glDisableVertexAttribArray(this.d);
                        GLES20.glDisableVertexAttribArray(this.f25445f);
                        GLES20.glBindTexture(3553, 0);
                        GLES20.glBindFramebuffer(36160, intBufferAllocate3.get(0));
                        GLES20.glUseProgram(this.mGLProgId);
                        IntBuffer intBufferAllocate4 = IntBuffer.allocate(1);
                        if (this.F7.is_valid) {
                            GLES20.glGetIntegerv(36006, intBufferAllocate4);
                            GLES20.glBindFramebuffer(36160, this.m7.frame_buffer[0]);
                        }
                        floatBuffer.position(0);
                        GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer);
                        GLES20.glEnableVertexAttribArray(this.d);
                        floatBuffer2.position(0);
                        GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) floatBuffer2);
                        GLES20.glEnableVertexAttribArray(this.f25445f);
                        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        GLES20.glClear(16640);
                        if (i2 != -1) {
                            GLES20.glActiveTexture(33984);
                            GLES20.glBindTexture(3553, i2);
                            GLES20.glUniform1i(this.f25444e, 0);
                        }
                        if (this.l7.frame_buffer_texture[0] != -1) {
                            GLES20.glActiveTexture(33985);
                            GLES20.glBindTexture(3553, this.l7.frame_buffer_texture[0]);
                            GLES20.glUniform1i(this.U5, 1);
                            i6 = 33986;
                            i5 = 2;
                        } else {
                            i5 = 1;
                            i6 = 33985;
                        }
                        if (this.N5 != -1) {
                            GLES20.glActiveTexture(i6);
                            GLES20.glBindTexture(3553, this.N5);
                            GLES20.glUniform1i(this.O5, i5);
                            i6++;
                            i5++;
                        }
                        if (this.S5 != -1) {
                            GLES20.glActiveTexture(i6);
                            GLES20.glBindTexture(3553, this.S5);
                            GLES20.glUniform1i(this.T5, i5);
                            i6++;
                            i5++;
                        }
                        if (this.k7.frame_buffer_texture[0] != -1) {
                            GLES20.glActiveTexture(i6);
                            GLES20.glBindTexture(3553, this.k7.frame_buffer_texture[0]);
                            GLES20.glUniform1i(this.e6, i5);
                            i6++;
                            i5++;
                        }
                        if (this.f6 != -1) {
                            GLES20.glActiveTexture(i6);
                            GLES20.glBindTexture(3553, this.f6);
                            GLES20.glUniform1i(this.g6, i5);
                            i6++;
                            i5++;
                        }
                        if (this.h6 != -1) {
                            GLES20.glActiveTexture(i6);
                            GLES20.glBindTexture(3553, this.h6);
                            GLES20.glUniform1i(this.i6, i5);
                            i6++;
                            i5++;
                        }
                        if (this.j6 != -1) {
                            GLES20.glActiveTexture(i6);
                            GLES20.glBindTexture(3553, this.j6);
                            GLES20.glUniform1i(this.k6, i5);
                        }
                        GLES20.glUniform1i(this.D7, 0);
                        GLES20.glUniform1i(this.E7, 0);
                        d();
                        GLES20.glDrawArrays(5, 0, 4);
                        GLES20.glDisableVertexAttribArray(this.d);
                        GLES20.glDisableVertexAttribArray(this.f25445f);
                        GLES20.glBindTexture(3553, 0);
                        if (this.F7.is_valid) {
                            GLES20.glBindFramebuffer(36160, intBufferAllocate4.get(0));
                        }
                        if (this.F7.is_valid) {
                            GLES20.glUseProgram(this.T6);
                            floatBuffer.position(0);
                            GLES20.glVertexAttribPointer(this.U6, 2, 5126, false, 0, (Buffer) floatBuffer);
                            GLES20.glEnableVertexAttribArray(this.U6);
                            floatBuffer2.position(0);
                            GLES20.glVertexAttribPointer(this.V6, 2, 5126, false, 0, (Buffer) floatBuffer2);
                            GLES20.glEnableVertexAttribArray(this.V6);
                            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            GLES20.glClear(16640);
                            GLES20.glUniform1i(this.b7, this.F7.is_valid ? 1 : 0);
                            int i14 = this.a7;
                            CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata liveFaceRegionOccludeMetadata = this.F7;
                            GLES20.glUniform4f(i14, liveFaceRegionOccludeMetadata.mask_roi_normalized_left, liveFaceRegionOccludeMetadata.mask_roi_normalized_right, 1.0f - liveFaceRegionOccludeMetadata.mask_roi_normalized_bottom, 1.0f - liveFaceRegionOccludeMetadata.mask_roi_normalized_top);
                            if (i2 != -1) {
                                GLES20.glActiveTexture(33985);
                                GLES20.glBindTexture(3553, i2);
                                GLES20.glUniform1i(this.W6, 1);
                                i8 = 33986;
                                i7 = 2;
                            } else {
                                i7 = 1;
                            }
                            if (this.m7.frame_buffer_texture[0] != -1) {
                                GLES20.glActiveTexture(i8);
                                GLES20.glBindTexture(3553, this.m7.frame_buffer_texture[0]);
                                GLES20.glUniform1i(this.X6, i7);
                                i8++;
                                i7++;
                            }
                            if (this.Y6 != -1) {
                                GLES20.glActiveTexture(i8);
                                GLES20.glBindTexture(3553, this.Y6);
                                IntBuffer intBufferAllocate5 = IntBuffer.allocate(1);
                                GLES20.glGetIntegerv(3317, intBufferAllocate5);
                                GLES20.glPixelStorei(3317, 1);
                                CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata liveFaceRegionOccludeMetadata2 = this.F7;
                                GLES20.glTexImage2D(3553, 0, 6406, liveFaceRegionOccludeMetadata2.width, liveFaceRegionOccludeMetadata2.height, 0, 6406, 5121, ByteBuffer.wrap(liveFaceRegionOccludeMetadata2.p_buffer));
                                GLES20.glPixelStorei(3317, intBufferAllocate5.get(0));
                                GLES20.glUniform1i(this.Z6, i7);
                            }
                            GLES20.glDrawArrays(5, 0, 4);
                            GLES20.glDisableVertexAttribArray(this.U6);
                            GLES20.glDisableVertexAttribArray(this.V6);
                            GLES20.glBindTexture(3553, 0);
                        }
                        super.f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter, com.cyberlink.clgpuimage.GPUImageFilter
    public void onInit() {
        super.onInit();
        this.C5 = GLES20.glGetAttribLocation(getProgram(), "inputTemplateTextureCoordinate");
        this.J5 = GLES20.glGetUniformLocation(getProgram(), "eyeshadow_texture");
        this.O5 = GLES20.glGetUniformLocation(getProgram(), "eyeliner_texture");
        this.T5 = GLES20.glGetUniformLocation(getProgram(), "eyelash_texture");
        this.F5 = GLES20.glGetUniformLocation(getProgram(), "rootImageTexture");
        this.H5 = GLES20.glGetUniformLocation(getProgram(), "apply_on_root_source");
        this.U5 = GLES20.glGetUniformLocation(getProgram(), "eyeshadow_result_texture");
        this.b6 = GLES20.glGetUniformLocation(getProgram(), "metallic_eyeshadow_texture");
        this.d6 = GLES20.glGetUniformLocation(getProgram(), "eyeshadow_metallic_intensity_texture");
        this.e6 = GLES20.glGetUniformLocation(getProgram(), "metallic_eyeliner_texture");
        this.g6 = GLES20.glGetUniformLocation(getProgram(), "eyeliner_metallic_intensity_texture");
        this.i6 = GLES20.glGetUniformLocation(getProgram(), "eyeliner_shimmer_color_texture");
        this.k6 = GLES20.glGetUniformLocation(getProgram(), "eyeliner_bright_glitter_texture");
        this.o7 = GLES20.glGetUniformLocation(getProgram(), "left_right_flip");
        this.K5 = GLES20.glGetUniformLocation(getProgram(), "eyeliner_template_color");
        this.P5 = GLES20.glGetUniformLocation(getProgram(), "eyelash_template_color");
        this.o6 = GLES20.glGetUniformLocation(getProgram(), "frame_to_template_y_remapping_factor");
        this.p6 = GLES20.glGetUniformLocation(getProgram(), "target_eye_lower_lid_luma");
        this.q6 = GLES20.glGetUniformLocation(getProgram(), "face_average_luma");
        this.r6 = GLES20.glGetUniformLocation(getProgram(), "shimmer_luma_normalizer");
        this.s6 = GLES20.glGetUniformLocation(getProgram(), "level_orient_cos_sin");
        this.t6 = GLES20.glGetUniformLocation(getProgram(), "oriented_upper_lid_center");
        this.u6 = GLES20.glGetUniformLocation(getProgram(), "oriented_lower_lid_center");
        this.v6 = GLES20.glGetUniformLocation(getProgram(), "similarity_origin");
        this.w6 = GLES20.glGetUniformLocation(getProgram(), "similarity_shift");
        this.x6 = GLES20.glGetUniformLocation(getProgram(), "similarity_scale_x");
        this.y6 = GLES20.glGetUniformLocation(getProgram(), "similarity_scale_y");
        this.z6 = GLES20.glGetUniformLocation(getProgram(), "top_spline_transform_src_dst_center");
        this.A6 = GLES20.glGetUniformLocation(getProgram(), "top_left_spline_transform_src_dst_aligned_parabolic_coeff");
        this.B6 = GLES20.glGetUniformLocation(getProgram(), "top_right_spline_transform_src_dst_aligned_parabolic_coeff");
        this.C6 = GLES20.glGetUniformLocation(getProgram(), "bottom_spline_transform_src_dst_center");
        this.D6 = GLES20.glGetUniformLocation(getProgram(), "bottom_left_spline_transform_src_dst_aligned_parabolic_coeff");
        this.E6 = GLES20.glGetUniformLocation(getProgram(), "bottom_right_spline_transform_src_dst_aligned_parabolic_coeff");
        this.L6 = GLES20.glGetUniformLocation(getProgram(), "enable_eyeshadow");
        this.M6 = GLES20.glGetUniformLocation(getProgram(), "enable_eyeliner");
        this.N6 = GLES20.glGetUniformLocation(getProgram(), "enable_eyelash");
        this.I6 = this.I6;
        this.J6 = this.J6;
        this.K6 = this.K6;
        this.t7 = GLES20.glGetUniformLocation(getProgram(), "ear_equation_a");
        this.u7 = GLES20.glGetUniformLocation(getProgram(), "ear_equation_b");
        this.v7 = GLES20.glGetUniformLocation(getProgram(), "ear_equation_c");
        this.w7 = GLES20.glGetUniformLocation(getProgram(), "ear_equation_limit");
        this.q7 = GLES20.glGetUniformLocation(getProgram(), "roi");
        this.r7 = GLES20.glGetUniformLocation(getProgram(), "analyzing_frame_width_height_in_pixel");
        this.F6 = GLES20.glGetUniformLocation(getProgram(), "environment_luma");
        this.G6 = GLES20.glGetUniformLocation(getProgram(), "min_color");
        this.H6 = GLES20.glGetUniformLocation(getProgram(), "max_color");
        this.s7 = GLES20.glGetUniformLocation(getProgram(), "upper_lid_eyelash_y_scale_adjuster");
        this.Q6 = GLES20.glGetUniformLocation(getProgram(), "shimmer_model_scale");
        this.R6 = GLES20.glGetUniformLocation(getProgram(), "max_luma");
        this.S6 = GLES20.glGetUniformLocation(getProgram(), "luma_range");
        int[] iArr = this.a6;
        iArr[0] = GLES20.glGetUniformLocation(getProgram(), "bright_glitter_0_texture");
        iArr[1] = GLES20.glGetUniformLocation(getProgram(), "bright_glitter_1_texture");
        this.y7 = GLES20.glGetUniformLocation(getProgram(), "alpha_adjust_weight");
        this.z7 = GLES20.glGetUniformLocation(getProgram(), "oriented_target_eye_left_right_corner_to_top_center_square");
        this.A7 = GLES20.glGetUniformLocation(getProgram(), "actual_top_left_right_parabolic");
        this.B7 = GLES20.glGetUniformLocation(getProgram(), "oriented_target_eye_left_right_corner_to_bottom_center_square");
        this.C7 = GLES20.glGetUniformLocation(getProgram(), "actual_bottom_left_right_parabolic");
        this.D7 = GLES20.glGetUniformLocation(getProgram(), "is_render_template_only");
        this.E7 = GLES20.glGetUniformLocation(getProgram(), "is_eyeshadow_pass");
        this.c7 = GLES20.glGetUniformLocation(getProgram(), "grid_roi_start");
        this.d7 = GLES20.glGetUniformLocation(getProgram(), "grid_roi_end");
        int iD = OpenGlUtils.d(CLMakeupLiveDecode.a(I7), CLMakeupLiveDecode.a(J7));
        this.T6 = iD;
        this.U6 = GLES20.glGetAttribLocation(iD, "position");
        this.V6 = GLES20.glGetAttribLocation(this.T6, "inputTextureCoordinate");
        this.W6 = GLES20.glGetUniformLocation(this.T6, "inputImageTexture");
        this.X6 = GLES20.glGetUniformLocation(this.T6, "eyesMakeupTexture");
        this.Z6 = GLES20.glGetUniformLocation(this.T6, "makeupMaskTexture");
        this.a7 = GLES20.glGetUniformLocation(this.T6, "makeup_region_roi");
        this.b7 = GLES20.glGetUniformLocation(this.T6, "is_makeup_region_mask_valid");
        GLES20.glGetUniformLocation(this.T6, "is_show_makeup_region_mask");
    }

    @Override // com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter, com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        this.g = i2;
        this.f25446h = i3;
    }

    public final void p0(int i2) {
        float[] fArr = this.Q5;
        fArr[0] = Color.red(i2) / 255.0f;
        fArr[1] = Color.green(i2) / 255.0f;
        fArr[2] = Color.blue(i2) / 255.0f;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x009a A[Catch: all -> 0x00b4, TryCatch #0 {all -> 0x00b4, blocks: (B:17:0x0087, B:19:0x009a, B:21:0x00b0, B:24:0x00b6), top: B:39:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x00b0 A[Catch: all -> 0x00b4, TryCatch #0 {all -> 0x00b4, blocks: (B:17:0x0087, B:19:0x009a, B:21:0x00b0, B:24:0x00b6), top: B:39:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0100  */
    /* JADX WARN: Code duplicated, block: B:30:0x0104  */
    /* JADX WARN: Code duplicated, block: B:39:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0108 A[EDGE_INSN: B:46:0x0108->B:32:0x0108 BREAK  A[LOOP:1: B:26:0x00fa->B:48:?], SYNTHETIC] */
    public final boolean q0(int i2) {
        int i3;
        int iGlGetError;
        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr;
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
        if (i2 != CLMakeupLive3DFilter.h.f25552b) {
            if (i2 == CLMakeupLive3DFilter.h.f25553c) {
                CLShare3DRelatedClasses.Pass1BufferData pass1BufferData = this.k7;
                GLES20.glViewport(0, 0, pass1BufferData.width, pass1BufferData.height);
                i3 = this.k7.frame_buffer[0];
            }
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glClear(16640);
            GLES20.glEnable(2929);
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, 771);
            GLES20.glDisable(2884);
            GLES20.glEnableVertexAttribArray(this.b0);
            GLES20.glEnableVertexAttribArray(this.c0);
            GLES20.glEnableVertexAttribArray(this.d0);
            synchronized (this.h0) {
                try {
                    GLES20.glUniform1f(this.K3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    GLES20.glUniform1i(this.L3, -1);
                    this.C3 = false;
                    this.B3 = -1;
                    if (this.i0) {
                        GLES20.glUseProgram(this.a0);
                        GLES20.glClear(256);
                        GLES20.glDisable(2884);
                        GLES20.glUniform1f(this.U0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        live3DRenderDataArr = this.p0;
                        if (live3DRenderDataArr != null) {
                            E(live3DRenderDataArr);
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
                if (iGlGetError != 0) {
                    return true;
                }
                if (iGlGetError != 1285) {
                    break;
                }
            } while (iGlGetError != 1286);
            return false;
        }
        CLShare3DRelatedClasses.Pass1BufferData pass1BufferData2 = this.p;
        GLES20.glViewport(0, 0, pass1BufferData2.width, pass1BufferData2.height);
        i3 = this.p.frame_buffer[0];
        GLES20.glBindFramebuffer(36160, i3);
        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        GLES20.glClear(16640);
        GLES20.glEnable(2929);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(1, 771);
        GLES20.glDisable(2884);
        GLES20.glEnableVertexAttribArray(this.b0);
        GLES20.glEnableVertexAttribArray(this.c0);
        GLES20.glEnableVertexAttribArray(this.d0);
        synchronized (this.h0) {
            GLES20.glUniform1f(this.K3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glUniform1i(this.L3, -1);
            this.C3 = false;
            this.B3 = -1;
            if (this.i0) {
                GLES20.glUseProgram(this.a0);
                GLES20.glClear(256);
                GLES20.glDisable(2884);
                GLES20.glUniform1f(this.U0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                live3DRenderDataArr = this.p0;
                if (live3DRenderDataArr != null) {
                    E(live3DRenderDataArr);
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
                if (iGlGetError != 0) {
                    return true;
                }
                if (iGlGetError != 1285) {
                    break;
                    break;
                }
            } while (iGlGetError != 1286);
            return false;
        }
    }
}
