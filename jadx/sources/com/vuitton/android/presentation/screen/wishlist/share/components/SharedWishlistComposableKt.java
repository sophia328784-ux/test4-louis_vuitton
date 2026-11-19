package com.vuitton.android.presentation.screen.wishlist.share.components;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import defpackage.ew0;
import defpackage.sq0;
import defpackage.t8;
import defpackage.yj0;
import defpackage.ys0;
import defpackage.zs0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SharedWishlistComposableKt {
    public static final void a(WishlistViewModel wishlistViewModel, String str, Function0 function0, Function2 function2, Function1 function1, Function0 function3, Composer composer, int i2) {
        wishlistViewModel.getClass();
        function0.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-430916282);
        int i3 = i2 | (gapComposerH.K(wishlistViewModel) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(wishlistViewModel.getC(), gapComposerH);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            boolean zY = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new t8(lVModalBottomSheetStateF, 23);
                gapComposerH.q(objX);
            }
            Function0 function4 = (Function0) objX;
            boolean z = (i3 & 896) == 256;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new sq0(function0, 20);
                gapComposerH.q(objX2);
            }
            BackHandlerKt.a(false, (Function0) objX2, gapComposerH, 0, 1);
            boolean z2 = true;
            ScaffoldKt.a(null, ComposableLambdaKt.b(409202186, new ys0(function0, function4, function1, mutableStateB), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-877594155, new yj0(str, function2, mutableStateB, 9), gapComposerH), gapComposerH, 805306416, 509);
            gapComposerH = gapComposerH;
            ContactUsUiModel contactUsUiModel = ((WishlistViewState) mutableStateB.getF10755b()).f65764j;
            boolean z3 = (i3 & 14) == 4;
            if ((458752 & i3) != 131072) {
                z2 = false;
            }
            boolean z4 = z3 | z2;
            Object objX3 = gapComposerH.x();
            if (z4 || objX3 == composer$Companion$Empty$1) {
                objX3 = new ew0(wishlistViewModel, function3, 0);
                gapComposerH.q(objX3);
            }
            int i4 = LVModalBottomSheetState.f48797e;
            ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function1, (Function0) objX3, gapComposerH, (i4 << 6) | (i4 << 3) | ((i3 >> 3) & 7168));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(wishlistViewModel, str, function0, function2, function1, function3, i2);
        }
    }
}
