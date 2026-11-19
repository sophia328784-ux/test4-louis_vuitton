package defpackage;

import android.animation.TypeEvaluator;
import com.google.android.material.animation.AnimationUtils;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kc0 implements TypeEvaluator {
    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f2, Object obj, Object obj2) {
        float[] fArr = (float[]) obj;
        float[] fArr2 = (float[]) obj2;
        return new float[]{AnimationUtils.a(fArr[0], fArr2[0], f2), AnimationUtils.a(fArr[1], fArr2[1], f2), AnimationUtils.a(fArr[2], fArr2[2], f2), AnimationUtils.a(fArr[3], fArr2[3], f2), AnimationUtils.a(fArr[4], fArr2[4], f2), AnimationUtils.a(fArr[5], fArr2[5], f2), AnimationUtils.a(fArr[6], fArr2[6], f2), AnimationUtils.a(fArr[7], fArr2[7], f2)};
    }
}
