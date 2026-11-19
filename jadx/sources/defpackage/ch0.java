package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.dynatrace.agent.util.RootDetector;
import com.sightcall.core.experiences.Orchestrator;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ch0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21157b;

    public /* synthetic */ ch0(int i2) {
        this.f21157b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f21157b) {
            case 0:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope, 0, 3);
            case 1:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope2, 0, 3);
            case 2:
                ((AnimatedContentTransitionScope) obj).getClass();
                return EnterExitTransitionKt.e(0.4f, AnimationSpecKt.c(500, 0, EasingKt.d, 2));
            case 3:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope3, 0, 3);
            case 4:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope4, 0, 3);
            case 5:
                Context context = (Context) obj;
                context.getClass();
                return Boolean.valueOf(RootDetector.c(context));
            case 6:
                AnimatedContentTransitionScope animatedContentTransitionScope5 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope5.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope5, 0, 3);
            case 7:
                AnimatedContentTransitionScope animatedContentTransitionScope6 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope6.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope6, 0, 3);
            case 8:
                AnimatedContentTransitionScope animatedContentTransitionScope7 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope7.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope7, 0, 3);
            case 9:
                AnimatedContentTransitionScope animatedContentTransitionScope8 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope8.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope8, 0, 3);
            case 10:
                return Orchestrator.createSchemeStart$lambda$0((Intent) obj);
            case 11:
                return Orchestrator.createDigitalFlow$lambda$0((Intent) obj);
            case 12:
                return Orchestrator.createLogin$lambda$0((Intent) obj);
            case 13:
                return Orchestrator.createDebug$lambda$0((Intent) obj);
            case 14:
                CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) obj;
                categoryOptionUiModel.getClass();
                return categoryOptionUiModel.f60229b;
            case 15:
                PurchasedOrderUiModel purchasedOrderUiModel = (PurchasedOrderUiModel) obj;
                purchasedOrderUiModel.getClass();
                return purchasedOrderUiModel.f60396e;
            case 16:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                return Unit.f71739a;
            case 18:
                AnimatedContentTransitionScope animatedContentTransitionScope9 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope9.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope9, 0, 3);
            case 19:
                AnimatedContentTransitionScope animatedContentTransitionScope10 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope10.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope10, 0, 3);
            case 20:
                AnimatedContentTransitionScope animatedContentTransitionScope11 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope11.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope11, 0, 3);
            case 21:
                AnimatedContentTransitionScope animatedContentTransitionScope12 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope12.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope12, 0, 3);
            case 22:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.Hidden);
            case 23:
                SheetValue sheetValue2 = (SheetValue) obj;
                sheetValue2.getClass();
                return Boolean.valueOf(sheetValue2 != SheetValue.Hidden);
            case 24:
                AnimatedContentTransitionScope animatedContentTransitionScope13 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope13.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope13, 0, 3);
            case 25:
                AnimatedContentTransitionScope animatedContentTransitionScope14 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope14.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope14, 0, 3);
            case 26:
                AnimatedContentTransitionScope animatedContentTransitionScope15 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope15.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope15, 0, 3);
            case 27:
                AnimatedContentTransitionScope animatedContentTransitionScope16 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope16.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope16, 0, 3);
            case 28:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
        }
    }
}
