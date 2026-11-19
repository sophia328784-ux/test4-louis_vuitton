package androidx.compose.runtime.saveable;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import defpackage.it0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime-saveable"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SaveableStateRegistryKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f8434a = new StaticProvidableCompositionLocal(new it0(2));

    public static final SaveableStateRegistry a(Map map, Function1 function1) {
        return new SaveableStateRegistryImpl(map, function1);
    }
}
