package com.vuitton.android.presentation.screen.privacy;

import com.vuitton.android.presentation.link.LinkHandler;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PrivacyActivity$onCreate$1$1$4$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        PrivacyActivity privacyActivity = (PrivacyActivity) this.receiver;
        LinkHandler linkHandler = privacyActivity.r;
        if (linkHandler == null) {
            Intrinsics.h("linkHandler");
            throw null;
        }
        int i2 = LinkHandler.f51604e;
        linkHandler.c(str, privacyActivity, null);
        return Unit.f71739a;
    }
}
