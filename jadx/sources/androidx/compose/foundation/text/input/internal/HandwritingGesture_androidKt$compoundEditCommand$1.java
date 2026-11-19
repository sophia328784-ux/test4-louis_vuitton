package androidx.compose.foundation.text.input.internal;

import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditingBuffer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1", "Landroidx/compose/ui/text/input/EditCommand;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HandwritingGesture_androidKt$compoundEditCommand$1 implements EditCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EditCommand[] f6207a;

    public HandwritingGesture_androidKt$compoundEditCommand$1(EditCommand[] editCommandArr) {
        this.f6207a = editCommandArr;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        for (EditCommand editCommand : this.f6207a) {
            editCommand.a(editingBuffer);
        }
    }
}
