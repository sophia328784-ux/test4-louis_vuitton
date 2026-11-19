package com.vuitton.android.presentation.screen.spotlight.components;

import com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class SpotlightComposableKt$SpotlightComposable$3$1 extends FunctionReferenceImpl implements Function2<Integer, Integer, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ((SpotlightViewModel) this.receiver).ha(((Number) obj).intValue(), ((Number) obj2).intValue());
        return Unit.f71739a;
    }
}
