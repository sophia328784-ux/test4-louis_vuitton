package defpackage;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Xml;
import android.widget.FrameLayout;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.PlayerView;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkerStoppedException;
import androidx.work.impl.WorkerWrapper;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupIndicator;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipSize;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatHistoryUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.storemode.filters.model.ResetFilterTag;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import com.vuitton.android.presentation.utils.NotificationUtils;
import java.io.IOException;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79663c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79665f;

    public /* synthetic */ s0(List list, CategoryOptionUiModel categoryOptionUiModel, boolean z, Function1 function1) {
        this.f79662b = 9;
        this.f79664e = list;
        this.f79665f = categoryOptionUiModel;
        this.f79663c = z;
        this.d = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v24, types: [androidx.media3.common.Player$Listener, com.vuitton.android.presentation.compose.LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1] */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v5 */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws XmlPullParserException, IOException {
        int i2 = this.f79662b;
        final String quantityString = 0;
        quantityString = 0;
        int i3 = 1;
        final boolean z = this.f79663c;
        Object obj2 = this.f79665f;
        Object obj3 = this.f79664e;
        Object obj4 = this.d;
        switch (i2) {
            case 0:
                Function1 function1 = (Function1) obj4;
                ChatHistoryUiModel chatHistoryUiModel = (ChatHistoryUiModel) obj3;
                MutableState mutableState = (MutableState) obj2;
                if (z) {
                    mutableState.setValue(null);
                } else {
                    function1.invoke(chatHistoryUiModel.f52899a);
                }
                return Unit.f71739a;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(1, ((List) obj2).size() + ((List) obj3).size() + ((List) obj4).size() + (!z ? 1 : 0)));
                return Unit.f71739a;
            case 2:
                ImageBitmap imageBitmap = (ImageBitmap) obj3;
                BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj2;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.R1();
                if (!((Boolean) ((Function0) obj4).mo47invoke()).booleanValue()) {
                    return Unit.f71739a;
                }
                if (z) {
                    long jG1 = contentDrawScope.G1();
                    CanvasDrawScope$drawContext$1 f8996c = contentDrawScope.getF8996c();
                    long jD = f8996c.d();
                    f8996c.a().p();
                    try {
                        f8996c.f9001a.f(-1.0f, 1.0f, jG1);
                        DrawScope.Y(contentDrawScope, imageBitmap, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, blendModeColorFilter, 0, 46);
                    } finally {
                        pq0.y(f8996c, jD);
                    }
                } else {
                    DrawScope.Y(contentDrawScope, imageBitmap, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, blendModeColorFilter, 0, 46);
                }
                return Unit.f71739a;
            case 3:
                MutableFloatState mutableFloatState = (MutableFloatState) obj4;
                MutableFloatState mutableFloatState2 = (MutableFloatState) obj3;
                MutableFloatState mutableFloatState3 = (MutableFloatState) obj2;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                layoutCoordinates.getClass();
                if (!z) {
                    mutableFloatState.w(Float.intBitsToFloat((int) (LayoutCoordinatesKt.d(layoutCoordinates) & BodyPartID.bodyIdMax)));
                    mutableFloatState2.w((int) (layoutCoordinates.a() & BodyPartID.bodyIdMax));
                    mutableFloatState3.w(Float.intBitsToFloat((int) (LayoutCoordinatesKt.d(layoutCoordinates) & BodyPartID.bodyIdMax)) + ((int) (layoutCoordinates.a() & BodyPartID.bodyIdMax)));
                }
                return Unit.f71739a;
            case 4:
                Function0 function0 = (Function0) obj4;
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj3;
                Context context = (Context) obj2;
                if (((Boolean) obj).booleanValue()) {
                    function0.mo47invoke();
                } else if (z) {
                    permissionsViewModel.Y6();
                    NotificationUtils.b(context);
                }
                return Unit.f71739a;
            case 5:
                final ExoPlayer exoPlayer = (ExoPlayer) obj4;
                final Function0 function2 = (Function0) obj3;
                final MutableState mutableState2 = (MutableState) obj2;
                ((DisposableEffectScope) obj).getClass();
                final ?? r13 = new Player.Listener() { // from class: com.vuitton.android.presentation.compose.LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1
                    @Override // androidx.media3.common.Player.Listener
                    public final void K(int i4) {
                        Function0 function3;
                        if (i4 == 3) {
                            MutableState mutableState3 = mutableState2;
                            if (!((Boolean) mutableState3.getF10755b()).booleanValue()) {
                                mutableState3.setValue(Boolean.TRUE);
                                return;
                            }
                        }
                        if (i4 != 4 || (function3 = function2) == null) {
                            return;
                        }
                        function3.mo47invoke();
                    }
                };
                exoPlayer.Y(r13);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.compose.LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1 lvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1 = r13;
                        ExoPlayer exoPlayer2 = exoPlayer;
                        exoPlayer2.V(lvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1);
                        if (z) {
                            exoPlayer2.release();
                            Function0 function3 = quantityString;
                            if (function3 != null) {
                                function3.mo47invoke();
                            }
                        }
                    }
                };
            case 6:
                Context context2 = (Context) obj4;
                MutableState mutableState3 = (MutableState) obj2;
                ExoPlayer exoPlayer2 = (ExoPlayer) obj3;
                Context context3 = (Context) obj;
                context3.getClass();
                if (z) {
                    XmlResourceParser xml = context2.getResources().getXml(R.xml.styled_player_view_custom);
                    xml.getClass();
                    for (int next = 0; next != 1 && next != 2; next = xml.next()) {
                    }
                    mutableState3.setValue(Xml.asAttributeSet(xml));
                }
                PlayerView playerView = new PlayerView(context3, (AttributeSet) mutableState3.getF10755b());
                playerView.setPlayer(exoPlayer2);
                playerView.setUseController(false);
                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                playerView.setResizeMode(4);
                playerView.setShutterBackgroundColor(Color.parseColor("#000000"));
                return playerView;
            case 7:
                Density density = (Density) obj4;
                QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) obj3;
                MutableState mutableState4 = (MutableState) obj2;
                IntSize intSize = (IntSize) obj;
                if (z && !quickAccessFiltersViewState.f58170b) {
                    mutableState4.setValue(new Dp(density.k1((int) (intSize.f11021a & BodyPartID.bodyIdMax))));
                }
                return Unit.f71739a;
            case 8:
                MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) obj3;
                Context context4 = (Context) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.p(semanticsPropertyReceiver2, z);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, Role.f10292f);
                StringBuilder sb = new StringBuilder();
                sb.append((String) obj4);
                mainTopLevelDestination.getClass();
                context4.getClass();
                Integer badgeSemanticsRes = mainTopLevelDestination.getBadgeSemanticsRes();
                if (badgeSemanticsRes != null) {
                    if (((Number) mainTopLevelDestination.getBadgeCount().getF10755b()).intValue() <= 0) {
                        badgeSemanticsRes = null;
                    }
                    if (badgeSemanticsRes != null) {
                        quantityString = context4.getResources().getQuantityString(badgeSemanticsRes.intValue(), ((Number) mainTopLevelDestination.getBadgeCount().getF10755b()).intValue(), mainTopLevelDestination.getBadgeCount().getF10755b());
                    }
                }
                if (quantityString != 0) {
                    sb.append(" : ".concat(quantityString));
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, sb.toString());
                return Unit.f71739a;
            case 9:
                final List list = (List) obj3;
                final CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) obj2;
                final Function1 function3 = (Function1) obj4;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                final ch0 ch0Var = new ch0(14);
                final OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$1 orderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj5) {
                        return null;
                    }
                };
                lazyListScope.h(list.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return ch0Var.invoke(list.get(((Number) obj5).intValue()));
                    }
                }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return orderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$1.invoke(list.get(((Number) obj5).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i4;
                        Composer composer;
                        long j2;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                        int iIntValue = ((Number) obj6).intValue();
                        Composer composer2 = (Composer) obj7;
                        int iIntValue2 = ((Number) obj8).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i4 = (composer2.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i4 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i4 |= composer2.d(iIntValue) ? 32 : 16;
                        }
                        if (composer2.p(i4 & 1, (i4 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final CategoryOptionUiModel categoryOptionUiModel2 = (CategoryOptionUiModel) list.get(iIntValue);
                            composer2.L(1571526171);
                            boolean zC = Intrinsics.c(categoryOptionUiModel, categoryOptionUiModel2);
                            boolean z2 = z;
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            final Function1 function4 = function3;
                            if (z2) {
                                composer2.L(1571582187);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier.Companion companion = Modifier.Companion.f8607b;
                                Modifier modifierC = ComposedModifierKt.c(composer2, companion);
                                ComposeUiNode.b0.getClass();
                                Function0 function5 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function5);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                boolean z3 = categoryOptionUiModel2.d;
                                LVImageChipSize lVImageChipSize = LVImageChipSize.MEDIUM;
                                boolean zK = composer2.K(function4) | composer2.y(categoryOptionUiModel2);
                                Object objX = composer2.x();
                                if (zK || objX == composer$Companion$Empty$1) {
                                    objX = new Function1<Boolean, Unit>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$1$1
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj9) {
                                            if (((Boolean) obj9).booleanValue()) {
                                                function4.invoke(categoryOptionUiModel2);
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX);
                                }
                                LVImageChipKt.b(null, zC, z3, lVImageChipSize, null, null, (Function1) objX, ComposableLambdaKt.b(382046142, new Function3<BoxScope, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$2
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj9, Object obj10, Object obj11) {
                                        Composer composer3 = (Composer) obj10;
                                        int iIntValue3 = ((Number) obj11).intValue();
                                        ((BoxScope) obj9).getClass();
                                        if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, composer3, 0);
                                            ContentScale.f9447a.getClass();
                                            Modifier modifierA = PainterModifierKt.a(Modifier.Companion.f8607b, painterA, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                                            String str = categoryOptionUiModel2.f60230c;
                                            if (str == null) {
                                                str = "";
                                            }
                                            ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer3, KyberEngine.KyberPolyBytes, 2040);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2), composer2, 100666368, 113);
                                String str = categoryOptionUiModel2.f60228a;
                                Modifier modifierM = PaddingKt.m(companion, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                                if (z3) {
                                    composer2.L(868079890);
                                    j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                                    composer2.F();
                                } else {
                                    composer2.L(868186220);
                                    j2 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                                    composer2.F();
                                }
                                TextKt.c(str, modifierM, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48427h, composer2, 0, 0, 131064);
                                Composer composer3 = composer2;
                                if (z3) {
                                    composer3.L(868752311);
                                    composer3.F();
                                } else {
                                    composer3.L(868437103);
                                    TextKt.c(StringResources_androidKt.c(composer3, R.string.exchange_out_of_stock), null, LVAppDesignKitTheme.c(composer3).f48361b.n, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48427h, composer3, 0, 0, 131066);
                                    composer3 = composer3;
                                    composer3.F();
                                }
                                composer3.r();
                                composer3.F();
                                composer = composer3;
                            } else {
                                composer2.L(1573463112);
                                String str2 = categoryOptionUiModel2.f60228a;
                                boolean z4 = categoryOptionUiModel2.d;
                                LVButtonGroupIndicator lVButtonGroupIndicator = z4 ? LVButtonGroupIndicator.GreenDot.f48452a : LVButtonGroupIndicator.RedDot.f48453a;
                                boolean zK2 = composer2.K(function4) | composer2.y(categoryOptionUiModel2);
                                Object objX2 = composer2.x();
                                if (zK2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$2$1
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            function4.invoke(categoryOptionUiModel2);
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX2);
                                }
                                composer = composer2;
                                LVButtonGroupKt.a(null, str2, zC, z4, lVButtonGroupIndicator, (Function0) objX2, composer, 0, 1);
                                composer.F();
                            }
                            composer.F();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 10:
                String str = (String) obj4;
                String str2 = (String) obj3;
                String str3 = (String) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver3, z ? tr.h(str, " : ", str2) : tr.h(str3, " : ", str2));
                return Unit.f71739a;
            case 11:
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(889177346, true, new pl((List) obj4, this.f79663c, (Function0) obj3, (Function0) obj2, 6)), 3);
                return Unit.f71739a;
            case 12:
                HapticFeedback hapticFeedback = (HapticFeedback) obj4;
                Function2 function4 = (Function2) obj3;
                Context context5 = (Context) obj2;
                String str4 = (String) obj;
                str4.getClass();
                if (z) {
                    HapticFeedbackType.f9193b.getClass();
                    int i4 = PlatformHapticFeedbackType.f9196a;
                    hapticFeedback.a(0);
                    function4.invoke(str4, FilterType.SIMPLE);
                    String string = context5.getString(R.string.alt_loading_status);
                    string.getClass();
                    AccessibilityUtils.a(context5, string);
                }
                return Unit.f71739a;
            case 13:
                final List list2 = (List) obj4;
                final Function2 function5 = (Function2) obj2;
                LazyListScope lazyListScope3 = (LazyListScope) obj;
                lazyListScope3.getClass();
                LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(1428122709, true, new f6(z, (Function0) obj3, i3)), 3);
                final ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$1 resetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj5) {
                        return null;
                    }
                };
                lazyListScope3.h(list2.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return resetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$1.invoke(list2.get(((Number) obj5).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt$ResetFilterTagList$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i5;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                        int iIntValue = ((Number) obj6).intValue();
                        Composer composer = (Composer) obj7;
                        int iIntValue2 = ((Number) obj8).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i5 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i5 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i5 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i5 & 1, (i5 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final ResetFilterTag resetFilterTag = (ResetFilterTag) list2.get(iIntValue);
                            composer.L(659162361);
                            boolean zK = composer.K(resetFilterTag);
                            final Function2 function6 = function5;
                            boolean zK2 = zK | composer.K(function6);
                            Object objX = composer.x();
                            if (zK2 || objX == Composer.Companion.f7939a) {
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt$ResetFilterTagList$1$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        ResetFilterTag resetFilterTag2 = resetFilterTag;
                                        boolean z2 = resetFilterTag2.f65031c;
                                        function6.invoke(z2 ? null : resetFilterTag2.f65030b, Boolean.valueOf(z2));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            ResetFilterTagListKt.a(resetFilterTag, z, (Function0) objX, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            default:
                ListenableWorker listenableWorker = (ListenableWorker) obj4;
                String str5 = (String) obj3;
                WorkerWrapper workerWrapper = (WorkerWrapper) obj2;
                Throwable th = (Throwable) obj;
                if (th instanceof WorkerStoppedException) {
                    listenableWorker.f20258c.compareAndSet(-256, ((WorkerStoppedException) th).f20353b);
                }
                if (z && str5 != null) {
                    workerWrapper.f20358f.n.b(workerWrapper.f20354a.hashCode(), str5);
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ s0(Object obj, boolean z, Object obj2, Object obj3, int i2) {
        this.f79662b = i2;
        this.d = obj;
        this.f79663c = z;
        this.f79664e = obj2;
        this.f79665f = obj3;
    }

    public /* synthetic */ s0(Object obj, Object obj2, Object obj3, boolean z, int i2) {
        this.f79662b = i2;
        this.d = obj;
        this.f79664e = obj2;
        this.f79665f = obj3;
        this.f79663c = z;
    }

    public /* synthetic */ s0(boolean z, Context context, MutableState mutableState, ExoPlayer exoPlayer) {
        this.f79662b = 6;
        this.f79663c = z;
        this.d = context;
        this.f79665f = mutableState;
        this.f79664e = exoPlayer;
    }

    public /* synthetic */ s0(boolean z, Object obj, Object obj2, Object obj3, int i2) {
        this.f79662b = i2;
        this.f79663c = z;
        this.d = obj;
        this.f79664e = obj2;
        this.f79665f = obj3;
    }
}
