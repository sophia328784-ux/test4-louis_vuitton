package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.b21;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.collections.IntIterator;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;

/* JADX INFO: loaded from: classes4.dex */
public final class NotFoundClasses {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StorageManager f72384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ModuleDescriptor f72385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MemoizedFunctionToNotNull f72386c;
    public final MemoizedFunctionToNotNull d;

    public static final class ClassRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ClassId f72389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f72390b;

        public ClassRequest(ClassId classId, List<Integer> list) {
            classId.getClass();
            list.getClass();
            this.f72389a = classId;
            this.f72390b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClassRequest)) {
                return false;
            }
            ClassRequest classRequest = (ClassRequest) obj;
            return Intrinsics.c(this.f72389a, classRequest.f72389a) && Intrinsics.c(this.f72390b, classRequest.f72390b);
        }

        public final int hashCode() {
            return this.f72390b.hashCode() + (this.f72389a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ClassRequest(classId=");
            sb.append(this.f72389a);
            sb.append(", typeParametersCount=");
            return tr.m(sb, this.f72390b, ')');
        }
    }

    public static final class MockClassDescriptor extends ClassDescriptorBase {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f72391j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ArrayList f72392k;
        public final ClassTypeConstructorImpl l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MockClassDescriptor(StorageManager storageManager, DeclarationDescriptor declarationDescriptor, Name name, boolean z, int i2) {
            super(storageManager, declarationDescriptor, name, SourceElement.f72405a, false);
            storageManager.getClass();
            declarationDescriptor.getClass();
            name.getClass();
            this.f72391j = z;
            IntRange intRangeJ = RangesKt.j(0, i2);
            ArrayList arrayList = new ArrayList(CollectionsKt.t(intRangeJ, 10));
            Iterator<Integer> it = intRangeJ.iterator();
            while (((IntProgressionIterator) it).d) {
                int iNextInt = ((IntIterator) it).nextInt();
                arrayList.add(TypeParameterDescriptorImpl.I0(this, Variance.INVARIANT, Name.e("T" + iNextInt), iNextInt, storageManager));
            }
            this.f72392k = arrayList;
            List listB = TypeParameterUtilsKt.b(this);
            int i3 = DescriptorUtilsKt.f73888a;
            ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(this);
            moduleDescriptorC.getClass();
            this.l = new ClassTypeConstructorImpl(this, listB, SetsKt.h(moduleDescriptorC.g().e()), storageManager);
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
            return MemberScope.Empty.f73933b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
        public final boolean c0() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
        public final ClassKind e() {
            return ClassKind.CLASS;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
        public final MemberScope e0() {
            return MemberScope.Empty.f73933b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
        public final Collection f() {
            return EmptySet.f71770b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
        public final ClassDescriptor f0() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
        public final Annotations getAnnotations() {
            return Annotations.Companion.f72432a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
        public final DescriptorVisibility getVisibility() {
            DescriptorVisibility descriptorVisibility = DescriptorVisibilities.f72369e;
            descriptorVisibility.getClass();
            return descriptorVisibility;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
        public final boolean isExternal() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
        public final boolean isInline() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
        public final TypeConstructor j() {
            return this.l;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
        public final boolean k() {
            return this.f72391j;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
        public final List p() {
            return this.f72392k;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
        public final Modality q() {
            return Modality.FINAL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
        public final boolean r() {
            return false;
        }

        public final String toString() {
            return "class " + getName() + " (not found)";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
        public final ClassConstructorDescriptor y() {
            return null;
        }
    }

    public NotFoundClasses(StorageManager storageManager, ModuleDescriptor moduleDescriptor) {
        storageManager.getClass();
        moduleDescriptor.getClass();
        this.f72384a = storageManager;
        this.f72385b = moduleDescriptor;
        this.f72386c = storageManager.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final NotFoundClasses f72387b;

            {
                this.f72387b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FqName fqName = (FqName) obj;
                fqName.getClass();
                return new EmptyPackageFragmentDescriptor(this.f72387b.f72385b, fqName);
            }
        });
        this.d = storageManager.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final NotFoundClasses f72388b;

            {
                this.f72388b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DeclarationDescriptor declarationDescriptorA;
                NotFoundClasses.ClassRequest classRequest = (NotFoundClasses.ClassRequest) obj;
                classRequest.getClass();
                ClassId classId = classRequest.f72389a;
                List list = classRequest.f72390b;
                if (classId.f73677c) {
                    b21.p(classId, "Unresolved local class: ");
                    return null;
                }
                ClassId classIdE = classId.e();
                NotFoundClasses notFoundClasses = this.f72388b;
                if (classIdE == null || (declarationDescriptorA = notFoundClasses.a(classIdE, CollectionsKt.w(list, 1))) == null) {
                    declarationDescriptorA = (ClassOrPackageFragmentDescriptor) notFoundClasses.f72386c.invoke(classId.f73675a);
                }
                DeclarationDescriptor declarationDescriptor = declarationDescriptorA;
                boolean zG = classId.g();
                StorageManager storageManager2 = notFoundClasses.f72384a;
                Name nameF = classId.f();
                Integer num = (Integer) CollectionsKt.firstOrNull(list);
                return new NotFoundClasses.MockClassDescriptor(storageManager2, declarationDescriptor, nameF, zG, num != null ? num.intValue() : 0);
            }
        });
    }

    public final ClassDescriptor a(ClassId classId, List list) {
        classId.getClass();
        list.getClass();
        return (ClassDescriptor) this.d.invoke(new ClassRequest(classId, list));
    }
}
