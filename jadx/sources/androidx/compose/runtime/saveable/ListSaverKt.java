package androidx.compose.runtime.saveable;

import defpackage.z4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime-saveable"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ListSaverKt {
    public static final SaverKt$Saver$1 a(Function2 function2, Function1 function1) {
        z4 z4Var = new z4(5, function2);
        TypeIntrinsics.e(1, function1);
        return new SaverKt$Saver$1(z4Var, function1);
    }
}
