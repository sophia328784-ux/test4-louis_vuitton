package androidx.compose.ui.semantics;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/semantics/CustomAccessibilityAction;", "parentValue", "childValue", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class SemanticsActions$CustomActions$1 extends Lambda implements Function2<List<? extends CustomAccessibilityAction>, List<? extends CustomAccessibilityAction>, List<? extends CustomAccessibilityAction>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SemanticsActions$CustomActions$1 f10311c = new SemanticsActions$CustomActions$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Collection collection = (List) obj;
        List list = (List) obj2;
        if (collection == null) {
            collection = EmptyList.f71768b;
        }
        return CollectionsKt.Y(collection, list);
    }
}
