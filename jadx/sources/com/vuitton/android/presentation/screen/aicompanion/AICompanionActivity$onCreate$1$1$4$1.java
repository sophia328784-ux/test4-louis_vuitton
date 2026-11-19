package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AICompanionActivity$onCreate$1$1$4$1 extends FunctionReferenceImpl implements Function3<SkuIdUiModel, Boolean, Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        String str = ((SkuIdUiModel) obj).f61764b;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
        str.getClass();
        AICompanionActivity aICompanionActivity = (AICompanionActivity) this.receiver;
        AICompanionActivity.Companion companion = AICompanionActivity.v;
        if (zBooleanValue2) {
            ((AICompanionViewModel) aICompanionActivity.p.getF71699b()).Z1(str, zBooleanValue);
        } else {
            aICompanionActivity.getClass();
            aICompanionActivity.s = new d(aICompanionActivity, str, zBooleanValue, 0);
            IntentExtensionKt.b(AICompanionDestinationsKt.a(new AICompanionDestinations.ToWelcomePage(LoginContext.WISHLIST), aICompanionActivity), aICompanionActivity.t);
        }
        return Unit.f71739a;
    }
}
