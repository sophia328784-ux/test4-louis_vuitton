package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.DeprecationCausedByFunctionNInfo;
import kotlin.reflect.jvm.internal.impl.load.java.JavaDefaultQualifiers;
import kotlin.reflect.jvm.internal.impl.load.java.JavaNullabilityAnnotationSettingsKt;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNamesKt;
import kotlin.reflect.jvm.internal.impl.load.java.ReportLevel;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.JavaDescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureBuildingUtilsKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.deprecation.DescriptorBasedDeprecationInfoKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.SimpleClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class SignatureEnhancement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JavaTypeEnhancement f73172a;

    public SignatureEnhancement(JavaTypeEnhancement javaTypeEnhancement) {
        javaTypeEnhancement.getClass();
        this.f73172a = javaTypeEnhancement;
    }

    public final KotlinType a(JavaCallableMemberDescriptor javaCallableMemberDescriptor, CallableDescriptor callableDescriptor, boolean z, LazyJavaResolverContext lazyJavaResolverContext, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, TypeEnhancementInfo typeEnhancementInfo, boolean z2, Function1 function1) {
        SignatureParts signatureParts = new SignatureParts(callableDescriptor, z, lazyJavaResolverContext, annotationQualifierApplicabilityType, false, 16, null);
        KotlinType kotlinType = (KotlinType) function1.invoke(javaCallableMemberDescriptor);
        Collection collectionI = javaCallableMemberDescriptor.i();
        collectionI.getClass();
        Collection<CallableMemberDescriptor> collection = collectionI;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(collection, 10));
        for (CallableMemberDescriptor callableMemberDescriptor : collection) {
            callableMemberDescriptor.getClass();
            arrayList.add((KotlinType) function1.invoke(callableMemberDescriptor));
        }
        return b(signatureParts, kotlinType, arrayList, typeEnhancementInfo, z2);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:103:0x01bb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:105:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:108:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:109:0x01cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:113:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:114:0x01db  */
    /* JADX WARN: Code duplicated, block: B:123:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:130:0x0204  */
    /* JADX WARN: Code duplicated, block: B:133:0x0209  */
    /* JADX WARN: Code duplicated, block: B:136:0x020e  */
    /* JADX WARN: Code duplicated, block: B:148:0x022b  */
    /* JADX WARN: Code duplicated, block: B:151:0x0230  */
    /* JADX WARN: Code duplicated, block: B:152:0x0233  */
    /* JADX WARN: Code duplicated, block: B:154:0x0237  */
    /* JADX WARN: Code duplicated, block: B:156:0x023c  */
    /* JADX WARN: Code duplicated, block: B:158:0x0240  */
    /* JADX WARN: Code duplicated, block: B:206:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:310:0x0154 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:311:0x01a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:36:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:59:0x0109  */
    /* JADX WARN: Code duplicated, block: B:64:0x0125  */
    /* JADX WARN: Code duplicated, block: B:66:0x013d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0140  */
    /* JADX WARN: Code duplicated, block: B:69:0x014a  */
    /* JADX WARN: Code duplicated, block: B:78:0x0171  */
    /* JADX WARN: Code duplicated, block: B:81:0x0180  */
    /* JADX WARN: Code duplicated, block: B:92:0x0198  */
    /* JADX WARN: Code duplicated, block: B:97:0x01a6  */
    public final KotlinType b(final SignatureParts signatureParts, KotlinType kotlinType, List list, TypeEnhancementInfo typeEnhancementInfo, boolean z) {
        KotlinType kotlinType2;
        boolean z2;
        boolean z3;
        Iterable iterableV;
        TypeParameterDescriptor typeParameterDescriptorT;
        boolean z4;
        boolean z5;
        boolean z6;
        AnnotationTypeQualifierResolver annotationTypeQualifierResolverC;
        Iterator it;
        MutabilityQualifier mutabilityQualifier;
        AnnotationTypeQualifierResolver annotationTypeQualifierResolverC2;
        Function1 function1;
        Iterator it2;
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus;
        ArrayList arrayList;
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusE;
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusA;
        NullabilityQualifier nullabilityQualifier;
        boolean z7;
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusE2;
        NullabilityQualifier nullabilityQualifier2;
        boolean z8;
        JavaTypeQualifiers javaTypeQualifiers;
        boolean z9;
        NullabilityQualifier nullabilityQualifier3;
        boolean z10;
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusC;
        boolean z11;
        FqName fqNameE;
        MutabilityQualifier mutabilityQualifier2;
        Annotated annotated;
        Iterable annotations;
        TypeConstructorMarker typeConstructorMarkerV;
        boolean z12;
        NullabilityQualifier nullabilityQualifier4;
        boolean z13;
        JavaTypeQualifiers javaTypeQualifiers2;
        JavaTypeQualifiers javaTypeQualifiers3;
        KotlinTypeMarker kotlinTypeMarker;
        NullabilityQualifier nullabilityQualifierI;
        boolean z14 = signatureParts.f73187b;
        List list2 = list;
        kotlinType.getClass();
        list2.getClass();
        final ArrayList arrayListL = signatureParts.l(kotlinType);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(signatureParts.l((KotlinTypeMarker) it3.next()));
        }
        if (!z14 || ((list2 instanceof Collection) && list2.isEmpty())) {
            kotlinType2 = kotlinType;
            z2 = false;
            break;
        }
        Iterator it4 = list2.iterator();
        while (true) {
            if (!it4.hasNext()) {
                kotlinType2 = kotlinType;
                z2 = false;
                break;
            }
            KotlinTypeMarker kotlinTypeMarker2 = (KotlinTypeMarker) it4.next();
            kotlinTypeMarker2.getClass();
            kotlinType2 = kotlinType;
            if (!signatureParts.f73188c.f72962a.u.b(kotlinType2, (KotlinType) kotlinTypeMarker2)) {
                z2 = true;
                break;
            }
        }
        int size = arrayListL.size();
        JavaTypeQualifiers[] javaTypeQualifiersArr = new JavaTypeQualifiers[size];
        final int i2 = 0;
        while (i2 < size) {
            Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0(signatureParts, arrayListL, i2) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$$Lambda$2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final AbstractSignatureParts f73091b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final List f73092c;
                public final int d;

                {
                    this.f73091b = signatureParts;
                    this.f73092c = arrayListL;
                    this.d = i2;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    AbstractSignatureParts.TypeAndDefaultQualifiers typeAndDefaultQualifiers = (AbstractSignatureParts.TypeAndDefaultQualifiers) this.f73092c.get(this.d);
                    AbstractSignatureParts abstractSignatureParts = this.f73091b;
                    abstractSignatureParts.getClass();
                    AnnotationQualifierApplicabilityType annotationQualifierApplicabilityTypeF = ((typeAndDefaultQualifiers.f73099c == null) || (abstractSignatureParts.f() == AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS)) ? abstractSignatureParts.f() : AnnotationQualifierApplicabilityType.TYPE_USE;
                    JavaTypeQualifiersByElementType javaTypeQualifiersByElementType = typeAndDefaultQualifiers.f73098b;
                    if (javaTypeQualifiersByElementType != null) {
                        return (JavaDefaultQualifiers) javaTypeQualifiersByElementType.f72861a.get(annotationQualifierApplicabilityTypeF);
                    }
                    return null;
                }
            });
            if (i2 <= 0 || !z2) {
                final AbstractSignatureParts.TypeAndDefaultQualifiers typeAndDefaultQualifiers = (AbstractSignatureParts.TypeAndDefaultQualifiers) arrayListL.get(i2);
                JavaDefaultQualifiers javaDefaultQualifiers = (JavaDefaultQualifiers) lazyA.getF71699b();
                KotlinTypeMarker kotlinTypeMarker3 = typeAndDefaultQualifiers.f73097a;
                TypeParameterMarker typeParameterMarker = typeAndDefaultQualifiers.f73099c;
                SimpleClassicTypeSystemContext simpleClassicTypeSystemContext = SimpleClassicTypeSystemContext.f74291a;
                if (kotlinTypeMarker3 != null) {
                    if (typeParameterMarker == null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (kotlinTypeMarker3 != null) {
                        iterableV = signatureParts.d(kotlinTypeMarker3);
                    } else {
                        iterableV = EmptyList.f71768b;
                    }
                    if (kotlinTypeMarker3 != null || (typeConstructorMarkerV = simpleClassicTypeSystemContext.V(kotlinTypeMarker3)) == null) {
                        typeParameterDescriptorT = null;
                    } else {
                        typeParameterDescriptorT = ClassicTypeSystemContext.DefaultImpls.t(typeConstructorMarkerV);
                    }
                    z4 = z14;
                    z5 = z2;
                    if (signatureParts.f() == AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z3) {
                        if (!z6) {
                            signatureParts.n();
                        }
                        annotated = signatureParts.f73186a;
                        if (annotated != null || (annotations = annotated.getAnnotations()) == null) {
                            annotations = EmptyList.f71768b;
                        }
                        iterableV = CollectionsKt.V(annotations, iterableV);
                    }
                    annotationTypeQualifierResolverC = signatureParts.c();
                    annotationTypeQualifierResolverC.getClass();
                    iterableV.getClass();
                    it = iterableV.iterator();
                    mutabilityQualifier = null;
                    while (it.hasNext()) {
                        Iterator it5 = it;
                        fqNameE = annotationTypeQualifierResolverC.e(it5.next());
                        AnnotationTypeQualifierResolver annotationTypeQualifierResolver = annotationTypeQualifierResolverC;
                        if (CollectionsKt.u(JvmAnnotationNamesKt.n, fqNameE)) {
                            mutabilityQualifier2 = MutabilityQualifier.READ_ONLY;
                        } else {
                            if (CollectionsKt.u(JvmAnnotationNamesKt.o, fqNameE)) {
                                mutabilityQualifier2 = MutabilityQualifier.MUTABLE;
                            } else {
                                continue;
                            }
                            it = it5;
                            annotationTypeQualifierResolverC = annotationTypeQualifierResolver;
                        }
                        if (mutabilityQualifier == null && mutabilityQualifier != mutabilityQualifier2) {
                            mutabilityQualifier = null;
                            break;
                        }
                        mutabilityQualifier = mutabilityQualifier2;
                        it = it5;
                        annotationTypeQualifierResolverC = annotationTypeQualifierResolver;
                    }
                    annotationTypeQualifierResolverC2 = signatureParts.c();
                    function1 = new Function1(signatureParts, typeAndDefaultQualifiers) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$$Lambda$0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final AbstractSignatureParts f73087b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final AbstractSignatureParts.TypeAndDefaultQualifiers f73088c;

                        {
                            this.f73087b = signatureParts;
                            this.f73088c = typeAndDefaultQualifiers;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            obj.getClass();
                            return Boolean.valueOf(this.f73087b.b(obj, this.f73088c.f73097a));
                        }
                    };
                    annotationTypeQualifierResolverC2.getClass();
                    it2 = iterableV.iterator();
                    nullabilityQualifierWithMigrationStatus = null;
                    while (true) {
                        if (it2.hasNext()) {
                            arrayList = arrayListL;
                            break;
                        }
                        arrayList = arrayListL;
                        nullabilityQualifierWithMigrationStatusC = annotationTypeQualifierResolverC2.c(it2.next(), function1);
                        AnnotationTypeQualifierResolver annotationTypeQualifierResolver2 = annotationTypeQualifierResolverC2;
                        if (nullabilityQualifierWithMigrationStatus == null) {
                            nullabilityQualifierWithMigrationStatus = nullabilityQualifierWithMigrationStatusC;
                        } else {
                            boolean z15 = nullabilityQualifierWithMigrationStatus.f73115b;
                            if (nullabilityQualifierWithMigrationStatusC != null && !nullabilityQualifierWithMigrationStatusC.equals(nullabilityQualifierWithMigrationStatus) && (!(z11 = nullabilityQualifierWithMigrationStatusC.f73115b) || z15)) {
                                if (z11 || !z15) {
                                    nullabilityQualifierWithMigrationStatus = null;
                                    break;
                                }
                                nullabilityQualifierWithMigrationStatus = nullabilityQualifierWithMigrationStatusC;
                            }
                        }
                        arrayListL = arrayList;
                        annotationTypeQualifierResolverC2 = annotationTypeQualifierResolver2;
                    }
                    if (nullabilityQualifierWithMigrationStatus != null) {
                        nullabilityQualifier3 = nullabilityQualifierWithMigrationStatus.f73114a;
                        if (nullabilityQualifier3 == NullabilityQualifier.NOT_NULL || typeParameterDescriptorT == null) {
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        javaTypeQualifiers = new JavaTypeQualifiers(nullabilityQualifier3, mutabilityQualifier, z10, nullabilityQualifierWithMigrationStatus.f73115b);
                        z8 = true;
                    } else {
                        if (typeParameterDescriptorT != null) {
                            nullabilityQualifierWithMigrationStatusE = signatureParts.e(typeParameterDescriptorT);
                        } else {
                            nullabilityQualifierWithMigrationStatusE = null;
                        }
                        if (nullabilityQualifierWithMigrationStatusE != null) {
                            nullabilityQualifierWithMigrationStatusA = NullabilityQualifierWithMigrationStatus.a(nullabilityQualifierWithMigrationStatusE, NullabilityQualifier.NOT_NULL, false, 2);
                        } else if (javaDefaultQualifiers != null) {
                            nullabilityQualifierWithMigrationStatusA = javaDefaultQualifiers.f72838a;
                        } else {
                            nullabilityQualifierWithMigrationStatusA = null;
                        }
                        if (nullabilityQualifierWithMigrationStatusE != null) {
                            nullabilityQualifier = nullabilityQualifierWithMigrationStatusE.f73114a;
                        } else {
                            nullabilityQualifier = null;
                        }
                        if (nullabilityQualifier == NullabilityQualifier.NOT_NULL && (typeParameterDescriptorT == null || javaDefaultQualifiers == null || !javaDefaultQualifiers.f72840c)) {
                            z7 = false;
                        } else {
                            z7 = true;
                        }
                        if (typeParameterMarker != null || (nullabilityQualifierWithMigrationStatusE2 = signatureParts.e(typeParameterMarker)) == null) {
                            nullabilityQualifierWithMigrationStatusE2 = null;
                        } else if (nullabilityQualifierWithMigrationStatusE2.f73114a == NullabilityQualifier.NULLABLE) {
                            nullabilityQualifierWithMigrationStatusE2 = NullabilityQualifierWithMigrationStatus.a(nullabilityQualifierWithMigrationStatusE2, NullabilityQualifier.FORCE_FLEXIBILITY, false, 2);
                        }
                        if (nullabilityQualifierWithMigrationStatusE2 != null) {
                            NullabilityQualifier nullabilityQualifier5 = nullabilityQualifierWithMigrationStatusE2.f73114a;
                            if (nullabilityQualifierWithMigrationStatusA == null) {
                                nullabilityQualifierWithMigrationStatusA = nullabilityQualifierWithMigrationStatusE2;
                            } else {
                                NullabilityQualifier nullabilityQualifier6 = nullabilityQualifierWithMigrationStatusA.f73114a;
                                boolean z16 = nullabilityQualifierWithMigrationStatusA.f73115b;
                                z9 = nullabilityQualifierWithMigrationStatusE2.f73115b;
                                if ((z9 || z16) && ((!z9 && z16) || (nullabilityQualifier5.compareTo(nullabilityQualifier6) >= 0 && nullabilityQualifier5.compareTo(nullabilityQualifier6) > 0))) {
                                    nullabilityQualifierWithMigrationStatusA = nullabilityQualifierWithMigrationStatusE2;
                                }
                            }
                        }
                        if (nullabilityQualifierWithMigrationStatusA != null) {
                            nullabilityQualifier2 = nullabilityQualifierWithMigrationStatusA.f73114a;
                        } else {
                            nullabilityQualifier2 = null;
                        }
                        if (nullabilityQualifierWithMigrationStatusA != null) {
                            z8 = true;
                            boolean z17 = nullabilityQualifierWithMigrationStatusA.f73115b;
                            javaTypeQualifiers = new JavaTypeQualifiers(nullabilityQualifier2, mutabilityQualifier, z7, z17);
                        } else {
                            z8 = true;
                        }
                        javaTypeQualifiers = new JavaTypeQualifiers(nullabilityQualifier2, mutabilityQualifier, z7, z17);
                    }
                } else {
                    if ((typeParameterMarker != null ? ClassicTypeSystemContext.DefaultImpls.v(typeParameterMarker) : null) == TypeVariance.IN) {
                        JavaTypeQualifiers.f73108e.getClass();
                        javaTypeQualifiers = JavaTypeQualifiers.f73109f;
                        z4 = z14;
                        z5 = z2;
                        arrayList = arrayListL;
                    } else {
                        if (typeParameterMarker == null) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (kotlinTypeMarker3 != null) {
                            iterableV = signatureParts.d(kotlinTypeMarker3);
                        } else {
                            iterableV = EmptyList.f71768b;
                        }
                        if (kotlinTypeMarker3 != null) {
                            typeParameterDescriptorT = null;
                        } else {
                            typeParameterDescriptorT = null;
                        }
                        z4 = z14;
                        z5 = z2;
                        if (signatureParts.f() == AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (z3) {
                            if (!z6) {
                                signatureParts.n();
                            }
                            annotated = signatureParts.f73186a;
                            if (annotated != null) {
                                annotations = EmptyList.f71768b;
                            } else {
                                annotations = EmptyList.f71768b;
                            }
                            iterableV = CollectionsKt.V(annotations, iterableV);
                        }
                        annotationTypeQualifierResolverC = signatureParts.c();
                        annotationTypeQualifierResolverC.getClass();
                        iterableV.getClass();
                        it = iterableV.iterator();
                        mutabilityQualifier = null;
                        while (it.hasNext()) {
                            Iterator it6 = it;
                            fqNameE = annotationTypeQualifierResolverC.e(it6.next());
                            AnnotationTypeQualifierResolver annotationTypeQualifierResolver3 = annotationTypeQualifierResolverC;
                            if (CollectionsKt.u(JvmAnnotationNamesKt.n, fqNameE)) {
                                mutabilityQualifier2 = MutabilityQualifier.READ_ONLY;
                            } else {
                                if (CollectionsKt.u(JvmAnnotationNamesKt.o, fqNameE)) {
                                    mutabilityQualifier2 = MutabilityQualifier.MUTABLE;
                                } else {
                                    continue;
                                }
                                it = it6;
                                annotationTypeQualifierResolverC = annotationTypeQualifierResolver3;
                            }
                            if (mutabilityQualifier == null) {
                            }
                            mutabilityQualifier = mutabilityQualifier2;
                            it = it6;
                            annotationTypeQualifierResolverC = annotationTypeQualifierResolver3;
                        }
                        annotationTypeQualifierResolverC2 = signatureParts.c();
                        function1 = new Function1(signatureParts, typeAndDefaultQualifiers) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$$Lambda$0

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final AbstractSignatureParts f73087b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final AbstractSignatureParts.TypeAndDefaultQualifiers f73088c;

                            {
                                this.f73087b = signatureParts;
                                this.f73088c = typeAndDefaultQualifiers;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                obj.getClass();
                                return Boolean.valueOf(this.f73087b.b(obj, this.f73088c.f73097a));
                            }
                        };
                        annotationTypeQualifierResolverC2.getClass();
                        it2 = iterableV.iterator();
                        nullabilityQualifierWithMigrationStatus = null;
                        while (true) {
                            if (it2.hasNext()) {
                                arrayList = arrayListL;
                                break;
                            }
                            arrayList = arrayListL;
                            nullabilityQualifierWithMigrationStatusC = annotationTypeQualifierResolverC2.c(it2.next(), function1);
                            AnnotationTypeQualifierResolver annotationTypeQualifierResolver4 = annotationTypeQualifierResolverC2;
                            if (nullabilityQualifierWithMigrationStatus == null) {
                                nullabilityQualifierWithMigrationStatus = nullabilityQualifierWithMigrationStatusC;
                            } else {
                                boolean z18 = nullabilityQualifierWithMigrationStatus.f73115b;
                                if (nullabilityQualifierWithMigrationStatusC != null) {
                                    continue;
                                }
                            }
                            arrayListL = arrayList;
                            annotationTypeQualifierResolverC2 = annotationTypeQualifierResolver4;
                        }
                        if (nullabilityQualifierWithMigrationStatus != null) {
                            nullabilityQualifier3 = nullabilityQualifierWithMigrationStatus.f73114a;
                            if (nullabilityQualifier3 == NullabilityQualifier.NOT_NULL) {
                                z10 = false;
                            } else {
                                z10 = false;
                            }
                            javaTypeQualifiers = new JavaTypeQualifiers(nullabilityQualifier3, mutabilityQualifier, z10, nullabilityQualifierWithMigrationStatus.f73115b);
                        } else {
                            if (typeParameterDescriptorT != null) {
                                nullabilityQualifierWithMigrationStatusE = signatureParts.e(typeParameterDescriptorT);
                            } else {
                                nullabilityQualifierWithMigrationStatusE = null;
                            }
                            if (nullabilityQualifierWithMigrationStatusE != null) {
                                nullabilityQualifierWithMigrationStatusA = NullabilityQualifierWithMigrationStatus.a(nullabilityQualifierWithMigrationStatusE, NullabilityQualifier.NOT_NULL, false, 2);
                            } else if (javaDefaultQualifiers != null) {
                                nullabilityQualifierWithMigrationStatusA = javaDefaultQualifiers.f72838a;
                            } else {
                                nullabilityQualifierWithMigrationStatusA = null;
                            }
                            if (nullabilityQualifierWithMigrationStatusE != null) {
                                nullabilityQualifier = nullabilityQualifierWithMigrationStatusE.f73114a;
                            } else {
                                nullabilityQualifier = null;
                            }
                            if (nullabilityQualifier == NullabilityQualifier.NOT_NULL) {
                                z7 = true;
                            } else {
                                z7 = true;
                            }
                            if (typeParameterMarker != null) {
                                nullabilityQualifierWithMigrationStatusE2 = null;
                            } else {
                                nullabilityQualifierWithMigrationStatusE2 = null;
                            }
                            if (nullabilityQualifierWithMigrationStatusE2 != null) {
                                NullabilityQualifier nullabilityQualifier7 = nullabilityQualifierWithMigrationStatusE2.f73114a;
                                if (nullabilityQualifierWithMigrationStatusA == null) {
                                    nullabilityQualifierWithMigrationStatusA = nullabilityQualifierWithMigrationStatusE2;
                                } else {
                                    NullabilityQualifier nullabilityQualifier8 = nullabilityQualifierWithMigrationStatusA.f73114a;
                                    boolean z19 = nullabilityQualifierWithMigrationStatusA.f73115b;
                                    z9 = nullabilityQualifierWithMigrationStatusE2.f73115b;
                                    if (z9) {
                                        nullabilityQualifierWithMigrationStatusA = nullabilityQualifierWithMigrationStatusE2;
                                    } else {
                                        nullabilityQualifierWithMigrationStatusA = nullabilityQualifierWithMigrationStatusE2;
                                    }
                                }
                            }
                            if (nullabilityQualifierWithMigrationStatusA != null) {
                                nullabilityQualifier2 = nullabilityQualifierWithMigrationStatusA.f73114a;
                            } else {
                                nullabilityQualifier2 = null;
                            }
                            if (nullabilityQualifierWithMigrationStatusA != null) {
                                z8 = true;
                                if (nullabilityQualifierWithMigrationStatusA.f73115b) {
                                }
                                javaTypeQualifiers = new JavaTypeQualifiers(nullabilityQualifier2, mutabilityQualifier, z7, z17);
                            } else {
                                z8 = true;
                            }
                            javaTypeQualifiers = new JavaTypeQualifiers(nullabilityQualifier2, mutabilityQualifier, z7, z17);
                        }
                    }
                    z8 = true;
                }
                ArrayList<JavaTypeQualifiers> arrayList3 = new ArrayList();
                Iterator it7 = arrayList2.iterator();
                while (it7.hasNext()) {
                    AbstractSignatureParts.TypeAndDefaultQualifiers typeAndDefaultQualifiers2 = (AbstractSignatureParts.TypeAndDefaultQualifiers) CollectionsKt.G(i2, (List) it7.next());
                    if (typeAndDefaultQualifiers2 == null || (kotlinTypeMarker = typeAndDefaultQualifiers2.f73097a) == null) {
                        javaTypeQualifiers3 = null;
                    } else {
                        NullabilityQualifier nullabilityQualifierI2 = signatureParts.i(kotlinTypeMarker);
                        if (nullabilityQualifierI2 == null) {
                            KotlinType kotlinTypeA = TypeWithEnhancementKt.a((KotlinType) kotlinTypeMarker);
                            nullabilityQualifierI = kotlinTypeA != null ? signatureParts.i(kotlinTypeA) : null;
                        } else {
                            nullabilityQualifierI = nullabilityQualifierI2;
                        }
                        String str = JavaToKotlinClassMap.f72305a;
                        javaTypeQualifiers3 = new JavaTypeQualifiers(nullabilityQualifierI, JavaToKotlinClassMap.f72313k.containsKey(signatureParts.o(simpleClassicTypeSystemContext.l0(kotlinTypeMarker))) ? MutabilityQualifier.READ_ONLY : JavaToKotlinClassMap.f72312j.containsKey(signatureParts.o(simpleClassicTypeSystemContext.w(kotlinTypeMarker))) ? MutabilityQualifier.MUTABLE : null, (simpleClassicTypeSystemContext.Z(kotlinTypeMarker) || (((KotlinType) kotlinTypeMarker).K0() instanceof NotNullTypeParameterImpl)) ? z8 : false, nullabilityQualifierI != nullabilityQualifierI2 ? z8 : false);
                    }
                    if (javaTypeQualifiers3 != null) {
                        arrayList3.add(javaTypeQualifiers3);
                    }
                }
                boolean z20 = (i2 == 0 && z4) ? z8 : false;
                if (i2 == 0) {
                    Annotated annotated2 = signatureParts.f73186a;
                    if (!(annotated2 instanceof ValueParameterDescriptor) || ((ValueParameterDescriptor) annotated2).o0() == null) {
                        z12 = false;
                    } else {
                        z12 = z8;
                    }
                } else {
                    z12 = false;
                }
                javaTypeQualifiers.getClass();
                NullabilityQualifier nullabilityQualifier9 = javaTypeQualifiers.f73110a;
                boolean z21 = javaTypeQualifiers.d;
                ArrayList arrayList4 = new ArrayList();
                for (JavaTypeQualifiers javaTypeQualifiers4 : arrayList3) {
                    NullabilityQualifier nullabilityQualifier10 = javaTypeQualifiers4.d ? null : javaTypeQualifiers4.f73110a;
                    if (nullabilityQualifier10 != null) {
                        arrayList4.add(nullabilityQualifier10);
                    }
                }
                Set setB0 = CollectionsKt.B0(arrayList4);
                NullabilityQualifier nullabilityQualifier11 = z21 ? null : nullabilityQualifier9;
                NullabilityQualifier nullabilityQualifier12 = NullabilityQualifier.FORCE_FLEXIBILITY;
                if (nullabilityQualifier11 != nullabilityQualifier12) {
                    nullabilityQualifier12 = (NullabilityQualifier) TypeEnhancementUtilsKt.a(setB0, NullabilityQualifier.NOT_NULL, NullabilityQualifier.NULLABLE, nullabilityQualifier11, z20);
                }
                if (nullabilityQualifier12 == null) {
                    ArrayList arrayList5 = new ArrayList();
                    Iterator it8 = arrayList3.iterator();
                    while (it8.hasNext()) {
                        NullabilityQualifier nullabilityQualifier13 = ((JavaTypeQualifiers) it8.next()).f73110a;
                        if (nullabilityQualifier13 != null) {
                            arrayList5.add(nullabilityQualifier13);
                        }
                    }
                    Set setB1 = CollectionsKt.B0(arrayList5);
                    nullabilityQualifier4 = NullabilityQualifier.FORCE_FLEXIBILITY;
                    if (nullabilityQualifier9 != nullabilityQualifier4) {
                        nullabilityQualifier4 = (NullabilityQualifier) TypeEnhancementUtilsKt.a(setB1, NullabilityQualifier.NOT_NULL, NullabilityQualifier.NULLABLE, nullabilityQualifier9, z20);
                    }
                } else {
                    nullabilityQualifier4 = nullabilityQualifier12;
                }
                ArrayList arrayList6 = new ArrayList();
                Iterator it9 = arrayList3.iterator();
                while (it9.hasNext()) {
                    MutabilityQualifier mutabilityQualifier3 = ((JavaTypeQualifiers) it9.next()).f73111b;
                    if (mutabilityQualifier3 != null) {
                        arrayList6.add(mutabilityQualifier3);
                    }
                }
                MutabilityQualifier mutabilityQualifier4 = (MutabilityQualifier) TypeEnhancementUtilsKt.a(CollectionsKt.B0(arrayList6), MutabilityQualifier.MUTABLE, MutabilityQualifier.READ_ONLY, javaTypeQualifiers.f73111b, z20);
                if (nullabilityQualifier4 == null || z || (z12 && nullabilityQualifier4 == NullabilityQualifier.NULLABLE)) {
                    nullabilityQualifier4 = null;
                }
                boolean z22 = nullabilityQualifier4 != null && nullabilityQualifier12 == null;
                if (nullabilityQualifier4 != NullabilityQualifier.NOT_NULL) {
                    z13 = false;
                } else {
                    if (z21 != z22 || !javaTypeQualifiers.f73112c) {
                        if (!arrayList3.isEmpty()) {
                            Iterator it10 = arrayList3.iterator();
                            while (true) {
                                if (it10.hasNext()) {
                                    JavaTypeQualifiers javaTypeQualifiers5 = (JavaTypeQualifiers) it10.next();
                                    if (javaTypeQualifiers5.d != z22 || !javaTypeQualifiers5.f73112c) {
                                    }
                                }
                            }
                        }
                        z13 = false;
                    }
                    z13 = true;
                }
                javaTypeQualifiers2 = new JavaTypeQualifiers(nullabilityQualifier4, mutabilityQualifier4, z13, z22);
            } else {
                JavaTypeQualifiers.f73108e.getClass();
                javaTypeQualifiers2 = JavaTypeQualifiers.f73109f;
                z4 = z14;
                z5 = z2;
                arrayList = arrayListL;
            }
            javaTypeQualifiersArr[i2] = javaTypeQualifiers2;
            i2++;
            z14 = z4;
            z2 = z5;
            arrayListL = arrayList;
        }
        AbstractSignatureParts$$Lambda$3 abstractSignatureParts$$Lambda$3 = new AbstractSignatureParts$$Lambda$3(typeEnhancementInfo, javaTypeQualifiersArr);
        boolean z23 = signatureParts.f73189e;
        JavaTypeEnhancement javaTypeEnhancement = this.f73172a;
        javaTypeEnhancement.getClass();
        return javaTypeEnhancement.b(kotlinType2.K0(), abstractSignatureParts$$Lambda$3, 0, z23).f73103a;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:109:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:110:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:116:0x0202  */
    /* JADX WARN: Code duplicated, block: B:118:0x0207  */
    /* JADX WARN: Code duplicated, block: B:119:0x020b  */
    /* JADX WARN: Code duplicated, block: B:122:0x0229  */
    /* JADX WARN: Code duplicated, block: B:127:0x023a  */
    /* JADX WARN: Code duplicated, block: B:129:0x023d  */
    /* JADX WARN: Code duplicated, block: B:134:0x0254  */
    /* JADX WARN: Code duplicated, block: B:137:0x025e  */
    /* JADX WARN: Code duplicated, block: B:141:0x0276  */
    /* JADX WARN: Code duplicated, block: B:147:0x028d  */
    /* JADX WARN: Code duplicated, block: B:150:0x0297  */
    /* JADX WARN: Code duplicated, block: B:153:0x02a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:155:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:157:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:159:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:160:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:164:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:166:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:168:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:173:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:179:0x02eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x02a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x02a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:? A[LOOP:2: B:148:0x0291->B:188:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x02e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:192:0x0274 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x0276 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:? A[LOOP:4: B:135:0x0258->B:194:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0142  */
    /* JADX WARN: Code duplicated, block: B:93:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:98:0x01bb  */
    public final ArrayList c(LazyJavaResolverContext lazyJavaResolverContext, Collection collection) {
        Annotations annotations;
        KotlinType type;
        PredefinedFunctionEnhancementInfo predefinedFunctionEnhancementInfo;
        boolean z;
        ArrayList arrayList;
        ArrayList arrayList2;
        PropertyDescriptor propertyDescriptor;
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType;
        TypeEnhancementInfo typeEnhancementInfo;
        int i2;
        KotlinType kotlinTypeA;
        KotlinType returnType;
        SignatureEnhancement$$Lambda$4 signatureEnhancement$$Lambda$4;
        Pair pair;
        ArrayList arrayList3;
        int i3;
        int i4;
        KotlinType type2;
        ReceiverParameterDescriptor receiverParameterDescriptorJ;
        Iterator it;
        ReceiverParameterDescriptor receiverParameterDescriptorJ2;
        boolean zD;
        List list;
        Iterator it2;
        KotlinType type3;
        KotlinType type4;
        TypeEnhancementInfo typeEnhancementInfo2;
        LazyJavaResolverContext lazyJavaResolverContext2;
        LazyJavaResolverContext lazyJavaResolverContextB;
        List list2;
        LazyJavaResolverContext lazyJavaResolverContextB2;
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl;
        lazyJavaResolverContext.getClass();
        collection.getClass();
        Collection<CallableMemberDescriptor> collection2 = collection;
        int i5 = 10;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(collection2, 10));
        for (CallableMemberDescriptor callableMemberDescriptorP0 : collection2) {
            if (!(callableMemberDescriptorP0 instanceof JavaCallableMemberDescriptor)) {
                i3 = i5;
            } else if (callableMemberDescriptorP0.e() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && callableMemberDescriptorP0.y0().i().size() == 1) {
                i3 = 10;
            } else {
                ClassifierDescriptor classifierDescriptorA = DescriptorUtilKt.a(callableMemberDescriptorP0);
                if (classifierDescriptorA == null) {
                    annotations = callableMemberDescriptorP0.getAnnotations();
                } else {
                    LazyJavaClassDescriptor lazyJavaClassDescriptor = classifierDescriptorA instanceof LazyJavaClassDescriptor ? (LazyJavaClassDescriptor) classifierDescriptorA : null;
                    List list3 = lazyJavaClassDescriptor != null ? (List) lazyJavaClassDescriptor.n.getF71699b() : null;
                    List list4 = list3;
                    if (list4 == null || list4.isEmpty()) {
                        annotations = callableMemberDescriptorP0.getAnnotations();
                    } else {
                        List list5 = list3;
                        ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list5, i5));
                        Iterator it3 = list5.iterator();
                        while (it3.hasNext()) {
                            arrayList5.add(new LazyJavaAnnotationDescriptor(lazyJavaResolverContext, (JavaAnnotation) it3.next(), true));
                        }
                        annotations = Annotations.Companion.a(CollectionsKt.V(callableMemberDescriptorP0.getAnnotations(), arrayList5));
                    }
                }
                LazyJavaResolverContext lazyJavaResolverContextB3 = ContextKt.b(lazyJavaResolverContext, annotations);
                CallableDescriptor callableDescriptor = (!(callableMemberDescriptorP0 instanceof JavaPropertyDescriptor) || (propertyGetterDescriptorImpl = ((PropertyDescriptorImpl) callableMemberDescriptorP0).x) == null || propertyGetterDescriptorImpl.f72542f) ? callableMemberDescriptorP0 : propertyGetterDescriptorImpl;
                if (callableMemberDescriptorP0.J() != null) {
                    FunctionDescriptor functionDescriptor = callableDescriptor instanceof FunctionDescriptor ? (FunctionDescriptor) callableDescriptor : null;
                    CallableDescriptor callableDescriptor2 = functionDescriptor != null ? (ValueParameterDescriptor) functionDescriptor.n0(JavaMethodDescriptor.H) : null;
                    type = a((JavaCallableMemberDescriptor) callableMemberDescriptorP0, callableDescriptor2, false, (callableDescriptor2 == null || (lazyJavaResolverContextB2 = ContextKt.b(lazyJavaResolverContextB3, callableDescriptor2.getAnnotations())) == null) ? lazyJavaResolverContextB3 : lazyJavaResolverContextB2, AnnotationQualifierApplicabilityType.VALUE_PARAMETER, null, false, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                            callableMemberDescriptor.getClass();
                            ReceiverParameterDescriptor receiverParameterDescriptorJ3 = callableMemberDescriptor.J();
                            receiverParameterDescriptorJ3.getClass();
                            KotlinType type5 = receiverParameterDescriptorJ3.getType();
                            type5.getClass();
                            return type5;
                        }
                    });
                } else {
                    type = null;
                }
                JavaMethodDescriptor javaMethodDescriptor = callableMemberDescriptorP0 instanceof JavaMethodDescriptor ? (JavaMethodDescriptor) callableMemberDescriptorP0 : null;
                if (javaMethodDescriptor != null) {
                    DeclarationDescriptor declarationDescriptorD = javaMethodDescriptor.d();
                    declarationDescriptorD.getClass();
                    predefinedFunctionEnhancementInfo = (PredefinedFunctionEnhancementInfo) PredefinedEnhancementInfoKt.d.get(MethodSignatureBuildingUtilsKt.a((ClassDescriptor) declarationDescriptorD, MethodSignatureMappingKt.a(javaMethodDescriptor, 3)));
                    if (predefinedFunctionEnhancementInfo != null) {
                        String str = predefinedFunctionEnhancementInfo.f73171c;
                        if (str != null && !StringsKt.P(str, "2.", false)) {
                            md.k("Check failed.");
                            return null;
                        }
                        if (str != null) {
                            predefinedFunctionEnhancementInfo = predefinedFunctionEnhancementInfo.d;
                        }
                    } else {
                        predefinedFunctionEnhancementInfo = null;
                    }
                } else {
                    predefinedFunctionEnhancementInfo = null;
                }
                if (predefinedFunctionEnhancementInfo != null) {
                    predefinedFunctionEnhancementInfo.f73170b.size();
                    ((JavaMethodDescriptor) callableMemberDescriptorP0).h().size();
                }
                JavaTypeEnhancementState javaTypeEnhancementState = lazyJavaResolverContext.f72962a.v;
                javaTypeEnhancementState.getClass();
                if (javaTypeEnhancementState.f72858b.invoke(JavaNullabilityAnnotationSettingsKt.f72850a) == ReportLevel.STRICT) {
                    if ((callableMemberDescriptorP0 instanceof FunctionDescriptor) && Intrinsics.c(callableMemberDescriptorP0.n0(JavaMethodDescriptor.I), Boolean.TRUE)) {
                        z = true;
                    }
                    List listH = callableDescriptor.h();
                    listH.getClass();
                    List<ValueParameterDescriptor> list6 = listH;
                    arrayList = new ArrayList(CollectionsKt.t(list6, i5));
                    for (final ValueParameterDescriptor valueParameterDescriptor : list6) {
                        if (predefinedFunctionEnhancementInfo != null || (list2 = predefinedFunctionEnhancementInfo.f73170b) == null) {
                            typeEnhancementInfo2 = null;
                        } else {
                            typeEnhancementInfo2 = (TypeEnhancementInfo) CollectionsKt.G(valueParameterDescriptor.getIndex(), list2);
                        }
                        Function1 function1 = new Function1(valueParameterDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$1

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final ValueParameterDescriptor f73174b;

                            {
                                this.f73174b = valueParameterDescriptor;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                                callableMemberDescriptor.getClass();
                                KotlinType type5 = ((ValueParameterDescriptor) callableMemberDescriptor.h().get(this.f73174b.getIndex())).getType();
                                type5.getClass();
                                return type5;
                            }
                        };
                        JavaCallableMemberDescriptor javaCallableMemberDescriptor = (JavaCallableMemberDescriptor) callableMemberDescriptorP0;
                        if (valueParameterDescriptor != null || (lazyJavaResolverContextB = ContextKt.b(lazyJavaResolverContextB3, valueParameterDescriptor.getAnnotations())) == null) {
                            lazyJavaResolverContext2 = lazyJavaResolverContextB3;
                        } else {
                            lazyJavaResolverContext2 = lazyJavaResolverContextB;
                        }
                        ArrayList arrayList6 = arrayList;
                        arrayList6.add(a(javaCallableMemberDescriptor, valueParameterDescriptor, false, lazyJavaResolverContext2, AnnotationQualifierApplicabilityType.VALUE_PARAMETER, typeEnhancementInfo2, z, function1));
                        arrayList = arrayList6;
                    }
                    arrayList2 = arrayList;
                    if (callableMemberDescriptorP0 instanceof PropertyDescriptor) {
                        propertyDescriptor = (PropertyDescriptor) callableMemberDescriptorP0;
                    } else {
                        propertyDescriptor = null;
                    }
                    if (propertyDescriptor == null && JavaDescriptorUtilKt.a(propertyDescriptor)) {
                        annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.FIELD;
                    } else {
                        annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE;
                    }
                    AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType2 = annotationQualifierApplicabilityType;
                    if (predefinedFunctionEnhancementInfo != null) {
                        typeEnhancementInfo = predefinedFunctionEnhancementInfo.f73169a;
                    } else {
                        typeEnhancementInfo = null;
                    }
                    JavaCallableMemberDescriptor javaCallableMemberDescriptor2 = (JavaCallableMemberDescriptor) callableMemberDescriptorP0;
                    i2 = 0;
                    kotlinTypeA = a(javaCallableMemberDescriptor2, callableDescriptor, true, lazyJavaResolverContextB3, annotationQualifierApplicabilityType2, typeEnhancementInfo, false, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                            callableMemberDescriptor.getClass();
                            KotlinType returnType2 = callableMemberDescriptor.getReturnType();
                            returnType2.getClass();
                            return returnType2;
                        }
                    });
                    returnType = callableMemberDescriptorP0.getReturnType();
                    returnType.getClass();
                    signatureEnhancement$$Lambda$4 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            ClassifierDescriptor classifierDescriptorY = ((UnwrappedType) obj).H0().y();
                            if (classifierDescriptorY == null) {
                                return Boolean.FALSE;
                            }
                            Name name = classifierDescriptorY.getName();
                            FqName fqName = JavaToKotlinClassMap.f72309f;
                            return Boolean.valueOf(Intrinsics.c(name, fqName.f73679a.g()) && Intrinsics.c(DescriptorUtilsKt.c(classifierDescriptorY), fqName));
                        }
                    };
                    if (TypeUtils.c(returnType, signatureEnhancement$$Lambda$4)) {
                        pair = new Pair(DescriptorBasedDeprecationInfoKt.f73887a, new DeprecationCausedByFunctionNInfo(callableMemberDescriptorP0));
                    } else {
                        receiverParameterDescriptorJ2 = callableMemberDescriptorP0.J();
                        if (receiverParameterDescriptorJ2 != null || (type4 = receiverParameterDescriptorJ2.getType()) == null) {
                            zD = false;
                        } else {
                            zD = TypeUtils.d(type4, signatureEnhancement$$Lambda$4, null);
                        }
                        if (zD) {
                            pair = new Pair(DescriptorBasedDeprecationInfoKt.f73887a, new DeprecationCausedByFunctionNInfo(callableMemberDescriptorP0));
                        } else {
                            List listH2 = callableMemberDescriptorP0.h();
                            listH2.getClass();
                            list = listH2;
                            if ((list instanceof Collection) || !list.isEmpty()) {
                                it2 = list.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        type3 = ((ValueParameterDescriptor) it2.next()).getType();
                                        type3.getClass();
                                        if (TypeUtils.c(type3, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$4
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj) {
                                                ClassifierDescriptor classifierDescriptorY = ((UnwrappedType) obj).H0().y();
                                                if (classifierDescriptorY == null) {
                                                    return Boolean.FALSE;
                                                }
                                                Name name = classifierDescriptorY.getName();
                                                FqName fqName = JavaToKotlinClassMap.f72309f;
                                                return Boolean.valueOf(Intrinsics.c(name, fqName.f73679a.g()) && Intrinsics.c(DescriptorUtilsKt.c(classifierDescriptorY), fqName));
                                            }
                                        })) {
                                            pair = new Pair(DescriptorBasedDeprecationInfoKt.f73887a, new DeprecationCausedByFunctionNInfo(callableMemberDescriptorP0));
                                        }
                                    }
                                }
                            }
                            pair = null;
                        }
                    }
                    if (type == null && kotlinTypeA == null) {
                        if (arrayList2.isEmpty()) {
                            it = arrayList2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (((KotlinType) it.next()) != null) {
                                    }
                                } else if (pair != null) {
                                    i3 = 10;
                                }
                            }
                        } else if (pair != null) {
                            i3 = 10;
                        }
                    }
                    if (type == null) {
                        receiverParameterDescriptorJ = callableMemberDescriptorP0.J();
                        if (receiverParameterDescriptorJ != null) {
                            type = receiverParameterDescriptorJ.getType();
                        } else {
                            type = null;
                        }
                    }
                    i3 = 10;
                    arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
                    for (Object obj : arrayList2) {
                        i4 = i2 + 1;
                        if (i2 >= 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        type2 = (KotlinType) obj;
                        if (type2 == null) {
                            type2 = ((ValueParameterDescriptor) callableMemberDescriptorP0.h().get(i2)).getType();
                            type2.getClass();
                        }
                        arrayList3.add(type2);
                        i2 = i4;
                    }
                    if (kotlinTypeA == null) {
                        kotlinTypeA = callableMemberDescriptorP0.getReturnType();
                        kotlinTypeA.getClass();
                    }
                    callableMemberDescriptorP0 = javaCallableMemberDescriptor2.p0(type, arrayList3, kotlinTypeA, pair);
                } else {
                    lazyJavaResolverContextB3.f72962a.t.getClass();
                }
                z = false;
                List listH3 = callableDescriptor.h();
                listH3.getClass();
                List<ValueParameterDescriptor> list7 = listH3;
                arrayList = new ArrayList(CollectionsKt.t(list7, i5));
                while (r11.hasNext()) {
                    if (predefinedFunctionEnhancementInfo != null) {
                        typeEnhancementInfo2 = null;
                    } else {
                        typeEnhancementInfo2 = null;
                    }
                    Function1 function2 = new Function1(valueParameterDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$1

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final ValueParameterDescriptor f73174b;

                        {
                            this.f73174b = valueParameterDescriptor;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj2;
                            callableMemberDescriptor.getClass();
                            KotlinType type5 = ((ValueParameterDescriptor) callableMemberDescriptor.h().get(this.f73174b.getIndex())).getType();
                            type5.getClass();
                            return type5;
                        }
                    };
                    JavaCallableMemberDescriptor javaCallableMemberDescriptor3 = (JavaCallableMemberDescriptor) callableMemberDescriptorP0;
                    if (valueParameterDescriptor != null) {
                        lazyJavaResolverContext2 = lazyJavaResolverContextB3;
                    } else {
                        lazyJavaResolverContext2 = lazyJavaResolverContextB3;
                    }
                    ArrayList arrayList7 = arrayList;
                    arrayList7.add(a(javaCallableMemberDescriptor3, valueParameterDescriptor, false, lazyJavaResolverContext2, AnnotationQualifierApplicabilityType.VALUE_PARAMETER, typeEnhancementInfo2, z, function2));
                    arrayList = arrayList7;
                }
                arrayList2 = arrayList;
                if (callableMemberDescriptorP0 instanceof PropertyDescriptor) {
                    propertyDescriptor = (PropertyDescriptor) callableMemberDescriptorP0;
                } else {
                    propertyDescriptor = null;
                }
                if (propertyDescriptor == null) {
                    annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE;
                } else {
                    annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE;
                }
                AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType3 = annotationQualifierApplicabilityType;
                if (predefinedFunctionEnhancementInfo != null) {
                    typeEnhancementInfo = predefinedFunctionEnhancementInfo.f73169a;
                } else {
                    typeEnhancementInfo = null;
                }
                JavaCallableMemberDescriptor javaCallableMemberDescriptor4 = (JavaCallableMemberDescriptor) callableMemberDescriptorP0;
                i2 = 0;
                kotlinTypeA = a(javaCallableMemberDescriptor4, callableDescriptor, true, lazyJavaResolverContextB3, annotationQualifierApplicabilityType3, typeEnhancementInfo, false, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj2;
                        callableMemberDescriptor.getClass();
                        KotlinType returnType2 = callableMemberDescriptor.getReturnType();
                        returnType2.getClass();
                        return returnType2;
                    }
                });
                returnType = callableMemberDescriptorP0.getReturnType();
                returnType.getClass();
                signatureEnhancement$$Lambda$4 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        ClassifierDescriptor classifierDescriptorY = ((UnwrappedType) obj2).H0().y();
                        if (classifierDescriptorY == null) {
                            return Boolean.FALSE;
                        }
                        Name name = classifierDescriptorY.getName();
                        FqName fqName = JavaToKotlinClassMap.f72309f;
                        return Boolean.valueOf(Intrinsics.c(name, fqName.f73679a.g()) && Intrinsics.c(DescriptorUtilsKt.c(classifierDescriptorY), fqName));
                    }
                };
                if (TypeUtils.c(returnType, signatureEnhancement$$Lambda$4)) {
                    pair = new Pair(DescriptorBasedDeprecationInfoKt.f73887a, new DeprecationCausedByFunctionNInfo(callableMemberDescriptorP0));
                } else {
                    receiverParameterDescriptorJ2 = callableMemberDescriptorP0.J();
                    if (receiverParameterDescriptorJ2 != null) {
                        zD = false;
                    } else {
                        zD = false;
                    }
                    if (zD) {
                        List listH4 = callableMemberDescriptorP0.h();
                        listH4.getClass();
                        list = listH4;
                        if (list instanceof Collection) {
                            it2 = list.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    type3 = ((ValueParameterDescriptor) it2.next()).getType();
                                    type3.getClass();
                                    if (TypeUtils.c(type3, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$4
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj2) {
                                            ClassifierDescriptor classifierDescriptorY = ((UnwrappedType) obj2).H0().y();
                                            if (classifierDescriptorY == null) {
                                                return Boolean.FALSE;
                                            }
                                            Name name = classifierDescriptorY.getName();
                                            FqName fqName = JavaToKotlinClassMap.f72309f;
                                            return Boolean.valueOf(Intrinsics.c(name, fqName.f73679a.g()) && Intrinsics.c(DescriptorUtilsKt.c(classifierDescriptorY), fqName));
                                        }
                                    })) {
                                        pair = new Pair(DescriptorBasedDeprecationInfoKt.f73887a, new DeprecationCausedByFunctionNInfo(callableMemberDescriptorP0));
                                    }
                                }
                            }
                        } else {
                            it2 = list.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    type3 = ((ValueParameterDescriptor) it2.next()).getType();
                                    type3.getClass();
                                    if (TypeUtils.c(type3, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$4
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj2) {
                                            ClassifierDescriptor classifierDescriptorY = ((UnwrappedType) obj2).H0().y();
                                            if (classifierDescriptorY == null) {
                                                return Boolean.FALSE;
                                            }
                                            Name name = classifierDescriptorY.getName();
                                            FqName fqName = JavaToKotlinClassMap.f72309f;
                                            return Boolean.valueOf(Intrinsics.c(name, fqName.f73679a.g()) && Intrinsics.c(DescriptorUtilsKt.c(classifierDescriptorY), fqName));
                                        }
                                    })) {
                                        pair = new Pair(DescriptorBasedDeprecationInfoKt.f73887a, new DeprecationCausedByFunctionNInfo(callableMemberDescriptorP0));
                                    }
                                }
                            }
                        }
                        pair = null;
                    } else {
                        pair = new Pair(DescriptorBasedDeprecationInfoKt.f73887a, new DeprecationCausedByFunctionNInfo(callableMemberDescriptorP0));
                    }
                }
                if (type == null) {
                    if (arrayList2.isEmpty()) {
                        it = arrayList2.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (((KotlinType) it.next()) != null) {
                                }
                            } else if (pair != null) {
                                i3 = 10;
                            }
                        }
                    } else if (pair != null) {
                        i3 = 10;
                    }
                }
                if (type == null) {
                    receiverParameterDescriptorJ = callableMemberDescriptorP0.J();
                    if (receiverParameterDescriptorJ != null) {
                        type = receiverParameterDescriptorJ.getType();
                    } else {
                        type = null;
                    }
                }
                i3 = 10;
                arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
                while (r3.hasNext()) {
                    i4 = i2 + 1;
                    if (i2 >= 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    type2 = (KotlinType) obj;
                    if (type2 == null) {
                        type2 = ((ValueParameterDescriptor) callableMemberDescriptorP0.h().get(i2)).getType();
                        type2.getClass();
                    }
                    arrayList3.add(type2);
                    i2 = i4;
                }
                if (kotlinTypeA == null) {
                    kotlinTypeA = callableMemberDescriptorP0.getReturnType();
                    kotlinTypeA.getClass();
                }
                callableMemberDescriptorP0 = javaCallableMemberDescriptor4.p0(type, arrayList3, kotlinTypeA, pair);
            }
            arrayList4.add(callableMemberDescriptorP0);
            i5 = i3;
        }
        return arrayList4;
    }

    public final KotlinType d(KotlinType kotlinType, LazyJavaResolverContext lazyJavaResolverContext) {
        kotlinType.getClass();
        lazyJavaResolverContext.getClass();
        KotlinType kotlinTypeB = b(new SignatureParts(null, false, lazyJavaResolverContext, AnnotationQualifierApplicabilityType.TYPE_USE, true), kotlinType, EmptyList.f71768b, null, false);
        return kotlinTypeB == null ? kotlinType : kotlinTypeB;
    }

    public final ArrayList e(LazyJavaTypeParameterDescriptor lazyJavaTypeParameterDescriptor, List list, LazyJavaResolverContext lazyJavaResolverContext) {
        list.getClass();
        lazyJavaResolverContext.getClass();
        List<KotlinType> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (KotlinType kotlinType : list2) {
            SignatureEnhancement$$Lambda$3 signatureEnhancement$$Lambda$3 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$$Lambda$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    UnwrappedType unwrappedType = (UnwrappedType) obj;
                    unwrappedType.getClass();
                    return Boolean.valueOf(unwrappedType instanceof RawType);
                }
            };
            kotlinType.getClass();
            signatureEnhancement$$Lambda$3.getClass();
            if (!TypeUtils.c(kotlinType, signatureEnhancement$$Lambda$3)) {
                KotlinType kotlinTypeB = b(new SignatureParts(lazyJavaTypeParameterDescriptor, false, lazyJavaResolverContext, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, false, 16, null), kotlinType, EmptyList.f71768b, null, false);
                if (kotlinTypeB != null) {
                    kotlinType = kotlinTypeB;
                }
            }
            arrayList.add(kotlinType);
        }
        return arrayList;
    }
}
