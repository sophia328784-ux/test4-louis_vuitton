package com.vuitton.android.presentation.screen.authentication.register.components;

import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.Step;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$3$1 extends FunctionReferenceImpl implements Function1<Step, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Step step = (Step) obj;
        step.getClass();
        ((NativeRegisterViewModel) this.receiver).n4(step);
        return Unit.f71739a;
    }
}
