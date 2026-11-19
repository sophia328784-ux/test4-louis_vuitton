package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.common.editorial.models.SlideShowItemUiModel;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.components.TopBarAvatarKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuPagerKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kz0 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75903b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f75904c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f75905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f75906f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f75907h;

    public /* synthetic */ kz0(List list, Function1 function1, Context context, PagerState pagerState, boolean z, boolean z2) {
        this.d = list;
        this.f75906f = function1;
        this.g = context;
        this.f75907h = pagerState;
        this.f75904c = z;
        this.f75905e = z2;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x041a  */
    /* JADX WARN: Code duplicated, block: B:114:0x046e  */
    /* JADX WARN: Code duplicated, block: B:116:0x0477  */
    /* JADX WARN: Code duplicated, block: B:117:0x047b  */
    /* JADX WARN: Code duplicated, block: B:120:0x048d  */
    /* JADX WARN: Code duplicated, block: B:121:0x0497  */
    /* JADX WARN: Code duplicated, block: B:123:0x04e3  */
    /* JADX WARN: Code duplicated, block: B:124:0x04ed  */
    /* JADX WARN: Code duplicated, block: B:133:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:137:0x05bd  */
    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        LvExoPlayer lvExoPlayer;
        AssetUiModel assetUiModel;
        LvExoPlayer lvExoPlayer2;
        String str;
        Composer composer;
        AssetImageUiModel assetImageUiModel;
        BoxScopeInstance boxScopeInstance;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapN;
        Modifier modifierC;
        String str2;
        Composer composer2;
        int i2 = this.f75903b;
        Function1 function1 = this.f75906f;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.f75907h;
        Object obj6 = this.g;
        Object obj7 = this.d;
        boolean z = this.f75904c;
        switch (i2) {
            case 0:
                Context context = (Context) obj6;
                PagerState pagerState = (PagerState) obj5;
                int iIntValue = ((Integer) obj2).intValue();
                Composer composer3 = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                SlideShowItemUiModel slideShowItemUiModel = (SlideShowItemUiModel) CollectionsKt.G(iIntValue, (List) obj7);
                if (slideShowItemUiModel == null) {
                    composer3.L(-701002122);
                    composer3.F();
                } else {
                    String str3 = slideShowItemUiModel.f50875c;
                    String str4 = slideShowItemUiModel.f50874b;
                    AssetUiModel assetUiModel2 = slideShowItemUiModel.f50876e;
                    DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-701002121, composer3, "SlideShowCard$lambda$0$1$0");
                    Object objX = composer3.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new av0(23);
                        composer3.q(objX);
                    }
                    Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifierJ, false, (Function1) objX);
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierO = modifierB.o(fillElement);
                    boolean zK = composer3.K(function1) | composer3.y(slideShowItemUiModel);
                    Object objX2 = composer3.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new jm0(function1, slideShowItemUiModel, 24);
                        composer3.q(objX2);
                    }
                    Modifier modifierB2 = ClipKt.b(ModifierExtKt.c(modifierO, false, null, null, (Function0) objX2, 31));
                    Alignment.f8582a.getClass();
                    BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                    String str5 = str4;
                    MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierB2);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function0);
                    } else {
                        composer3.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer3, measurePolicyD, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer3, persistentCompositionLocalMapN2, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode2);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer3, numValueOf, function4);
                    Function1 function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer3, function5);
                    Function2 function6 = ComposeUiNode.Companion.d;
                    Updater.c(composer3, modifierC2, function6);
                    if ((assetUiModel2 != null ? assetUiModel2.f51781c : null) == null) {
                        composer3.L(-1045033570);
                        composer3.F();
                        lvExoPlayer = null;
                    } else {
                        composer3.L(-1045033569);
                        Object objX3 = composer3.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new LvExoPlayer(context);
                            composer3.q(objX3);
                        }
                        composer3.F();
                        lvExoPlayer = (LvExoPlayer) objX3;
                    }
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SlideShowCard$lambda$0$1$0");
                    boolean zY = composer3.y(slideShowItemUiModel) | composer3.y(context) | ((((iIntValue2 & 112) ^ 48) > 32 && composer3.d(iIntValue)) || (iIntValue2 & 48) == 32) | composer3.K(pagerState);
                    Object objX4 = composer3.x();
                    if (zY || objX4 == composer$Companion$Empty$1) {
                        objX4 = new af(slideShowItemUiModel, context, iIntValue, pagerState);
                        composer3.q(objX4);
                    }
                    Modifier modifierB3 = com.vuitton.android.designkit.components.ModifierExtKt.b(com.vuitton.android.designkit.components.ModifierExtKt.b(SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX4).o(fillElement), !z, new zt0(19), composer3, 0), z, new zt0(20), composer3, 0);
                    MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                    int iHashCode3 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierB3);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function0);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, measurePolicyD2, function2);
                    Function2 function7 = function3;
                    Updater.c(composer3, persistentCompositionLocalMapN3, function7);
                    cj.s(iHashCode3, composer3, function4, composer3, function5);
                    Updater.c(composer3, modifierC3, function6);
                    boolean z2 = this.f75905e;
                    if (assetUiModel2 != null) {
                        assetUiModel = assetUiModel2;
                        AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
                        if (assetVideoUiModel != null && (str2 = assetVideoUiModel.f51783c) != null && StringExtKt.a(str2) && lvExoPlayer != null) {
                            composer3.L(621313058);
                            str = "SlideShowCard$lambda$0$1$0";
                            Modifier modifierA = AspectRatioKt.a(new DTFunctionNameModifier(str), 0.6666667f, false);
                            lvExoPlayer2 = lvExoPlayer;
                            ExoPlayer exoPlayer = lvExoPlayer2.f50900a;
                            String str6 = assetVideoUiModel.f51783c;
                            String str7 = assetVideoUiModel.d;
                            ContentScale.f9447a.getClass();
                            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                            boolean zK2 = composer3.K(function1) | composer3.y(slideShowItemUiModel);
                            Object objX5 = composer3.x();
                            if (zK2 || objX5 == composer$Companion$Empty$1) {
                                objX5 = new rp0(function1, slideShowItemUiModel, 22);
                                composer3.q(objX5);
                            }
                            Function1 function8 = (Function1) objX5;
                            function4 = function4;
                            str5 = str5;
                            function7 = function7;
                            function6 = function6;
                            LvVideoPlayerKt.b(modifierA, exoPlayer, str6, null, null, true, str7, contentScale$Companion$Crop$1, false, false, false, z2, null, false, 4, null, null, null, function8, null, null, composer3, 12779526, 24576, 0, 1816344);
                            z2 = z2;
                            composer = composer3;
                            composer.F();
                        }
                        composer.r();
                        boxScopeInstance = BoxScopeInstance.f4938a;
                        if (str5 == null || str3 != 0) {
                            Modifier modifierM = PaddingKt.m(PaddingKt.m(boxScopeInstance.g(pq0.h(1.0f, -1042577780, composer, str), Alignment.Companion.f8588h), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 0);
                            iHashCode = Long.hashCode(composer.getT());
                            persistentCompositionLocalMapN = composer.n();
                            modifierC = ComposedModifierKt.c(composer, modifierM);
                            if (composer.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer.B();
                            if (composer.getS()) {
                                composer.C(function0);
                            } else {
                                composer.o();
                            }
                            Updater.c(composer, columnMeasurePolicyA, function2);
                            Updater.c(composer, persistentCompositionLocalMapN, function7);
                            cj.s(iHashCode, composer, function4, composer, function5);
                            Updater.c(composer, modifierC, function6);
                            if (str3 == 0) {
                                composer.L(-1546700766);
                                composer.F();
                            } else {
                                Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(pq0.j(-1546700765, composer, str), null, null, 7);
                                long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
                                TextStyle textStyle = LVAppDesignKitTheme.n(composer).l;
                                TextOverflow.f10989a.getClass();
                                Composer composer4 = composer;
                                TextKt.c(str3, modifierA2, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer4, 0, 24960, 110584);
                                composer = composer4;
                                composer.F();
                            }
                            if (str5 == null) {
                                composer.L(-1546042791);
                                composer.F();
                            } else {
                                composer.L(-1546042790);
                                long j3 = LVAppDesignKitTheme.c(composer).f48361b.m;
                                Modifier modifierM2 = PaddingKt.m(com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier(str), null, null, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 5);
                                TextStyle textStyle2 = LVAppDesignKitTheme.n(composer).f48429j;
                                TextOverflow.f10989a.getClass();
                                Composer composer5 = composer;
                                TextKt.c(str5, modifierM2, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle2, composer5, 0, 24960, 110584);
                                composer = composer5;
                                composer.F();
                            }
                            composer.r();
                            composer.F();
                        } else {
                            composer.L(-1040542382);
                            composer.F();
                        }
                        if (z2 || lvExoPlayer2 == null) {
                            composer.L(-1039722990);
                            composer.F();
                        } else {
                            Modifier modifierM3 = PaddingKt.m(boxScopeInstance.g(pq0.j(-1040447584, composer, str), Alignment.Companion.f8590j), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 7);
                            boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer2.f50901b).getF10755b()).booleanValue();
                            boolean zY2 = composer.y(lvExoPlayer2);
                            Object objX6 = composer.x();
                            if (zY2 || objX6 == composer$Companion$Empty$1) {
                                objX6 = new gj(lvExoPlayer2, 14);
                                composer.q(objX6);
                            }
                            LVPlayPauseButtonKt.a(0, composer, modifierM3, (Function0) objX6, zBooleanValue);
                            composer.F();
                        }
                        composer.r();
                        composer.F();
                    } else {
                        assetUiModel = assetUiModel2;
                    }
                    lvExoPlayer2 = lvExoPlayer;
                    str = "SlideShowCard$lambda$0$1$0";
                    composer3.L(622180686);
                    Modifier modifierA3 = AspectRatioKt.a(new DTFunctionNameModifier(str), 0.6666667f, false);
                    String str8 = (assetUiModel == null || (assetImageUiModel = assetUiModel.f51780b) == null) ? null : assetImageUiModel.f51778b;
                    if (str8 == null) {
                        str8 = "";
                    }
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierA3, str8, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer3, 390, 2040);
                    composer = composer3;
                    composer.F();
                    composer.r();
                    boxScopeInstance = BoxScopeInstance.f4938a;
                    if (str5 == null) {
                        Modifier modifierM4 = PaddingKt.m(PaddingKt.m(boxScopeInstance.g(pq0.h(1.0f, -1042577780, composer, str), Alignment.Companion.f8588h), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                        columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 0);
                        iHashCode = Long.hashCode(composer.getT());
                        persistentCompositionLocalMapN = composer.n();
                        modifierC = ComposedModifierKt.c(composer, modifierM4);
                        if (composer.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer.B();
                        if (composer.getS()) {
                            composer.C(function0);
                        } else {
                            composer.o();
                        }
                        Updater.c(composer, columnMeasurePolicyA, function2);
                        Updater.c(composer, persistentCompositionLocalMapN, function7);
                        cj.s(iHashCode, composer, function4, composer, function5);
                        Updater.c(composer, modifierC, function6);
                        if (str3 == 0) {
                            composer.L(-1546700766);
                            composer.F();
                        } else {
                            Modifier modifierA4 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(pq0.j(-1546700765, composer, str), null, null, 7);
                            long j4 = LVAppDesignKitTheme.c(composer).f48361b.m;
                            TextStyle textStyle3 = LVAppDesignKitTheme.n(composer).l;
                            TextOverflow.f10989a.getClass();
                            Composer composer6 = composer;
                            TextKt.c(str3, modifierA4, j4, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle3, composer6, 0, 24960, 110584);
                            composer = composer6;
                            composer.F();
                        }
                        if (str5 == null) {
                            composer.L(-1546042791);
                            composer.F();
                        } else {
                            composer.L(-1546042790);
                            long j5 = LVAppDesignKitTheme.c(composer).f48361b.m;
                            Modifier modifierM5 = PaddingKt.m(com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier(str), null, null, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 5);
                            TextStyle textStyle4 = LVAppDesignKitTheme.n(composer).f48429j;
                            TextOverflow.f10989a.getClass();
                            Composer composer7 = composer;
                            TextKt.c(str5, modifierM5, j5, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle4, composer7, 0, 24960, 110584);
                            composer = composer7;
                            composer.F();
                        }
                        composer.r();
                        composer.F();
                    } else {
                        Modifier modifierM6 = PaddingKt.m(PaddingKt.m(boxScopeInstance.g(pq0.h(1.0f, -1042577780, composer, str), Alignment.Companion.f8588h), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                        columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 0);
                        iHashCode = Long.hashCode(composer.getT());
                        persistentCompositionLocalMapN = composer.n();
                        modifierC = ComposedModifierKt.c(composer, modifierM6);
                        if (composer.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer.B();
                        if (composer.getS()) {
                            composer.C(function0);
                        } else {
                            composer.o();
                        }
                        Updater.c(composer, columnMeasurePolicyA, function2);
                        Updater.c(composer, persistentCompositionLocalMapN, function7);
                        cj.s(iHashCode, composer, function4, composer, function5);
                        Updater.c(composer, modifierC, function6);
                        if (str3 == 0) {
                            composer.L(-1546700766);
                            composer.F();
                        } else {
                            Modifier modifierA5 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(pq0.j(-1546700765, composer, str), null, null, 7);
                            long j6 = LVAppDesignKitTheme.c(composer).f48361b.m;
                            TextStyle textStyle5 = LVAppDesignKitTheme.n(composer).l;
                            TextOverflow.f10989a.getClass();
                            Composer composer8 = composer;
                            TextKt.c(str3, modifierA5, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle5, composer8, 0, 24960, 110584);
                            composer = composer8;
                            composer.F();
                        }
                        if (str5 == null) {
                            composer.L(-1546042791);
                            composer.F();
                        } else {
                            composer.L(-1546042790);
                            long j7 = LVAppDesignKitTheme.c(composer).f48361b.m;
                            Modifier modifierM7 = PaddingKt.m(com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier(str), null, null, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 5);
                            TextStyle textStyle6 = LVAppDesignKitTheme.n(composer).f48429j;
                            TextOverflow.f10989a.getClass();
                            Composer composer9 = composer;
                            TextKt.c(str5, modifierM7, j7, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle6, composer9, 0, 24960, 110584);
                            composer = composer9;
                            composer.F();
                        }
                        composer.r();
                        composer.F();
                    }
                    if (z2) {
                        composer.L(-1039722990);
                        composer.F();
                    } else {
                        composer.L(-1039722990);
                        composer.F();
                    }
                    composer.r();
                    composer.F();
                }
                return Unit.f71739a;
            case 1:
                List list = (List) obj7;
                MutableState mutableState = (MutableState) obj6;
                Function1 function9 = (Function1) obj5;
                int iIntValue3 = ((Integer) obj2).intValue();
                Composer composer10 = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f2 = SpotlightSkuPagerKt.f64617a;
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                boolean z3 = z && iIntValue3 < list.size();
                int i3 = 2;
                EnterTransition enterTransitionF = EnterExitTransitionKt.f(AnimationSpecKt.c(450, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                TweenSpec tweenSpecC = AnimationSpecKt.c(900, 0, null, 6);
                Object objX7 = composer10.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = new ku0(i3, mutableState);
                    composer10.q(objX7);
                }
                EnterTransition enterTransitionB = enterTransitionF.b(EnterExitTransitionKt.o((Function1) objX7, tweenSpecC));
                ExitTransition exitTransitionH = EnterExitTransitionKt.h(AnimationSpecKt.c(450, 0, null, 6), 2);
                TweenSpec tweenSpecC2 = AnimationSpecKt.c(900, 0, null, 6);
                Object objX8 = composer10.x();
                if (objX8 == composer$Companion$Empty$1) {
                    objX8 = new ku0(3, mutableState);
                    composer10.q(objX8);
                }
                AnimatedVisibilityKt.e(z3, null, enterTransitionB, exitTransitionH.b(EnterExitTransitionKt.s((Function1) objX8, tweenSpecC2)), null, ComposableLambdaKt.b(545471597, new yu(list, iIntValue3, this.f75905e, this.f75906f, function9), composer10), composer10, 200064, 18);
                return Unit.f71739a;
            default:
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj7;
                Function0 function10 = (Function0) obj6;
                Function0 function11 = (Function0) obj5;
                Composer composer11 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((TopBarActionScope) obj).getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                if (z || !contactUsUiModel.f51154a) {
                    composer2 = composer11;
                    composer2.L(255136086);
                    composer2.F();
                } else {
                    composer11.L(254868928);
                    boolean zK3 = composer11.K(function1);
                    Object objX9 = composer11.x();
                    if (zK3 || objX9 == composer$Companion$Empty$1) {
                        objX9 = new tf0(function1, 27);
                        composer11.q(objX9);
                    }
                    ContactUsIconKt.a(null, contactUsUiModel, function10, (Function0) objX9, false, null, composer11, 0, 49);
                    composer2 = composer11;
                    composer2.F();
                }
                if (this.f75905e) {
                    composer2.L(255176634);
                    TopBarAvatarKt.a(null, null, function11, composer2, 0, 3);
                    composer2.F();
                } else {
                    composer2.L(255265046);
                    composer2.F();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ kz0(boolean z, ContactUsUiModel contactUsUiModel, Function0 function0, Function1 function1, boolean z2, Function0 function2) {
        this.f75904c = z;
        this.d = contactUsUiModel;
        this.g = function0;
        this.f75906f = function1;
        this.f75905e = z2;
        this.f75907h = function2;
    }

    public /* synthetic */ kz0(boolean z, List list, MutableState mutableState, boolean z2, Function1 function1, Function1 function2) {
        this.f75904c = z;
        this.d = list;
        this.g = mutableState;
        this.f75905e = z2;
        this.f75906f = function1;
        this.f75907h = function2;
    }
}
