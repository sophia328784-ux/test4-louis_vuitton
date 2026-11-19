package kotlinx.serialization.internal;

import defpackage.md;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.MapBuilderValues;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.uuid.Uuid;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PrimitivesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MapBuilder f75673a;

    static {
        MapBuilder mapBuilder = new MapBuilder();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        KClass kClassB = reflectionFactory.b(String.class);
        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
        mapBuilder.put(kClassB, StringSerializer.f75684a);
        KClass kClassB2 = reflectionFactory.b(Character.TYPE);
        CharCompanionObject.f71906a.getClass();
        mapBuilder.put(kClassB2, CharSerializer.f75586a);
        mapBuilder.put(reflectionFactory.b(char[].class), CharArraySerializer.f75585c);
        KClass kClassB3 = reflectionFactory.b(Double.TYPE);
        DoubleCompanionObject.f71910a.getClass();
        mapBuilder.put(kClassB3, DoubleSerializer.f75602a);
        mapBuilder.put(reflectionFactory.b(double[].class), DoubleArraySerializer.f75601c);
        KClass kClassB4 = reflectionFactory.b(Float.TYPE);
        FloatCompanionObject.f71911a.getClass();
        mapBuilder.put(kClassB4, FloatSerializer.f75616a);
        mapBuilder.put(reflectionFactory.b(float[].class), FloatArraySerializer.f75615c);
        KClass kClassB5 = reflectionFactory.b(Long.TYPE);
        LongCompanionObject.f71915a.getClass();
        mapBuilder.put(kClassB5, LongSerializer.f75635a);
        mapBuilder.put(reflectionFactory.b(long[].class), LongArraySerializer.f75634c);
        KClass kClassB6 = reflectionFactory.b(ULong.class);
        ULong.INSTANCE.getClass();
        mapBuilder.put(kClassB6, ULongSerializer.f75705a);
        KClass kClassB7 = reflectionFactory.b(Integer.TYPE);
        IntCompanionObject.f71912a.getClass();
        mapBuilder.put(kClassB7, IntSerializer.f75624a);
        mapBuilder.put(reflectionFactory.b(int[].class), IntArraySerializer.f75623c);
        KClass kClassB8 = reflectionFactory.b(UInt.class);
        UInt.INSTANCE.getClass();
        mapBuilder.put(kClassB8, UIntSerializer.f75700a);
        KClass kClassB9 = reflectionFactory.b(Short.TYPE);
        ShortCompanionObject.f71924a.getClass();
        mapBuilder.put(kClassB9, ShortSerializer.f75682a);
        mapBuilder.put(reflectionFactory.b(short[].class), ShortArraySerializer.f75681c);
        KClass kClassB10 = reflectionFactory.b(UShort.class);
        UShort.INSTANCE.getClass();
        mapBuilder.put(kClassB10, UShortSerializer.f75710a);
        KClass kClassB11 = reflectionFactory.b(Byte.TYPE);
        ByteCompanionObject.f71904a.getClass();
        mapBuilder.put(kClassB11, ByteSerializer.f75579a);
        mapBuilder.put(reflectionFactory.b(byte[].class), ByteArraySerializer.f75578c);
        KClass kClassB12 = reflectionFactory.b(UByte.class);
        UByte.INSTANCE.getClass();
        mapBuilder.put(kClassB12, UByteSerializer.f75695a);
        KClass kClassB13 = reflectionFactory.b(Boolean.TYPE);
        BooleanCompanionObject.f71903a.getClass();
        mapBuilder.put(kClassB13, BooleanSerializer.f75574a);
        mapBuilder.put(reflectionFactory.b(boolean[].class), BooleanArraySerializer.f75573c);
        KClass kClassB14 = reflectionFactory.b(Unit.class);
        Unit.f71739a.getClass();
        mapBuilder.put(kClassB14, UnitSerializer.f75712b);
        mapBuilder.put(reflectionFactory.b(Void.class), NothingSerializer.f75649a);
        try {
            KClass kClassB15 = reflectionFactory.b(Duration.class);
            Duration.INSTANCE.getClass();
            mapBuilder.put(kClassB15, DurationSerializer.f75604a);
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        try {
            mapBuilder.put(Reflection.f71922a.b(ULongArray.class), ULongArraySerializer.f75704c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
        }
        try {
            mapBuilder.put(Reflection.f71922a.b(UIntArray.class), UIntArraySerializer.f75699c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused3) {
        }
        try {
            mapBuilder.put(Reflection.f71922a.b(UShortArray.class), UShortArraySerializer.f75709c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused4) {
        }
        try {
            mapBuilder.put(Reflection.f71922a.b(UByteArray.class), UByteArraySerializer.f75694c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused5) {
        }
        try {
            KClass kClassB16 = Reflection.f71922a.b(Uuid.class);
            Uuid.INSTANCE.getClass();
            mapBuilder.put(kClassB16, UuidSerializer.f75714a);
        } catch (ClassNotFoundException | NoClassDefFoundError unused6) {
        }
        f75673a = mapBuilder.c();
    }

    public static final void a(String str) {
        for (KSerializer kSerializer : (MapBuilderValues) f75673a.values()) {
            if (str.equals(kSerializer.getF19838b().getF75659a())) {
                StringBuilder sbR = pq0.r("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name ", str, " there already exists ");
                sbR.append(Reflection.f71922a.b(kSerializer.getClass()).B());
                sbR.append(".\n                Please refer to SerialDescriptor documentation for additional information.\n            ");
                md.n(StringsKt.b0(sbR.toString()));
                return;
            }
        }
    }
}
