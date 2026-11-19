package kotlin.reflect.jvm.internal.impl.builtins.functions;

import defpackage.ct0;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.utils.addToStdlib.AddToStdlibKt;

/* JADX INFO: loaded from: classes4.dex */
public final class FunctionClassDescriptor extends AbstractClassDescriptor {
    public static final ClassId n;
    public static final ClassId o;
    public final StorageManager g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PackageFragmentDescriptor f72287h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FunctionTypeKind f72288i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f72289j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FunctionTypeConstructor f72290k;
    public final FunctionClassScope l;
    public final List m;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final class FunctionTypeConstructor extends AbstractClassTypeConstructor {
        public FunctionTypeConstructor() {
            super(FunctionClassDescriptor.this.g);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean A() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection b() {
            List listP;
            FunctionClassDescriptor functionClassDescriptor = FunctionClassDescriptor.this;
            FunctionTypeKind functionTypeKind = functionClassDescriptor.f72288i;
            int i2 = functionClassDescriptor.f72289j;
            FunctionTypeKind.Function function = FunctionTypeKind.Function.f72293c;
            if (Intrinsics.c(functionTypeKind, function)) {
                listP = CollectionsKt.O(FunctionClassDescriptor.n);
            } else if (Intrinsics.c(functionTypeKind, FunctionTypeKind.KFunction.f72294c)) {
                listP = CollectionsKt.P(FunctionClassDescriptor.o, new ClassId(StandardNames.l, function.a(i2)));
            } else {
                FunctionTypeKind.SuspendFunction suspendFunction = FunctionTypeKind.SuspendFunction.f72296c;
                if (Intrinsics.c(functionTypeKind, suspendFunction)) {
                    listP = CollectionsKt.O(FunctionClassDescriptor.n);
                } else {
                    if (!Intrinsics.c(functionTypeKind, FunctionTypeKind.KSuspendFunction.f72295c)) {
                        int i3 = AddToStdlibKt.f74404a;
                        md.k("should not be called");
                        return null;
                    }
                    listP = CollectionsKt.P(FunctionClassDescriptor.o, new ClassId(StandardNames.f72266f, suspendFunction.a(i2)));
                }
            }
            ModuleDescriptor moduleDescriptorD = functionClassDescriptor.f72287h.d();
            List<ClassId> list = listP;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (ClassId classId : list) {
                ClassDescriptor classDescriptorA = FindClassInModuleKt.a(moduleDescriptorD, classId);
                if (classDescriptorA == null) {
                    ct0.q("Built-in class ", classId, " not found");
                    return null;
                }
                List listR0 = CollectionsKt.r0(classDescriptorA.j().getParameters().size(), functionClassDescriptor.m);
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listR0, 10));
                Iterator it = listR0.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new TypeProjectionImpl(((TypeParameterDescriptor) it.next()).o()));
                }
                TypeAttributes.f74232c.getClass();
                arrayList.add(KotlinTypeFactory.c(TypeAttributes.d, classDescriptorA, arrayList2));
            }
            return CollectionsKt.y0(arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final SupertypeLoopChecker e() {
            return SupertypeLoopChecker.EMPTY.f72407a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List getParameters() {
            return FunctionClassDescriptor.this.m;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor
        /* JADX INFO: renamed from: m */
        public final ClassDescriptor y() {
            return FunctionClassDescriptor.this;
        }

        public final String toString() {
            return FunctionClassDescriptor.this.toString();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final ClassifierDescriptor y() {
            return FunctionClassDescriptor.this;
        }
    }

    static {
        new Companion(null);
        n = new ClassId(StandardNames.l, Name.e("Function"));
        o = new ClassId(StandardNames.f72268i, Name.e("KFunction"));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionClassDescriptor(StorageManager storageManager, PackageFragmentDescriptor packageFragmentDescriptor, FunctionTypeKind functionTypeKind, int i2) {
        super(storageManager, functionTypeKind.a(i2));
        storageManager.getClass();
        packageFragmentDescriptor.getClass();
        functionTypeKind.getClass();
        this.g = storageManager;
        this.f72287h = packageFragmentDescriptor;
        this.f72288i = functionTypeKind;
        this.f72289j = i2;
        this.f72290k = new FunctionTypeConstructor();
        this.l = new FunctionClassScope(storageManager, this);
        ArrayList arrayList = new ArrayList();
        IntRange intRange = new IntRange(1, i2);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (((IntProgressionIterator) it).d) {
            int iNextInt = ((IntIterator) it).nextInt();
            arrayList.add(TypeParameterDescriptorImpl.I0(this, Variance.IN_VARIANCE, Name.e("P" + iNextInt), arrayList.size(), this.g));
            arrayList2.add(Unit.f71739a);
        }
        arrayList.add(TypeParameterDescriptorImpl.I0(this, Variance.OUT_VARIANCE, Name.e("R"), arrayList.size(), this.g));
        this.m = CollectionsKt.y0(arrayList);
        FunctionClassKind.Companion companion = FunctionClassKind.Companion;
        FunctionTypeKind functionTypeKind2 = this.f72288i;
        companion.getClass();
        functionTypeKind2.getClass();
        if (functionTypeKind2.equals(FunctionTypeKind.Function.f72293c) || functionTypeKind2.equals(FunctionTypeKind.SuspendFunction.f72296c) || functionTypeKind2.equals(FunctionTypeKind.KFunction.f72294c)) {
            return;
        }
        functionTypeKind2.equals(FunctionTypeKind.KSuspendFunction.f72295c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean D0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ValueClassRepresentation O() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean R() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean T() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean W() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope b0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean c0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor d() {
        return this.f72287h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassKind e() {
        return ClassKind.INTERFACE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope e0() {
        return MemberScope.Empty.f73933b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final Collection f() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final /* bridge */ /* synthetic */ ClassDescriptor f0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return Annotations.Companion.f72432a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    public final SourceElement getSource() {
        return SourceElement.f72405a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
    public final DescriptorVisibility getVisibility() {
        DescriptorVisibility descriptorVisibility = DescriptorVisibilities.f72369e;
        descriptorVisibility.getClass();
        return descriptorVisibility;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor j() {
        return this.f72290k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean k() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List p() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality q() {
        return Modality.ABSTRACT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean r() {
        return false;
    }

    public final String toString() {
        String strB = getName().b();
        strB.getClass();
        return strB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final /* bridge */ /* synthetic */ ClassConstructorDescriptor y() {
        return null;
    }
}
