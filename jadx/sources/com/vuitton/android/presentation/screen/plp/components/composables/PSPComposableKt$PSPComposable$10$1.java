package com.vuitton.android.presentation.screen.plp.components.composables;

import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PSPComposableKt$PSPComposable$10$1 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((QuickAccessFiltersViewModel) this.receiver).M4(((Boolean) obj).booleanValue());
        return Unit.f71739a;
    }
}
