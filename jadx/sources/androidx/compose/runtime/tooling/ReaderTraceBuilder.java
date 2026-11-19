package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/tooling/ReaderTraceBuilder;", "Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;", "Landroidx/compose/runtime/composer/gapbuffer/SlotReader;", "reader", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ReaderTraceBuilder extends ComposeStackTraceBuilder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SlotReader f8569b;

    public ReaderTraceBuilder(SlotReader slotReader) {
        this.f8569b = slotReader;
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    public final int c(Anchor anchor) {
        SlotReader slotReader = this.f8569b;
        return slotReader.i(slotReader.f8199a.h(GapAnchorKt.a(anchor)));
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    public final GapGroupSourceInformation f(Anchor anchor) {
        SlotTable slotTable = this.f8569b.f8199a;
        return slotTable.q(slotTable.h(GapAnchorKt.a(anchor)));
    }
}
