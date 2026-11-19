package com.vuitton.android.presentation.screen.options.dispatch.components;

import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DispatchComposableKt$DispatchComposable$5$1$2$3$1 extends FunctionReferenceImpl implements Function1<InAppDispatch, Boolean> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        InAppDispatch inAppDispatch = (InAppDispatch) obj;
        inAppDispatch.getClass();
        return Boolean.valueOf(((DispatchCountryViewModel) this.receiver).y1(inAppDispatch));
    }
}
