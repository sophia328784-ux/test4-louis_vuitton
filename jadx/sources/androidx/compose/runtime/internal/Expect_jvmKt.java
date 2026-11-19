package androidx.compose.runtime.internal;

import androidx.compose.runtime.GapComposer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Expect_jvmKt {
    public static final void a(GapComposer gapComposer, Function2 function2) {
        function2.getClass();
        TypeIntrinsics.e(2, function2);
        function2.invoke(gapComposer, 1);
    }
}
