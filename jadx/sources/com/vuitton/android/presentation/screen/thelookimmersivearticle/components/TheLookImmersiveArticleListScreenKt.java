package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import defpackage.r31;
import defpackage.yj0;
import defpackage.ys0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TheLookImmersiveArticleListScreenKt {
    public static final void a(TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, Function0 function0, Function2 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        theLookImmersiveArticleViewState.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1328014971);
        int i3 = i2 | (gapComposerH.y(theLookImmersiveArticleViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list = theLookImmersiveArticleViewState.f65395e;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                List list2 = ((ImmersiveArticleLookCardUiModel) obj).f58685f;
                if (list2 != null) {
                    List list3 = list2;
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator it = list3.iterator();
                        while (it.hasNext()) {
                            if (((AssetUiModel) it.next()).f51780b != null) {
                                arrayList.add(obj);
                                break;
                            }
                        }
                    }
                }
            }
            int size = arrayList.size();
            String strA = StringResources_androidKt.a(R.plurals.look_detail_title, size, new Object[]{Integer.valueOf(size)}, gapComposerH);
            ImmersiveArticleLookCardUiModel immersiveArticleLookCardUiModel = (ImmersiveArticleLookCardUiModel) CollectionsKt.firstOrNull(arrayList);
            String str = immersiveArticleLookCardUiModel != null ? immersiveArticleLookCardUiModel.f58683c : null;
            if (str == null) {
                str = "";
            }
            TopAppBarScrollBehavior topAppBarScrollBehaviorA = TopAppBarDefaults.a(gapComposerH);
            gapComposer = gapComposerH;
            ScaffoldKt.a(NestedScrollModifierKt.a(new DTFunctionNameModifier("TheLookImmersiveArticleListScreen"), topAppBarScrollBehaviorA.getF6907e(), null), ComposableLambdaKt.b(1643943223, new ys0(strA, str, function0, topAppBarScrollBehaviorA, 6), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(776149516, new yj0(arrayList, theLookImmersiveArticleViewState, function2, 14), gapComposerH), gapComposer, 805306416, NSType.AXFR);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r31(theLookImmersiveArticleViewState, function0, function2, i2, 3);
        }
    }
}
