package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CompositionLocalMapKt {
    public static final Object a(PersistentCompositionLocalMap persistentCompositionLocalMap, CompositionLocal compositionLocal) {
        compositionLocal.getClass();
        ValueHolder<Object> valueHolderA = persistentCompositionLocalMap.get(compositionLocal);
        if (valueHolderA == null) {
            valueHolderA = compositionLocal.a();
        }
        return valueHolderA.a(persistentCompositionLocalMap);
    }

    public static final PersistentCompositionLocalMap b(ProvidedValue[] providedValueArr, PersistentCompositionLocalMap persistentCompositionLocalMap, PersistentCompositionLocalMap persistentCompositionLocalMap2) {
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMapA = PersistentCompositionLocalMapKt.a();
        persistentCompositionLocalHashMapA.getClass();
        PersistentCompositionLocalHashMap.Builder builder = new PersistentCompositionLocalHashMap.Builder(persistentCompositionLocalHashMapA);
        for (ProvidedValue providedValue : providedValueArr) {
            CompositionLocal compositionLocal = providedValue.f8069a;
            compositionLocal.getClass();
            ProvidableCompositionLocal providableCompositionLocal = (ProvidableCompositionLocal) compositionLocal;
            if (providedValue.f8074h || !persistentCompositionLocalMap.containsKey(providableCompositionLocal)) {
                builder.put(providableCompositionLocal, providableCompositionLocal.b(providedValue, (ValueHolder) persistentCompositionLocalMap2.get(providableCompositionLocal)));
            }
        }
        return builder.build();
    }
}
