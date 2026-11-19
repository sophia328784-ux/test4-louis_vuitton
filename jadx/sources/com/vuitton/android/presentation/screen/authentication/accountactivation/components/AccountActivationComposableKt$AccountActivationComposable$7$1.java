package com.vuitton.android.presentation.screen.authentication.accountactivation.components;

import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AccountActivationComposableKt$AccountActivationComposable$7$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        ((AccountActivationViewModel) this.receiver).A(str);
        return Unit.f71739a;
    }
}
