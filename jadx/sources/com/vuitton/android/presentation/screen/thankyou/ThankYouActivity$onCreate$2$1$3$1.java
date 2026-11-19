package com.vuitton.android.presentation.screen.thankyou;

import android.content.Intent;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ThankYouActivity$onCreate$2$1$3$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        ThankYouActivity thankYouActivity = (ThankYouActivity) this.receiver;
        ThankYouActivity.Companion companion = ThankYouActivity.q;
        thankYouActivity.getClass();
        Intent intentA = MainActivity.Companion.a(MainActivity.L, thankYouActivity, MainTopLevelDestination.FEED, null, null, null, 28);
        intentA.setFlags(32768);
        thankYouActivity.startActivity(intentA);
        return Unit.f71739a;
    }
}
