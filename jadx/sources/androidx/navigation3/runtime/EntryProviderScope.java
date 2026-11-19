package androidx.navigation3.runtime;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.az;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@EntryDsl
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B0\u0012'\u0010\b\u001a#\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0003¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigation3/runtime/EntryProviderScope;", "", "T", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "unknownScreen", "Landroidx/navigation3/runtime/NavEntry;", "fallback", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EntryProviderScope<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f18393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f18394b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f18395c = new LinkedHashMap();

    public EntryProviderScope(Function1<? super T, NavEntry<T>> function1) {
        this.f18393a = function1;
    }

    public final void a(KClass kClass, Function1 function1, Function1 function2, ComposableLambdaImpl composableLambdaImpl) {
        LinkedHashMap linkedHashMap = this.f18394b;
        if (linkedHashMap.containsKey(kClass)) {
            az.q("An `entry` with the same `clazz` has already been added: ", 46, kClass.B());
        } else {
            linkedHashMap.put(kClass, new EntryClassProvider(kClass, function1, function2, composableLambdaImpl));
        }
    }
}
