package kotlin.reflect.jvm.internal.impl.km.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.tr;
import defpackage.v40;
import defpackage.v7;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.collections.MapsKt;
import kotlin.reflect.jvm.internal.impl.km.KmAnnotation;
import kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ReadUtilsKt {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72785a;

        static {
            int[] iArr = new int[ProtoBuf$Annotation.Argument.Value.Type.values().length];
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.SHORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.LONG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.CHAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.CLASS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ENUM.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ANNOTATION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ARRAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            f72785a = iArr;
        }
    }

    public static final String a(NameResolver nameResolver, int i2) {
        nameResolver.getClass();
        String strB = nameResolver.b(i2);
        return nameResolver.a(i2) ? tr.g(FileUtils.HIDDEN_PREFIX, strB) : strB;
    }

    public static final KmAnnotation b(ProtoBuf$Annotation protoBuf$Annotation, NameResolver nameResolver) {
        protoBuf$Annotation.getClass();
        nameResolver.getClass();
        String strA = a(nameResolver, protoBuf$Annotation.d);
        List<ProtoBuf$Annotation.Argument> list = protoBuf$Annotation.f73302e;
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (ProtoBuf$Annotation.Argument argument : list) {
            ProtoBuf$Annotation.Argument.Value value = argument.f73308e;
            value.getClass();
            KmAnnotationArgument kmAnnotationArgumentC = c(value, nameResolver);
            Pair pair = kmAnnotationArgumentC != null ? new Pair(nameResolver.getString(argument.d), kmAnnotationArgumentC) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return new KmAnnotation(strA, MapsKt.n(arrayList));
    }

    public static final KmAnnotationArgument c(ProtoBuf$Annotation.Argument.Value value, NameResolver nameResolver) {
        value.getClass();
        nameResolver.getClass();
        boolean zBooleanValue = Flags.P.d(value.n).booleanValue();
        ProtoBuf$Annotation.Argument.Value.Type type = value.d;
        if (zBooleanValue) {
            int i2 = type != null ? WhenMappings.f72785a[type.ordinal()] : -1;
            if (i2 == 1) {
                byte b2 = (byte) value.f73314e;
                UByte.Companion companion = UByte.INSTANCE;
                return new KmAnnotationArgument.UByteValue(b2, null);
            }
            if (i2 == 2) {
                short s = (short) value.f73314e;
                UShort.Companion companion2 = UShort.INSTANCE;
                return new KmAnnotationArgument.UShortValue(s, null);
            }
            if (i2 == 3) {
                int i3 = (int) value.f73314e;
                UInt.Companion companion3 = UInt.INSTANCE;
                return new KmAnnotationArgument.UIntValue(i3, null);
            }
            if (i2 != 4) {
                v7.i(value.d, "Cannot read value of unsigned type: ");
                return null;
            }
            long j2 = value.f73314e;
            ULong.Companion companion4 = ULong.INSTANCE;
            return new KmAnnotationArgument.ULongValue(j2, null);
        }
        switch (type != null ? WhenMappings.f72785a[type.ordinal()] : -1) {
            case -1:
                return null;
            case 0:
            default:
                v40.g();
                return null;
            case 1:
                return new KmAnnotationArgument.ByteValue((byte) value.f73314e);
            case 2:
                return new KmAnnotationArgument.ShortValue((short) value.f73314e);
            case 3:
                return new KmAnnotationArgument.IntValue((int) value.f73314e);
            case 4:
                return new KmAnnotationArgument.LongValue(value.f73314e);
            case 5:
                return new KmAnnotationArgument.CharValue((char) value.f73314e);
            case 6:
                return new KmAnnotationArgument.FloatValue(value.f73315f);
            case 7:
                return new KmAnnotationArgument.DoubleValue(value.g);
            case 8:
                return new KmAnnotationArgument.BooleanValue(value.f73314e != 0);
            case 9:
                return new KmAnnotationArgument.StringValue(nameResolver.getString(value.f73316h));
            case 10:
                String strA = a(nameResolver, value.f73317i);
                int i4 = value.m;
                return i4 == 0 ? new KmAnnotationArgument.KClassValue(strA) : new KmAnnotationArgument.ArrayKClassValue(strA, i4);
            case 11:
                return new KmAnnotationArgument.EnumValue(a(nameResolver, value.f73317i), nameResolver.getString(value.f73318j));
            case 12:
                ProtoBuf$Annotation protoBuf$Annotation = value.f73319k;
                protoBuf$Annotation.getClass();
                return new KmAnnotationArgument.AnnotationValue(b(protoBuf$Annotation, nameResolver));
            case 13:
                List<ProtoBuf$Annotation.Argument.Value> list = value.l;
                list.getClass();
                ArrayList arrayList = new ArrayList();
                for (ProtoBuf$Annotation.Argument.Value value2 : list) {
                    value2.getClass();
                    KmAnnotationArgument kmAnnotationArgumentC = c(value2, nameResolver);
                    if (kmAnnotationArgumentC != null) {
                        arrayList.add(kmAnnotationArgumentC);
                    }
                }
                return new KmAnnotationArgument.ArrayValue(arrayList);
        }
    }
}
