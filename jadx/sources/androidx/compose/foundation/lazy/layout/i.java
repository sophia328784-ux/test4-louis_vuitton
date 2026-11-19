package androidx.compose.foundation.lazy.layout;

import java.util.Map;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Map mapD = ((LazySaveableStateHolder) obj2).d();
        if (mapD.isEmpty()) {
            return null;
        }
        return mapD;
    }
}
