package defpackage;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.ComposableSingletons$AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyComposableKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRole;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f349b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f350c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f352f;
    public final /* synthetic */ Function g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f353h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function f354i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function f355j;

    public /* synthetic */ a0(PrivacyViewModelImpl privacyViewModelImpl, boolean z, LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, NavHostController navHostController, Function0 function1, Function0 function2, Function1 function3) {
        this.f351e = privacyViewModelImpl;
        this.f350c = z;
        this.f352f = lVModalBottomSheetState;
        this.g = function0;
        this.f353h = navHostController;
        this.f354i = function1;
        this.f355j = function2;
        this.d = function3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f349b;
        Function function = this.f355j;
        Function function2 = this.f354i;
        Object obj2 = this.f353h;
        Function function3 = this.g;
        Object obj3 = this.f352f;
        Object obj4 = this.f351e;
        switch (i2) {
            case 0:
                final List list = (List) obj4;
                final Function1 function1 = (Function1) obj3;
                final Function1 function4 = (Function1) function3;
                final Function2 function5 = (Function2) function;
                final Function1 function6 = (Function1) obj2;
                final Function1 function7 = (Function1) function2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$AICompanionChatMessagesKt.f52817a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AICompanionChatMessagesKt.f52818b, 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AICompanionChatMessagesKt.f52819c, 3);
                final t tVar = new t(0);
                int size = list.size();
                Function1<Integer, Object> function8 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        int iIntValue = ((Number) obj5).intValue();
                        return tVar.invoke(Integer.valueOf(iIntValue), list.get(iIntValue));
                    }
                };
                Function1<Integer, Object> function9 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        list.get(((Number) obj5).intValue());
                        return null;
                    }
                };
                final Function1 function10 = this.d;
                lazyListScope.h(size, function8, function9, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                        int iIntValue = ((Number) obj6).intValue();
                        Composer composer = (Composer) obj7;
                        int iIntValue2 = ((Number) obj8).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            ChatMessageUiModel chatMessageUiModel = (ChatMessageUiModel) list.get(iIntValue);
                            composer.L(996365415);
                            if (chatMessageUiModel.f52904b == ChatRole.USER) {
                                composer.L(996388447);
                                AICompanionChatMessagesKt.e(chatMessageUiModel, function10, function1, composer, 0);
                                composer.F();
                            } else {
                                composer.L(996603742);
                                AICompanionChatMessagesKt.c(chatMessageUiModel, function4, function5, function6, function7, composer, 0);
                                composer.F();
                            }
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                if (this.f350c) {
                    LazyListScope.f(lazyListScope, null, ComposableSingletons$AICompanionChatMessagesKt.d, 3);
                }
                break;
            default:
                final PrivacyViewModelImpl privacyViewModelImpl = (PrivacyViewModelImpl) obj4;
                final LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj3;
                final Function0 function0 = (Function0) function3;
                final NavHostController navHostController = (NavHostController) obj2;
                final Function0 function11 = (Function0) function2;
                final Function0 function12 = (Function0) function;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                yn0 yn0Var = new yn0(6);
                yn0 yn0Var2 = new yn0(7);
                yn0 yn0Var3 = new yn0(8);
                yn0 yn0Var4 = new yn0(9);
                final boolean z = this.f350c;
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1271272832, true, new Function4() { // from class: op0
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        Composer composer = (Composer) obj7;
                        a.x((Integer) obj8, (AnimatedContentScope) obj5, (NavBackStackEntry) obj6);
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        NavHostController navHostController2 = navHostController;
                        boolean zY = composer.y(navHostController2);
                        Function0 function13 = function11;
                        boolean zK = zY | composer.K(function13);
                        Object objX = composer.x();
                        if (zK || objX == Composer.Companion.f7939a) {
                            objX = new np0(navHostController2, function13, 0);
                            composer.q(objX);
                        }
                        int i3 = (LVModalBottomSheetState.f48797e << 9) | 48;
                        PrivacyComposableKt.a(privacyViewModelImpl, true, z, lVModalBottomSheetState, function0, (Function0) objX, function12, composer, i3);
                        return Unit.f71739a;
                    }
                });
                Map mapC = MapsKt.c();
                EmptyList emptyList = EmptyList.f71768b;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(PrivacyRoutes.Privacy.class), mapC, emptyList, yn0Var, yn0Var2, yn0Var3, yn0Var4, composableLambdaImpl);
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-1284960727, true, new j50(privacyViewModelImpl, z, navHostController, function11, function0, function12, 1));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(PrivacyRoutes.PrivacyPreCompliance.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(-278279480, true, new w4(privacyViewModelImpl, navHostController, function11, this.d));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(PrivacyRoutes.PrivacyPiplCbdt.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ a0(List list, boolean z, Function1 function1, Function1 function2, Function1 function3, Function2 function4, Function1 function5, Function1 function6) {
        this.f351e = list;
        this.f350c = z;
        this.d = function1;
        this.f352f = function2;
        this.g = function3;
        this.f355j = function4;
        this.f353h = function5;
        this.f354i = function6;
    }
}
