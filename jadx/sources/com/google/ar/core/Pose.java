package com.google.ar.core;

import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class Pose {
    public static final Pose IDENTITY = new Pose(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM}, Quaternion.f33346a);
    private final Quaternion quaternion;
    private final float[] translation;

    private Pose(float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.quaternion = new Quaternion(f5, f6, f7, f8);
        this.translation = new float[]{f2, f3, f4};
    }

    public static Pose makeInterpolated(Pose pose, Pose pose2, float f2) {
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return pose;
        }
        if (f2 == 1.0f) {
            return pose2;
        }
        float[] fArr = new float[3];
        for (int i2 = 0; i2 < 3; i2++) {
            fArr[i2] = (pose2.translation[i2] * f2) + ((1.0f - f2) * pose.translation[i2]);
        }
        return new Pose(fArr, Quaternion.h(pose.quaternion, pose2.quaternion, f2));
    }

    public static Pose makeRotation(float[] fArr) {
        return makeRotation(fArr[0], fArr[1], fArr[2], fArr[3]);
    }

    public static Pose makeTranslation(float f2, float f3, float f4) {
        return new Pose(new float[]{f2, f3, f4}, IDENTITY.quaternion);
    }

    public Pose compose(Pose pose) {
        float[] fArr = new float[3];
        Quaternion.i(this.quaternion, pose.translation, 0, fArr, 0);
        float f2 = fArr[0];
        float[] fArr2 = this.translation;
        fArr[0] = f2 + fArr2[0];
        fArr[1] = fArr[1] + fArr2[1];
        fArr[2] = fArr[2] + fArr2[2];
        return new Pose(fArr, this.quaternion.g(pose.quaternion));
    }

    public Pose extractRotation() {
        return new Pose(IDENTITY.translation, this.quaternion);
    }

    public Pose extractTranslation() {
        return new Pose(this.translation, IDENTITY.quaternion);
    }

    public Quaternion getQuaternion() {
        return this.quaternion;
    }

    public float[] getRotationQuaternion() {
        float[] fArr = new float[4];
        getRotationQuaternion(fArr, 0);
        return fArr;
    }

    public void getTransformedAxis(int i2, float f2, float[] fArr, int i3) {
        float[] fArr2 = new float[3];
        fArr2[0] = 0.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        fArr2[i2] = f2;
        Quaternion.i(this.quaternion, fArr2, 0, fArr, i3);
    }

    public float[] getTranslation() {
        float[] fArr = new float[3];
        getTranslation(fArr, 0);
        return fArr;
    }

    public float[] getXAxis() {
        return getTransformedAxis(0, 1.0f);
    }

    public float[] getYAxis() {
        return getTransformedAxis(1, 1.0f);
    }

    public float[] getZAxis() {
        return getTransformedAxis(2, 1.0f);
    }

    public Pose inverse() {
        float[] fArr = new float[3];
        Quaternion quaternionF = this.quaternion.f();
        Quaternion.i(quaternionF, this.translation, 0, fArr, 0);
        fArr[0] = -fArr[0];
        fArr[1] = -fArr[1];
        fArr[2] = -fArr[2];
        return new Pose(fArr, quaternionF);
    }

    public float qw() {
        return this.quaternion.d();
    }

    public float qx() {
        return this.quaternion.a();
    }

    public float qy() {
        return this.quaternion.b();
    }

    public float qz() {
        return this.quaternion.c();
    }

    public float[] rotateVector(float[] fArr) {
        float[] fArr2 = new float[3];
        rotateVector(fArr, 0, fArr2, 0);
        return fArr2;
    }

    public void toMatrix(float[] fArr, int i2) {
        this.quaternion.j(fArr, i2);
        float[] fArr2 = this.translation;
        fArr[i2 + 12] = fArr2[0];
        fArr[i2 + 13] = fArr2[1];
        fArr[i2 + 14] = fArr2[2];
        fArr[i2 + 3] = 0.0f;
        fArr[i2 + 7] = 0.0f;
        fArr[i2 + 11] = 0.0f;
        fArr[i2 + 15] = 1.0f;
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "t:[x:%.3f, y:%.3f, z:%.3f], q:[x:%.2f, y:%.2f, z:%.2f, w:%.2f]", Float.valueOf(this.translation[0]), Float.valueOf(this.translation[1]), Float.valueOf(this.translation[2]), Float.valueOf(this.quaternion.a()), Float.valueOf(this.quaternion.b()), Float.valueOf(this.quaternion.c()), Float.valueOf(this.quaternion.d()));
    }

    public void transformPoint(float[] fArr, int i2, float[] fArr2, int i3) {
        rotateVector(fArr, i2, fArr2, i3);
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = i4 + i3;
            fArr2[i5] = fArr2[i5] + this.translation[i4];
        }
    }

    public float tx() {
        return this.translation[0];
    }

    public float ty() {
        return this.translation[1];
    }

    public float tz() {
        return this.translation[2];
    }

    public void getRotationQuaternion(float[] fArr, int i2) {
        this.quaternion.e(fArr, i2);
    }

    public void getTranslation(float[] fArr, int i2) {
        System.arraycopy(this.translation, 0, fArr, i2, 3);
    }

    public void rotateVector(float[] fArr, int i2, float[] fArr2, int i3) {
        Quaternion.i(this.quaternion, fArr, i2, fArr2, i3);
    }

    public static Pose makeRotation(float f2, float f3, float f4, float f5) {
        return new Pose(IDENTITY.translation, new Quaternion(f2, f3, f4, f5));
    }

    public float[] getTransformedAxis(int i2, float f2) {
        float[] fArr = new float[3];
        getTransformedAxis(i2, f2, fArr, 0);
        return fArr;
    }

    public static Pose makeTranslation(float[] fArr) {
        return makeTranslation(fArr[0], fArr[1], fArr[2]);
    }

    public float[] transformPoint(float[] fArr) {
        float[] fArr2 = new float[3];
        transformPoint(fArr, 0, fArr2, 0);
        return fArr2;
    }

    private Pose(float[] fArr, Quaternion quaternion) {
        this.translation = fArr;
        this.quaternion = quaternion;
    }

    public Pose(float[] fArr, float[] fArr2) {
        this(fArr[0], fArr[1], fArr[2], fArr2[0], fArr2[1], fArr2[2], fArr2[3]);
    }
}
