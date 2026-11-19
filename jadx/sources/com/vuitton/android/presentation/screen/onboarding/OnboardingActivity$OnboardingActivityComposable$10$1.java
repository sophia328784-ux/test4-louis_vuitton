package com.vuitton.android.presentation.screen.onboarding;

import androidx.activity.ComponentActivity;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OnboardingActivity$OnboardingActivityComposable$10$1 extends FunctionReferenceImpl implements Function2<SystemIcons, SystemIcons, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        EdgeToEdgeKt.a((ComponentActivity) this.receiver, ((SystemIcons) obj).f43535a, ((SystemIcons) obj2).f43535a);
        return Unit.f71739a;
    }
}
