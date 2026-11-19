package com.vuitton.android.presentation.screen.options.dispatch.components;

import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DispatchComposableKt$DispatchComposable$5$1$2$1$1 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((DispatchCountryViewModel) this.receiver).p8(((Number) obj).intValue());
        return Unit.f71739a;
    }
}
