package androidx.compose.runtime;

import defpackage.v9;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/runtime/Updater;", "T", "", "composer", "Landroidx/compose/runtime/Composer;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class Updater<T> {
    public static final void a(Composer composer, Integer num, Function2 function2) {
        if (composer.getS()) {
            composer.a(num, function2);
        }
    }

    public static final void b(Composer composer, Function1 function1) {
        composer.a(Unit.f71739a, new v9(function1, 8));
    }

    public static final void c(Composer composer, Object obj, Function2 function2) {
        if (composer.getS() || !Intrinsics.c(composer.x(), obj)) {
            composer.q(obj);
            composer.a(obj, function2);
        }
    }
}
