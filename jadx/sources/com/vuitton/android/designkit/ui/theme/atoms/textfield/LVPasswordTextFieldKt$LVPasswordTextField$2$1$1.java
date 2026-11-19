package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class LVPasswordTextFieldKt$LVPasswordTextField$2$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        MutableState mutableState = ((PasswordTextFieldState) this.receiver).f48637a;
        mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
        return Unit.f71739a;
    }
}
