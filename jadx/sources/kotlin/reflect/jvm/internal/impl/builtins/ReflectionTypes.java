package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.tr;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectionTypes {
    public static final Companion d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72256e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NotFoundClasses f72257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f72258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ClassLookup f72259c;

    public static final class ClassLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f72261a;

        public ClassLookup(int i2) {
            this.f72261a = i2;
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(ReflectionTypes.class, "kClass", "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f72256e = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(ReflectionTypes.class, "kProperty", "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0, reflectionFactory), tr.q(ReflectionTypes.class, "kProperty0", "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0, reflectionFactory), tr.q(ReflectionTypes.class, "kProperty1", "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0, reflectionFactory), tr.q(ReflectionTypes.class, "kProperty2", "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0, reflectionFactory), tr.q(ReflectionTypes.class, "kMutableProperty0", "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0, reflectionFactory), tr.q(ReflectionTypes.class, "kMutableProperty1", "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0, reflectionFactory), tr.q(ReflectionTypes.class, "kMutableProperty2", "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0, reflectionFactory)};
        d = new Companion(null);
    }

    public ReflectionTypes(final ModuleDescriptor moduleDescriptor, NotFoundClasses notFoundClasses) {
        moduleDescriptor.getClass();
        notFoundClasses.getClass();
        this.f72257a = notFoundClasses;
        this.f72258b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(moduleDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ModuleDescriptor f72260b;

            {
                this.f72260b = moduleDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ReflectionTypes.Companion companion = ReflectionTypes.d;
                return this.f72260b.d0(StandardNames.f72268i).n();
            }
        });
        this.f72259c = new ClassLookup(1);
        new ClassLookup(1);
        new ClassLookup(1);
        new ClassLookup(2);
        new ClassLookup(3);
        new ClassLookup(1);
        new ClassLookup(2);
        new ClassLookup(3);
    }

    public final ClassDescriptor a() {
        KProperty kProperty = f72256e[0];
        ClassLookup classLookup = this.f72259c;
        classLookup.getClass();
        kProperty.getClass();
        String strA = CapitalizeDecapitalizeKt.a(kProperty.getF72049j());
        int i2 = classLookup.f72261a;
        Name nameE = Name.e(strA);
        ClassifierDescriptor classifierDescriptorF = ((MemberScope) this.f72258b.getF71699b()).f(nameE, NoLookupLocation.FROM_REFLECTION);
        ClassDescriptor classDescriptor = classifierDescriptorF instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorF : null;
        if (classDescriptor == null) {
            return this.f72257a.a(new ClassId(StandardNames.f72268i, nameE), CollectionsKt.O(Integer.valueOf(i2)));
        }
        return classDescriptor;
    }
}
