package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.fc;
import defpackage.o60;
import defpackage.v40;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
final class JvmTypeFactoryImpl implements JvmTypeFactory<JvmType> {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73255a;

        static {
            int[] iArr = new int[PrimitiveType.values().length];
            try {
                iArr[PrimitiveType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrimitiveType.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrimitiveType.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrimitiveType.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PrimitiveType.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PrimitiveType.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PrimitiveType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PrimitiveType.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f73255a = iArr;
        }
    }

    public static JvmType a(String str) {
        JvmPrimitiveType jvmPrimitiveType;
        char cCharAt = str.charAt(0);
        JvmPrimitiveType[] jvmPrimitiveTypeArrValues = JvmPrimitiveType.values();
        int length = jvmPrimitiveTypeArrValues.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                jvmPrimitiveType = null;
                break;
            }
            jvmPrimitiveType = jvmPrimitiveTypeArrValues[i2];
            if (jvmPrimitiveType.d().charAt(0) == cCharAt) {
                break;
            }
            i2++;
        }
        if (jvmPrimitiveType != null) {
            return new JvmType.Primitive(jvmPrimitiveType);
        }
        if (cCharAt == 'V') {
            return new JvmType.Primitive(null);
        }
        if (cCharAt == '[') {
            return new JvmType.Array(a(str.substring(1)));
        }
        if (cCharAt == 'L') {
            StringsKt.q(str, ';');
        }
        return new JvmType.Object(o60.g(1, 1, str));
    }

    public static String b(JvmType jvmType) {
        String strD;
        jvmType.getClass();
        if (jvmType instanceof JvmType.Array) {
            return "[".concat(b(((JvmType.Array) jvmType).f73252j));
        }
        if (jvmType instanceof JvmType.Primitive) {
            JvmPrimitiveType jvmPrimitiveType = ((JvmType.Primitive) jvmType).f73254j;
            return (jvmPrimitiveType == null || (strD = jvmPrimitiveType.d()) == null) ? "V" : strD;
        }
        if (jvmType instanceof JvmType.Object) {
            return fc.l(new StringBuilder("L"), ((JvmType.Object) jvmType).f73253j, ';');
        }
        v40.g();
        return null;
    }
}
