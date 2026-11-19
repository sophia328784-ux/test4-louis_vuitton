package kotlin.reflect.jvm.internal.impl.util;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.fc;
import defpackage.n00;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ValueParameterCountCheck implements Check {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f74377a;

    public static final class AtLeast extends ValueParameterCountCheck {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f74378b;

        /* JADX WARN: Illegal instructions before constructor call */
        public AtLeast(int i2) {
            StringBuilder sbQ = fc.q(i2, "must have at least ", " value parameter");
            sbQ.append(i2 > 1 ? NBSSpanMetricUnit.Second : "");
            super(sbQ.toString(), null);
            this.f74378b = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public final boolean a(JavaMethodDescriptor javaMethodDescriptor) {
            return javaMethodDescriptor.h().size() >= this.f74378b;
        }
    }

    public static final class Equals extends ValueParameterCountCheck {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f74379b;

        public Equals(int i2) {
            super(n00.m(i2, "must have exactly ", " value parameters"), null);
            this.f74379b = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public final boolean a(JavaMethodDescriptor javaMethodDescriptor) {
            return javaMethodDescriptor.h().size() == this.f74379b;
        }
    }

    public static final class NoValueParameters extends ValueParameterCountCheck {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final NoValueParameters f74380b = new NoValueParameters("must have no value parameters", null);

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public final boolean a(JavaMethodDescriptor javaMethodDescriptor) {
            return javaMethodDescriptor.h().isEmpty();
        }
    }

    public static final class SingleValueParameter extends ValueParameterCountCheck {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final SingleValueParameter f74381b = new SingleValueParameter("must have a single value parameter", null);

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public final boolean a(JavaMethodDescriptor javaMethodDescriptor) {
            return javaMethodDescriptor.h().size() == 1;
        }
    }

    public ValueParameterCountCheck(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f74377a = str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final /* bridge */ String b(JavaMethodDescriptor javaMethodDescriptor) {
        return Check.DefaultImpls.a(this, javaMethodDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String getDescription() {
        return this.f74377a;
    }
}
