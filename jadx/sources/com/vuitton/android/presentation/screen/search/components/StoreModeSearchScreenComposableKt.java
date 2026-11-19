package com.vuitton.android.presentation.screen.search.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.vuitton.android.presentation.compose.KeyboardState;
import com.vuitton.android.presentation.compose.KeyboardStateKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.SearchScreenViewState;
import defpackage.cu;
import defpackage.kj0;
import defpackage.og;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\n²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\t\u001a\u00020\b8\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;", "viewState", "", "query", "Lcom/vuitton/android/presentation/compose/KeyboardState;", "keyboardState", "", "keyboardCloseCounter", "", "isSearching", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeSearchScreenComposableKt {
    public static final void a(Modifier modifier, SearchViewModel searchViewModel, String str, boolean z, String str2, Function1 function1, Function1 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "StoreModeSearchScreenComposable");
        }
        Modifier modifier2 = modifierE;
        searchViewModel.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-17583432);
        int i3 = i2 | (gapComposerH.K(searchViewModel) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.K(str2) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(searchViewModel.getZ(), gapComposerH);
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new FocusRequester();
                gapComposerH.q(objX);
            }
            FocusRequester focusRequester = (FocusRequester) objX;
            Unit unit = Unit.f71739a;
            boolean z2 = ((i3 & 896) == 256) | ((i3 & 112) == 32);
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new StoreModeSearchScreenComposableKt$StoreModeSearchScreenComposable$1$1(searchViewModel, str, focusRequester, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(str2 == null ? ((SearchScreenViewState) mutableStateB.getF10755b()).g : str2);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            MutableState mutableStateA = KeyboardStateKt.a(gapComposerH);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(0);
                gapComposerH.q(objX4);
            }
            MutableState mutableState2 = (MutableState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX5);
            }
            MutableState mutableState3 = (MutableState) objX5;
            KeyboardState keyboardState = (KeyboardState) mutableStateA.getF10755b();
            boolean zK = ((i3 & 3670016) == 1048576) | gapComposerH.K(mutableStateA);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$1) {
                StoreModeSearchScreenComposableKt$StoreModeSearchScreenComposable$2$1 storeModeSearchScreenComposableKt$StoreModeSearchScreenComposable$2$1 = new StoreModeSearchScreenComposableKt$StoreModeSearchScreenComposable$2$1(function2, mutableStateA, mutableState2, mutableState3, mutableState, null);
                gapComposerH.q(storeModeSearchScreenComposableKt$StoreModeSearchScreenComposable$2$1);
                objX6 = storeModeSearchScreenComposableKt$StoreModeSearchScreenComposable$2$1;
            }
            EffectsKt.e(gapComposerH, keyboardState, (Function2) objX6);
            Color.f8866b.getClass();
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, null, ComposableLambdaKt.b(863110013, new kj0(focusRequester, function1, focusManager, mutableState, mutableState3), gapComposerH), null, null, 0, Color.f8870h, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1620176967, new cu(modifier2, z, focusManager, 3), gapComposerH), gapComposer, 806879616, 187);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og(modifier2, searchViewModel, str, z, str2, function1, function2, i2, 3);
        }
    }
}
