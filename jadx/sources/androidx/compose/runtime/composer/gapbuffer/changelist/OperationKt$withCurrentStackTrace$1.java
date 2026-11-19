package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/runtime/composer/gapbuffer/changelist/OperationKt$withCurrentStackTrace$1", "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OperationKt$withCurrentStackTrace$1 implements OperationErrorContext {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OperationErrorContext f8285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SlotWriter f8286c;

    public OperationKt$withCurrentStackTrace$1(OperationErrorContext operationErrorContext, SlotWriter slotWriter) {
        this.f8285b = operationErrorContext;
        this.f8286c = slotWriter;
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public final List a(Integer num) {
        List listA = this.f8285b.a(null);
        SlotWriter slotWriter = this.f8286c;
        int i2 = slotWriter.v;
        return i2 < 0 ? listA : CollectionsKt.Y(ComposeStackTraceBuilderKt.a(slotWriter, num, i2, Integer.valueOf(slotWriter.G(i2, slotWriter.f8219b))), listA);
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public final boolean b() {
        return this.f8285b.b();
    }
}
