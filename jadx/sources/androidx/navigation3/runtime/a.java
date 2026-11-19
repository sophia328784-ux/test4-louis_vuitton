package androidx.navigation3.runtime;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EntryProviderScope f18402b;

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EntryProviderScope entryProviderScope = this.f18402b;
        Object obj2 = entryProviderScope.f18394b.get(Reflection.f71922a.b(obj.getClass()));
        EntryClassProvider entryClassProvider = obj2 instanceof EntryClassProvider ? (EntryClassProvider) obj2 : null;
        Object obj3 = entryProviderScope.f18395c.get(obj);
        EntryProvider entryProvider = obj3 instanceof EntryProvider ? (EntryProvider) obj3 : null;
        if (entryClassProvider != null) {
            return new NavEntry(obj, entryClassProvider.f18388b.invoke(obj), (Map) entryClassProvider.f18389c.invoke(obj), entryClassProvider.d);
        }
        return entryProvider != null ? new NavEntry(obj, entryProvider.f18391b, (Map) entryProvider.f18392c.invoke(obj), entryProvider.d) : (NavEntry) entryProviderScope.f18393a.invoke(obj);
    }
}
