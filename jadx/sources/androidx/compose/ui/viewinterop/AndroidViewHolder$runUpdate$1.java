package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.OwnerSnapshotObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class AndroidViewHolder$runUpdate$1 extends Lambda implements Function0<Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AndroidViewHolder f11068c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$runUpdate$1(AndroidViewHolder androidViewHolder) {
        super(0);
        this.f11068c = androidViewHolder;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        AndroidViewHolder androidViewHolder = this.f11068c;
        if (androidViewHolder.f11040f && androidViewHolder.isAttachedToWindow() && androidViewHolder.getView().getParent() == androidViewHolder) {
            OwnerSnapshotObserver snapshotObserver = androidViewHolder.getSnapshotObserver();
            snapshotObserver.f9812a.e(androidViewHolder, AndroidViewHolder.B, androidViewHolder.getUpdate());
        }
        return Unit.f71739a;
    }
}
