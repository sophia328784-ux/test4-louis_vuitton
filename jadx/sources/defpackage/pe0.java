package defpackage;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCartLocalProviderKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.cart.NativeCartActivity;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import defpackage.oe0;
import defpackage.zd;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pe0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartActivity f78839c;

    public /* synthetic */ pe0(NativeCartActivity nativeCartActivity, int i2) {
        this.f78838b = i2;
        this.f78839c = nativeCartActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78838b;
        final NativeCartActivity nativeCartActivity = this.f78839c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                NativeCartActivity.Companion companion = NativeCartActivity.w;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVCartLocalProviderKt.a(ComposableLambdaKt.b(-1734202455, new pe0(nativeCartActivity, i3), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
            default:
                NativeCartActivity.Companion companion2 = NativeCartActivity.w;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-191246963, new Function2() { // from class: com.vuitton.android.presentation.screen.cart.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            NativeCartActivity.Companion companion3 = NativeCartActivity.w;
                            final int i4 = 1;
                            final int i5 = 0;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2);
                                MutableState mutableStateL = SnapshotStateKt.l(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), composer2);
                                int iB = (int) ResourcesExtKt.b(paddingValuesE.getD());
                                final NativeCartActivity nativeCartActivity2 = nativeCartActivity;
                                NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) nativeCartActivity2.s.getF71699b();
                                ReinsuranceViewModel reinsuranceViewModel = (ReinsuranceViewModel) nativeCartActivity2.t.getF71699b();
                                CartPreviousScreen cartPreviousScreen = (CartPreviousScreen) nativeCartActivity2.v.getF71699b();
                                boolean zY = composer2.y(nativeCartActivity2);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    NativeCartActivity$onCreate$1$1$1$1$1 nativeCartActivity$onCreate$1$1$1$1$1 = new NativeCartActivity$onCreate$1$1$1$1$1(0, nativeCartActivity2, NativeCartActivity.class, "openCatalog", "openCatalog()V", 0);
                                    composer2.q(nativeCartActivity$onCreate$1$1$1$1$1);
                                    objX = nativeCartActivity$onCreate$1$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer2.y(nativeCartActivity2);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    NativeCartActivity$onCreate$1$1$1$2$1 nativeCartActivity$onCreate$1$1$1$2$1 = new NativeCartActivity$onCreate$1$1$1$2$1(2, nativeCartActivity2, NativeCartActivity.class, "setSystemColors", "setSystemColors-MHaHrOc(ZZ)V", 0);
                                    composer2.q(nativeCartActivity$onCreate$1$1$1$2$1);
                                    objX2 = nativeCartActivity$onCreate$1$1$1$2$1;
                                }
                                Function2 function2 = (Function2) ((KFunction) objX2);
                                boolean zY3 = composer2.y(nativeCartActivity2) | composer2.K(mutableStateL) | composer2.d(iB);
                                Object objX3 = composer2.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new zd(nativeCartActivity2, iB, mutableStateL, 7);
                                    composer2.q(objX3);
                                }
                                Function1 function1 = (Function1) objX3;
                                boolean zY4 = composer2.y(nativeCartActivity2);
                                Object objX4 = composer2.x();
                                if (zY4 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new oe0(nativeCartActivity2, 1);
                                    composer2.q(objX4);
                                }
                                Function0 function3 = (Function0) objX4;
                                boolean zY5 = composer2.y(nativeCartActivity2);
                                Object objX5 = composer2.x();
                                if (zY5 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new Function1() { // from class: qe0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            String str = (String) obj5;
                                            switch (i5) {
                                                case 0:
                                                    NativeCartActivity.Companion companion4 = NativeCartActivity.w;
                                                    str.getClass();
                                                    NativeCartActivity nativeCartActivity3 = nativeCartActivity2;
                                                    ContributionLinkNavigator contributionLinkNavigator = nativeCartActivity3.q;
                                                    if (contributionLinkNavigator != null) {
                                                        ContributionLinkNavigator.a(contributionLinkNavigator, nativeCartActivity3, new ContributionLinkUiModel.ImmersiveArticle(str), null, null, null, 16);
                                                        return Unit.f71739a;
                                                    }
                                                    Intrinsics.h("contributionLinkNavigator");
                                                    throw null;
                                                default:
                                                    NativeCartActivity.Companion companion5 = NativeCartActivity.w;
                                                    str.getClass();
                                                    NativeCartActivity nativeCartActivity4 = nativeCartActivity2;
                                                    ContributionLinkNavigator contributionLinkNavigator2 = nativeCartActivity4.q;
                                                    if (contributionLinkNavigator2 != null) {
                                                        ContributionLinkNavigator.a(contributionLinkNavigator2, nativeCartActivity4, new ContributionLinkUiModel.ImmersiveArticle(str), null, null, null, 16);
                                                        return Unit.f71739a;
                                                    }
                                                    Intrinsics.h("contributionLinkNavigator");
                                                    throw null;
                                            }
                                        }
                                    };
                                    composer2.q(objX5);
                                }
                                Function1 function4 = (Function1) objX5;
                                boolean zY6 = composer2.y(nativeCartActivity2);
                                Object objX6 = composer2.x();
                                if (zY6 || objX6 == composer$Companion$Empty$1) {
                                    objX6 = new Function1() { // from class: qe0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            String str = (String) obj5;
                                            switch (i4) {
                                                case 0:
                                                    NativeCartActivity.Companion companion4 = NativeCartActivity.w;
                                                    str.getClass();
                                                    NativeCartActivity nativeCartActivity3 = nativeCartActivity2;
                                                    ContributionLinkNavigator contributionLinkNavigator = nativeCartActivity3.q;
                                                    if (contributionLinkNavigator != null) {
                                                        ContributionLinkNavigator.a(contributionLinkNavigator, nativeCartActivity3, new ContributionLinkUiModel.ImmersiveArticle(str), null, null, null, 16);
                                                        return Unit.f71739a;
                                                    }
                                                    Intrinsics.h("contributionLinkNavigator");
                                                    throw null;
                                                default:
                                                    NativeCartActivity.Companion companion5 = NativeCartActivity.w;
                                                    str.getClass();
                                                    NativeCartActivity nativeCartActivity4 = nativeCartActivity2;
                                                    ContributionLinkNavigator contributionLinkNavigator2 = nativeCartActivity4.q;
                                                    if (contributionLinkNavigator2 != null) {
                                                        ContributionLinkNavigator.a(contributionLinkNavigator2, nativeCartActivity4, new ContributionLinkUiModel.ImmersiveArticle(str), null, null, null, 16);
                                                        return Unit.f71739a;
                                                    }
                                                    Intrinsics.h("contributionLinkNavigator");
                                                    throw null;
                                            }
                                        }
                                    };
                                    composer2.q(objX6);
                                }
                                NativeCartNavHostKt.a(nativeCartViewModel, reinsuranceViewModel, cartPreviousScreen, function0, function2, function1, function3, function4, (Function1) objX6, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
