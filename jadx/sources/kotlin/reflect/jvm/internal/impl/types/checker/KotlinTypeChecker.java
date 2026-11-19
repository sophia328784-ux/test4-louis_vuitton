package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;

/* JADX INFO: loaded from: classes4.dex */
public interface KotlinTypeChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NewKotlinTypeCheckerImpl f74269a;

    public interface TypeConstructorEquality {
        boolean a(TypeConstructor typeConstructor, TypeConstructor typeConstructor2);
    }

    static {
        NewKotlinTypeChecker.f74286b.getClass();
        f74269a = NewKotlinTypeChecker.Companion.f74288b;
    }

    boolean b(KotlinType kotlinType, KotlinType kotlinType2);
}
