package kotlin.reflect.jvm.internal;

import defpackage.fc;
import defpackage.pq0;
import defpackage.v40;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.ValueClassAwareCallerKt;
import kotlin.reflect.jvm.internal.impl.builtins.CompanionObjectMapping;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FieldDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyAccessorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyGetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.DescriptorsJvmAbiUtil;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.text.MatchResult;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u000e\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0004\u0015\u0016\u0017\u0018B5\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eB\u0019\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u0010B+\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u0012R\u0014\u0010\u000f\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKProperty;", "V", "Lkotlin/reflect/jvm/internal/DescriptorKCallable;", "Lkotlin/reflect/jvm/internal/ReflectKProperty;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "container", "", "name", "signature", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "descriptorInitialValue", "", "rawBoundReceiver", "<init>", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Ljava/lang/Object;)V", "descriptor", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "boundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;", "Accessor", "Getter", "Setter", "Companion", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DescriptorKProperty<V> extends DescriptorKCallable<V> implements ReflectKProperty<V> {
    public static final Object o;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final KDeclarationContainerImpl f72048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f72049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f72050k;
    public final Object l;
    public final Lazy m;
    public final ReflectProperties.LazySoftVal n;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u0001*\u0006\b\u0002\u0010\u0002 \u00012\b\u0012\u0004\u0012\u00028\u00020\u00032\b\u0012\u0004\u0012\u00028\u00010\u00042\b\u0012\u0004\u0012\u00028\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKProperty$Accessor;", "PropertyType", "ReturnType", "Lkotlin/reflect/jvm/internal/DescriptorKCallable;", "Lkotlin/reflect/KProperty$Accessor;", "Lkotlin/reflect/KFunction;", "<init>", "()V", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyAccessorDescriptor;", "descriptor", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Accessor<PropertyType, ReturnType> extends DescriptorKCallable<ReturnType> implements KFunction<ReturnType>, KProperty.Accessor<PropertyType> {
        @Override // kotlin.reflect.jvm.internal.ReflectKCallable
        /* JADX INFO: renamed from: C */
        public final Object getF72031k() {
            return L().l;
        }

        public abstract PropertyAccessorDescriptor K();

        public abstract DescriptorKProperty L();

        @Override // kotlin.reflect.jvm.internal.ReflectKCallable
        public final Caller c() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.ReflectKCallable
        /* JADX INFO: renamed from: getContainer */
        public final KDeclarationContainerImpl getF72029i() {
            return L().f72048i;
        }

        @Override // kotlin.reflect.KFunction
        public final boolean isExternal() {
            return K().isExternal();
        }

        @Override // kotlin.reflect.KFunction
        public final boolean isInfix() {
            return K().isInfix();
        }

        @Override // kotlin.reflect.KFunction
        public final boolean isInline() {
            return K().isInline();
        }

        @Override // kotlin.reflect.KFunction
        public final boolean isOperator() {
            return K().isOperator();
        }

        @Override // kotlin.reflect.KCallable
        public final boolean isSuspend() {
            return K().isSuspend();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKProperty$Companion;", "", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;", "V", "Lkotlin/reflect/jvm/internal/DescriptorKProperty$Accessor;", "Lkotlin/reflect/KProperty$Getter;", "<init>", "()V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Getter<V> extends Accessor<V, V> implements KProperty.Getter<V> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final /* synthetic */ KProperty[] f72053k = {Reflection.f71922a.h(new PropertyReference1Impl(Getter.class, "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;", 0))};

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72054i = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty$Getter$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty.Getter f72056b;

            {
                this.f72056b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = DescriptorKProperty.Getter.f72053k;
                DescriptorKProperty.Getter getter = this.f72056b;
                PropertyGetterDescriptorImpl getter2 = getter.L().H().getGetter();
                if (getter2 != null) {
                    return getter2;
                }
                return DescriptorFactory.c(Annotations.Companion.f72432a, getter.L().H());
            }
        });

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Lazy f72055j = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty$Getter$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty.Getter f72057b;

            {
                this.f72057b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = DescriptorKProperty.Getter.f72053k;
                return DescriptorKPropertyKt.a(this.f72057b, true);
            }
        });

        @Override // kotlin.reflect.jvm.internal.DescriptorKCallable
        public final CallableMemberDescriptor H() {
            KProperty kProperty = f72053k[0];
            Object objMo47invoke = this.f72054i.mo47invoke();
            objMo47invoke.getClass();
            return (PropertyGetterDescriptor) objMo47invoke;
        }

        @Override // kotlin.reflect.jvm.internal.DescriptorKProperty.Accessor
        public final PropertyAccessorDescriptor K() {
            KProperty kProperty = f72053k[0];
            Object objMo47invoke = this.f72054i.mo47invoke();
            objMo47invoke.getClass();
            return (PropertyGetterDescriptor) objMo47invoke;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Getter) && Intrinsics.c(L(), ((Getter) obj).L());
        }

        @Override // kotlin.reflect.KCallable
        /* JADX INFO: renamed from: getName */
        public final String getF72049j() {
            return fc.l(new StringBuilder("<get-"), L().f72049j, '>');
        }

        public final int hashCode() {
            return L().hashCode();
        }

        public final String toString() {
            return "getter of " + L();
        }

        @Override // kotlin.reflect.jvm.internal.ReflectKCallable
        public final Caller x() {
            return (Caller) this.f72055j.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0001\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00010\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;", "V", "Lkotlin/reflect/jvm/internal/DescriptorKProperty$Accessor;", "", "Lkotlin/reflect/KMutableProperty$Setter;", "<init>", "()V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Setter<V> extends Accessor<V, Unit> implements KMutableProperty.Setter<V> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final /* synthetic */ KProperty[] f72058k = {Reflection.f71922a.h(new PropertyReference1Impl(Setter.class, "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;", 0))};

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72059i = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty$Setter$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty.Setter f72061b;

            {
                this.f72061b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = DescriptorKProperty.Setter.f72058k;
                DescriptorKProperty.Setter setter = this.f72061b;
                PropertySetterDescriptor setter2 = setter.L().H().getSetter();
                if (setter2 != null) {
                    return setter2;
                }
                return DescriptorFactory.d(Annotations.Companion.f72432a, setter.L().H());
            }
        });

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Lazy f72060j = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty$Setter$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty.Setter f72062b;

            {
                this.f72062b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = DescriptorKProperty.Setter.f72058k;
                return DescriptorKPropertyKt.a(this.f72062b, false);
            }
        });

        @Override // kotlin.reflect.jvm.internal.DescriptorKCallable
        public final CallableMemberDescriptor H() {
            KProperty kProperty = f72058k[0];
            Object objMo47invoke = this.f72059i.mo47invoke();
            objMo47invoke.getClass();
            return (PropertySetterDescriptor) objMo47invoke;
        }

        @Override // kotlin.reflect.jvm.internal.DescriptorKProperty.Accessor
        public final PropertyAccessorDescriptor K() {
            KProperty kProperty = f72058k[0];
            Object objMo47invoke = this.f72059i.mo47invoke();
            objMo47invoke.getClass();
            return (PropertySetterDescriptor) objMo47invoke;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Setter) && Intrinsics.c(L(), ((Setter) obj).L());
        }

        @Override // kotlin.reflect.KCallable
        /* JADX INFO: renamed from: getName */
        public final String getF72049j() {
            return fc.l(new StringBuilder("<set-"), L().f72049j, '>');
        }

        public final int hashCode() {
            return L().hashCode();
        }

        public final String toString() {
            return "setter of " + L();
        }

        @Override // kotlin.reflect.jvm.internal.ReflectKCallable
        public final Caller x() {
            return (Caller) this.f72060j.getF71699b();
        }
    }

    static {
        new Companion(null);
        o = new Object();
    }

    public DescriptorKProperty(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, PropertyDescriptor propertyDescriptor, Object obj) {
        this.f72048i = kDeclarationContainerImpl;
        this.f72049j = str;
        this.f72050k = str2;
        this.l = obj;
        this.m = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty f72051b;

            {
                this.f72051b = this;
            }

            /* JADX WARN: Code duplicated, block: B:26:0x0071  */
            /* JADX WARN: Code duplicated, block: B:28:0x007b  */
            /* JADX WARN: Code duplicated, block: B:30:0x0081  */
            /* JADX WARN: Code duplicated, block: B:33:0x008e  */
            /* JADX WARN: Code duplicated, block: B:36:0x009b  */
            /* JADX WARN: Code duplicated, block: B:39:0x00aa  */
            /* JADX WARN: Code duplicated, block: B:41:0x00b2  */
            /* JADX WARN: Code duplicated, block: B:42:0x00b9  */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DeclarationDescriptor declarationDescriptorD;
                Class<?> f71916b;
                FieldDescriptor fieldDescriptorQ0;
                Object obj2 = DescriptorKProperty.o;
                ClassId classId = RuntimeTypeMapper.f72176a;
                DescriptorKProperty descriptorKProperty = this.f72051b;
                PropertyDescriptor propertyDescriptorH = descriptorKProperty.H();
                KDeclarationContainerImpl kDeclarationContainerImpl2 = descriptorKProperty.f72048i;
                JvmPropertySignature jvmPropertySignatureB = RuntimeTypeMapper.b(propertyDescriptorH);
                if (jvmPropertySignatureB instanceof JvmPropertySignature.KotlinProperty) {
                    JvmPropertySignature.KotlinProperty kotlinProperty = (JvmPropertySignature.KotlinProperty) jvmPropertySignatureB;
                    ProtoBuf$Property protoBuf$Property = kotlinProperty.f72084b;
                    PropertyDescriptor propertyDescriptor2 = kotlinProperty.f72083a;
                    ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
                    JvmMemberSignature.Field fieldB = JvmProtoBufUtil.b(protoBuf$Property, kotlinProperty.d, kotlinProperty.f72086e, true);
                    if (fieldB != null) {
                        if (propertyDescriptor2 == null) {
                            DescriptorsJvmAbiUtil.a(0);
                            throw null;
                        }
                        if (propertyDescriptor2.e() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                            DeclarationDescriptor declarationDescriptorD2 = propertyDescriptor2.d();
                            if (declarationDescriptorD2 == null) {
                                DescriptorsJvmAbiUtil.a(1);
                                throw null;
                            }
                            if (DescriptorUtils.k(declarationDescriptorD2)) {
                                DeclarationDescriptor declarationDescriptorD3 = declarationDescriptorD2.d();
                                if (DescriptorUtils.l(declarationDescriptorD3, ClassKind.CLASS) || DescriptorUtils.l(declarationDescriptorD3, ClassKind.ENUM_CLASS)) {
                                    ClassDescriptor classDescriptor = (ClassDescriptor) declarationDescriptorD2;
                                    LinkedHashSet linkedHashSet = CompanionObjectMapping.f72239a;
                                    if (DescriptorUtils.k(classDescriptor)) {
                                        LinkedHashSet linkedHashSet2 = CompanionObjectMapping.f72239a;
                                        ClassId classIdF = DescriptorUtilsKt.f(classDescriptor);
                                        if (CollectionsKt.u(linkedHashSet2, classIdF != null ? classIdF.e() : null)) {
                                            if (DescriptorUtils.k(propertyDescriptor2.d())) {
                                                fieldDescriptorQ0 = propertyDescriptor2.q0();
                                                if (!((fieldDescriptorQ0 == null && fieldDescriptorQ0.getAnnotations().C1(JvmAbi.f72867a)) ? true : propertyDescriptor2.getAnnotations().C1(JvmAbi.f72867a))) {
                                                    if (JvmProtoBufUtil.d(protoBuf$Property)) {
                                                        declarationDescriptorD = propertyDescriptor2.d();
                                                        if (declarationDescriptorD instanceof ClassDescriptor) {
                                                            f71916b = UtilKt.i((ClassDescriptor) declarationDescriptorD);
                                                        } else {
                                                            f71916b = kDeclarationContainerImpl2.getF71916b();
                                                        }
                                                    }
                                                }
                                            } else if (JvmProtoBufUtil.d(protoBuf$Property)) {
                                                declarationDescriptorD = propertyDescriptor2.d();
                                                if (declarationDescriptorD instanceof ClassDescriptor) {
                                                    f71916b = UtilKt.i((ClassDescriptor) declarationDescriptorD);
                                                } else {
                                                    f71916b = kDeclarationContainerImpl2.getF71916b();
                                                }
                                            }
                                        }
                                    }
                                } else if (DescriptorUtils.k(propertyDescriptor2.d())) {
                                    fieldDescriptorQ0 = propertyDescriptor2.q0();
                                    if (!((fieldDescriptorQ0 == null && fieldDescriptorQ0.getAnnotations().C1(JvmAbi.f72867a)) ? true : propertyDescriptor2.getAnnotations().C1(JvmAbi.f72867a))) {
                                        if (JvmProtoBufUtil.d(protoBuf$Property)) {
                                            declarationDescriptorD = propertyDescriptor2.d();
                                            if (declarationDescriptorD instanceof ClassDescriptor) {
                                                f71916b = UtilKt.i((ClassDescriptor) declarationDescriptorD);
                                            } else {
                                                f71916b = kDeclarationContainerImpl2.getF71916b();
                                            }
                                        }
                                    }
                                } else if (JvmProtoBufUtil.d(protoBuf$Property)) {
                                    declarationDescriptorD = propertyDescriptor2.d();
                                    if (declarationDescriptorD instanceof ClassDescriptor) {
                                        f71916b = UtilKt.i((ClassDescriptor) declarationDescriptorD);
                                    } else {
                                        f71916b = kDeclarationContainerImpl2.getF71916b();
                                    }
                                }
                            } else if (DescriptorUtils.k(propertyDescriptor2.d())) {
                                fieldDescriptorQ0 = propertyDescriptor2.q0();
                                if (!((fieldDescriptorQ0 == null && fieldDescriptorQ0.getAnnotations().C1(JvmAbi.f72867a)) ? true : propertyDescriptor2.getAnnotations().C1(JvmAbi.f72867a))) {
                                    if (JvmProtoBufUtil.d(protoBuf$Property)) {
                                        declarationDescriptorD = propertyDescriptor2.d();
                                        if (declarationDescriptorD instanceof ClassDescriptor) {
                                            f71916b = UtilKt.i((ClassDescriptor) declarationDescriptorD);
                                        } else {
                                            f71916b = kDeclarationContainerImpl2.getF71916b();
                                        }
                                    }
                                }
                            } else if (JvmProtoBufUtil.d(protoBuf$Property)) {
                                declarationDescriptorD = propertyDescriptor2.d();
                                if (declarationDescriptorD instanceof ClassDescriptor) {
                                    f71916b = UtilKt.i((ClassDescriptor) declarationDescriptorD);
                                } else {
                                    f71916b = kDeclarationContainerImpl2.getF71916b();
                                }
                            }
                            f71916b = kDeclarationContainerImpl2.getF71916b().getEnclosingClass();
                        } else if (JvmProtoBufUtil.d(protoBuf$Property)) {
                            f71916b = kDeclarationContainerImpl2.getF71916b().getEnclosingClass();
                        } else {
                            declarationDescriptorD = propertyDescriptor2.d();
                            if (declarationDescriptorD instanceof ClassDescriptor) {
                                f71916b = UtilKt.i((ClassDescriptor) declarationDescriptorD);
                            } else {
                                f71916b = kDeclarationContainerImpl2.getF71916b();
                            }
                        }
                        if (f71916b != null) {
                            try {
                                return f71916b.getDeclaredField(fieldB.f73664a);
                            } catch (NoSuchFieldException unused) {
                            }
                        }
                    }
                } else {
                    if (jvmPropertySignatureB instanceof JvmPropertySignature.JavaField) {
                        return ((JvmPropertySignature.JavaField) jvmPropertySignatureB).f72080a;
                    }
                    if (!(jvmPropertySignatureB instanceof JvmPropertySignature.JavaMethodProperty) && !(jvmPropertySignatureB instanceof JvmPropertySignature.MappedKotlinProperty)) {
                        v40.g();
                        return null;
                    }
                }
                return null;
            }
        });
        this.n = ReflectProperties.a(propertyDescriptor, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKProperty$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKProperty f72052b;

            {
                this.f72052b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DescriptorKProperty descriptorKProperty = this.f72052b;
                KDeclarationContainerImpl kDeclarationContainerImpl2 = descriptorKProperty.f72048i;
                String str3 = descriptorKProperty.f72049j;
                String str4 = descriptorKProperty.f72050k;
                kDeclarationContainerImpl2.getClass();
                str3.getClass();
                str4.getClass();
                MatchResult matchResultE = KDeclarationContainerImpl.d.e(str4);
                if (matchResultE != null) {
                    String str5 = (String) matchResultE.b().f74545a.c().get(1);
                    PropertyDescriptor propertyDescriptorK = kDeclarationContainerImpl2.K(Integer.parseInt(str5));
                    if (propertyDescriptorK != null) {
                        return propertyDescriptorK;
                    }
                    StringBuilder sbR = pq0.r("Local property #", str5, " not found in ");
                    sbR.append(kDeclarationContainerImpl2.getF71916b());
                    throw new KotlinReflectionInternalError(sbR.toString());
                }
                Collection collectionM = kDeclarationContainerImpl2.M(Name.e(str3));
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : collectionM) {
                    if (Intrinsics.c(RuntimeTypeMapper.b((PropertyDescriptor) obj2).getF72087f(), str4)) {
                        arrayList.add(obj2);
                    }
                }
                if (arrayList.isEmpty()) {
                    StringBuilder sbS = fc.s("Property '", str3, "' (JVM signature: ", str4, ") not resolved in ");
                    sbS.append(kDeclarationContainerImpl2);
                    throw new KotlinReflectionInternalError(sbS.toString());
                }
                if (arrayList.size() == 1) {
                    return (PropertyDescriptor) CollectionsKt.h0(arrayList);
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj3 : arrayList) {
                    DescriptorVisibility visibility = ((PropertyDescriptor) obj3).getVisibility();
                    Object arrayList2 = linkedHashMap.get(visibility);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        linkedHashMap.put(visibility, arrayList2);
                    }
                    ((List) arrayList2).add(obj3);
                }
                final KDeclarationContainerImpl$$Lambda$0 kDeclarationContainerImpl$$Lambda$0 = new Function2() { // from class: kotlin.reflect.jvm.internal.KDeclarationContainerImpl$$Lambda$0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj5) {
                        KDeclarationContainerImpl.Companion companion = KDeclarationContainerImpl.f72134b;
                        Integer numB = DescriptorVisibilities.b((DescriptorVisibility) obj4, (DescriptorVisibility) obj5);
                        return Integer.valueOf(numB != null ? numB.intValue() : 0);
                    }
                };
                TreeMap treeMap = new TreeMap(new Comparator(kDeclarationContainerImpl$$Lambda$0) { // from class: kotlin.reflect.jvm.internal.KDeclarationContainerImpl$$Lambda$1

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final Function2 f72137b;

                    {
                        this.f72137b = kDeclarationContainerImpl$$Lambda$0;
                    }

                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        KDeclarationContainerImpl.Companion companion = KDeclarationContainerImpl.f72134b;
                        return ((Number) this.f72137b.invoke(obj4, obj5)).intValue();
                    }
                });
                treeMap.putAll(linkedHashMap);
                Collection collectionValues = treeMap.values();
                collectionValues.getClass();
                List list = (List) CollectionsKt.L(collectionValues);
                if (list.size() == 1) {
                    return (PropertyDescriptor) CollectionsKt.B(list);
                }
                String strK = CollectionsKt.K(kDeclarationContainerImpl2.M(Name.e(str3)), "\n", null, null, new Function1() { // from class: kotlin.reflect.jvm.internal.KDeclarationContainerImpl$$Lambda$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        PropertyDescriptor propertyDescriptor2 = (PropertyDescriptor) obj4;
                        KDeclarationContainerImpl.Companion companion = KDeclarationContainerImpl.f72134b;
                        propertyDescriptor2.getClass();
                        return DescriptorRenderer.d.y(propertyDescriptor2) + " | " + RuntimeTypeMapper.b(propertyDescriptor2).getF72087f();
                    }
                }, 30);
                StringBuilder sbS2 = fc.s("Property '", str3, "' (JVM signature: ", str4, ") not resolved in ");
                sbS2.append(kDeclarationContainerImpl2);
                sbS2.append(':');
                sbS2.append(strK.length() == 0 ? " no members found" : "\n".concat(strK));
                throw new KotlinReflectionInternalError(sbS2.toString());
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    /* JADX INFO: renamed from: C, reason: from getter */
    public final Object getF72031k() {
        return this.l;
    }

    public final Member K() {
        if (!H().w()) {
            return null;
        }
        ClassId classId = RuntimeTypeMapper.f72176a;
        JvmPropertySignature jvmPropertySignatureB = RuntimeTypeMapper.b(H());
        if (jvmPropertySignatureB instanceof JvmPropertySignature.KotlinProperty) {
            JvmPropertySignature.KotlinProperty kotlinProperty = (JvmPropertySignature.KotlinProperty) jvmPropertySignatureB;
            NameResolver nameResolver = kotlinProperty.d;
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = kotlinProperty.f72085c;
            if ((jvmPropertySignature.f73630c & 16) == 16) {
                JvmProtoBuf.JvmMethodSignature jvmMethodSignature = jvmPropertySignature.f73633h;
                int i2 = jvmMethodSignature.f73623c;
                if ((i2 & 1) != 1 || (i2 & 2) != 2) {
                    return null;
                }
                return this.f72048i.H(nameResolver.getString(jvmMethodSignature.d), nameResolver.getString(jvmMethodSignature.f73624e));
            }
        }
        return z();
    }

    public final Object L() {
        return ValueClassAwareCallerKt.a(this.l, H());
    }

    @Override // kotlin.reflect.jvm.internal.DescriptorKCallable
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public final PropertyDescriptor H() {
        Object objMo47invoke = this.n.mo47invoke();
        objMo47invoke.getClass();
        return (PropertyDescriptor) objMo47invoke;
    }

    public abstract Getter N();

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    public final Caller c() {
        N().getClass();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    public final boolean equals(Object obj) {
        ReflectKProperty reflectKProperty;
        FqName fqName = UtilKt.f72187a;
        if (obj instanceof ReflectKProperty) {
            reflectKProperty = (ReflectKProperty) obj;
        } else if (obj instanceof PropertyReference) {
            KCallable kCallableCompute = ((PropertyReference) obj).compute();
            if (kCallableCompute instanceof ReflectKProperty) {
                reflectKProperty = (ReflectKProperty) kCallableCompute;
            } else {
                reflectKProperty = null;
            }
        } else {
            reflectKProperty = null;
        }
        return reflectKProperty != null && Intrinsics.c(this.f72048i, reflectKProperty.getF72029i()) && Intrinsics.c(this.f72049j, reflectKProperty.getF72049j()) && Intrinsics.c(this.f72050k, reflectKProperty.getF72050k()) && Intrinsics.c(this.l, reflectKProperty.getF72031k());
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    /* JADX INFO: renamed from: getContainer, reason: from getter */
    public final KDeclarationContainerImpl getF72029i() {
        return this.f72048i;
    }

    @Override // kotlin.reflect.KCallable
    /* JADX INFO: renamed from: getName, reason: from getter */
    public final String getF72049j() {
        return this.f72049j;
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKProperty
    /* JADX INFO: renamed from: getSignature, reason: from getter */
    public final String getF72050k() {
        return this.f72050k;
    }

    public final int hashCode() {
        return this.f72050k.hashCode() + fc.b(this.f72048i.hashCode() * 31, 31, this.f72049j);
    }

    @Override // kotlin.reflect.KProperty
    public final boolean isConst() {
        return H().isConst();
    }

    @Override // kotlin.reflect.KProperty
    public final boolean isLateinit() {
        return H().s0();
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isSuspend() {
        return false;
    }

    public final String toString() {
        return ReflectionObjectRenderer.d(this);
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    public final Caller x() {
        return N().x();
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKProperty
    public final Field z() {
        return (Field) this.m.getF71699b();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DescriptorKProperty(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        this(kDeclarationContainerImpl, str, str2, null, obj);
        kDeclarationContainerImpl.getClass();
        str.getClass();
        str2.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DescriptorKProperty(KDeclarationContainerImpl kDeclarationContainerImpl, PropertyDescriptor propertyDescriptor) {
        kDeclarationContainerImpl.getClass();
        propertyDescriptor.getClass();
        String strB = propertyDescriptor.getName().b();
        strB.getClass();
        this(kDeclarationContainerImpl, strB, RuntimeTypeMapper.b(propertyDescriptor).getF72087f(), propertyDescriptor, CallableReference.NO_RECEIVER);
    }
}
