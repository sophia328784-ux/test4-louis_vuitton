package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeSubstitution {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TypeSubstitution$Companion$EMPTY$1 f74258a;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f74258a = new TypeSubstitution$Companion$EMPTY$1();
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return false;
    }

    public Annotations c(Annotations annotations) {
        annotations.getClass();
        return annotations;
    }

    public abstract TypeProjection d(KotlinType kotlinType);

    public boolean e() {
        return this instanceof TypeSubstitution$Companion$EMPTY$1;
    }

    public KotlinType f(Variance variance, KotlinType kotlinType) {
        kotlinType.getClass();
        variance.getClass();
        return kotlinType;
    }
}
