package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.o60;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$PackageVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$ProtectedAndPackage;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$ProtectedStaticVisibility;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaClass extends ReflectJavaElement implements ReflectJavaAnnotationOwner, ReflectJavaModifierListOwner, JavaClass {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f72614a;

    public ReflectJavaClass(Class<?> cls) {
        cls.getClass();
        this.f72614a = cls;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final boolean E() {
        return this.f72614a.isInterface();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final FqName c() {
        return ReflectClassUtilKt.a(this.f72614a).a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final ArrayList e() {
        Class cls = this.f72614a;
        cls.getClass();
        Method method = Java16SealedRecordLoader.a().d;
        Object[] objArr = method != null ? (Object[]) method.invoke(cls, null) : null;
        if (objArr == null) {
            objArr = new Object[0];
        }
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(new ReflectJavaRecordComponent(obj));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectJavaClass) {
            return Intrinsics.c(this.f72614a, ((ReflectJavaClass) obj).f72614a);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final Collection f() {
        Constructor<?>[] declaredConstructors = this.f72614a.getDeclaredConstructors();
        declaredConstructors.getClass();
        return SequencesKt.x(SequencesKt.r(SequencesKt.g(ArraysKt.e(declaredConstructors), ReflectJavaClass$constructors$1.f72618b), ReflectJavaClass$constructors$2.f72619b));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        Annotation[] declaredAnnotations;
        Class cls = this.f72614a;
        return (cls == null || (declaredAnnotations = cls.getDeclaredAnnotations()) == null) ? EmptyList.f71768b : ReflectJavaAnnotationOwnerKt.b(declaredAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaNamedElement
    public final Name getName() {
        Class cls = this.f72614a;
        return cls.isAnonymousClass() ? Name.e(StringsKt.S(cls.getName(), FileUtils.HIDDEN_PREFIX)) : Name.e(cls.getSimpleName());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner
    public final ArrayList getTypeParameters() {
        TypeVariable[] typeParameters = this.f72614a.getTypeParameters();
        typeParameters.getClass();
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable typeVariable : typeParameters) {
            arrayList.add(new ReflectJavaTypeParameter(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner
    public final Visibility getVisibility() {
        int modifiers = this.f72614a.getModifiers();
        if (Modifier.isPublic(modifiers)) {
            return Visibilities.Public.f72419c;
        }
        if (Modifier.isPrivate(modifiers)) {
            return Visibilities.Private.f72416c;
        }
        if (Modifier.isProtected(modifiers)) {
            return Modifier.isStatic(modifiers) ? JavaVisibilities$ProtectedStaticVisibility.f72573c : JavaVisibilities$ProtectedAndPackage.f72572c;
        }
        return JavaVisibilities$PackageVisibility.f72571c;
    }

    public final int hashCode() {
        return this.f72614a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final Collection i() {
        Class cls = this.f72614a;
        if (Intrinsics.c(cls, Object.class)) {
            return EmptyList.f71768b;
        }
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        Type genericSuperclass = cls.getGenericSuperclass();
        spreadBuilder.a(genericSuperclass != null ? genericSuperclass : Object.class);
        spreadBuilder.b(cls.getGenericInterfaces());
        ArrayList arrayList = spreadBuilder.f71925a;
        List listP = CollectionsKt.P(arrayList.toArray(new Type[arrayList.size()]));
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listP, 10));
        Iterator it = listP.iterator();
        while (it.hasNext()) {
            arrayList2.add(new ReflectJavaClassifierType((Type) it.next()));
        }
        return arrayList2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner
    public final boolean isAbstract() {
        return Modifier.isAbstract(this.f72614a.getModifiers());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner
    public final boolean isFinal() {
        return Modifier.isFinal(this.f72614a.getModifiers());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaModifierListOwner
    public final boolean isStatic() {
        return Modifier.isStatic(this.f72614a.getModifiers());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final JavaAnnotation j(FqName fqName) {
        Annotation[] declaredAnnotations;
        fqName.getClass();
        Class cls = this.f72614a;
        if (cls == null || (declaredAnnotations = cls.getDeclaredAnnotations()) == null) {
            return null;
        }
        return ReflectJavaAnnotationOwnerKt.a(declaredAnnotations, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final boolean k() {
        return this.f72614a.isAnnotation();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final ReflectJavaClass l() {
        Class<?> declaringClass = this.f72614a.getDeclaringClass();
        if (declaringClass != null) {
            return new ReflectJavaClass(declaringClass);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final boolean m() throws IllegalAccessException, InvocationTargetException {
        Boolean boolB = Java16SealedRecordLoader.b(this.f72614a);
        if (boolB != null) {
            return boolB.booleanValue();
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final boolean o() throws IllegalAccessException, InvocationTargetException {
        Class cls = this.f72614a;
        cls.getClass();
        Method method = Java16SealedRecordLoader.a().f72597c;
        Boolean bool = null;
        if (method != null) {
            Object objInvoke = method.invoke(cls, null);
            objInvoke.getClass();
            bool = (Boolean) objInvoke;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final boolean s() {
        return this.f72614a.isEnum();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        o60.z(ReflectJavaClass.class, sb, ": ");
        sb.append(this.f72614a);
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final Collection u() {
        Field[] declaredFields = this.f72614a.getDeclaredFields();
        declaredFields.getClass();
        return SequencesKt.x(SequencesKt.r(SequencesKt.g(ArraysKt.e(declaredFields), ReflectJavaClass$fields$1.f72620b), ReflectJavaClass$fields$2.f72621b));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final Collection w() {
        Class<?>[] declaredClasses = this.f72614a.getDeclaredClasses();
        declaredClasses.getClass();
        return SequencesKt.x(SequencesKt.s(SequencesKt.g(ArraysKt.e(declaredClasses), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(((Class) obj).getSimpleName().length() == 0);
            }
        }), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String simpleName = ((Class) obj).getSimpleName();
                if (!Name.f(simpleName)) {
                    simpleName = null;
                }
                if (simpleName != null) {
                    return Name.e(simpleName);
                }
                return null;
            }
        }));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass
    public final Collection y() {
        Method[] declaredMethods = this.f72614a.getDeclaredMethods();
        declaredMethods.getClass();
        return SequencesKt.x(SequencesKt.r(SequencesKt.f(ArraysKt.e(declaredMethods), new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ReflectJavaClass f72617b;

            {
                this.f72617b = this;
            }

            /* JADX WARN: Code duplicated, block: B:12:0x002d  */
            /* JADX WARN: Code duplicated, block: B:17:0x0047  */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean zEquals;
                Method method = (Method) obj;
                boolean z = false;
                if (!method.isSynthetic()) {
                    if (this.f72617b.f72614a.isEnum()) {
                        String name = method.getName();
                        if (Intrinsics.c(name, "values")) {
                            Class<?>[] parameterTypes = method.getParameterTypes();
                            parameterTypes.getClass();
                            if (parameterTypes.length == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (Intrinsics.c(name, "valueOf")) {
                            zEquals = Arrays.equals(method.getParameterTypes(), new Class[]{String.class});
                        } else {
                            zEquals = false;
                        }
                        if (!zEquals) {
                            z = true;
                        }
                    } else {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        }), ReflectJavaClass$methods$2.f72622b));
    }
}
