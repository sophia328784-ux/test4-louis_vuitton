package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeEnhancementKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Annotations f73191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final EnhancedTypeAnnotations f73192b;

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73193a;

        static {
            int[] iArr = new int[NullabilityQualifier.values().length];
            try {
                iArr[NullabilityQualifier.NULLABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NullabilityQualifier.NOT_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f73193a = iArr;
        }
    }

    static {
        FqName fqName = JvmAnnotationNames.p;
        fqName.getClass();
        f73191a = new EnhancedTypeAnnotations(fqName);
        FqName fqName2 = JvmAnnotationNames.q;
        fqName2.getClass();
        f73192b = new EnhancedTypeAnnotations(fqName2);
    }
}
