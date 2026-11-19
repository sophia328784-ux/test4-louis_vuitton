package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class ConstantValueFactory {
    public static ArrayValue a(List list, ModuleDescriptor moduleDescriptor, final PrimitiveType primitiveType) {
        List listY0 = CollectionsKt.y0(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = listY0.iterator();
        while (it.hasNext()) {
            ConstantValue constantValueB = b(it.next(), null);
            if (constantValueB != null) {
                arrayList.add(constantValueB);
            }
        }
        return moduleDescriptor != null ? new TypedArrayValue(arrayList, moduleDescriptor.g().r(primitiveType)) : new ArrayValue(arrayList, new Function1(primitiveType) { // from class: kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final PrimitiveType f73870b;

            {
                this.f73870b = primitiveType;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ModuleDescriptor moduleDescriptor2 = (ModuleDescriptor) obj;
                moduleDescriptor2.getClass();
                return moduleDescriptor2.g().r(this.f73870b);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v28, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v30, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v33, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.util.ArrayList] */
    public static ConstantValue b(Object obj, ModuleDescriptor moduleDescriptor) {
        ?? O;
        ?? O2;
        ?? O3;
        if (obj instanceof Byte) {
            return new ByteValue(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new ShortValue(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new IntValue(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new LongValue(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            return new CharValue(((Character) obj).charValue());
        }
        if (obj instanceof Float) {
            return new FloatValue(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new DoubleValue(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return new BooleanValue(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            return new StringValue((String) obj);
        }
        int i2 = 0;
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            if (length == 0) {
                O3 = EmptyList.f71768b;
            } else if (length != 1) {
                O3 = new ArrayList(bArr.length);
                int length2 = bArr.length;
                while (i2 < length2) {
                    O3.add(Byte.valueOf(bArr[i2]));
                    i2++;
                }
            } else {
                O3 = CollectionsKt.O(Byte.valueOf(bArr[0]));
            }
            return a(O3, moduleDescriptor, PrimitiveType.BYTE);
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length3 = sArr.length;
            if (length3 == 0) {
                O2 = EmptyList.f71768b;
            } else if (length3 != 1) {
                O2 = new ArrayList(sArr.length);
                int length4 = sArr.length;
                while (i2 < length4) {
                    O2.add(Short.valueOf(sArr[i2]));
                    i2++;
                }
            } else {
                O2 = CollectionsKt.O(Short.valueOf(sArr[0]));
            }
            return a(O2, moduleDescriptor, PrimitiveType.SHORT);
        }
        if (obj instanceof int[]) {
            return a(ArraysKt.U((int[]) obj), moduleDescriptor, PrimitiveType.INT);
        }
        if (obj instanceof long[]) {
            return a(ArraysKt.V((long[]) obj), moduleDescriptor, PrimitiveType.LONG);
        }
        if (!(obj instanceof char[])) {
            if (obj instanceof float[]) {
                return a(ArraysKt.T((float[]) obj), moduleDescriptor, PrimitiveType.FLOAT);
            }
            if (obj instanceof double[]) {
                return a(ArraysKt.S((double[]) obj), moduleDescriptor, PrimitiveType.DOUBLE);
            }
            if (obj instanceof boolean[]) {
                return a(ArraysKt.X((boolean[]) obj), moduleDescriptor, PrimitiveType.BOOLEAN);
            }
            if (obj == null) {
                return new NullValue();
            }
            return null;
        }
        char[] cArr = (char[]) obj;
        int length5 = cArr.length;
        if (length5 == 0) {
            O = EmptyList.f71768b;
        } else if (length5 != 1) {
            O = new ArrayList(cArr.length);
            int length6 = cArr.length;
            while (i2 < length6) {
                O.add(Character.valueOf(cArr[i2]));
                i2++;
            }
        } else {
            O = CollectionsKt.O(Character.valueOf(cArr[0]));
        }
        return a(O, moduleDescriptor, PrimitiveType.CHAR);
    }
}
