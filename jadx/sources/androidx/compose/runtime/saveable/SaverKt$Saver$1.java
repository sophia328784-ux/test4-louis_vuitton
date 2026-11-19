package androidx.compose.runtime.saveable;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/runtime/saveable/SaverKt$Saver$1", "Landroidx/compose/runtime/saveable/Saver;", "runtime-saveable"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SaverKt$Saver$1 implements Saver<Object, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function2 f8438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f8439b;

    public SaverKt$Saver$1(Function2 function2, Function1 function1) {
        this.f8438a = function2;
        this.f8439b = function1;
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public final Object a(SaverScope saverScope, Object obj) {
        return this.f8438a.invoke(saverScope, obj);
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public final Object b(Object obj) {
        return this.f8439b.invoke(obj);
    }
}
