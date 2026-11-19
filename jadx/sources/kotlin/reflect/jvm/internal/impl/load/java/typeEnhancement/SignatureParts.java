package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;

/* JADX INFO: loaded from: classes4.dex */
final class SignatureParts extends AbstractSignatureParts<AnnotationDescriptor> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Annotated f73186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f73187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyJavaResolverContext f73188c;
    public final AnnotationQualifierApplicabilityType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f73189e;

    public SignatureParts(Annotated annotated, boolean z, LazyJavaResolverContext lazyJavaResolverContext, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, boolean z2) {
        lazyJavaResolverContext.getClass();
        annotationQualifierApplicabilityType.getClass();
        this.f73186a = annotated;
        this.f73187b = z;
        this.f73188c = lazyJavaResolverContext;
        this.d = annotationQualifierApplicabilityType;
        this.f73189e = z2;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:19:0x0042  */
    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0057  */
    /* JADX WARN: Code duplicated, block: B:28:0x0067  */
    /* JADX WARN: Code duplicated, block: B:30:0x006a  */
    /* JADX WARN: Code duplicated, block: B:33:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:? A[LOOP:0: B:23:0x0051->B:35:?, LOOP_END, SYNTHETIC] */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts
    public final boolean b(Object obj, KotlinTypeMarker kotlinTypeMarker) {
        AnnotationTypeQualifierResolver annotationTypeQualifierResolverC;
        Object objD;
        boolean z;
        ArrayList arrayListA;
        Iterator it;
        AnnotationDescriptor annotationDescriptor = (AnnotationDescriptor) obj;
        if (!(annotationDescriptor instanceof PossiblyExternalAnnotationDescriptor) || !((PossiblyExternalAnnotationDescriptor) annotationDescriptor).b()) {
            if (!(annotationDescriptor instanceof LazyJavaAnnotationDescriptor)) {
                if (kotlinTypeMarker != null) {
                    annotationTypeQualifierResolverC = c();
                    annotationTypeQualifierResolverC.getClass();
                    annotationDescriptor.getClass();
                    objD = annotationTypeQualifierResolverC.d(annotationDescriptor, StandardNames.FqNames.t);
                    if (objD == null) {
                        arrayListA = annotationTypeQualifierResolverC.a(objD, false);
                        if (arrayListA.isEmpty()) {
                            it = arrayListA.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    z = false;
                                    break;
                                }
                                if (Intrinsics.c((String) it.next(), "TYPE")) {
                                    z = true;
                                    break;
                                }
                            }
                        } else {
                            z = false;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                    if (z) {
                        this.f73188c.f72962a.t.getClass();
                    }
                }
                return false;
            }
            n();
            if (!((LazyJavaAnnotationDescriptor) annotationDescriptor).f72990h && this.d != AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS) {
                if (kotlinTypeMarker != null && KotlinBuiltIns.G((KotlinType) kotlinTypeMarker)) {
                    annotationTypeQualifierResolverC = c();
                    annotationTypeQualifierResolverC.getClass();
                    annotationDescriptor.getClass();
                    objD = annotationTypeQualifierResolverC.d(annotationDescriptor, StandardNames.FqNames.t);
                    if (objD == null) {
                        arrayListA = annotationTypeQualifierResolverC.a(objD, false);
                        if (arrayListA.isEmpty()) {
                            it = arrayListA.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    z = false;
                                    break;
                                }
                                if (Intrinsics.c((String) it.next(), "TYPE")) {
                                    z = true;
                                    break;
                                }
                            }
                        } else {
                            z = false;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                    if (z) {
                        this.f73188c.f72962a.t.getClass();
                    }
                }
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts
    public final Annotations d(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return ((KotlinType) kotlinTypeMarker).getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts
    public final AnnotationQualifierApplicabilityType f() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts
    public final JavaTypeQualifiersByElementType g() {
        return (JavaTypeQualifiersByElementType) this.f73188c.f72964c.getF71699b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts
    public final KotlinType h(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return TypeWithEnhancementKt.a((KotlinType) kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts
    public final boolean j() {
        return this.f73189e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts
    public final boolean k(TypeParameterMarker typeParameterMarker) {
        typeParameterMarker.getClass();
        return typeParameterMarker instanceof LazyJavaTypeParameterDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final AnnotationTypeQualifierResolver c() {
        return this.f73188c.f72962a.q;
    }

    public final boolean n() {
        this.f73188c.f72962a.t.getClass();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final FqNameUnsafe o(RigidTypeMarker rigidTypeMarker) {
        rigidTypeMarker.getClass();
        ErrorType errorType = TypeUtils.f74263a;
        ClassifierDescriptor classifierDescriptorY = ((KotlinType) rigidTypeMarker).H0().y();
        ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
        if (classDescriptor != null) {
            return DescriptorUtils.f(classDescriptor);
        }
        return null;
    }

    public /* synthetic */ SignatureParts(Annotated annotated, boolean z, LazyJavaResolverContext lazyJavaResolverContext, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotated, z, lazyJavaResolverContext, annotationQualifierApplicabilityType, (i2 & 16) != 0 ? false : z2);
    }
}
