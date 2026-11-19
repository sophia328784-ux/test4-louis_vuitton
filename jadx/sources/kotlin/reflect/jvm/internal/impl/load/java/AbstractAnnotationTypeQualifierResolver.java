package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractAnnotationTypeQualifierResolver<TAnnotation> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f72818c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JavaTypeEnhancementState f72819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f72820b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType : AnnotationQualifierApplicabilityType.values()) {
            String strA = annotationQualifierApplicabilityType.a();
            if (linkedHashMap.get(strA) == null) {
                linkedHashMap.put(strA, annotationQualifierApplicabilityType);
            }
        }
        f72818c = linkedHashMap;
    }

    public AbstractAnnotationTypeQualifierResolver(JavaTypeEnhancementState javaTypeEnhancementState) {
        javaTypeEnhancementState.getClass();
        this.f72819a = javaTypeEnhancementState;
        this.f72820b = new ConcurrentHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0093  */
    public static JavaTypeQualifiersByElementType b(AbstractAnnotationTypeQualifierResolver abstractAnnotationTypeQualifierResolver, JavaTypeQualifiersByElementType javaTypeQualifiersByElementType, Iterable iterable) {
        boolean z;
        EnumMap enumMap;
        JavaDefaultQualifiers javaDefaultQualifiers;
        ReportLevel reportLevelJ;
        JavaDefaultQualifiers javaDefaultQualifiers2;
        Object objD;
        Object next;
        Pair pair;
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusC;
        abstractAnnotationTypeQualifierResolver.getClass();
        iterable.getClass();
        JavaTypeEnhancementState javaTypeEnhancementState = abstractAnnotationTypeQualifierResolver.f72819a;
        if (!javaTypeEnhancementState.f72859c) {
            ArrayList<JavaDefaultQualifiers> arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    break;
                }
                Object next2 = it.next();
                JavaDefaultQualifiers javaDefaultQualifiers3 = null;
                if (javaTypeEnhancementState.f72859c || (javaDefaultQualifiers = (JavaDefaultQualifiers) JavaDefaultQualifiersKt.f72845e.get(abstractAnnotationTypeQualifierResolver.e(next2))) == null) {
                    javaDefaultQualifiers2 = null;
                } else {
                    FqName fqNameE = abstractAnnotationTypeQualifierResolver.e(next2);
                    if (fqNameE == null || !JavaDefaultQualifiersKt.f72844c.containsKey(fqNameE)) {
                        reportLevelJ = abstractAnnotationTypeQualifierResolver.j(next2);
                        if (reportLevelJ == null) {
                            reportLevelJ = javaTypeEnhancementState.f72857a.f72862a;
                        }
                    } else {
                        reportLevelJ = (ReportLevel) javaTypeEnhancementState.f72858b.invoke(fqNameE);
                    }
                    if (reportLevelJ == ReportLevel.IGNORE) {
                        reportLevelJ = null;
                    }
                    if (reportLevelJ == null) {
                        javaDefaultQualifiers2 = null;
                    } else {
                        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusA = NullabilityQualifierWithMigrationStatus.a(javaDefaultQualifiers.f72838a, null, reportLevelJ == ReportLevel.WARN, 1);
                        Collection collection = javaDefaultQualifiers.f72839b;
                        boolean z2 = javaDefaultQualifiers.f72840c;
                        boolean z3 = javaDefaultQualifiers.d;
                        boolean z4 = javaDefaultQualifiers.f72841e;
                        collection.getClass();
                        javaDefaultQualifiers2 = new JavaDefaultQualifiers(nullabilityQualifierWithMigrationStatusA, collection, z2, z3, z4);
                    }
                }
                if (javaDefaultQualifiers2 != null) {
                    javaDefaultQualifiers3 = javaDefaultQualifiers2;
                } else {
                    if (javaTypeEnhancementState.f72857a.f72865e || (objD = abstractAnnotationTypeQualifierResolver.d(next2, JvmAnnotationNamesKt.f72882f)) == null) {
                        pair = null;
                    } else {
                        Iterator it2 = abstractAnnotationTypeQualifierResolver.g(next2).iterator();
                        do {
                            if (!it2.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it2.next();
                        } while (abstractAnnotationTypeQualifierResolver.k(next) == null);
                        if (next == null) {
                            pair = null;
                        } else {
                            ArrayList arrayListA = abstractAnnotationTypeQualifierResolver.a(objD, true);
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            Iterator it3 = arrayListA.iterator();
                            while (it3.hasNext()) {
                                AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType = (AnnotationQualifierApplicabilityType) f72818c.get((String) it3.next());
                                if (annotationQualifierApplicabilityType != null) {
                                    linkedHashSet.add(annotationQualifierApplicabilityType);
                                }
                            }
                            if (linkedHashSet.contains(AnnotationQualifierApplicabilityType.TYPE_USE)) {
                                linkedHashSet = SetsKt.f(SetsKt.c(ArraysKt.Z(AnnotationQualifierApplicabilityType.values()), AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS), linkedHashSet);
                            }
                            pair = new Pair(next, linkedHashSet);
                        }
                    }
                    if (pair != null) {
                        Object obj = pair.f71705b;
                        Set set = (Set) pair.f71706c;
                        ReportLevel reportLevelJ2 = abstractAnnotationTypeQualifierResolver.j(next2);
                        if (reportLevelJ2 == null && (reportLevelJ2 = abstractAnnotationTypeQualifierResolver.j(obj)) == null) {
                            reportLevelJ2 = javaTypeEnhancementState.f72857a.f72862a;
                        }
                        reportLevelJ2.getClass();
                        if (reportLevelJ2 != ReportLevel.IGNORE && (nullabilityQualifierWithMigrationStatusC = abstractAnnotationTypeQualifierResolver.c(obj, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver$$Lambda$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                LinkedHashMap linkedHashMap = AbstractAnnotationTypeQualifierResolver.f72818c;
                                obj2.getClass();
                                return Boolean.FALSE;
                            }
                        })) != null) {
                            javaDefaultQualifiers3 = new JavaDefaultQualifiers(NullabilityQualifierWithMigrationStatus.a(nullabilityQualifierWithMigrationStatusC, null, reportLevelJ2 == ReportLevel.WARN, 1), set, false, false, false, 28, null);
                        }
                    }
                }
                if (javaDefaultQualifiers3 != null) {
                    arrayList.add(javaDefaultQualifiers3);
                }
            }
            if (!arrayList.isEmpty()) {
                EnumMap enumMap2 = new EnumMap(AnnotationQualifierApplicabilityType.class);
                for (JavaDefaultQualifiers javaDefaultQualifiers4 : arrayList) {
                    for (AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType2 : javaDefaultQualifiers4.f72839b) {
                        enumMap2.containsKey(annotationQualifierApplicabilityType2);
                        enumMap2.put(annotationQualifierApplicabilityType2, javaDefaultQualifiers4);
                    }
                }
                EnumMap enumMap3 = (javaTypeQualifiersByElementType == null || (enumMap = javaTypeQualifiersByElementType.f72861a) == null) ? new EnumMap(AnnotationQualifierApplicabilityType.class) : new EnumMap(enumMap);
                for (Map.Entry entry : enumMap2.entrySet()) {
                    AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType3 = (AnnotationQualifierApplicabilityType) entry.getKey();
                    JavaDefaultQualifiers javaDefaultQualifiers5 = (JavaDefaultQualifiers) entry.getValue();
                    if (javaDefaultQualifiers5 != null) {
                        enumMap3.put(annotationQualifierApplicabilityType3, javaDefaultQualifiers5);
                        z = true;
                    }
                }
                if (z) {
                    return new JavaTypeQualifiersByElementType(enumMap3);
                }
            }
        }
        return javaTypeQualifiersByElementType;
    }

    public abstract ArrayList a(Object obj, boolean z);

    public final NullabilityQualifierWithMigrationStatus c(Object obj, Function1 function1) {
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusI;
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusI2 = i(obj, ((Boolean) function1.invoke(obj)).booleanValue());
        if (nullabilityQualifierWithMigrationStatusI2 != null) {
            return nullabilityQualifierWithMigrationStatusI2;
        }
        Object objK = k(obj);
        if (objK != null) {
            ReportLevel reportLevelJ = j(obj);
            if (reportLevelJ == null) {
                reportLevelJ = this.f72819a.f72857a.f72862a;
            }
            reportLevelJ.getClass();
            if (reportLevelJ != ReportLevel.IGNORE && (nullabilityQualifierWithMigrationStatusI = i(objK, ((Boolean) function1.invoke(objK)).booleanValue())) != null) {
                return NullabilityQualifierWithMigrationStatus.a(nullabilityQualifierWithMigrationStatusI, null, reportLevelJ == ReportLevel.WARN, 1);
            }
        }
        return null;
    }

    public final Object d(Object obj, FqName fqName) {
        for (Object obj2 : g(obj)) {
            if (Intrinsics.c(e(obj2), fqName)) {
                return obj2;
            }
        }
        return null;
    }

    public abstract FqName e(Object obj);

    public abstract ClassDescriptor f(Object obj);

    public abstract Iterable g(Object obj);

    public final boolean h(Object obj, FqName fqName) {
        Iterable iterableG = g(obj);
        if ((iterableG instanceof Collection) && ((Collection) iterableG).isEmpty()) {
            return false;
        }
        Iterator it = iterableG.iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(e(it.next()), fqName)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
    
        if (r5.equals("ALWAYS") != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
    
        if (r5.equals("NEVER") == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
    
        if (r5.equals("MAYBE") == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0080, code lost:
    
        r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NULLABLE;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus i(java.lang.Object r6, boolean r7) {
        /*
            r5 = this;
            kotlin.reflect.jvm.internal.impl.name.FqName r0 = r5.e(r6)
            r1 = 0
            if (r0 != 0) goto L9
            goto L93
        L9:
            kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState r2 = r5.f72819a
            kotlin.jvm.functions.Function1 r2 = r2.f72858b
            java.lang.Object r2 = r2.invoke(r0)
            kotlin.reflect.jvm.internal.impl.load.java.ReportLevel r2 = (kotlin.reflect.jvm.internal.impl.load.java.ReportLevel) r2
            r2.getClass()
            kotlin.reflect.jvm.internal.impl.load.java.ReportLevel r3 = kotlin.reflect.jvm.internal.impl.load.java.ReportLevel.IGNORE
            if (r2 != r3) goto L1b
            return r1
        L1b:
            java.util.Set r3 = kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNamesKt.f72886k
            boolean r3 = r3.contains(r0)
            r4 = 0
            if (r3 == 0) goto L27
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NOT_NULL
            goto L85
        L27:
            java.util.Set r3 = kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNamesKt.l
            boolean r3 = r3.contains(r0)
            if (r3 == 0) goto L32
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NULLABLE
            goto L85
        L32:
            java.util.Set r3 = kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNamesKt.m
            boolean r3 = r3.contains(r0)
            if (r3 == 0) goto L3d
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.FORCE_FLEXIBILITY
            goto L85
        L3d:
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNamesKt.g
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L93
            java.util.ArrayList r5 = r5.a(r6, r4)
            java.lang.Object r5 = kotlin.collections.CollectionsKt.C(r5)
            java.lang.String r5 = (java.lang.String) r5
            if (r5 == 0) goto L83
            int r6 = r5.hashCode()
            switch(r6) {
                case 73135176: goto L77;
                case 74175084: goto L6e;
                case 433141802: goto L62;
                case 1933739535: goto L59;
                default: goto L58;
            }
        L58:
            goto L93
        L59:
            java.lang.String r6 = "ALWAYS"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L93
            goto L83
        L62:
            java.lang.String r6 = "UNKNOWN"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L6b
            goto L93
        L6b:
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.FORCE_FLEXIBILITY
            goto L85
        L6e:
            java.lang.String r6 = "NEVER"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L80
            goto L93
        L77:
            java.lang.String r6 = "MAYBE"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L80
            goto L93
        L80:
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NULLABLE
            goto L85
        L83:
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NOT_NULL
        L85:
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus r6 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus
            kotlin.reflect.jvm.internal.impl.load.java.ReportLevel r0 = kotlin.reflect.jvm.internal.impl.load.java.ReportLevel.WARN
            if (r2 != r0) goto L8c
            goto L8e
        L8c:
            if (r7 == 0) goto L8f
        L8e:
            r4 = 1
        L8f:
            r6.<init>(r5, r4)
            return r6
        L93:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver.i(java.lang.Object, boolean):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus");
    }

    public final ReportLevel j(Object obj) {
        String str;
        JavaTypeEnhancementState javaTypeEnhancementState = this.f72819a;
        ReportLevel reportLevel = (ReportLevel) javaTypeEnhancementState.f72857a.f72864c.get(e(obj));
        if (reportLevel != null) {
            return reportLevel;
        }
        Object objD = d(obj, JvmAnnotationNamesKt.q);
        if (objD == null || (str = (String) CollectionsKt.C(a(objD, false))) == null) {
            return null;
        }
        ReportLevel reportLevel2 = javaTypeEnhancementState.f72857a.f72863b;
        if (reportLevel2 != null) {
            return reportLevel2;
        }
        int iHashCode = str.hashCode();
        if (iHashCode == -2137067054) {
            if (str.equals("IGNORE")) {
                return ReportLevel.IGNORE;
            }
            return null;
        }
        if (iHashCode == -1838656823) {
            if (str.equals("STRICT")) {
                return ReportLevel.STRICT;
            }
            return null;
        }
        if (iHashCode == 2656902 && str.equals("WARN")) {
            return ReportLevel.WARN;
        }
        return null;
    }

    public final Object k(Object obj) {
        Object objK;
        obj.getClass();
        if (!this.f72819a.f72857a.f72865e) {
            if (CollectionsKt.u(JvmAnnotationNamesKt.f72885j, e(obj)) || h(obj, JvmAnnotationNamesKt.d)) {
                return obj;
            }
            if (h(obj, JvmAnnotationNamesKt.f72881e)) {
                ClassDescriptor classDescriptorF = f(obj);
                ConcurrentHashMap concurrentHashMap = this.f72820b;
                Object obj2 = concurrentHashMap.get(classDescriptorF);
                if (obj2 != null) {
                    return obj2;
                }
                Iterator it = g(obj).iterator();
                do {
                    if (!it.hasNext()) {
                        objK = null;
                        break;
                    }
                    objK = k(it.next());
                } while (objK == null);
                if (objK != null) {
                    Object objPutIfAbsent = concurrentHashMap.putIfAbsent(classDescriptorF, objK);
                    return objPutIfAbsent == null ? objK : objPutIfAbsent;
                }
            }
        }
        return null;
    }
}
