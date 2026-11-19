package com.vuitton.android.presentation.compose.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PreferenceSwitchKt$PreferenceSwitch$2$1$1$1 extends FunctionReferenceImpl implements Function1<LVSwitchLegalState, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f51019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f51020c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreferenceSwitchKt$PreferenceSwitch$2$1$1$1(MutableState mutableState, Function1 function1) {
        super(1, Intrinsics.Kotlin.class, "switch", "PreferenceSwitch$switch(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;)V", 0);
        this.f51019b = function1;
        this.f51020c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        LVSwitchLegalState lVSwitchLegalState = (LVSwitchLegalState) obj;
        lVSwitchLegalState.getClass();
        PreferenceSwitchKt.b(this.f51019b, this.f51020c, lVSwitchLegalState);
        return Unit.f71739a;
    }
}
