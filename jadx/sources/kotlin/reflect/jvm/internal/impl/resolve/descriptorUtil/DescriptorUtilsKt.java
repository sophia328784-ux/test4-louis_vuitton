package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import defpackage.r81;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyAccessorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.sequences.FlatteningSequence;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorUtilsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f73888a = 0;

    static {
        Name.e("value");
    }

    public static final boolean a(ValueParameterDescriptor valueParameterDescriptor) {
        valueParameterDescriptor.getClass();
        Boolean boolD = DFS.d(CollectionsKt.O(valueParameterDescriptor), new DFS.Neighbors() { // from class: kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt$$Lambda$0
            @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
            public final Iterable a(Object obj) {
                int i2 = DescriptorUtilsKt.f73888a;
                Collection collectionI = ((ValueParameterDescriptor) obj).i();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(collectionI, 10));
                Iterator it = collectionI.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ValueParameterDescriptor) it.next()).y0());
                }
                return arrayList;
            }
        }, DescriptorUtilsKt$declaresOrInheritsDefaultValue$2.f73893b);
        boolD.getClass();
        return boolD.booleanValue();
    }

    public static CallableMemberDescriptor b(CallableMemberDescriptor callableMemberDescriptor, final Function1 function1) {
        callableMemberDescriptor.getClass();
        function1.getClass();
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final boolean z = false;
        return (CallableMemberDescriptor) DFS.b(CollectionsKt.O(callableMemberDescriptor), new DFS.Neighbors(z) { // from class: kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt$$Lambda$2

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final boolean f73891a;

            {
                this.f73891a = z;
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
            public final Iterable a(Object obj) {
                Collection collectionI;
                CallableMemberDescriptor callableMemberDescriptorY0 = (CallableMemberDescriptor) obj;
                int i2 = DescriptorUtilsKt.f73888a;
                if (this.f73891a) {
                    callableMemberDescriptorY0 = callableMemberDescriptorY0 != null ? callableMemberDescriptorY0.y0() : null;
                }
                return (callableMemberDescriptorY0 == null || (collectionI = callableMemberDescriptorY0.i()) == null) ? EmptyList.f71768b : collectionI;
            }
        }, new DFS.AbstractNodeHandler<CallableMemberDescriptor, CallableMemberDescriptor>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt$firstOverridden$2
            @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
            public final Object a() {
                return (CallableMemberDescriptor) ref$ObjectRef.f71921b;
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.AbstractNodeHandler, kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
            public final void b(Object obj) {
                CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) obj;
                callableMemberDescriptor2.getClass();
                Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                if (ref$ObjectRef2.f71921b == null && ((Boolean) function1.invoke(callableMemberDescriptor2)).booleanValue()) {
                    ref$ObjectRef2.f71921b = callableMemberDescriptor2;
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.AbstractNodeHandler, kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
            public final boolean c(Object obj) {
                ((CallableMemberDescriptor) obj).getClass();
                return ref$ObjectRef.f71921b == null;
            }
        });
    }

    public static final FqName c(DeclarationDescriptorNonRoot declarationDescriptorNonRoot) {
        declarationDescriptorNonRoot.getClass();
        FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(declarationDescriptorNonRoot);
        fqNameUnsafeF.getClass();
        if (!fqNameUnsafeF.d()) {
            fqNameUnsafeF = null;
        }
        if (fqNameUnsafeF != null) {
            return fqNameUnsafeF.i();
        }
        return null;
    }

    public static final ClassDescriptor d(AnnotationDescriptor annotationDescriptor) {
        annotationDescriptor.getClass();
        ClassifierDescriptor classifierDescriptorY = annotationDescriptor.getType().H0().y();
        if (classifierDescriptorY instanceof ClassDescriptor) {
            return (ClassDescriptor) classifierDescriptorY;
        }
        return null;
    }

    public static final KotlinBuiltIns e(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        return i(declarationDescriptor).g();
    }

    public static final ClassId f(ClassifierDescriptor classifierDescriptor) {
        DeclarationDescriptor declarationDescriptorD;
        ClassId classIdF;
        if (classifierDescriptor == null || (declarationDescriptorD = classifierDescriptor.d()) == null) {
            return null;
        }
        if (declarationDescriptorD instanceof PackageFragmentDescriptor) {
            FqName fqNameC = ((PackageFragmentDescriptor) declarationDescriptorD).c();
            Name name = classifierDescriptor.getName();
            name.getClass();
            return new ClassId(fqNameC, name);
        }
        if (!(declarationDescriptorD instanceof ClassifierDescriptorWithTypeParameters) || (classIdF = f((ClassifierDescriptor) declarationDescriptorD)) == null) {
            return null;
        }
        Name name2 = classifierDescriptor.getName();
        name2.getClass();
        return classIdF.d(name2);
    }

    public static final FqName g(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        FqName fqNameG = DescriptorUtils.g(declarationDescriptor);
        return fqNameG != null ? fqNameG : DescriptorUtils.f(declarationDescriptor.d()).a(declarationDescriptor.getName()).i();
    }

    public static final KotlinTypeRefiner.Default h(ModuleDescriptor moduleDescriptor) {
        moduleDescriptor.getClass();
        if (moduleDescriptor.C0(KotlinTypeRefinerKt.f74272a) == null) {
            return KotlinTypeRefiner.Default.f74271a;
        }
        r81.h();
        return null;
    }

    public static final ModuleDescriptor i(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(declarationDescriptor);
        moduleDescriptorC.getClass();
        return moduleDescriptorC;
    }

    public static final Sequence j(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters) {
        classifierDescriptorWithTypeParameters.getClass();
        return SequencesKt.d(SequencesKt.n(classifierDescriptorWithTypeParameters, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj;
                int i2 = DescriptorUtilsKt.f73888a;
                declarationDescriptor.getClass();
                return declarationDescriptor.d();
            }
        }), 1);
    }

    public static final CallableMemberDescriptor k(CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        if (!(callableMemberDescriptor instanceof PropertyAccessorDescriptor)) {
            return callableMemberDescriptor;
        }
        PropertyDescriptor propertyDescriptorP = ((PropertyAccessorDescriptor) callableMemberDescriptor).P();
        propertyDescriptorP.getClass();
        return propertyDescriptorP;
    }

    public static final FlatteningSequence l(CallableMemberDescriptor callableMemberDescriptor, final boolean z) {
        callableMemberDescriptor.getClass();
        if (z) {
            callableMemberDescriptor = callableMemberDescriptor.y0();
        }
        SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1 sequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1 = new SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1(callableMemberDescriptor);
        Collection collectionI = callableMemberDescriptor.i();
        collectionI.getClass();
        return SequencesKt.u(sequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1, SequencesKt.i(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(collectionI), new Function1(z) { // from class: kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final boolean f73892b;

            {
                this.f73892b = z;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) obj;
                int i2 = DescriptorUtilsKt.f73888a;
                callableMemberDescriptor2.getClass();
                return DescriptorUtilsKt.l(callableMemberDescriptor2, this.f73892b);
            }
        }));
    }
}
