package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.presentation.screen.plp.models.plp.ProductListUiModelKt;
import defpackage.cl0;
import defpackage.oi0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0005²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002²\u0006\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;", "afterAuthFeedback", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "snapshotProducts", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPWishlistFeedbackWatcherKt {
    public static final void a(LazyPagingItems lazyPagingItems, Flow flow, Function0 function0, Function1 function1, Composer composer, int i2) {
        int i3;
        flow.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1214698670);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(lazyPagingItems) : gapComposerH.y(lazyPagingItems) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(flow) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        int i4 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(EmptyList.f71768b);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            if ((lazyPagingItems.d().f18562a instanceof LoadState.NotLoading) || ((lazyPagingItems.d().f18564c instanceof LoadState.NotLoading) && lazyPagingItems.b() == 0)) {
                mutableState2.setValue(ProductListUiModelKt.a(lazyPagingItems.c().f18632e));
            }
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean z = ((i3 & 896) == 256) | ((i3 & 7168) == 2048);
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new cl0(function0, mutableState, function1, i4);
                gapComposerH.q(objX3);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX3, gapComposerH, 0);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(flow) | gapComposerH.y(managedActivityResultLauncherA) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1 pLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1 = new PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1(flow, managedActivityResultLauncherA, context, mutableState, mutableState2, null);
                gapComposerH.q(pLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1);
                objX4 = pLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(lazyPagingItems, flow, function0, function1, i2, 5);
        }
    }
}
