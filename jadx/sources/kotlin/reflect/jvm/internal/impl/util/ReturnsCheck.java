package kotlin.reflect.jvm.internal.impl.util;

import defpackage.tr;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ReturnsCheck implements Check {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f74366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f74367b;

    public static final class ReturnsBoolean extends ReturnsCheck {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ReturnsBoolean f74368c = new ReturnsBoolean("Boolean", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck$ReturnsBoolean$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinBuiltIns kotlinBuiltIns = (KotlinBuiltIns) obj;
                ReturnsCheck.ReturnsBoolean returnsBoolean = ReturnsCheck.ReturnsBoolean.f74368c;
                kotlinBuiltIns.getClass();
                SimpleType simpleTypeT = kotlinBuiltIns.t(PrimitiveType.BOOLEAN);
                if (simpleTypeT != null) {
                    return simpleTypeT;
                }
                KotlinBuiltIns.a(64);
                throw null;
            }
        }, null);
    }

    public static final class ReturnsInt extends ReturnsCheck {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ReturnsInt f74370c = new ReturnsInt("Int", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck$ReturnsInt$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinBuiltIns kotlinBuiltIns = (KotlinBuiltIns) obj;
                ReturnsCheck.ReturnsInt returnsInt = ReturnsCheck.ReturnsInt.f74370c;
                kotlinBuiltIns.getClass();
                SimpleType simpleTypeT = kotlinBuiltIns.t(PrimitiveType.INT);
                if (simpleTypeT != null) {
                    return simpleTypeT;
                }
                KotlinBuiltIns.a(59);
                throw null;
            }
        }, null);
    }

    public static final class ReturnsUnit extends ReturnsCheck {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ReturnsUnit f74372c = new ReturnsUnit("Unit", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck$ReturnsUnit$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinBuiltIns kotlinBuiltIns = (KotlinBuiltIns) obj;
                ReturnsCheck.ReturnsUnit returnsUnit = ReturnsCheck.ReturnsUnit.f74372c;
                kotlinBuiltIns.getClass();
                SimpleType simpleTypeX = kotlinBuiltIns.x();
                simpleTypeX.getClass();
                return simpleTypeX;
            }
        }, null);
    }

    public ReturnsCheck(String str, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.f74366a = function1;
        this.f74367b = tr.g("must return ", str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final boolean a(JavaMethodDescriptor javaMethodDescriptor) {
        KotlinType kotlinType = javaMethodDescriptor.f72493h;
        int i2 = DescriptorUtilsKt.f73888a;
        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(javaMethodDescriptor);
        moduleDescriptorC.getClass();
        return Intrinsics.c(kotlinType, this.f74366a.invoke(moduleDescriptorC.g()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final /* bridge */ String b(JavaMethodDescriptor javaMethodDescriptor) {
        return Check.DefaultImpls.a(this, javaMethodDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String getDescription() {
        return this.f74367b;
    }
}
