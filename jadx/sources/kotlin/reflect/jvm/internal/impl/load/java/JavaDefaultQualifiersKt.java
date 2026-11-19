package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JavaDefaultQualifiersKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f72842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f72843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f72844c;
    public static final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LinkedHashMap f72845e;

    static {
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.FIELD;
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType2 = AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE;
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType3 = AnnotationQualifierApplicabilityType.VALUE_PARAMETER;
        List listP = CollectionsKt.P(annotationQualifierApplicabilityType, annotationQualifierApplicabilityType2, annotationQualifierApplicabilityType3, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, AnnotationQualifierApplicabilityType.TYPE_USE);
        f72842a = listP;
        List listO = CollectionsKt.O(annotationQualifierApplicabilityType3);
        f72843b = listO;
        FqName fqName = JvmAnnotationNamesKt.f72878a;
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        List list = listP;
        Map mapI = MapsKt.i(new Pair(fqName, new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, false, 2, null), list, false, true, true)), new Pair(JvmAnnotationNamesKt.f72879b, new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, false, 2, null), list, false, true, true)), new Pair(JvmAnnotationNamesKt.f72880c, new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.FORCE_FLEXIBILITY, false, 2, null), list, false, true, true, 4, null)));
        f72844c = mapI;
        List list2 = listO;
        Map mapI2 = MapsKt.i(new Pair(JvmAnnotationNamesKt.f72883h, new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, false, 2, null), list2, false, false, false, 28, null)), new Pair(JvmAnnotationNamesKt.f72884i, new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, false, 2, null), list2, false, false, false, 28, null)));
        d = mapI2;
        f72845e = MapsKt.k(mapI, mapI2);
    }
}
