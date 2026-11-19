package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;

/* JADX INFO: loaded from: classes4.dex */
public final class DescriptorEquivalenceForOverrides {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DescriptorEquivalenceForOverrides f73826a = new DescriptorEquivalenceForOverrides();

    public static SourceElement e(CallableDescriptor callableDescriptor) {
        while (callableDescriptor instanceof CallableMemberDescriptor) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) callableDescriptor;
            if (callableMemberDescriptor.e() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                break;
            }
            Collection collectionI = callableMemberDescriptor.i();
            collectionI.getClass();
            callableDescriptor = (CallableMemberDescriptor) CollectionsKt.i0(collectionI);
            if (callableDescriptor == null) {
                return null;
            }
        }
        return callableDescriptor.getSource();
    }

    public final boolean a(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2, final boolean z) {
        if ((declarationDescriptor instanceof ClassDescriptor) && (declarationDescriptor2 instanceof ClassDescriptor)) {
            return Intrinsics.c(((ClassDescriptor) declarationDescriptor).j(), ((ClassDescriptor) declarationDescriptor2).j());
        }
        if ((declarationDescriptor instanceof TypeParameterDescriptor) && (declarationDescriptor2 instanceof TypeParameterDescriptor)) {
            return b((TypeParameterDescriptor) declarationDescriptor, (TypeParameterDescriptor) declarationDescriptor2, z, DescriptorEquivalenceForOverrides$$Lambda$0.f73827b);
        }
        if (!(declarationDescriptor instanceof CallableDescriptor) || !(declarationDescriptor2 instanceof CallableDescriptor)) {
            return ((declarationDescriptor instanceof PackageFragmentDescriptor) && (declarationDescriptor2 instanceof PackageFragmentDescriptor)) ? Intrinsics.c(((PackageFragmentDescriptor) declarationDescriptor).c(), ((PackageFragmentDescriptor) declarationDescriptor2).c()) : Intrinsics.c(declarationDescriptor, declarationDescriptor2);
        }
        final CallableDescriptor callableDescriptor = (CallableDescriptor) declarationDescriptor;
        final CallableDescriptor callableDescriptor2 = (CallableDescriptor) declarationDescriptor2;
        KotlinTypeRefiner.Default r0 = KotlinTypeRefiner.Default.f74271a;
        r0.getClass();
        if (!callableDescriptor.equals(callableDescriptor2)) {
            if (!Intrinsics.c(callableDescriptor.getName(), callableDescriptor2.getName())) {
                return false;
            }
            if ((callableDescriptor instanceof MemberDescriptor) && (callableDescriptor2 instanceof MemberDescriptor) && ((MemberDescriptor) callableDescriptor).c0() != ((MemberDescriptor) callableDescriptor2).c0()) {
                return false;
            }
            if ((Intrinsics.c(callableDescriptor.d(), callableDescriptor2.d()) && (!z || !Intrinsics.c(e(callableDescriptor), e(callableDescriptor2)))) || DescriptorUtils.m(callableDescriptor) || DescriptorUtils.m(callableDescriptor2) || !d(callableDescriptor, callableDescriptor2, new Function2() { // from class: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$$Lambda$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return Boolean.FALSE;
                }
            }, z)) {
                return false;
            }
            OverridingUtil overridingUtil = new OverridingUtil(new KotlinTypeChecker.TypeConstructorEquality(z, callableDescriptor, callableDescriptor2) { // from class: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$$Lambda$2

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final boolean f73829a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final CallableDescriptor f73830b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final CallableDescriptor f73831c;

                {
                    this.f73829a = z;
                    this.f73830b = callableDescriptor;
                    this.f73831c = callableDescriptor2;
                }

                @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
                public final boolean a(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
                    typeConstructor.getClass();
                    typeConstructor2.getClass();
                    if (typeConstructor.equals(typeConstructor2)) {
                        return true;
                    }
                    ClassifierDescriptor classifierDescriptorY = typeConstructor.y();
                    ClassifierDescriptor classifierDescriptorY2 = typeConstructor2.y();
                    if (!(classifierDescriptorY instanceof TypeParameterDescriptor) || !(classifierDescriptorY2 instanceof TypeParameterDescriptor)) {
                        return false;
                    }
                    final CallableDescriptor callableDescriptor3 = this.f73830b;
                    final CallableDescriptor callableDescriptor4 = this.f73831c;
                    Function2 function2 = new Function2(callableDescriptor3, callableDescriptor4) { // from class: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$$Lambda$3

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final CallableDescriptor f73832b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final CallableDescriptor f73833c;

                        {
                            this.f73832b = callableDescriptor3;
                            this.f73833c = callableDescriptor4;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return Boolean.valueOf(Intrinsics.c((DeclarationDescriptor) obj, this.f73832b) && Intrinsics.c((DeclarationDescriptor) obj2, this.f73833c));
                        }
                    };
                    return DescriptorEquivalenceForOverrides.f73826a.b((TypeParameterDescriptor) classifierDescriptorY, (TypeParameterDescriptor) classifierDescriptorY2, this.f73829a, function2);
                }
            }, r0, KotlinTypePreparator.Default.f74270a);
            OverridingUtil.OverrideCompatibilityInfo.Result resultB = overridingUtil.m(callableDescriptor, callableDescriptor2, null, true).b();
            OverridingUtil.OverrideCompatibilityInfo.Result result = OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE;
            if (resultB != result || overridingUtil.m(callableDescriptor2, callableDescriptor, null, true).b() != result) {
                return false;
            }
        }
        return true;
    }

    public final boolean b(TypeParameterDescriptor typeParameterDescriptor, TypeParameterDescriptor typeParameterDescriptor2, boolean z, Function2 function2) {
        typeParameterDescriptor.getClass();
        typeParameterDescriptor2.getClass();
        function2.getClass();
        if (Intrinsics.c(typeParameterDescriptor, typeParameterDescriptor2)) {
            return true;
        }
        return !Intrinsics.c(typeParameterDescriptor.d(), typeParameterDescriptor2.d()) && d(typeParameterDescriptor, typeParameterDescriptor2, function2, z) && typeParameterDescriptor.getIndex() == typeParameterDescriptor2.getIndex();
    }

    public final boolean d(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2, Function2 function2, boolean z) {
        DeclarationDescriptor declarationDescriptorD = declarationDescriptor.d();
        DeclarationDescriptor declarationDescriptorD2 = declarationDescriptor2.d();
        return ((declarationDescriptorD instanceof CallableMemberDescriptor) || (declarationDescriptorD2 instanceof CallableMemberDescriptor)) ? ((Boolean) function2.invoke(declarationDescriptorD, declarationDescriptorD2)).booleanValue() : a(declarationDescriptorD, declarationDescriptorD2, z);
    }
}
