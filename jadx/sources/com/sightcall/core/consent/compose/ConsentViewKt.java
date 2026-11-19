package com.sightcall.core.consent.compose;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.ClickableTextKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.ConstraintLayoutScope;
import androidx.constraintlayout.compose.ConstraintSetForInlineDsl;
import androidx.constraintlayout.compose.Measurer2;
import androidx.constraintlayout.compose.ToolingUtilsKt;
import com.sightcall.core.consent.ConsentViewModel;
import com.sightcall.graphik.Colors;
import com.sightcall.graphik.ColorsKt;
import com.sightcall.graphik.R;
import com.sightcall.graphik.VisionThemeKt;
import com.sightcall.graphik.composent.ButtonsKt;
import com.sightcall.graphik.composent.DividersKt;
import defpackage.fc;
import defpackage.lp;
import defpackage.u1;
import defpackage.wh;
import defpackage.z2;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\u001aI\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\u0006\u0010\u000b\u001a\u00020\fH\u0007¢\u0006\u0002\u0010\r\u001a\r\u0010\u000e\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u000f¨\u0006\u0010²\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u008e\u0002²\u0006\n\u0010\u0013\u001a\u00020\u0012X\u008a\u008e\u0002"}, d2 = {"ConsentView", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "consentTitle", "", "consentBody", "Landroidx/compose/ui/text/AnnotatedString;", "onAccept", "Lkotlin/Function0;", "onDecline", "viewModel", "Lcom/sightcall/core/consent/ConsentViewModel;", "(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V", "PreviewConsentView", "(Landroidx/compose/runtime/Composer;I)V", "core_release", "contentHeightPx", "", "containerHeightPx"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ConsentViewKt {
    public static final void ConsentView(Context context, String str, AnnotatedString annotatedString, Function0<Unit> function0, Function0<Unit> function1, ConsentViewModel consentViewModel, Composer composer, int i2) {
        int i3;
        context.getClass();
        str.getClass();
        annotatedString.getClass();
        function0.getClass();
        function1.getClass();
        consentViewModel.getClass();
        GapComposer gapComposerH = composer.h(-1798144248);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(context) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(annotatedString) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(consentViewModel) ? 131072 : 65536;
        }
        if ((i3 & 74899) == 74898 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            VisionThemeKt.VisionTheme(ComposableLambdaKt.b(647634334, new u1(context, str, function0, function1, annotatedString, consentViewModel, 10), gapComposerH), gapComposerH, 6);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(context, str, annotatedString, function0, function1, consentViewModel, i2, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ConsentView$lambda$0(final Context context, final String str, final Function0 function0, final Function0 function1, final AnnotatedString annotatedString, final ConsentViewModel consentViewModel, Composer composer, int i2) {
        if ((i2 & 3) == 2 && composer.i()) {
            composer.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierO = PaddingKt.l(Modifier.Companion.f8607b, 24.0f, 80.0f, 24.0f, 16.0f).o(SizeKt.f5052c);
            composer.L(-1003410150);
            composer.L(212064437);
            composer.F();
            Density density = (Density) composer.k(CompositionLocalsKt.f10031h);
            Object objX = composer.x();
            Object obj = Composer.Companion.f7939a;
            if (objX == obj) {
                objX = new Measurer2(density);
                composer.q(objX);
            }
            final Measurer2 measurer2 = (Measurer2) objX;
            Object objX2 = composer.x();
            if (objX2 == obj) {
                objX2 = new ConstraintLayoutScope();
                composer.q(objX2);
            }
            final ConstraintLayoutScope constraintLayoutScope = (ConstraintLayoutScope) objX2;
            Object objX3 = composer.x();
            if (objX3 == obj) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                composer.q(objX3);
            }
            final MutableState mutableState = (MutableState) objX3;
            Object objX4 = composer.x();
            if (objX4 == obj) {
                objX4 = new ConstraintSetForInlineDsl(constraintLayoutScope);
                composer.q(objX4);
            }
            final ConstraintSetForInlineDsl constraintSetForInlineDsl = (ConstraintSetForInlineDsl) objX4;
            Object objX5 = composer.x();
            if (objX5 == obj) {
                objX5 = SnapshotStateKt.f(Unit.f71739a, SnapshotStateKt.h());
                composer.q(objX5);
            }
            final MutableState mutableState2 = (MutableState) objX5;
            final int i3 = 257;
            boolean zY = composer.y(measurer2) | composer.d(257);
            Object objX6 = composer.x();
            if (zY || objX6 == obj) {
                objX6 = new MeasurePolicy() { // from class: com.sightcall.core.consent.compose.ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* bridge */ /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                        return super.maxIntrinsicHeight(intrinsicMeasureScope, list, i4);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* bridge */ /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                        return super.maxIntrinsicWidth(intrinsicMeasureScope, list, i4);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, final List<? extends Measurable> list, long j2) {
                        final LinkedHashMap linkedHashMap = new LinkedHashMap();
                        mutableState2.getF10755b();
                        long jF = measurer2.f(j2, measureScope.getF9421c(), constraintSetForInlineDsl, list, linkedHashMap, i3);
                        mutableState.getF10755b();
                        IntSize.Companion companion2 = IntSize.f11020b;
                        int i4 = (int) (jF >> 32);
                        int i5 = (int) (jF & BodyPartID.bodyIdMax);
                        final Measurer2 measurer3 = measurer2;
                        return measureScope.V0(i4, i5, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: com.sightcall.core.consent.compose.ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            public final void invoke(Placeable.PlacementScope placementScope) {
                                measurer3.e(placementScope, list, linkedHashMap);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                invoke((Placeable.PlacementScope) obj2);
                                return Unit.f71739a;
                            }
                        });
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* bridge */ /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                        return super.minIntrinsicHeight(intrinsicMeasureScope, list, i4);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* bridge */ /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                        return super.minIntrinsicWidth(intrinsicMeasureScope, list, i4);
                    }
                };
                composer.q(objX6);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objX6;
            Object objX7 = composer.x();
            if (objX7 == obj) {
                objX7 = new Function0<Unit>() { // from class: com.sightcall.core.consent.compose.ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    public final void invoke() {
                        MutableState mutableState3 = mutableState;
                        mutableState3.setValue(Boolean.valueOf(!((Boolean) mutableState3.getF10755b()).booleanValue()));
                        constraintSetForInlineDsl.f11256e = true;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public /* bridge */ /* synthetic */ Object mo47invoke() {
                        invoke();
                        return Unit.f71739a;
                    }
                };
                composer.q(objX7);
            }
            final Function0 function2 = (Function0) objX7;
            boolean zY2 = composer.y(measurer2);
            Object objX8 = composer.x();
            if (zY2 || objX8 == obj) {
                objX8 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.sightcall.core.consent.compose.ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$4
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((SemanticsPropertyReceiver) obj2);
                        return Unit.f71739a;
                    }

                    public final void invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        ToolingUtilsKt.a(semanticsPropertyReceiver, measurer2);
                    }
                };
                composer.q(objX8);
            }
            LayoutKt.a(SemanticsModifierKt.b(modifierO, false, (Function1) objX8), ComposableLambdaKt.b(1200550679, new Function2<Composer, Integer, Unit>() { // from class: com.sightcall.core.consent.compose.ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public final void invoke(Composer composer2, int i4) {
                    ConstrainedLayoutReference constrainedLayoutReference;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1;
                    Composer composer3 = composer2;
                    if ((i4 & 3) == 2 && composer3.i()) {
                        composer3.D();
                        return;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    mutableState2.setValue(Unit.f71739a);
                    constraintLayoutScope.getClass();
                    constraintLayoutScope.d();
                    ConstraintLayoutScope constraintLayoutScope2 = constraintLayoutScope;
                    composer3.L(-1845023883);
                    ConstraintLayoutScope constraintLayoutScope3 = ConstraintLayoutScope.this;
                    ConstrainedLayoutReference constrainedLayoutReferenceB = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB2 = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB3 = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB4 = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB5 = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB6 = constraintLayoutScope3.b();
                    boolean z = context.getResources().getBoolean(R.bool.universal_feature_universal_logo);
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    if (z) {
                        composer3.L(-1844975741);
                        Painter painterA = PainterResources_androidKt.a(R.drawable.universal_consent_logo, composer3, 0);
                        Object objX9 = composer3.x();
                        if (objX9 == composer$Companion$Empty$2) {
                            objX9 = ConsentViewKt$ConsentView$1$1$1$1.INSTANCE;
                            composer3.q(objX9);
                        }
                        Modifier modifierA = ConstraintLayoutScope.a(constrainedLayoutReferenceB, (Function1) objX9);
                        Dp.Companion companion2 = Dp.f11004c;
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        constrainedLayoutReference = constrainedLayoutReferenceB6;
                        ImageKt.a(painterA, null, GraphicsLayerModifierKt.b(PaddingKt.m(modifierA, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, 7), 1.5f, 1.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 131068), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer2, 48, 120);
                        composer3 = composer2;
                        composer3.F();
                    } else {
                        constrainedLayoutReference = constrainedLayoutReferenceB6;
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        composer3.L(-1844337637);
                        composer3.F();
                    }
                    TextStyle textStyle = MaterialTheme.b(composer3).g;
                    Colors colors = (Colors) composer3.k(ColorsKt.getLocalVisionAppColors());
                    int i5 = Colors.$stable;
                    TextStyle textStyleA = TextStyle.a(textStyle, colors.getConsentTitleTextColor(composer3, i5), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
                    boolean zK = composer3.K(constrainedLayoutReferenceB);
                    Object objX10 = composer3.x();
                    if (zK || objX10 == composer$Companion$Empty$1) {
                        objX10 = new ConsentViewKt$ConsentView$1$1$2$1(constrainedLayoutReferenceB);
                        composer3.q(objX10);
                    }
                    Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
                    TextKt.b(str, ConstraintLayoutScope.a(constrainedLayoutReferenceB2, (Function1) objX10), 0L, 0L, 0L, 0L, 0, false, 0, 0, textStyleA, composer2, 0, 65532);
                    boolean zK2 = composer2.K(constrainedLayoutReferenceB2);
                    Object objX11 = composer2.x();
                    if (zK2 || objX11 == composer$Companion$Empty$3) {
                        objX11 = new ConsentViewKt$ConsentView$1$1$3$1(constrainedLayoutReferenceB2);
                        composer2.q(objX11);
                    }
                    DividersKt.VisionDivider(ConstraintLayoutScope.a(constrainedLayoutReferenceB4, (Function1) objX11), composer2, 0, 0);
                    Object objX12 = composer2.x();
                    if (objX12 == composer$Companion$Empty$3) {
                        objX12 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        composer2.q(objX12);
                    }
                    MutableFloatState mutableFloatState = (MutableFloatState) objX12;
                    Object objX13 = composer2.x();
                    if (objX13 == composer$Companion$Empty$3) {
                        objX13 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        composer2.q(objX13);
                    }
                    MutableFloatState mutableFloatState2 = (MutableFloatState) objX13;
                    boolean zK3 = composer2.K(constrainedLayoutReferenceB4) | composer2.K(constrainedLayoutReferenceB5);
                    Object objX14 = composer2.x();
                    if (zK3 || objX14 == composer$Companion$Empty$3) {
                        objX14 = new ConsentViewKt$ConsentView$1$1$4$1(constrainedLayoutReferenceB4, constrainedLayoutReferenceB5);
                        composer2.q(objX14);
                    }
                    Modifier modifierA2 = ConstraintLayoutScope.a(constrainedLayoutReferenceB3, (Function1) objX14);
                    Object objX15 = composer2.x();
                    if (objX15 == composer$Companion$Empty$3) {
                        objX15 = new ConsentViewKt$ConsentView$1$1$5$1(mutableFloatState2);
                        composer2.q(objX15);
                    }
                    Modifier modifierD = SizeKt.d(OnGloballyPositionedModifierKt.a(modifierA2, (Function1) objX15), 1.0f);
                    Alignment.f8582a.getClass();
                    BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                    MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                    int iG = composer2.G();
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                    ComposeUiNode.b0.getClass();
                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function3);
                    } else {
                        composer2.o();
                    }
                    Function2 function4 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, measurePolicyD, function4);
                    Function2 function5 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function5);
                    Function2 function6 = ComposeUiNode.Companion.g;
                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                        fc.A(function6, iG, composer2, iG);
                    }
                    Function2 function7 = ComposeUiNode.Companion.d;
                    Updater.c(composer2, modifierC, function7);
                    ScrollState scrollStateB = ScrollKt.b(composer2);
                    Modifier modifierD2 = ScrollKt.d(SizeKt.f5052c, scrollStateB, false, 14);
                    Object objX16 = composer2.x();
                    if (objX16 == composer$Companion$Empty$3) {
                        objX16 = new ConsentViewKt$ConsentView$1$1$6$1$1(mutableFloatState);
                        composer2.q(objX16);
                    }
                    Modifier modifierA3 = OnGloballyPositionedModifierKt.a(modifierD2, (Function1) objX16);
                    Dp.Companion companion3 = Dp.f11004c;
                    Modifier modifierM = PaddingKt.m(modifierA3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer2, 0);
                    int iG2 = composer2.G();
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierM);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function3);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, function4);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function5);
                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG2))) {
                        fc.A(function6, iG2, composer2, iG2);
                    }
                    Updater.c(composer2, modifierC2, function7);
                    TextStyle textStyleA2 = TextStyle.a(MaterialTheme.b(composer2).f7450k, ((Colors) composer2.k(ColorsKt.getLocalVisionAppColors())).getConsentBodyTextColor(composer2, i5), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
                    AnnotatedString annotatedString2 = annotatedString;
                    boolean zY3 = composer2.y(consentViewModel) | composer2.K(annotatedString2) | composer2.y(context);
                    Object objX17 = composer2.x();
                    if (zY3 || objX17 == composer$Companion$Empty$3) {
                        objX17 = new ConsentViewKt$ConsentView$1$1$6$2$1$1(annotatedString, consentViewModel, context);
                        composer2.q(objX17);
                    }
                    Modifier.Companion companion4 = Modifier.Companion.f8607b;
                    ClickableTextKt.a(annotatedString2, companion4, textStyleA2, false, 0, 0, null, (Function1) objX17, composer2, 48, 120);
                    composer2.r();
                    float f2 = mutableFloatState.a() > mutableFloatState2.a() ? ((SnapshotMutableIntStateImpl) scrollStateB.f4290a).f() / (mutableFloatState.a() - mutableFloatState2.a()) : 0.0f;
                    float fA = mutableFloatState2.a() * (mutableFloatState2.a() / mutableFloatState.a());
                    float fA2 = mutableFloatState2.a();
                    if (fA > fA2) {
                        fA = fA2;
                    }
                    float fA3 = (mutableFloatState2.a() - fA) * f2;
                    if (mutableFloatState2.a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM || mutableFloatState.a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM || mutableFloatState.a() <= mutableFloatState2.a()) {
                        composer2.L(1540738049);
                        composer2.F();
                    } else {
                        composer2.L(1540000001);
                        Modifier modifierC3 = SizeKt.c(SizeKt.s(BoxScopeInstance.f4938a.g(companion4, Alignment.Companion.g), 4.0f), 1.0f);
                        Color.f8866b.getClass();
                        Modifier modifierB = BackgroundKt.b(modifierC3, Color.f8870h, RectangleShapeKt.f8913a);
                        MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                        int iG3 = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                        Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierB);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function3);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD2, function4);
                        Updater.c(composer2, persistentCompositionLocalMapN3, function5);
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG3))) {
                            fc.A(function6, iG3, composer2, iG3);
                        }
                        Updater.c(composer2, modifierC4, function7);
                        Modifier modifierD3 = SizeKt.d(companion4, 1.0f);
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.f10031h;
                        BoxKt.a(BackgroundKt.b(OffsetKt.c(SizeKt.f(modifierD3, ((Density) composer2.k(staticProvidableCompositionLocal)).l1(fA)), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Density) composer2.k(staticProvidableCompositionLocal)).l1(fA3), 1), Color.d, RoundedCornerShapeKt.a(2.0f)), composer2, 0);
                        composer2.r();
                        composer2.F();
                    }
                    composer2.r();
                    String string = context.getString(com.sightcall.core.R.string.consent_button_accept);
                    string.getClass();
                    Function0 function8 = function0;
                    ConstrainedLayoutReference constrainedLayoutReference2 = constrainedLayoutReference;
                    boolean zK4 = composer2.K(constrainedLayoutReference2);
                    Object objX18 = composer2.x();
                    if (zK4 || objX18 == composer$Companion$Empty$3) {
                        objX18 = new ConsentViewKt$ConsentView$1$1$7$1(constrainedLayoutReference2);
                        composer2.q(objX18);
                    }
                    ButtonsKt.LargeConfirmButton(string, function8, PaddingKt.m(ConstraintLayoutScope.a(constrainedLayoutReferenceB5, (Function1) objX18), Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), composer2, 0, 0);
                    String string2 = context.getString(com.sightcall.core.R.string.consent_button_decline);
                    string2.getClass();
                    Function0 function9 = function1;
                    Object objX19 = composer2.x();
                    if (objX19 == composer$Companion$Empty$3) {
                        objX19 = ConsentViewKt$ConsentView$1$1$8$1.INSTANCE;
                        composer2.q(objX19);
                    }
                    ButtonsKt.VisionTextButton(string2, function9, ConstraintLayoutScope.a(constrainedLayoutReference2, (Function1) objX19), composer2, 0, 0);
                    composer2.F();
                    constraintLayoutScope.getClass();
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    invoke((Composer) obj2, ((Number) obj3).intValue());
                    return Unit.f71739a;
                }
            }, composer), measurePolicy, composer, 48);
            composer.F();
        }
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ConsentView$lambda$1(Context context, String str, AnnotatedString annotatedString, Function0 function0, Function0 function1, ConsentViewModel consentViewModel, int i2, Composer composer, int i3) {
        ConsentView(context, str, annotatedString, function0, function1, consentViewModel, composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }

    public static final void PreviewConsentView(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(29565487);
        if (i2 == 0 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
            String string = context.getString(com.sightcall.core.R.string.consent_privacy_policy);
            string.getClass();
            builder.e(string);
            Color.f8866b.getClass();
            long j2 = Color.g;
            TextDecoration.f10965b.getClass();
            int iH = builder.h(new SpanStyle(j2, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null));
            try {
                builder.e("Privacy Policy");
                builder.f(iH);
                AnnotatedString annotatedStringI = builder.i();
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new lp(21);
                    gapComposerH.q(objX);
                }
                Function0 function0 = (Function0) objX;
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new lp(22);
                    gapComposerH.q(objX2);
                }
                ConsentView(context, "Information about your data", annotatedStringI, function0, (Function0) objX2, new ConsentViewModel(), gapComposerH, 27696);
            } catch (Throwable th) {
                builder.f(iH);
                throw th;
            }
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wh(i2, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PreviewConsentView$lambda$3(int i2, Composer composer, int i3) {
        PreviewConsentView(composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }
}
