package kotlin.reflect.jvm.internal.impl.resolve.constants;

import defpackage.v40;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class KClassValue extends ConstantValue<Value> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f73882b = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static abstract class Value {

        public static final class LocalClass extends Value {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final KotlinType f73883a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public LocalClass(KotlinType kotlinType) {
                super(null);
                kotlinType.getClass();
                this.f73883a = kotlinType;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LocalClass) && Intrinsics.c(this.f73883a, ((LocalClass) obj).f73883a);
            }

            public final int hashCode() {
                return this.f73883a.hashCode();
            }

            public final String toString() {
                return "LocalClass(type=" + this.f73883a + ')';
            }
        }

        public static final class NormalClass extends Value {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ClassLiteralValue f73884a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NormalClass(ClassLiteralValue classLiteralValue) {
                super(null);
                classLiteralValue.getClass();
                this.f73884a = classLiteralValue;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof NormalClass) && Intrinsics.c(this.f73884a, ((NormalClass) obj).f73884a);
            }

            public final int hashCode() {
                return this.f73884a.hashCode();
            }

            public final String toString() {
                return "NormalClass(value=" + this.f73884a + ')';
            }
        }

        public Value(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KClassValue(ClassLiteralValue classLiteralValue) {
        this(new Value.NormalClass(classLiteralValue));
        classLiteralValue.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType a(ModuleDescriptor moduleDescriptor) {
        KotlinType kotlinTypeC;
        moduleDescriptor.getClass();
        TypeAttributes.f74232c.getClass();
        TypeAttributes typeAttributes = TypeAttributes.d;
        KotlinBuiltIns kotlinBuiltInsG = moduleDescriptor.g();
        kotlinBuiltInsG.getClass();
        ClassDescriptor classDescriptorJ = kotlinBuiltInsG.j(StandardNames.FqNames.Q.i());
        if (classDescriptorJ == null) {
            KotlinBuiltIns.a(21);
            throw null;
        }
        Object obj = this.f73869a;
        Value value = (Value) obj;
        if (value instanceof Value.LocalClass) {
            kotlinTypeC = ((Value.LocalClass) obj).f73883a;
        } else {
            if (!(value instanceof Value.NormalClass)) {
                v40.g();
                return null;
            }
            ClassLiteralValue classLiteralValue = ((Value.NormalClass) obj).f73884a;
            ClassId classId = classLiteralValue.f73867a;
            int i2 = classLiteralValue.f73868b;
            ClassDescriptor classDescriptorA = FindClassInModuleKt.a(moduleDescriptor, classId);
            if (classDescriptorA == null) {
                kotlinTypeC = ErrorUtils.c(ErrorTypeKind.UNRESOLVED_KCLASS_CONSTANT_VALUE, classId.toString(), String.valueOf(i2));
            } else {
                SimpleType simpleTypeO = classDescriptorA.o();
                simpleTypeO.getClass();
                KotlinType kotlinTypeJ = TypeUtilsKt.j(simpleTypeO);
                for (int i3 = 0; i3 < i2; i3++) {
                    kotlinTypeJ = moduleDescriptor.g().h(Variance.INVARIANT, kotlinTypeJ);
                }
                kotlinTypeC = kotlinTypeJ;
            }
        }
        return KotlinTypeFactory.c(typeAttributes, classDescriptorJ, CollectionsKt.O(new TypeProjectionImpl(kotlinTypeC)));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassValue(Value value) {
        super(value);
        value.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KClassValue(ClassId classId, int i2) {
        this(new ClassLiteralValue(classId, i2));
        classId.getClass();
    }
}
