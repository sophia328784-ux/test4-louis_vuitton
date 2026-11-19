package kotlin.reflect.jvm.internal;

import com.batch.android.s.b;
import defpackage.d20;
import defpackage.mt;
import defpackage.tr;
import defpackage.v40;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.ranges.IntRange;
import kotlin.reflect.KAnnotatedElement;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.types.DescriptorKType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\rB1\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKParameter;", "Lkotlin/reflect/jvm/internal/ReflectKParameter;", "Lkotlin/reflect/jvm/internal/DescriptorKCallable;", "callable", "", "index", "Lkotlin/reflect/KParameter$Kind;", b.a.d, "Lkotlin/Function0;", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "computeDescriptor", "<init>", "(Lkotlin/reflect/jvm/internal/DescriptorKCallable;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V", "CompoundTypeImpl", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DescriptorKParameter implements ReflectKParameter {
    public static final /* synthetic */ KProperty[] g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DescriptorKCallable f72040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f72041c;
    public final KParameter.Kind d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f72042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f72043f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKParameter$CompoundTypeImpl;", "Ljava/lang/reflect/Type;", "", "types", "<init>", "([Ljava/lang/reflect/Type;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CompoundTypeImpl implements Type {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type[] f72046b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f72047c;

        public CompoundTypeImpl(Type[] typeArr) {
            typeArr.getClass();
            this.f72046b = typeArr;
            this.f72047c = Arrays.hashCode(typeArr);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof CompoundTypeImpl) {
                return Arrays.equals(this.f72046b, ((CompoundTypeImpl) obj).f72046b);
            }
            return false;
        }

        @Override // java.lang.reflect.Type
        public final String getTypeName() {
            return ArraysKt.H(this.f72046b, ", ", "[", "]", null, 56);
        }

        /* JADX INFO: renamed from: hashCode, reason: from getter */
        public final int getF72047c() {
            return this.f72047c;
        }

        public final String toString() {
            return getTypeName();
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(DescriptorKParameter.class, "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        g = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(DescriptorKParameter.class, "annotations", "getAnnotations()Ljava/util/List;", 0, reflectionFactory)};
    }

    public DescriptorKParameter(DescriptorKCallable<?> descriptorKCallable, int i2, KParameter.Kind kind, Function0<? extends ParameterDescriptor> function0) {
        descriptorKCallable.getClass();
        kind.getClass();
        function0.getClass();
        this.f72040b = descriptorKCallable;
        this.f72041c = i2;
        this.d = kind;
        this.f72042e = ReflectProperties.a(null, function0);
        this.f72043f = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKParameter$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKParameter f72044b;

            {
                this.f72044b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = DescriptorKParameter.g;
                return UtilKt.b(this.f72044b.g());
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKParameter
    /* JADX INFO: renamed from: E, reason: from getter */
    public final DescriptorKCallable getF72040b() {
        return this.f72040b;
    }

    @Override // kotlin.reflect.KParameter
    public final boolean F() {
        ParameterDescriptor parameterDescriptorG = g();
        ValueParameterDescriptor valueParameterDescriptor = parameterDescriptorG instanceof ValueParameterDescriptor ? (ValueParameterDescriptor) parameterDescriptorG : null;
        if (valueParameterDescriptor != null) {
            return DescriptorUtilsKt.a(valueParameterDescriptor);
        }
        return false;
    }

    @Override // kotlin.reflect.KParameter
    /* JADX INFO: renamed from: e, reason: from getter */
    public final KParameter.Kind getD() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ReflectKParameter)) {
            return false;
        }
        ReflectKParameter reflectKParameter = (ReflectKParameter) obj;
        return Intrinsics.c(this.f72040b, reflectKParameter.getF72040b()) && this.f72041c == reflectKParameter.getF72041c();
    }

    public final ParameterDescriptor g() {
        KProperty kProperty = g[0];
        Object objMo47invoke = this.f72042e.mo47invoke();
        objMo47invoke.getClass();
        return (ParameterDescriptor) objMo47invoke;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    /* JADX INFO: renamed from: getAnnotations */
    public final List getF74444f() {
        KProperty kProperty = g[1];
        Object objMo47invoke = this.f72043f.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }

    @Override // kotlin.reflect.KParameter
    /* JADX INFO: renamed from: getIndex, reason: from getter */
    public final int getF72041c() {
        return this.f72041c;
    }

    @Override // kotlin.reflect.KParameter
    public final String getName() {
        ParameterDescriptor parameterDescriptorG = g();
        ValueParameterDescriptor valueParameterDescriptor = parameterDescriptorG instanceof ValueParameterDescriptor ? (ValueParameterDescriptor) parameterDescriptorG : null;
        if (valueParameterDescriptor != null && !valueParameterDescriptor.d().Y()) {
            Name name = valueParameterDescriptor.getName();
            name.getClass();
            if (!name.f73688c) {
                return name.b();
            }
        }
        return null;
    }

    @Override // kotlin.reflect.KParameter
    public final DescriptorKType getType() {
        KotlinType type = g().getType();
        type.getClass();
        return new DescriptorKType(type, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKParameter$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKParameter f72045b;

            {
                this.f72045b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List listK0;
                ReceiverParameterDescriptor receiverParameterDescriptorE0;
                KProperty[] kPropertyArr = DescriptorKParameter.g;
                DescriptorKParameter descriptorKParameter = this.f72045b;
                ParameterDescriptor parameterDescriptorG = descriptorKParameter.g();
                int i2 = descriptorKParameter.f72041c;
                DescriptorKCallable descriptorKCallable = descriptorKParameter.f72040b;
                if (parameterDescriptorG instanceof ReceiverParameterDescriptor) {
                    CallableMemberDescriptor callableMemberDescriptorH = descriptorKCallable.H();
                    FqName fqName = UtilKt.f72187a;
                    callableMemberDescriptorH.getClass();
                    if (callableMemberDescriptorH.G() != null) {
                        DeclarationDescriptor declarationDescriptorD = callableMemberDescriptorH.d();
                        declarationDescriptorD.getClass();
                        receiverParameterDescriptorE0 = ((ClassDescriptor) declarationDescriptorD).E0();
                    } else {
                        receiverParameterDescriptorE0 = null;
                    }
                    if (Intrinsics.c(receiverParameterDescriptorE0, parameterDescriptorG) && descriptorKCallable.H().e() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                        DeclarationDescriptor declarationDescriptorD2 = descriptorKCallable.H().d();
                        declarationDescriptorD2.getClass();
                        Class clsI = UtilKt.i((ClassDescriptor) declarationDescriptorD2);
                        if (clsI != null) {
                            return clsI;
                        }
                        d20.c(parameterDescriptorG, "Cannot determine receiver Java type of inherited declaration: ");
                        return null;
                    }
                }
                Caller callerX = descriptorKCallable.x();
                if (!(callerX instanceof ValueClassAwareCaller)) {
                    if (!(callerX instanceof ValueClassAwareCaller.MultiFieldValueClassPrimaryConstructorCaller)) {
                        return (Type) callerX.getF72216b().get(i2);
                    }
                    Class[] clsArr = (Class[]) ((Collection) ((ValueClassAwareCaller.MultiFieldValueClassPrimaryConstructorCaller) callerX).d.get(i2)).toArray(new Class[0]);
                    Type[] typeArr = (Type[]) Arrays.copyOf(clsArr, clsArr.length);
                    int length = typeArr.length;
                    if (length != 0) {
                        return length != 1 ? new DescriptorKParameter.CompoundTypeImpl(typeArr) : (Type) ArraysKt.Q(typeArr);
                    }
                    throw new KotlinReflectionNotSupportedError("Expected at least 1 type for compound type");
                }
                if (ReflectKCallableKt.a(descriptorKCallable)) {
                    ValueClassAwareCaller valueClassAwareCaller = (ValueClassAwareCaller) callerX;
                    IntRange intRangeD = valueClassAwareCaller.d(i2 + 1);
                    int i3 = valueClassAwareCaller.d(0).f71952c + 1;
                    listK0 = CollectionsKt.k0(valueClassAwareCaller.f72220b.getF72216b(), new IntRange(intRangeD.f71951b - i3, intRangeD.f71952c - i3));
                } else {
                    ValueClassAwareCaller valueClassAwareCaller2 = (ValueClassAwareCaller) callerX;
                    listK0 = CollectionsKt.k0(valueClassAwareCaller2.f72220b.getF72216b(), valueClassAwareCaller2.d(i2));
                }
                Type[] typeArr2 = (Type[]) listK0.toArray(new Type[0]);
                Type[] typeArr3 = (Type[]) Arrays.copyOf(typeArr2, typeArr2.length);
                int length2 = typeArr3.length;
                if (length2 != 0) {
                    return length2 != 1 ? new DescriptorKParameter.CompoundTypeImpl(typeArr3) : (Type) ArraysKt.Q(typeArr3);
                }
                throw new KotlinReflectionNotSupportedError("Expected at least 1 type for compound type");
            }
        });
    }

    public final int hashCode() {
        return Integer.hashCode(this.f72041c) + (this.f72040b.hashCode() * 31);
    }

    @Override // kotlin.reflect.KParameter
    public final boolean n() {
        ParameterDescriptor parameterDescriptorG = g();
        return (parameterDescriptorG instanceof ValueParameterDescriptor) && ((ValueParameterDescriptor) parameterDescriptorG).o0() != null;
    }

    public final String toString() {
        String strC;
        StringBuilder sb = new StringBuilder();
        int i2 = ReflectionObjectRenderer.WhenMappings.f72175a[this.d.ordinal()];
        if (i2 == 1) {
            sb.append("instance parameter");
        } else if (i2 == 2) {
            sb.append("context parameter " + getName());
        } else if (i2 == 3) {
            sb.append("extension receiver parameter");
        } else {
            if (i2 != 4) {
                v40.g();
                return null;
            }
            sb.append("parameter #" + this.f72041c + ' ' + getName());
        }
        sb.append(" of ");
        KAnnotatedElement kAnnotatedElement = this.f72040b;
        if (kAnnotatedElement instanceof KProperty) {
            strC = ReflectionObjectRenderer.d((KProperty) kAnnotatedElement);
        } else {
            if (!(kAnnotatedElement instanceof KFunction)) {
                mt.f(kAnnotatedElement, "Illegal callable: ");
                return null;
            }
            strC = ReflectionObjectRenderer.c((KFunction) kAnnotatedElement);
        }
        sb.append(strC);
        return sb.toString();
    }
}
