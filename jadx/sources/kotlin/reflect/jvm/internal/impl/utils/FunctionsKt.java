package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FunctionsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function1 f74385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Function3 f74386b;

    static {
        int i2 = FunctionsKt$$Lambda$3.f74387b;
        f74385a = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$$Lambda$4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Function1 function1 = FunctionsKt.f74385a;
                return Boolean.TRUE;
            }
        };
        int i3 = FunctionsKt$$Lambda$5.f74389b;
        int i4 = FunctionsKt$$Lambda$6.f74390b;
        f74386b = new Function3() { // from class: kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$$Lambda$7
            @Override // kotlin.jvm.functions.Function3
            public final Object A(Object obj, Object obj2, Object obj3) {
                Function1 function1 = FunctionsKt.f74385a;
                return Unit.f71739a;
            }
        };
    }
}
