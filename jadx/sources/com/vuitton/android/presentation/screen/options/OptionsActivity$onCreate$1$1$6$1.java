package com.vuitton.android.presentation.screen.options;

import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OptionsActivity$onCreate$1$1$6$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        OptionsActivity optionsActivity = (OptionsActivity) this.receiver;
        OptionsActivity.Companion companion = OptionsActivity.u;
        optionsActivity.getClass();
        optionsActivity.startActivity(ImmersiveArticleActivity.Companion.a(ImmersiveArticleActivity.H, optionsActivity, "Accessibility-Statement", null, null, null, null, 124));
        return Unit.f71739a;
    }
}
