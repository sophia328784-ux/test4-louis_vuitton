package androidx.compose.ui.semantics;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "<unused var>", "invoke", "(Lkotlin/Unit;Lkotlin/Unit;)Lkotlin/Unit;"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class SemanticsProperties$IsPopup$1 extends Lambda implements Function2<Unit, Unit, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SemanticsProperties$IsPopup$1 f10347c = new SemanticsProperties$IsPopup$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        throw new IllegalStateException("merge function called on unmergeable property IsPopup. A popup should not be a child of a clickable/focusable node.");
    }
}
