package androidx.compose.ui.input;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/input/InputModeManagerImpl;", "Landroidx/compose/ui/input/InputModeManager;", "Landroidx/compose/ui/input/InputMode;", "initialInputMode", "Landroidx/compose/ui/input/InputModeChangeRequester;", "onRequestInputModeChange", "<init>", "(ILandroidx/compose/ui/input/InputModeChangeRequester;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InputModeManagerImpl implements InputModeManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputModeChangeRequester f9208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f9209b;

    public InputModeManagerImpl(int i2, InputModeChangeRequester inputModeChangeRequester, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9208a = inputModeChangeRequester;
        this.f9209b = SnapshotStateKt.g(new InputMode(i2));
    }

    @Override // androidx.compose.ui.input.InputModeManager
    public final int a() {
        return ((InputMode) ((SnapshotMutableStateImpl) this.f9209b).getF10755b()).f9207a;
    }
}
