package defpackage;

import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.b;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeDataUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeSectionUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nh implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f76524c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76526f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76527h;

    public /* synthetic */ nh(boolean z, StoreModeViewState storeModeViewState, Modifier modifier, Function0 function0, Function0 function1, Function1 function2) {
        this.f76523b = 1;
        this.f76524c = z;
        this.d = storeModeViewState;
        this.f76525e = modifier;
        this.f76526f = function0;
        this.g = function1;
        this.f76527h = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        final SnapshotStateList snapshotStateList;
        int i2 = this.f76523b;
        boolean z = this.f76524c;
        int i3 = 3;
        Object obj2 = this.f76527h;
        Object obj3 = this.g;
        Object obj4 = this.f76526f;
        Object obj5 = this.f76525e;
        Object obj6 = this.d;
        int i4 = 1;
        switch (i2) {
            case 0:
                SheetState sheetState = (SheetState) obj6;
                String str = (String) obj5;
                String str2 = (String) obj4;
                String str3 = (String) obj3;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                if (sheetState.f7211e.e().getSize() > 1 && z) {
                    SheetValue sheetValueC = sheetState.c();
                    SheetValue sheetValue = SheetValue.PartiallyExpanded;
                    AnchoredDraggableState anchoredDraggableState = sheetState.f7211e;
                    if (sheetValueC == sheetValue) {
                        if (((Boolean) anchoredDraggableState.d.invoke(SheetValue.Expanded)).booleanValue()) {
                            b bVar = new b(coroutineScope, sheetState, i4);
                            KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                            semanticsPropertyReceiver.a(SemanticsActions.t, new AccessibilityAction(str, bVar));
                        }
                    } else if (((Boolean) anchoredDraggableState.d.invoke(sheetValue)).booleanValue()) {
                        b bVar2 = new b(coroutineScope, sheetState, 2);
                        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.f10359a;
                        semanticsPropertyReceiver.a(SemanticsActions.u, new AccessibilityAction(str2, bVar2));
                    }
                    if (!sheetState.f7210c) {
                        b bVar3 = new b(coroutineScope, sheetState, i3);
                        KProperty[] kPropertyArr3 = SemanticsPropertiesKt.f10359a;
                        semanticsPropertyReceiver.a(SemanticsActions.v, new AccessibilityAction(str3, bVar3));
                    }
                }
                break;
            case 1:
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj6;
                Modifier modifier = (Modifier) obj5;
                Function0 function0 = (Function0) obj3;
                Function1 function1 = (Function1) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                float f2 = CatalogStoreModeKt.f64850a;
                lazyListScope.getClass();
                ComposableSingletons$CatalogStoreModeKt.f64862a.getClass();
                lazyListScope.a(ComposableSingletons$CatalogStoreModeKt.f64864c);
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1699512317, true, new f1(modifier, (Function0) obj4, 16)), 3);
                if (z) {
                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(413918558, true, new g1(8, modifier, storeModeViewState, function0)), 3);
                }
                Iterator it = storeModeViewState.f65081a.f65080e.iterator();
                while (it.hasNext()) {
                    StoreModeDataUiModel storeModeDataUiModel = ((StoreModeSectionUiModel) it.next()).f65057c;
                    if (storeModeDataUiModel != null) {
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(735188790, true, new g1(storeModeDataUiModel, modifier, function1, 9)), 3);
                    }
                }
                if (!z) {
                    ComposableSingletons$CatalogStoreModeKt.f64862a.getClass();
                    LazyListScope.f(lazyListScope, null, ComposableSingletons$CatalogStoreModeKt.d, 3);
                }
                break;
            default:
                final WishlistViewState wishlistViewState = (WishlistViewState) obj6;
                final Function2 function2 = (Function2) obj5;
                final Function1 function3 = (Function1) obj4;
                final Function1 function4 = (Function1) obj3;
                final Function1 function5 = (Function1) obj2;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(-921487394, true, new xe0(wishlistViewState, 22)), 3);
                WishlistUiModel wishlistUiModel = wishlistViewState.d;
                if (wishlistUiModel != null && (snapshotStateList = wishlistUiModel.f65755a) != null) {
                    final o51 o51Var = new o51(18);
                    final WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$1 wishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$1
                        @Override // kotlin.jvm.functions.Function1
                        public final /* bridge */ /* synthetic */ Object invoke(Object obj7) {
                            return null;
                        }
                    };
                    int size = snapshotStateList.size();
                    Function1<Integer, Object> function6 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj7) {
                            return o51Var.invoke(snapshotStateList.get(((Number) obj7).intValue()));
                        }
                    };
                    Function1<Integer, Object> function7 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj7) {
                            return wishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$1.invoke(snapshotStateList.get(((Number) obj7).intValue()));
                        }
                    };
                    final boolean z2 = this.f76524c;
                    lazyListScope2.h(size, function6, function7, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj7, Object obj8, Object obj9, Object obj10) {
                            int i5;
                            LazyItemScope lazyItemScope = (LazyItemScope) obj7;
                            int iIntValue = ((Number) obj8).intValue();
                            Composer composer = (Composer) obj9;
                            int iIntValue2 = ((Number) obj10).intValue();
                            if ((iIntValue2 & 6) == 0) {
                                i5 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                            } else {
                                i5 = iIntValue2;
                            }
                            if ((iIntValue2 & 48) == 0) {
                                i5 |= composer.d(iIntValue) ? 32 : 16;
                            }
                            boolean zC = false;
                            if (composer.p(i5 & 1, (i5 & 147) != 146)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                final WishlistItemUiModel wishlistItemUiModel = (WishlistItemUiModel) snapshotStateList.get(iIntValue);
                                composer.L(1606537173);
                                boolean z3 = !z2;
                                String str4 = wishlistItemUiModel.f65739a;
                                String str5 = wishlistViewState.f65760e;
                                if (str5 != null) {
                                    WishlistIdUiModel.Companion companion = WishlistIdUiModel.f65737c;
                                    zC = Intrinsics.c(str4, str5);
                                }
                                boolean z4 = zC;
                                final Function2 function8 = function2;
                                boolean zK = composer.K(function8) | composer.K(wishlistItemUiModel);
                                Object objX = composer.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zK || objX == composer$Companion$Empty$1) {
                                    objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$1$1
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            WishlistItemUiModel wishlistItemUiModel2 = wishlistItemUiModel;
                                            function8.invoke(new WishlistIdUiModel(wishlistItemUiModel2.f65739a), new SkuIdUiModel(wishlistItemUiModel2.f65740b));
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX);
                                }
                                Function0 function9 = (Function0) objX;
                                final Function1 function10 = function3;
                                boolean zK2 = composer.K(function10) | composer.K(wishlistItemUiModel);
                                Object objX2 = composer.x();
                                if (zK2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$2$1
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            function10.invoke(new WishlistIdUiModel(wishlistItemUiModel.f65739a));
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX2);
                                }
                                WishlistProductItemKt.a(null, wishlistItemUiModel, z3, z4, function9, (Function0) objX2, function4, function5, composer, 0, 1);
                                composer.F();
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                }
                ComposableSingletons$WishlistScreenKt.f65688a.getClass();
                LazyListScope.f(lazyListScope2, null, ComposableSingletons$WishlistScreenKt.f65689b, 3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ nh(int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, boolean z) {
        this.f76523b = i2;
        this.d = obj;
        this.f76524c = z;
        this.f76525e = obj2;
        this.f76526f = obj3;
        this.g = obj4;
        this.f76527h = obj5;
    }
}
