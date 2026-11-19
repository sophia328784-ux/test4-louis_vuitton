package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/tooling/WriterTraceBuilder;", "Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;", "Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;", "writer", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WriterTraceBuilder extends ComposeStackTraceBuilder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SlotWriter f8577b;

    public WriterTraceBuilder(SlotWriter slotWriter) {
        this.f8577b = slotWriter;
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    public final int c(Anchor anchor) {
        GapAnchor gapAnchorA = GapAnchorKt.a(anchor);
        SlotWriter slotWriter = this.f8577b;
        return slotWriter.s(slotWriter.c(gapAnchorA));
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    public final GapGroupSourceInformation f(Anchor anchor) {
        GapAnchor gapAnchorA = GapAnchorKt.a(anchor);
        SlotWriter slotWriter = this.f8577b;
        return slotWriter.Q(slotWriter.c(gapAnchorA));
    }
}
