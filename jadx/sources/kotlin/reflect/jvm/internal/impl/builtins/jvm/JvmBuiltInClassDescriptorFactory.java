package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsPackageFragment;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmBuiltInClassDescriptorFactory implements ClassDescriptorFactory {
    public static final Name g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ClassId f72319h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ModuleDescriptor f72320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f72321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotNullLazyValue f72322c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72317e = {Reflection.f71922a.h(new PropertyReference1Impl(JvmBuiltInClassDescriptorFactory.class, "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;", 0))};
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FqName f72318f = StandardNames.l;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        FqNameUnsafe fqNameUnsafe = StandardNames.FqNames.f72273c;
        g = fqNameUnsafe.g();
        ClassId.Companion companion = ClassId.d;
        FqName fqNameI = fqNameUnsafe.i();
        companion.getClass();
        f72319h = ClassId.Companion.b(fqNameI);
    }

    public JvmBuiltInClassDescriptorFactory(final StorageManager storageManager, ModuleDescriptor moduleDescriptor, Function1<? super ModuleDescriptor, ? extends DeclarationDescriptor> function1) {
        storageManager.getClass();
        moduleDescriptor.getClass();
        function1.getClass();
        this.f72320a = moduleDescriptor;
        this.f72321b = function1;
        this.f72322c = storageManager.c(new Function0(this, storageManager) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInClassDescriptorFactory$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final JvmBuiltInClassDescriptorFactory f72323b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final StorageManager f72324c;

            {
                this.f72323b = this;
                this.f72324c = storageManager;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                JvmBuiltInClassDescriptorFactory.Companion companion = JvmBuiltInClassDescriptorFactory.d;
                JvmBuiltInClassDescriptorFactory jvmBuiltInClassDescriptorFactory = this.f72323b;
                Function1 function2 = jvmBuiltInClassDescriptorFactory.f72321b;
                ModuleDescriptor moduleDescriptor2 = jvmBuiltInClassDescriptorFactory.f72320a;
                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) function2.invoke(moduleDescriptor2);
                Name name = JvmBuiltInClassDescriptorFactory.g;
                Modality modality = Modality.ABSTRACT;
                ClassKind classKind = ClassKind.INTERFACE;
                List listO = CollectionsKt.O(moduleDescriptor2.g().e());
                SourceElement sourceElement = SourceElement.f72405a;
                StorageManager storageManager2 = this.f72324c;
                ClassDescriptorImpl classDescriptorImpl = new ClassDescriptorImpl(declarationDescriptor, name, modality, classKind, listO, sourceElement, false, storageManager2);
                classDescriptorImpl.F0(new CloneableClassScope(storageManager2, classDescriptorImpl), EmptySet.f71770b, null);
                return classDescriptorImpl;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final Collection a(FqName fqName) {
        fqName.getClass();
        if (!fqName.equals(f72318f)) {
            return EmptySet.f71770b;
        }
        return SetsKt.h((ClassDescriptorImpl) StorageKt.a(this.f72322c, f72317e[0]));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final boolean b(FqName fqName, Name name) {
        fqName.getClass();
        name.getClass();
        return Intrinsics.c(name, g) && Intrinsics.c(fqName, f72318f);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final ClassDescriptor c(ClassId classId) {
        classId.getClass();
        if (!classId.equals(f72319h)) {
            return null;
        }
        return (ClassDescriptorImpl) StorageKt.a(this.f72322c, f72317e[0]);
    }

    public /* synthetic */ JvmBuiltInClassDescriptorFactory(StorageManager storageManager, ModuleDescriptor moduleDescriptor, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(storageManager, moduleDescriptor, (i2 & 4) != 0 ? new Function1() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInClassDescriptorFactory$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ModuleDescriptor moduleDescriptor2 = (ModuleDescriptor) obj;
                JvmBuiltInClassDescriptorFactory.Companion companion = JvmBuiltInClassDescriptorFactory.d;
                moduleDescriptor2.getClass();
                List listA0 = moduleDescriptor2.d0(JvmBuiltInClassDescriptorFactory.f72318f).a0();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : listA0) {
                    if (obj2 instanceof BuiltInsPackageFragment) {
                        arrayList.add(obj2);
                    }
                }
                return (DeclarationDescriptor) CollectionsKt.B(arrayList);
            }
        } : function1);
    }
}
