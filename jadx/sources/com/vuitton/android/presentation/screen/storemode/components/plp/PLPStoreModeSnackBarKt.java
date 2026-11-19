package com.vuitton.android.presentation.screen.storemode.components.plp;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import defpackage.b3;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;", "previousContent", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPStoreModeSnackBarKt {
    public static final void a(SnackbarHostState snackbarHostState, LazyPagingItems lazyPagingItems, StoreModeContentUiModel storeModeContentUiModel, Flow flow, Function0 function0, Composer composer, int i2) {
        int i3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        StoreModeContentUiModel storeModeContentUiModel2;
        boolean z;
        Object pLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1;
        snackbarHostState.getClass();
        lazyPagingItems.getClass();
        storeModeContentUiModel.getClass();
        flow.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1907308135);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(lazyPagingItems) : gapComposerH.y(lazyPagingItems) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(storeModeContentUiModel.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(flow) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = new LinkedHashMap();
                gapComposerH.q(objX);
            }
            Map map = (Map) objX;
            if (!(lazyPagingItems.d().f18564c instanceof LoadState.Error) || lazyPagingItems.b() <= 0 || Intrinsics.c(map.get(storeModeContentUiModel), Boolean.TRUE)) {
                context = context;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                map = map;
                storeModeContentUiModel2 = storeModeContentUiModel;
                z = false;
                gapComposerH.L(1802254569);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1801683735);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.error_generic);
                Unit unit = Unit.f71739a;
                boolean zY = gapComposerH.y(map) | ((i4 & 896) == 256) | ((i4 & 14) == 4) | gapComposerH.K(strC);
                Object objX2 = gapComposerH.x();
                if (zY || objX2 == composer$Companion$Empty$2) {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    pLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1 = new PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1(map, storeModeContentUiModel, snackbarHostState, strC, null);
                    storeModeContentUiModel2 = storeModeContentUiModel;
                    gapComposerH.q(pLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1);
                } else {
                    storeModeContentUiModel2 = storeModeContentUiModel;
                    pLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1 = objX2;
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                }
                EffectsKt.e(gapComposerH, unit, (Function2) pLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1);
                z = false;
                gapComposerH.Z(false);
            }
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(null);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            if (((StoreModeContentUiModel) mutableState.getF10755b()) != storeModeContentUiModel2 && Intrinsics.c(map.get((StoreModeContentUiModel) mutableState.getF10755b()), Boolean.FALSE)) {
                StoreModeContentUiModel storeModeContentUiModel3 = (StoreModeContentUiModel) mutableState.getF10755b();
                storeModeContentUiModel3.getClass();
                map.put(storeModeContentUiModel3, Boolean.TRUE);
            }
            Unit unit2 = Unit.f71739a;
            boolean zY2 = gapComposerH.y(flow) | gapComposerH.y(context) | ((i4 & 14) == 4 ? true : z);
            if ((57344 & i4) == 16384) {
                z = true;
            }
            boolean z2 = z | zY2;
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1 pLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1 = new PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1(flow, context, snackbarHostState, function0, null);
                gapComposerH.q(pLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1);
                objX4 = pLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1;
            }
            EffectsKt.e(gapComposerH, unit2, (Function2) objX4);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3((Object) snackbarHostState, (Object) lazyPagingItems, (Object) storeModeContentUiModel, (Object) flow, function0, i2, 16);
        }
    }
}
