package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public interface SignaturePropagator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SignaturePropagator f72934a = new AnonymousClass1();

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator$1, reason: invalid class name */
    public static class AnonymousClass1 implements SignaturePropagator {
        public static /* synthetic */ void c(int i2) {
            Object[] objArr = new Object[3];
            switch (i2) {
                case 1:
                    objArr[0] = "owner";
                    break;
                case 2:
                    objArr[0] = "returnType";
                    break;
                case 3:
                    objArr[0] = "valueParameters";
                    break;
                case 4:
                    objArr[0] = "typeParameters";
                    break;
                case 5:
                    objArr[0] = "descriptor";
                    break;
                case 6:
                    objArr[0] = "signatureErrors";
                    break;
                default:
                    objArr[0] = "method";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1";
            if (i2 == 5 || i2 == 6) {
                objArr[2] = "reportSignatureErrors";
            } else {
                objArr[2] = "resolvePropagatedSignature";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator
        public final PropagatedSignature a(JavaMethod javaMethod, ClassDescriptor classDescriptor, KotlinType kotlinType, List list, ArrayList arrayList) {
            if (javaMethod == null) {
                c(0);
                throw null;
            }
            if (classDescriptor == null) {
                c(1);
                throw null;
            }
            if (kotlinType == null) {
                c(2);
                throw null;
            }
            if (list != null) {
                return new PropagatedSignature(kotlinType, null, list, arrayList, Collections.EMPTY_LIST, false);
            }
            c(3);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator
        public final void b(JavaMethodDescriptor javaMethodDescriptor, List list) {
            if (list != null) {
                throw new UnsupportedOperationException("Should not be called");
            }
            c(6);
            throw null;
        }
    }

    public static class PropagatedSignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KotlinType f72935a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final KotlinType f72936b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f72937c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f72938e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f72939f;

        public PropagatedSignature(KotlinType kotlinType, KotlinType kotlinType2, List<ValueParameterDescriptor> list, List<TypeParameterDescriptor> list2, List<String> list3, boolean z) {
            if (kotlinType == null) {
                a(0);
                throw null;
            }
            if (list == null) {
                a(1);
                throw null;
            }
            if (list2 == null) {
                a(2);
                throw null;
            }
            if (list3 == null) {
                a(3);
                throw null;
            }
            this.f72935a = kotlinType;
            this.f72936b = kotlinType2;
            this.f72937c = list;
            this.d = list2;
            this.f72938e = list3;
            this.f72939f = z;
        }

        public static /* synthetic */ void a(int i2) {
            String str = (i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7) ? 2 : 3];
            switch (i2) {
                case 1:
                    objArr[0] = "valueParameters";
                    break;
                case 2:
                    objArr[0] = "typeParameters";
                    break;
                case 3:
                    objArr[0] = "signatureErrors";
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
                    break;
                default:
                    objArr[0] = "returnType";
                    break;
            }
            if (i2 == 4) {
                objArr[1] = "getReturnType";
            } else if (i2 == 5) {
                objArr[1] = "getValueParameters";
            } else if (i2 == 6) {
                objArr[1] = "getTypeParameters";
            } else if (i2 != 7) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
            } else {
                objArr[1] = "getErrors";
            }
            if (i2 != 4 && i2 != 5 && i2 != 6 && i2 != 7) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i2 != 4 && i2 != 5 && i2 != 6 && i2 != 7) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }
    }

    PropagatedSignature a(JavaMethod javaMethod, ClassDescriptor classDescriptor, KotlinType kotlinType, List list, ArrayList arrayList);

    void b(JavaMethodDescriptor javaMethodDescriptor, List list);
}
