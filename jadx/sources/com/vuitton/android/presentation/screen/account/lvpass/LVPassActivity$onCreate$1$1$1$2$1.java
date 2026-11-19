package com.vuitton.android.presentation.screen.account.lvpass;

import android.view.WindowManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class LVPassActivity$onCreate$1$1$1$2$1 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        LVPassActivity lVPassActivity = (LVPassActivity) this.receiver;
        LVPassActivity.Companion companion = LVPassActivity.s;
        WindowManager.LayoutParams attributes = lVPassActivity.getWindow().getAttributes();
        attributes.getClass();
        attributes.screenBrightness = zBooleanValue ? 1.0f : -1.0f;
        lVPassActivity.getWindow().setAttributes(attributes);
        return Unit.f71739a;
    }
}
