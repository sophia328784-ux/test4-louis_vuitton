package kotlinx.serialization.internal;

import defpackage.az;
import defpackage.fc;
import io.jsonwebtoken.JwtParser;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Platform_commonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SerialDescriptor[] f75658a = new SerialDescriptor[0];

    public static final Set a(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (serialDescriptor instanceof CachedNames) {
            return ((CachedNames) serialDescriptor).a();
        }
        HashSet hashSet = new HashSet(serialDescriptor.getF75549c());
        int f75549c = serialDescriptor.getF75549c();
        for (int i2 = 0; i2 < f75549c; i2++) {
            hashSet.add(serialDescriptor.f(i2));
        }
        return hashSet;
    }

    public static final SerialDescriptor[] b(List list) {
        SerialDescriptor[] serialDescriptorArr;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            list = null;
        }
        return (list == null || (serialDescriptorArr = (SerialDescriptor[]) list.toArray(new SerialDescriptor[0])) == null) ? f75658a : serialDescriptorArr;
    }

    public static final KClass c(KType kType) {
        KClassifier kClassifierA = kType.a();
        if (kClassifierA instanceof KClass) {
            return (KClass) kClassifierA;
        }
        if (!(kClassifierA instanceof KTypeParameter)) {
            az.m(kClassifierA, "Only KClass supported as classifier, got ");
            return null;
        }
        throw new IllegalArgumentException("Captured type parameter " + kClassifierA + " from generic non-reified function. Such functionality cannot be supported because " + kClassifierA + " is erased, either specify serializer explicitly or make calling function inline with reified " + kClassifierA + JwtParser.SEPARATOR_CHAR);
    }

    public static final String d(KClass kClass) {
        kClass.getClass();
        String strB = kClass.B();
        if (strB == null) {
            strB = "<local class name not available>";
        }
        return fc.h("Serializer for class '", strB, "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n");
    }
}
