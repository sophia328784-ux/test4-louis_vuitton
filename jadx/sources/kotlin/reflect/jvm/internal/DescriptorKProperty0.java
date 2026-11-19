package kotlin.reflect.jvm.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty;
import kotlin.reflect.KProperty0;
import kotlin.reflect.full.IllegalPropertyDelegateAccessException;
import kotlin.reflect.jvm.KCallablesJvm;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0010B\u0019\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB+\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\b\u0010\u000f¨\u0006\u0011"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKProperty0;", "V", "Lkotlin/reflect/KProperty0;", "Lkotlin/reflect/jvm/internal/DescriptorKProperty;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "container", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "descriptor", "<init>", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "", "name", "signature", "", "boundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "Getter", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class DescriptorKProperty0<V> extends DescriptorKProperty<V> implements KProperty0<V> {
    public static final /* synthetic */ int r = 0;
    public final Lazy p;
    public final Lazy q;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;", "R", "Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;", "Lkotlin/reflect/KProperty0$Getter;", "Lkotlin/reflect/jvm/internal/DescriptorKProperty0;", "property", "<init>", "(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Getter<R> extends DescriptorKProperty.Getter<R> implements KProperty0.Getter<R> {
        public final DescriptorKProperty0 l;

        public Getter(DescriptorKProperty0<? extends R> descriptorKProperty0) {
            descriptorKProperty0.getClass();
            this.l = descriptorKProperty0;
        }

        @Override // kotlin.reflect.jvm.internal.DescriptorKProperty.Accessor
        public final DescriptorKProperty L() {
            return this.l;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            return this.l.get();
        }

        @Override // kotlin.reflect.KProperty.Accessor
        public final KProperty p() {
            return this.l;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptorKProperty0(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        super(kDeclarationContainerImpl, str, str2, obj);
        kDeclarationContainerImpl.getClass();
        str.getClass();
        str2.getClass();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.p = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty0$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty0 f72063b;

            {
                this.f72063b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i2 = DescriptorKProperty0.r;
                return new DescriptorKProperty0.Getter(this.f72063b);
            }
        });
        this.q = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty0$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty0 f72064b;

            {
                this.f72064b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws IllegalPropertyDelegateAccessException {
                int i2 = DescriptorKProperty0.r;
                DescriptorKProperty0 descriptorKProperty0 = this.f72064b;
                Object objK = descriptorKProperty0.K();
                try {
                    Object obj2 = DescriptorKProperty.o;
                    if (obj2 == null && descriptorKProperty0.H().J() == null) {
                        throw new RuntimeException("'" + descriptorKProperty0 + "' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead");
                    }
                    Object objL = ReflectKCallableKt.a(descriptorKProperty0) ? descriptorKProperty0.L() : null;
                    if (objL == obj2) {
                        objL = null;
                    }
                    ReflectKCallableKt.a(descriptorKProperty0);
                    AccessibleObject accessibleObject = objK != null ? (AccessibleObject) objK : null;
                    if (accessibleObject != null) {
                        accessibleObject.setAccessible(KCallablesJvm.a(descriptorKProperty0));
                    }
                    if (objK == null) {
                        return null;
                    }
                    if (objK instanceof Field) {
                        return ((Field) objK).get(objL);
                    }
                    if (!(objK instanceof Method)) {
                        throw new AssertionError("delegate field/method " + objK + " neither field nor method");
                    }
                    int length = ((Method) objK).getParameterTypes().length;
                    if (length == 0) {
                        return ((Method) objK).invoke(null, null);
                    }
                    if (length == 1) {
                        Method method = (Method) objK;
                        if (objL == null) {
                            Class<?> cls = ((Method) objK).getParameterTypes()[0];
                            cls.getClass();
                            objL = UtilKt.d(cls);
                        }
                        return method.invoke(null, objL);
                    }
                    if (length == 2) {
                        Method method2 = (Method) objK;
                        Class<?> cls2 = ((Method) objK).getParameterTypes()[1];
                        cls2.getClass();
                        return method2.invoke(null, objL, UtilKt.d(cls2));
                    }
                    throw new AssertionError("delegate method " + objK + " should take 0, 1, or 2 parameters");
                } catch (IllegalAccessException e2) {
                    throw new IllegalPropertyDelegateAccessException(e2);
                }
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.DescriptorKProperty
    public final DescriptorKProperty.Getter N() {
        return (Getter) this.p.getF71699b();
    }

    @Override // kotlin.reflect.KProperty0
    public final Object get() {
        return ((Getter) this.p.getF71699b()).call(new Object[0]);
    }

    @Override // kotlin.reflect.KProperty0
    public final Object getDelegate() {
        return this.q.getF71699b();
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    public final KProperty.Getter getGetter() {
        return (Getter) this.p.getF71699b();
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return get();
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    public final KProperty0.Getter getGetter() {
        return (Getter) this.p.getF71699b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptorKProperty0(KDeclarationContainerImpl kDeclarationContainerImpl, PropertyDescriptor propertyDescriptor) {
        super(kDeclarationContainerImpl, propertyDescriptor);
        kDeclarationContainerImpl.getClass();
        propertyDescriptor.getClass();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.p = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty0$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty0 f72063b;

            {
                this.f72063b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i2 = DescriptorKProperty0.r;
                return new DescriptorKProperty0.Getter(this.f72063b);
            }
        });
        this.q = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty0$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty0 f72064b;

            {
                this.f72064b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws IllegalPropertyDelegateAccessException {
                int i2 = DescriptorKProperty0.r;
                DescriptorKProperty0 descriptorKProperty0 = this.f72064b;
                Object objK = descriptorKProperty0.K();
                try {
                    Object obj2 = DescriptorKProperty.o;
                    if (obj2 == null && descriptorKProperty0.H().J() == null) {
                        throw new RuntimeException("'" + descriptorKProperty0 + "' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead");
                    }
                    Object objL = ReflectKCallableKt.a(descriptorKProperty0) ? descriptorKProperty0.L() : null;
                    if (objL == obj2) {
                        objL = null;
                    }
                    ReflectKCallableKt.a(descriptorKProperty0);
                    AccessibleObject accessibleObject = objK != null ? (AccessibleObject) objK : null;
                    if (accessibleObject != null) {
                        accessibleObject.setAccessible(KCallablesJvm.a(descriptorKProperty0));
                    }
                    if (objK == null) {
                        return null;
                    }
                    if (objK instanceof Field) {
                        return ((Field) objK).get(objL);
                    }
                    if (!(objK instanceof Method)) {
                        throw new AssertionError("delegate field/method " + objK + " neither field nor method");
                    }
                    int length = ((Method) objK).getParameterTypes().length;
                    if (length == 0) {
                        return ((Method) objK).invoke(null, null);
                    }
                    if (length == 1) {
                        Method method = (Method) objK;
                        if (objL == null) {
                            Class<?> cls = ((Method) objK).getParameterTypes()[0];
                            cls.getClass();
                            objL = UtilKt.d(cls);
                        }
                        return method.invoke(null, objL);
                    }
                    if (length == 2) {
                        Method method2 = (Method) objK;
                        Class<?> cls2 = ((Method) objK).getParameterTypes()[1];
                        cls2.getClass();
                        return method2.invoke(null, objL, UtilKt.d(cls2));
                    }
                    throw new AssertionError("delegate method " + objK + " should take 0, 1, or 2 parameters");
                } catch (IllegalAccessException e2) {
                    throw new IllegalPropertyDelegateAccessException(e2);
                }
            }
        });
    }
}
