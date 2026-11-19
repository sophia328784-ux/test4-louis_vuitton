package androidx.navigation3.scene;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation3.runtime.NavEntry;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bg\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/navigation3/scene/Scene;", "", "T", "navigation3-ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Scene<T> {
    List a();

    ComposableLambdaImpl getContent();

    List getEntries();

    Object getKey();

    default Map getMetadata() {
        Map map;
        NavEntry navEntry = (NavEntry) CollectionsKt.N(getEntries());
        return (navEntry == null || (map = navEntry.f18399c) == null) ? MapsKt.c() : map;
    }
}
