package com.vuitton.android.presentation.screen.options;

import android.content.Intent;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OptionsActivity$onCreate$1$1$3$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        OptionsActivity optionsActivity = (OptionsActivity) this.receiver;
        OptionsActivity.Companion companion = OptionsActivity.u;
        optionsActivity.getClass();
        optionsActivity.startActivity(Intent.createChooser(new Intent("android.intent.action.VIEW", Uri.parse(str)), null));
        return Unit.f71739a;
    }
}
