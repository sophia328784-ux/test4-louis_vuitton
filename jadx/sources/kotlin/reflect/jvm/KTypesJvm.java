package kotlin.reflect.jvm;

import defpackage.d20;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.impl.km.ClassKind;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class KTypesJvm {
    public static final KClass a(KClassifier kClassifier) {
        if (kClassifier instanceof KClass) {
            return (KClass) kClassifier;
        }
        Object obj = null;
        if (!(kClassifier instanceof KTypeParameter)) {
            d20.c(kClassifier, "Cannot calculate JVM erasure for type: ");
            return null;
        }
        List upperBounds = ((KTypeParameter) kClassifier).getUpperBounds();
        for (Object obj2 : upperBounds) {
            KClassifier f74442c = ((KType) obj2).getF74442c();
            KClassImpl kClassImpl = f74442c instanceof KClassImpl ? (KClassImpl) f74442c : null;
            if (kClassImpl != null && kClassImpl.V() != ClassKind.INTERFACE && kClassImpl.V() != ClassKind.ANNOTATION_CLASS) {
                obj = obj2;
                break;
            }
        }
        KType kType = (KType) obj;
        if (kType == null) {
            kType = (KType) CollectionsKt.firstOrNull(upperBounds);
        }
        return kType != null ? b(kType) : Reflection.f71922a.b(Object.class);
    }

    public static final KClass b(KType kType) {
        kType.getClass();
        KClassifier f74442c = kType.getF74442c();
        if (f74442c != null) {
            return a(f74442c);
        }
        d20.c(kType, "Cannot calculate JVM erasure for type: ");
        return null;
    }
}
