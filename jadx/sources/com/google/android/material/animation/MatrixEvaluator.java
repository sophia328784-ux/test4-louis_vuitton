package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public class MatrixEvaluator implements TypeEvaluator<Matrix> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f32235a = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f32236b = new float[9];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f32237c = new Matrix();

    @Override // android.animation.TypeEvaluator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix evaluate(float f2, Matrix matrix, Matrix matrix2) {
        float[] fArr = this.f32235a;
        matrix.getValues(fArr);
        float[] fArr2 = this.f32236b;
        matrix2.getValues(fArr2);
        for (int i2 = 0; i2 < 9; i2++) {
            float f3 = fArr2[i2];
            float f4 = fArr[i2];
            fArr2[i2] = tr.a(f3, f4, f2, f4);
        }
        Matrix matrix3 = this.f32237c;
        matrix3.setValues(fArr2);
        return matrix3;
    }
}
