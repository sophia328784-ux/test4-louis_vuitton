package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinderKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryPackageSourceElement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaPackageFragment extends PackageFragmentDescriptorImpl {
    public static final /* synthetic */ KProperty[] p;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final JavaPackage f73015h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LazyJavaResolverContext f73016i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MetadataVersion f73017j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NotNullLazyValue f73018k;
    public final JvmPackageScope l;
    public final NotNullLazyValue m;
    public final Annotations n;
    public final NotNullLazyValue o;

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73022a;

        static {
            int[] iArr = new int[KotlinClassHeader.Kind.values().length];
            try {
                iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS_PART.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KotlinClassHeader.Kind.FILE_FACADE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f73022a = iArr;
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(LazyJavaPackageFragment.class, "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        p = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(LazyJavaPackageFragment.class, "partToFacade", "getPartToFacade()Ljava/util/HashMap;", 0, reflectionFactory)};
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyJavaPackageFragment(LazyJavaResolverContext lazyJavaResolverContext, JavaPackage javaPackage) {
        lazyJavaResolverContext.getClass();
        javaPackage.getClass();
        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
        super(javaResolverComponents.o, javaPackage.c());
        this.f73015h = javaPackage;
        LazyJavaResolverContext lazyJavaResolverContextA = ContextKt.a(lazyJavaResolverContext, this, null, 6);
        this.f73016i = lazyJavaResolverContextA;
        this.f73017j = javaResolverComponents.d.c().f73990c.a();
        JavaResolverComponents javaResolverComponents2 = lazyJavaResolverContextA.f72962a;
        this.f73018k = javaResolverComponents2.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaPackageFragment f73019b;

            {
                this.f73019b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LazyJavaPackageFragment lazyJavaPackageFragment = this.f73019b;
                EmptyList<String> emptyListA = lazyJavaPackageFragment.f73016i.f72962a.l.a(lazyJavaPackageFragment.f72537f.f73679a.f73683a);
                ArrayList arrayList = new ArrayList();
                for (String str : emptyListA) {
                    ClassId.Companion companion = ClassId.d;
                    FqName fqName = new FqName(JvmClassName.c(str).f73899a.replace('/', JwtParser.SEPARATOR_CHAR));
                    companion.getClass();
                    KotlinJvmBinaryClass kotlinJvmBinaryClassA = KotlinClassFinderKt.a(lazyJavaPackageFragment.f73016i.f72962a.f72946c, ClassId.Companion.b(fqName), lazyJavaPackageFragment.f73017j);
                    Pair pair = kotlinJvmBinaryClassA != null ? new Pair(str, kotlinJvmBinaryClassA) : null;
                    if (pair != null) {
                        arrayList.add(pair);
                    }
                }
                return MapsKt.n(arrayList);
            }
        });
        this.l = new JvmPackageScope(lazyJavaResolverContextA, javaPackage, this);
        StorageManager storageManager = javaResolverComponents2.f72944a;
        this.m = storageManager.a(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaPackageFragment f73020b;

            {
                this.f73020b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                EmptyList emptyListR = this.f73020b.f73015h.r();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(emptyListR, 10));
                Iterator<E> it = emptyListR.iterator();
                while (it.hasNext()) {
                    arrayList.add(((JavaPackage) it.next()).c());
                }
                return arrayList;
            }
        }, EmptyList.f71768b);
        this.n = javaResolverComponents2.v.f72859c ? Annotations.Companion.f72432a : LazyJavaAnnotationsKt.a(lazyJavaResolverContextA, javaPackage);
        this.o = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaPackageFragment f73021b;

            {
                this.f73021b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = LazyJavaPackageFragment.p;
                HashMap map = new HashMap();
                for (Map.Entry entry : ((Map) StorageKt.a(this.f73021b.f73018k, LazyJavaPackageFragment.p[0])).entrySet()) {
                    String str = (String) entry.getKey();
                    KotlinJvmBinaryClass kotlinJvmBinaryClass = (KotlinJvmBinaryClass) entry.getValue();
                    JvmClassName jvmClassNameC = JvmClassName.c(str);
                    KotlinClassHeader kotlinClassHeaderC = kotlinJvmBinaryClass.c();
                    int i2 = LazyJavaPackageFragment.WhenMappings.f73022a[kotlinClassHeaderC.f73275a.ordinal()];
                    if (i2 == 1) {
                        String str2 = kotlinClassHeaderC.f73279f;
                        if (kotlinClassHeaderC.f73275a != KotlinClassHeader.Kind.MULTIFILE_CLASS_PART) {
                            str2 = null;
                        }
                        if (str2 != null) {
                            map.put(jvmClassNameC, JvmClassName.c(str2));
                        }
                    } else if (i2 == 2) {
                        map.put(jvmClassNameC, jvmClassNameC);
                    }
                }
                return map;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotatedImpl, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    public final SourceElement getSource() {
        return new KotlinJvmBinaryPackageSourceElement(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
    public final MemberScope n() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public final String toString() {
        return "Lazy Java package fragment: " + this.f72537f + " of module " + this.f73016i.f72962a.o;
    }
}
