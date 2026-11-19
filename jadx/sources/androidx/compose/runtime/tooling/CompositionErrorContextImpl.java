package androidx.compose.runtime.tooling;

import androidx.compose.runtime.InternalComposer;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import defpackage.tf;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;", "Landroidx/compose/runtime/tooling/CompositionErrorContext;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;", "Lkotlin/coroutines/CoroutineContext$Element;", "Landroidx/compose/runtime/InternalComposer;", "composer", "<init>", "(Landroidx/compose/runtime/InternalComposer;)V", "Key", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CompositionErrorContextImpl implements CompositionErrorContext, OperationErrorContext, CoroutineContext.Element {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Key f8559c = new Key(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InternalComposer f8560b;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/runtime/tooling/CompositionErrorContextImpl$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Key implements CoroutineContext.Key<CompositionErrorContextImpl> {
        public Key(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final String toString() {
            return "CompositionErrorContext";
        }
    }

    public CompositionErrorContextImpl(InternalComposer internalComposer) {
        this.f8560b = internalComposer;
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public final List a(Integer num) {
        return this.f8560b.P();
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public final boolean b() {
        return this.f8560b.getC();
    }

    @Override // androidx.compose.runtime.tooling.CompositionErrorContext
    public final boolean d(Object obj, Throwable th) {
        return ComposeStackTraceKt.a(th, new tf(this, obj, 25));
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final /* bridge */ Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final /* bridge */ CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return f8559c;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final /* bridge */ CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final /* bridge */ CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(coroutineContext, this);
    }
}
