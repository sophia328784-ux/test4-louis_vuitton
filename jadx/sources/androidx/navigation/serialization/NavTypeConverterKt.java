package androidx.navigation.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-common_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavTypeConverterKt {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18361a;

        static {
            int[] iArr = new int[InternalType.values().length];
            try {
                iArr[InternalType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InternalType.STRING_NULLABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InternalType.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InternalType.BOOL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[InternalType.DOUBLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[InternalType.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[InternalType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[InternalType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[InternalType.INT_NULLABLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[InternalType.BOOL_NULLABLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[InternalType.DOUBLE_NULLABLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[InternalType.FLOAT_NULLABLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[InternalType.LONG_NULLABLE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[InternalType.INT_ARRAY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[InternalType.BOOL_ARRAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[InternalType.DOUBLE_ARRAY.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[InternalType.FLOAT_ARRAY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[InternalType.LONG_ARRAY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[InternalType.ARRAY.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[InternalType.LIST.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[InternalType.ENUM_NULLABLE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            f18361a = iArr;
        }
    }

    public static final InternalType a(SerialDescriptor serialDescriptor) {
        String strJ = StringsKt.J(serialDescriptor.getF75568a(), "?", "");
        if (Intrinsics.c(serialDescriptor.getF75548b(), SerialKind.ENUM.f75563a)) {
            return serialDescriptor.b() ? InternalType.ENUM_NULLABLE : InternalType.ENUM;
        }
        if (strJ.equals("kotlin.Int")) {
            return serialDescriptor.b() ? InternalType.INT_NULLABLE : InternalType.INT;
        }
        if (strJ.equals("kotlin.Boolean")) {
            return serialDescriptor.b() ? InternalType.BOOL_NULLABLE : InternalType.BOOL;
        }
        if (strJ.equals("kotlin.Double")) {
            return serialDescriptor.b() ? InternalType.DOUBLE_NULLABLE : InternalType.DOUBLE;
        }
        if (strJ.equals("kotlin.Float")) {
            return serialDescriptor.b() ? InternalType.FLOAT_NULLABLE : InternalType.FLOAT;
        }
        if (strJ.equals("kotlin.Long")) {
            return serialDescriptor.b() ? InternalType.LONG_NULLABLE : InternalType.LONG;
        }
        if (strJ.equals("kotlin.String")) {
            return serialDescriptor.b() ? InternalType.STRING_NULLABLE : InternalType.STRING;
        }
        if (strJ.equals("kotlin.IntArray")) {
            return InternalType.INT_ARRAY;
        }
        if (strJ.equals("kotlin.DoubleArray")) {
            return InternalType.DOUBLE_ARRAY;
        }
        if (strJ.equals("kotlin.BooleanArray")) {
            return InternalType.BOOL_ARRAY;
        }
        if (strJ.equals("kotlin.FloatArray")) {
            return InternalType.FLOAT_ARRAY;
        }
        if (strJ.equals("kotlin.LongArray")) {
            return InternalType.LONG_ARRAY;
        }
        if (strJ.equals("kotlin.Array")) {
            return InternalType.ARRAY;
        }
        return StringsKt.P(strJ, "kotlin.collections.ArrayList", false) ? InternalType.LIST : InternalType.UNKNOWN;
    }
}
