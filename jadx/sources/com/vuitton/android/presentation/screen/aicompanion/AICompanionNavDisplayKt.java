package com.vuitton.android.presentation.screen.aicompanion;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecoratorKt;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.RememberNavBackStackKt;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecoratorKt;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import defpackage.cj;
import defpackage.p;
import defpackage.t;
import defpackage.v0;
import defpackage.w0;
import defpackage.x0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionNavDisplayKt {
    public static final void a(final AICompanionViewModel aICompanionViewModel, final ContributionLinkNavigator contributionLinkNavigator, final SharedFlow sharedFlow, final Function0 function0, final Function1 function1, final Function3 function3, final Function0 function2, Composer composer, final int i2) {
        GapComposer gapComposer;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function4;
        aICompanionViewModel.getClass();
        contributionLinkNavigator.getClass();
        sharedFlow.getClass();
        function0.getClass();
        function1.getClass();
        function3.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1391052089);
        int i3 = i2 | (gapComposerH.K(aICompanionViewModel) ? 4 : 2) | (gapComposerH.y(contributionLinkNavigator) ? 32 : 16) | (gapComposerH.y(sharedFlow) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateC = FlowExtKt.c(aICompanionViewModel.getU(), null, gapComposerH, 0, 7);
            Boolean bool = ((AICompanionViewState) mutableStateC.getF10755b()).f52896f;
            if (bool != null) {
                NavBackStack navBackStackA = RememberNavBackStackKt.a(new NavKey[]{(((AICompanionViewState) mutableStateC.getF10755b()).f52893b == null || bool.booleanValue()) ? AICompanionRoutes.Chat.INSTANCE : AICompanionRoutes.Onboarding.INSTANCE}, gapComposerH);
                boolean zY = gapComposerH.y(sharedFlow) | gapComposerH.y(navBackStackA);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new AICompanionNavDisplayKt$AICompanionNavDisplay$1$1(sharedFlow, navBackStackA, null);
                    gapComposerH.q(objX);
                }
                EffectsKt.e(gapComposerH, sharedFlow, (Function2) objX);
                List listP = CollectionsKt.P(SaveableStateHolderNavEntryDecoratorKt.a(gapComposerH), ViewModelStoreNavEntryDecoratorKt.a(gapComposerH));
                gapComposerH.L(1066291066);
                EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$$inlined$entryProvider$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                    }
                });
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(689033237, new v0(aICompanionViewModel, function2, navBackStackA), gapComposerH);
                AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$1 aICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$1 = new Function1<AICompanionRoutes.Onboarding, Object>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return obj.toString();
                    }
                };
                final Map mapC = MapsKt.c();
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                entryProviderScope.a(reflectionFactory.b(AICompanionRoutes.Onboarding.class), aICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$1, new Function1<AICompanionRoutes.Onboarding, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return mapC;
                    }
                }, composableLambdaImplB);
                final Map mapH = MapsKt.h(new Pair("fade_transition", Boolean.TRUE));
                entryProviderScope.a(reflectionFactory.b(AICompanionRoutes.Chat.class), new Function1<AICompanionRoutes.Chat, Object>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return obj.toString();
                    }
                }, new Function1<AICompanionRoutes.Chat, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return mapH;
                    }
                }, ComposableLambdaKt.b(830082569, new w0(aICompanionViewModel, contributionLinkNavigator, navBackStackA, function0, function1, function3, function2), gapComposerH));
                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1346070800, new v0(aICompanionViewModel, navBackStackA, function2), gapComposerH);
                AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$5 aICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$5 = new Function1<AICompanionRoutes.History, Object>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$5
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return obj.toString();
                    }
                };
                final Map mapC2 = MapsKt.c();
                entryProviderScope.a(reflectionFactory.b(AICompanionRoutes.History.class), aICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$5, new Function1<AICompanionRoutes.History, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return mapC2;
                    }
                }, composableLambdaImplB2);
                androidx.navigation3.runtime.a aVar = new androidx.navigation3.runtime.a(entryProviderScope);
                gapComposerH.Z(false);
                boolean zY2 = gapComposerH.y(navBackStackA);
                Object objX2 = gapComposerH.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new x0(navBackStackA, 0);
                    gapComposerH.q(objX2);
                }
                Function0 function5 = (Function0) objX2;
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new p(2);
                    gapComposerH.q(objX3);
                }
                Function1 function6 = (Function1) objX3;
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new p(3);
                    gapComposerH.q(objX4);
                }
                Function1 function7 = (Function1) objX4;
                Object objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new t(2);
                    gapComposerH.q(objX5);
                }
                Function2 function8 = (Function2) objX5;
                NavBackStack.Companion companion = NavBackStack.INSTANCE;
                gapComposer = gapComposerH;
                NavDisplayKt.c(navBackStackA, null, null, function5, listP, null, null, function6, function7, function8, aVar, gapComposer, 805306368);
            } else {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final int i4 = 0;
                function4 = new Function2(aICompanionViewModel, contributionLinkNavigator, sharedFlow, function0, function1, function3, function2, i2, i4) { // from class: t0

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f79921b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ AICompanionViewModel f79922c;
                    public final /* synthetic */ ContributionLinkNavigator d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ SharedFlow f79923e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ Function0 f79924f;
                    public final /* synthetic */ Function1 g;

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    public final /* synthetic */ Function3 f79925h;

                    /* JADX INFO: renamed from: i, reason: collision with root package name */
                    public final /* synthetic */ Function0 f79926i;

                    {
                        this.f79921b = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        switch (this.f79921b) {
                            case 0:
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(1);
                                AICompanionNavDisplayKt.a(this.f79922c, this.d, this.f79923e, this.f79924f, this.g, this.f79925h, this.f79926i, (Composer) obj, iA);
                                break;
                            default:
                                ((Integer) obj2).getClass();
                                int iA2 = RecomposeScopeImplKt.a(1);
                                AICompanionNavDisplayKt.a(this.f79922c, this.d, this.f79923e, this.f79924f, this.g, this.f79925h, this.f79926i, (Composer) obj, iA2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            }
            recomposeScopeImplB0.d = function4;
        }
        gapComposer = gapComposerH;
        gapComposer.D();
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final int i5 = 1;
            function4 = new Function2(aICompanionViewModel, contributionLinkNavigator, sharedFlow, function0, function1, function3, function2, i2, i5) { // from class: t0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f79921b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ AICompanionViewModel f79922c;
                public final /* synthetic */ ContributionLinkNavigator d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ SharedFlow f79923e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function0 f79924f;
                public final /* synthetic */ Function1 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function3 f79925h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f79926i;

                {
                    this.f79921b = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    switch (this.f79921b) {
                        case 0:
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(1);
                            AICompanionNavDisplayKt.a(this.f79922c, this.d, this.f79923e, this.f79924f, this.g, this.f79925h, this.f79926i, (Composer) obj, iA);
                            break;
                        default:
                            ((Integer) obj2).getClass();
                            int iA2 = RecomposeScopeImplKt.a(1);
                            AICompanionNavDisplayKt.a(this.f79922c, this.d, this.f79923e, this.f79924f, this.g, this.f79925h, this.f79926i, (Composer) obj, iA2);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function4;
        }
    }
}
