package kotlin.reflect.jvm.internal.impl.types.model;

import defpackage.v40;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeSystemContextKt {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74315a;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f74315a = iArr;
        }
    }

    public static final TypeVariance a(Variance variance) {
        variance.getClass();
        int i2 = WhenMappings.f74315a[variance.ordinal()];
        if (i2 == 1) {
            return TypeVariance.INV;
        }
        if (i2 == 2) {
            return TypeVariance.IN;
        }
        if (i2 == 3) {
            return TypeVariance.OUT;
        }
        v40.g();
        return null;
    }
}
