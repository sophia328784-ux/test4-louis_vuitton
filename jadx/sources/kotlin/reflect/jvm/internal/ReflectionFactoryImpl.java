package kotlin.reflect.jvm.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.az;
import defpackage.d20;
import defpackage.tg0;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.PropertyReference0;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference2;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.full.KCallables;
import kotlin.reflect.full.KClassifiers;
import kotlin.reflect.jvm.ReflectLambdaKt;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.types.AbstractKType;
import kotlin.reflect.jvm.internal.types.DescriptorKType;
import kotlin.reflect.jvm.internal.types.MutableCollectionKClassKt;
import kotlin.reflect.jvm.internal.types.SimpleKType;

/* JADX INFO: loaded from: classes4.dex */
public class ReflectionFactoryImpl extends ReflectionFactory {
    public static KDeclarationContainerImpl m(CallableReference callableReference) {
        KDeclarationContainer owner = callableReference.getOwner();
        return owner instanceof KDeclarationContainerImpl ? (KDeclarationContainerImpl) owner : EmptyContainerForLocal.f72070e;
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KFunction a(FunctionReference functionReference) {
        return new DescriptorKFunction(m(functionReference), functionReference.getF72049j(), functionReference.getSignature(), functionReference.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KClass b(Class cls) {
        return CachesKt.a(cls);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KDeclarationContainer c(Class cls) {
        CacheByClass cacheByClass = CachesKt.f71977a;
        cls.getClass();
        return (KDeclarationContainer) CachesKt.f71978b.a(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KType d(KType kType) {
        String f74431c;
        kType.getClass();
        Function0 function0 = null;
        Object[] objArr = 0;
        if (!SystemPropertiesKt.f72181a) {
            SimpleKType simpleKType = (SimpleKType) kType;
            KClassifier kClassifier = simpleKType.f74442c;
            KClass kClass = kClassifier instanceof KClass ? (KClass) kClassifier : null;
            if (kClass == null || (f74431c = kClass.getF74431c()) == null) {
                d20.c(kType, "Non-class type cannot be a mutable collection type: ");
                return null;
            }
            String str = JavaToKotlinClassMap.f72305a;
            FqName fqName = (FqName) JavaToKotlinClassMap.f72313k.get(new FqNameUnsafe(f74431c));
            if (fqName != null) {
                return new SimpleKType(simpleKType.f74442c, simpleKType.d, simpleKType.f74443e, simpleKType.f74444f, simpleKType.g, simpleKType.f74445h, simpleKType.f74446i, simpleKType.f74447j, MutableCollectionKClassKt.a(fqName, (KClass) kClassifier), null, 512, null);
            }
            az.m(kType, "Not a readonly collection: ");
            return null;
        }
        KotlinType kotlinType = ((DescriptorKType) kType).f74413c;
        if (!(kotlinType instanceof SimpleType)) {
            tg0.n(kType, "Non-simple type cannot be a mutable collection type: ");
            return null;
        }
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
        if (classDescriptor == null) {
            az.m(kType, "Non-class type cannot be a mutable collection type: ");
            return null;
        }
        SimpleType simpleType = (SimpleType) kotlinType;
        String str2 = JavaToKotlinClassMap.f72305a;
        int i2 = DescriptorUtilsKt.f73888a;
        FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classDescriptor);
        fqNameUnsafeF.getClass();
        FqName fqName2 = (FqName) JavaToKotlinClassMap.f72313k.get(fqNameUnsafeF);
        if (fqName2 == null) {
            az.m(classDescriptor, "Not a readonly collection: ");
            return null;
        }
        ClassDescriptor classDescriptorJ = DescriptorUtilsKt.i(classDescriptor).g().j(fqName2);
        classDescriptorJ.getClass();
        TypeConstructor typeConstructorJ = classDescriptorJ.j();
        typeConstructorJ.getClass();
        TypeAttributes typeAttributesG0 = simpleType.G0();
        List listF0 = simpleType.F0();
        boolean zI0 = simpleType.I0();
        typeAttributesG0.getClass();
        listF0.getClass();
        return new DescriptorKType(KotlinTypeFactory.d(typeAttributesG0, typeConstructorJ, listF0, zI0, null), function0, 2, objArr == true ? 1 : 0);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KMutableProperty0 e(MutablePropertyReference0 mutablePropertyReference0) {
        return new DescriptorKMutableProperty0(m(mutablePropertyReference0), mutablePropertyReference0.getF72049j(), mutablePropertyReference0.getSignature(), mutablePropertyReference0.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KMutableProperty1 f(MutablePropertyReference1 mutablePropertyReference1) {
        return new DescriptorKMutableProperty1(m(mutablePropertyReference1), mutablePropertyReference1.getF72049j(), mutablePropertyReference1.getSignature(), mutablePropertyReference1.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KProperty0 g(PropertyReference0 propertyReference0) {
        return new DescriptorKProperty0(m(propertyReference0), propertyReference0.getF72049j(), propertyReference0.getSignature(), propertyReference0.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KProperty1 h(PropertyReference1 propertyReference1) {
        return new DescriptorKProperty1(m(propertyReference1), propertyReference1.getF72049j(), propertyReference1.getSignature(), propertyReference1.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KProperty2 i(PropertyReference2 propertyReference2) {
        return new DescriptorKProperty2(m(propertyReference2), propertyReference2.getF72049j(), propertyReference2.getSignature());
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final String j(FunctionBase functionBase) {
        DescriptorKFunction descriptorKFunctionA = ReflectLambdaKt.a(functionBase);
        if (descriptorKFunctionA == null) {
            return super.j(functionBase);
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = descriptorKFunctionA.getParameters().iterator();
        Object obj = null;
        boolean z = false;
        Object obj2 = null;
        while (true) {
            if (!it.hasNext()) {
                if (!z) {
                    break;
                }
                obj = obj2;
                break;
            }
            Object next = it.next();
            if (((KParameter) next).getD() == KParameter.Kind.EXTENSION_RECEIVER) {
                if (z) {
                    break;
                }
                z = true;
                obj2 = next;
            }
        }
        KParameter kParameter = (KParameter) obj;
        if (kParameter != null) {
            sb.append(ReflectionObjectRenderer.f(kParameter.getType(), false));
            sb.append(FileUtils.HIDDEN_PREFIX);
        }
        CollectionsKt.J(KCallables.a(descriptorKFunctionA), sb, ", ", "(", ")", new Function1() { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$$Lambda$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj3) {
                KParameter kParameter2 = (KParameter) obj3;
                kParameter2.getClass();
                return ReflectionObjectRenderer.f(kParameter2.getType(), false);
            }
        }, 48);
        sb.append(" -> ");
        sb.append(ReflectionObjectRenderer.f(descriptorKFunctionA.getReturnType(), false));
        return sb.toString();
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final String k(Lambda lambda) {
        return j(lambda);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KType l(KClass kClass, List list, boolean z) {
        if (!(kClass instanceof ClassBasedDeclarationContainer)) {
            return KClassifiers.b(kClass, list, z, Collections.EMPTY_LIST);
        }
        Class f71916b = ((ClassBasedDeclarationContainer) kClass).getF72145e();
        CacheByClass cacheByClass = CachesKt.f71977a;
        f71916b.getClass();
        list.getClass();
        if (list.isEmpty()) {
            return z ? (KType) CachesKt.d.a(f71916b) : (KType) CachesKt.f71979c.a(f71916b);
        }
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) CachesKt.f71980e.a(f71916b);
        Pair pair = new Pair(list, Boolean.valueOf(z));
        Object obj = concurrentHashMap.get(pair);
        if (obj == null) {
            AbstractKType abstractKTypeB = KClassifiers.b(CachesKt.a(f71916b), list, z, EmptyList.f71768b);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(pair, abstractKTypeB);
            obj = objPutIfAbsent == null ? abstractKTypeB : objPutIfAbsent;
        }
        return (KType) obj;
    }
}
