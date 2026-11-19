package kotlin;

import defpackage.v40;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/LazyKt__LazyJVMKt", "kotlin/LazyKt__LazyKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class LazyKt extends LazyKt__LazyKt {
    public static Lazy a(LazyThreadSafetyMode lazyThreadSafetyMode, Function0 function0) {
        lazyThreadSafetyMode.getClass();
        function0.getClass();
        int i2 = LazyKt__LazyJVMKt.WhenMappings.f71704a[lazyThreadSafetyMode.ordinal()];
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i3 = 2;
        if (i2 == 1) {
            return new SynchronizedLazyImpl(function0, defaultConstructorMarker, i3, defaultConstructorMarker);
        }
        if (i2 == 2) {
            return new SafePublicationLazyImpl(function0);
        }
        if (i2 == 3) {
            return new UnsafeLazyImpl(function0);
        }
        v40.g();
        return null;
    }

    public static Lazy b(Function0 function0) {
        function0.getClass();
        DefaultConstructorMarker defaultConstructorMarker = null;
        return new SynchronizedLazyImpl(function0, defaultConstructorMarker, 2, defaultConstructorMarker);
    }
}
