package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;", "", "Landroidx/compose/foundation/interaction/InteractionSource;", "interactionSource", "<init>", "(Landroidx/compose/foundation/interaction/InteractionSource;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LinkStateInteractionSourceObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InteractionSource f5934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableIntState f5935b = SnapshotIntStateKt.a(0);

    public LinkStateInteractionSourceObserver(InteractionSource interactionSource) {
        this.f5934a = interactionSource;
    }
}
