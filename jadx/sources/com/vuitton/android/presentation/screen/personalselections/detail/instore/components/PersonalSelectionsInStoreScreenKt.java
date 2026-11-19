package com.vuitton.android.presentation.screen.personalselections.detail.instore.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.paging.compose.LazyPagingItems;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.components.PersonalSelectionsInStoreScreenKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPKt;
import defpackage.ae0;
import defpackage.gi0;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsInStoreScreenKt {
    public static final void a(final ComposableLambdaImpl composableLambdaImpl, final String str, final String str2, final String str3, final String str4, final String str5, final LazyPagingItems lazyPagingItems, final int i2, final SnackbarHostState snackbarHostState, final List list, final boolean z, final Function2 function2, final Function1 function1, final Function1 function3, final Function2 function4, final Function0 function0, final Function0 function5, Composer composer, final int i3, final int i4) {
        int i5;
        Function1 function6;
        Function1 function7;
        GapComposer gapComposer;
        str.getClass();
        str2.getClass();
        str3.getClass();
        str5.getClass();
        lazyPagingItems.getClass();
        snackbarHostState.getClass();
        list.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        function4.getClass();
        function0.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(810137398);
        int i6 = i3 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.K(str4) ? 16384 : 8192) | (gapComposerH.K(str5) ? 131072 : 65536) | (gapComposerH.y(lazyPagingItems) ? 1048576 : 524288) | (gapComposerH.d(i2) ? 8388608 : 4194304) | (gapComposerH.y(list) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if ((i4 & 6) == 0) {
            i5 = i4 | (gapComposerH.b(z) ? 4 : 2);
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            function6 = function1;
            i5 |= gapComposerH.y(function6) ? 256 : 128;
        } else {
            function6 = function1;
        }
        if ((i4 & 3072) == 0) {
            function7 = function3;
            i5 |= gapComposerH.y(function7) ? 2048 : 1024;
        } else {
            function7 = function3;
        }
        if ((i4 & 24576) == 0) {
            i5 |= gapComposerH.y(function4) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i5 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((i4 & 1572864) == 0) {
            i5 |= gapComposerH.y(function5) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i5 & 599187) == 599186) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Function1 function8 = function7;
            final Function1 function9 = function6;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImpl, ComposableLambdaKt.b(605693243, new gi0(function4, str4, str5, 16), gapComposerH), ComposableLambdaKt.b(206980476, new ae0(snackbarHostState, 25), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-574350203, new Function3() { // from class: vn0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierE = o60.e("PersonalSelectionsInStoreScreen$lambda$2", paddingValues);
                        FillElement fillElement = SizeKt.f5052c;
                        Modifier modifierE2 = ModifierExtKt.e(modifierE.o(fillElement), "personalSelectionsDetail_screen_view");
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer2, 48);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierE2);
                        ComposeUiNode.b0.getClass();
                        Function0 function10 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function10);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Modifier modifierE3 = ModifierExtKt.e(PaddingKt.k(PaddingKt.m(a.f(composer2, modifierC, ComposeUiNode.Companion.d, "PersonalSelectionsInStoreScreen$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "personalSelectionsDetail_date_text");
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer2).p;
                        long j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                        String upperCase = str.toUpperCase(Locale.ROOT);
                        upperCase.getClass();
                        TextKt.c(upperCase, modifierE3, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, composer2, 0, 0, 131064);
                        Modifier modifierE4 = ModifierExtKt.e(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("PersonalSelectionsInStoreScreen$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, 5), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "personalSelectionsDetail_title_text");
                        TextStyle textStyle2 = LVAppDesignKitTheme.n(composer2).f48426f;
                        long j3 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                        TextAlign.f10959b.getClass();
                        int i7 = TextAlign.f10961e;
                        TextKt.c(str2, modifierE4, j3, 0L, null, 0L, null, new TextAlign(i7), 0L, 0, false, 0, 0, null, textStyle2, composer2, 0, 0, 130040);
                        Composer composer3 = composer2;
                        String str6 = str3;
                        if (str6.length() > 0) {
                            TextKt.c(str6, ModifierExtKt.e(PaddingKt.k(PaddingKt.m(pq0.j(2112809876, composer3, "PersonalSelectionsInStoreScreen$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, 7), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "personalSelectionsDetail_description_text"), LVAppDesignKitTheme.c(composer3).f48361b.l, 0L, null, 0L, null, new TextAlign(i7), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48427h, composer3, 0, 0, 130040);
                            composer3 = composer3;
                            composer3.F();
                        } else {
                            composer3.L(2113407091);
                            composer3.F();
                        }
                        Modifier modifierE5 = ModifierExtKt.e(new DTFunctionNameModifier("PersonalSelectionsInStoreScreen$lambda$2").o(fillElement), "personalSelectionsDetail_plp_view");
                        GridModes.Full full = GridModes.Full.f55430b;
                        Integer numValueOf = Integer.valueOf(i2);
                        List list2 = list;
                        boolean zY = composer3.y(list2);
                        boolean z2 = z;
                        boolean zB = zY | composer3.b(z2);
                        Function0 function11 = function0;
                        boolean zK = zB | composer3.K(function11);
                        Function0 function12 = function5;
                        boolean zK2 = zK | composer3.K(function12);
                        Object objX = composer3.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zK2 || objX == composer$Companion$Empty$1) {
                            objX = new s0(list2, z2, function11, function12, 11);
                            composer3.q(objX);
                        }
                        Function1 function13 = (Function1) objX;
                        Object objX2 = composer3.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new yk0(27);
                            composer3.q(objX2);
                        }
                        Composer composer4 = composer3;
                        PLPKt.a(modifierE5, full, Call.Parameters.DEFAULT_CAMERA_ZOOM, numValueOf, false, false, false, lazyPagingItems, null, null, null, null, function13, null, (Function1) objX2, function9, function8, null, function2, null, null, null, composer4, 18350128, 24576, 0, 3813172);
                        composer4.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805309872, 497);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(str, str2, str3, str4, str5, lazyPagingItems, i2, snackbarHostState, list, z, function2, function1, function3, function4, function0, function5, i3, i4) { // from class: wn0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ String f80903c;
                public final /* synthetic */ String d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f80904e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ String f80905f;
                public final /* synthetic */ String g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ LazyPagingItems f80906h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ int f80907i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ SnackbarHostState f80908j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ List f80909k;
                public final /* synthetic */ boolean l;
                public final /* synthetic */ Function2 m;
                public final /* synthetic */ Function1 n;
                public final /* synthetic */ Function1 o;
                public final /* synthetic */ Function2 p;
                public final /* synthetic */ Function0 q;
                public final /* synthetic */ Function0 r;
                public final /* synthetic */ int s;

                {
                    this.s = i4;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(102760455);
                    int iA2 = RecomposeScopeImplKt.a(this.s);
                    PersonalSelectionsInStoreScreenKt.a(this.f80902b, this.f80903c, this.d, this.f80904e, this.f80905f, this.g, this.f80906h, this.f80907i, this.f80908j, this.f80909k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
