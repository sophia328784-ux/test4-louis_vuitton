package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class LVDropdownKt$LVDropdown$5$1 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        DropdownState dropdownState = (DropdownState) this.receiver;
        if (dropdownState.f48444b) {
            ((SnapshotMutableStateImpl) dropdownState.f48445c).setValue(bool);
        }
        return Unit.f71739a;
    }
}
