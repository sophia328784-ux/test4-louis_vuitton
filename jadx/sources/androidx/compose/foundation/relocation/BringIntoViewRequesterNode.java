package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/foundation/relocation/BringIntoViewRequester;", "requester", "<init>", "(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BringIntoViewRequesterNode extends Modifier.Node {
    public BringIntoViewRequester p;

    public BringIntoViewRequesterNode(BringIntoViewRequester bringIntoViewRequester) {
        this.p = bringIntoViewRequester;
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        BringIntoViewRequester bringIntoViewRequester = this.p;
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) bringIntoViewRequester).f5802a.n(this);
        }
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) bringIntoViewRequester).f5802a.b(this);
        }
        this.p = bringIntoViewRequester;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        BringIntoViewRequester bringIntoViewRequester = this.p;
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) bringIntoViewRequester).f5802a.n(this);
        }
    }
}
