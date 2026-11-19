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
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.compose.CompositionSource;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.ConstraintLayoutScope;
import androidx.constraintlayout.compose.RawConstraintSet;
import com.sightcall.core.consent.ConsentViewModel;
import com.sightcall.graphik.Colors;
import com.sightcall.graphik.ColorsKt;
import com.sightcall.graphik.R;
import com.sightcall.graphik.composent.ButtonsKt;
import com.sightcall.graphik.composent.DividersKt;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.channels.Channel;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\u000b¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "invoke", "(Landroidx/compose/runtime/Composer;I)V", "<anonymous>"}, k = 3, mv = {2, 3, 0})
public final class ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1 extends Lambda implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ Channel $channel;
    final /* synthetic */ Ref $compositionSource;
    final /* synthetic */ AnnotatedString $consentBody$inlined;
    final /* synthetic */ String $consentTitle$inlined;
    final /* synthetic */ MutableState $contentTracker;
    final /* synthetic */ Context $context$inlined;
    final /* synthetic */ MutableState $end;
    final /* synthetic */ Function0 $onAccept$inlined;
    final /* synthetic */ Function0 $onDecline$inlined;
    final /* synthetic */ ConstraintLayoutScope $scope;
    final /* synthetic */ MutableState $start;
    final /* synthetic */ ConsentViewModel $viewModel$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1(MutableState mutableState, Ref ref, ConstraintLayoutScope constraintLayoutScope, Channel channel, MutableState mutableState2, MutableState mutableState3, Context context, String str, Function0 function0, Function0 function1, AnnotatedString annotatedString, ConsentViewModel consentViewModel) {
        super(2);
        this.$contentTracker = mutableState;
        this.$compositionSource = ref;
        this.$scope = constraintLayoutScope;
        this.$channel = channel;
        this.$start = mutableState2;
        this.$end = mutableState3;
        this.$context$inlined = context;
        this.$consentTitle$inlined = str;
        this.$onAccept$inlined = function0;
        this.$onDecline$inlined = function1;
        this.$consentBody$inlined = annotatedString;
        this.$viewModel$inlined = consentViewModel;
    }

    public final void invoke(Composer composer, int i2) {
        ConstrainedLayoutReference constrainedLayoutReference;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Composer composer2 = composer;
        if ((i2 & 3) == 2 && composer2.i()) {
            composer2.D();
            return;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        this.$contentTracker.setValue(Unit.f71739a);
        Ref ref = this.$compositionSource;
        if (ref.f9828a == CompositionSource.Unknown) {
            ref.f9828a = CompositionSource.Content;
        }
        this.$scope.d();
        ConstraintLayoutScope constraintLayoutScope = this.$scope;
        composer2.L(-1845023883);
        ConstraintLayoutScope constraintLayoutScope2 = ConstraintLayoutScope.this;
        ConstrainedLayoutReference constrainedLayoutReferenceB = constraintLayoutScope2.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB2 = constraintLayoutScope2.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB3 = constraintLayoutScope2.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB4 = constraintLayoutScope2.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB5 = constraintLayoutScope2.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB6 = constraintLayoutScope2.b();
        boolean z = this.$context$inlined.getResources().getBoolean(R.bool.universal_feature_universal_logo);
        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
        if (z) {
            composer2.L(-1844975741);
            Painter painterA = PainterResources_androidKt.a(R.drawable.universal_consent_logo, composer2, 0);
            Object objX = composer2.x();
            if (objX == composer$Companion$Empty$2) {
                objX = ConsentViewKt$ConsentView$1$1$1$1.INSTANCE;
                composer2.q(objX);
            }
            Modifier modifierA = ConstraintLayoutScope.a(constrainedLayoutReferenceB, (Function1) objX);
            Dp.Companion companion = Dp.f11004c;
            composer$Companion$Empty$1 = composer$Companion$Empty$2;
            constrainedLayoutReference = constrainedLayoutReferenceB6;
            ImageKt.a(painterA, null, GraphicsLayerModifierKt.b(PaddingKt.m(modifierA, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, 7), 1.5f, 1.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 131068), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer, 48, 120);
            composer2 = composer;
            composer2.F();
        } else {
            constrainedLayoutReference = constrainedLayoutReferenceB6;
            composer$Companion$Empty$1 = composer$Companion$Empty$2;
            composer2.L(-1844337637);
            composer2.F();
        }
        TextStyle textStyle = MaterialTheme.b(composer2).g;
        Colors colors = (Colors) composer2.k(ColorsKt.getLocalVisionAppColors());
        int i3 = Colors.$stable;
        TextStyle textStyleA = TextStyle.a(textStyle, colors.getConsentTitleTextColor(composer2, i3), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
        boolean zK = composer2.K(constrainedLayoutReferenceB);
        Object objX2 = composer2.x();
        if (zK || objX2 == composer$Companion$Empty$1) {
            objX2 = new ConsentViewKt$ConsentView$1$1$2$1(constrainedLayoutReferenceB);
            composer2.q(objX2);
        }
        Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
        TextKt.b(this.$consentTitle$inlined, ConstraintLayoutScope.a(constrainedLayoutReferenceB2, (Function1) objX2), 0L, 0L, 0L, 0L, 0, false, 0, 0, textStyleA, composer, 0, 65532);
        boolean zK2 = composer.K(constrainedLayoutReferenceB2);
        Object objX3 = composer.x();
        if (zK2 || objX3 == composer$Companion$Empty$3) {
            objX3 = new ConsentViewKt$ConsentView$1$1$3$1(constrainedLayoutReferenceB2);
            composer.q(objX3);
        }
        DividersKt.VisionDivider(ConstraintLayoutScope.a(constrainedLayoutReferenceB4, (Function1) objX3), composer, 0, 0);
        Object objX4 = composer.x();
        if (objX4 == composer$Companion$Empty$3) {
            objX4 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            composer.q(objX4);
        }
        MutableFloatState mutableFloatState = (MutableFloatState) objX4;
        Object objX5 = composer.x();
        if (objX5 == composer$Companion$Empty$3) {
            objX5 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            composer.q(objX5);
        }
        MutableFloatState mutableFloatState2 = (MutableFloatState) objX5;
        boolean zK3 = composer.K(constrainedLayoutReferenceB4) | composer.K(constrainedLayoutReferenceB5);
        Object objX6 = composer.x();
        if (zK3 || objX6 == composer$Companion$Empty$3) {
            objX6 = new ConsentViewKt$ConsentView$1$1$4$1(constrainedLayoutReferenceB4, constrainedLayoutReferenceB5);
            composer.q(objX6);
        }
        Modifier modifierA2 = ConstraintLayoutScope.a(constrainedLayoutReferenceB3, (Function1) objX6);
        Object objX7 = composer.x();
        if (objX7 == composer$Companion$Empty$3) {
            objX7 = new ConsentViewKt$ConsentView$1$1$5$1(mutableFloatState2);
            composer.q(objX7);
        }
        Modifier modifierD = SizeKt.d(OnGloballyPositionedModifierKt.a(modifierA2, (Function1) objX7), 1.0f);
        Alignment.f8582a.getClass();
        BiasAlignment biasAlignment = Alignment.Companion.f8584b;
        MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
        int iG = composer.G();
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
        Modifier modifierC = ComposedModifierKt.c(composer, modifierD);
        ComposeUiNode.b0.getClass();
        Function0 function0 = ComposeUiNode.Companion.f9641b;
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
        Function2 function2 = ComposeUiNode.Companion.f9644f;
        Updater.c(composer, measurePolicyD, function2);
        Function2 function3 = ComposeUiNode.Companion.f9643e;
        Updater.c(composer, persistentCompositionLocalMapN, function3);
        Function2 function4 = ComposeUiNode.Companion.g;
        if (composer.getS() || !Intrinsics.c(composer.x(), Integer.valueOf(iG))) {
            fc.A(function4, iG, composer, iG);
        }
        Function2 function5 = ComposeUiNode.Companion.d;
        Updater.c(composer, modifierC, function5);
        ScrollState scrollStateB = ScrollKt.b(composer);
        Modifier modifierD2 = ScrollKt.d(SizeKt.f5052c, scrollStateB, false, 14);
        Object objX8 = composer.x();
        if (objX8 == composer$Companion$Empty$3) {
            objX8 = new ConsentViewKt$ConsentView$1$1$6$1$1(mutableFloatState);
            composer.q(objX8);
        }
        Modifier modifierA3 = OnGloballyPositionedModifierKt.a(modifierD2, (Function1) objX8);
        Dp.Companion companion2 = Dp.f11004c;
        Modifier modifierM = PaddingKt.m(modifierA3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 0);
        int iG2 = composer.G();
        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
        Modifier modifierC2 = ComposedModifierKt.c(composer, modifierM);
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
        Updater.c(composer, persistentCompositionLocalMapN2, function3);
        if (composer.getS() || !Intrinsics.c(composer.x(), Integer.valueOf(iG2))) {
            fc.A(function4, iG2, composer, iG2);
        }
        Updater.c(composer, modifierC2, function5);
        TextStyle textStyleA2 = TextStyle.a(MaterialTheme.b(composer).f7450k, ((Colors) composer.k(ColorsKt.getLocalVisionAppColors())).getConsentBodyTextColor(composer, i3), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
        AnnotatedString annotatedString = this.$consentBody$inlined;
        boolean zY = composer.y(this.$viewModel$inlined) | composer.K(annotatedString) | composer.y(this.$context$inlined);
        Object objX9 = composer.x();
        if (zY || objX9 == composer$Companion$Empty$3) {
            objX9 = new ConsentViewKt$ConsentView$1$1$6$2$1$1(this.$consentBody$inlined, this.$viewModel$inlined, this.$context$inlined);
            composer.q(objX9);
        }
        Modifier.Companion companion3 = Modifier.Companion.f8607b;
        ClickableTextKt.a(annotatedString, companion3, textStyleA2, false, 0, 0, null, (Function1) objX9, composer, 48, 120);
        composer.r();
        float f2 = mutableFloatState.a() > mutableFloatState2.a() ? ((SnapshotMutableIntStateImpl) scrollStateB.f4290a).f() / (mutableFloatState.a() - mutableFloatState2.a()) : 0.0f;
        float fA = mutableFloatState2.a() * (mutableFloatState2.a() / mutableFloatState.a());
        float fA2 = mutableFloatState2.a();
        if (fA > fA2) {
            fA = fA2;
        }
        float fA3 = (mutableFloatState2.a() - fA) * f2;
        if (mutableFloatState2.a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM || mutableFloatState.a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM || mutableFloatState.a() <= mutableFloatState2.a()) {
            composer.L(1540738049);
            composer.F();
        } else {
            composer.L(1540000001);
            Modifier modifierC3 = SizeKt.c(SizeKt.s(BoxScopeInstance.f4938a.g(companion3, Alignment.Companion.g), 4.0f), 1.0f);
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierC3, Color.f8870h, RectangleShapeKt.f8913a);
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
            int iG3 = composer.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
            Modifier modifierC4 = ComposedModifierKt.c(composer, modifierB);
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
            Updater.c(composer, measurePolicyD2, function2);
            Updater.c(composer, persistentCompositionLocalMapN3, function3);
            if (composer.getS() || !Intrinsics.c(composer.x(), Integer.valueOf(iG3))) {
                fc.A(function4, iG3, composer, iG3);
            }
            Updater.c(composer, modifierC4, function5);
            Modifier modifierD3 = SizeKt.d(companion3, 1.0f);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.f10031h;
            BoxKt.a(BackgroundKt.b(OffsetKt.c(SizeKt.f(modifierD3, ((Density) composer.k(staticProvidableCompositionLocal)).l1(fA)), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Density) composer.k(staticProvidableCompositionLocal)).l1(fA3), 1), Color.d, RoundedCornerShapeKt.a(2.0f)), composer, 0);
            composer.r();
            composer.F();
        }
        composer.r();
        String string = this.$context$inlined.getString(com.sightcall.core.R.string.consent_button_accept);
        string.getClass();
        Function0 function1 = this.$onAccept$inlined;
        ConstrainedLayoutReference constrainedLayoutReference2 = constrainedLayoutReference;
        boolean zK4 = composer.K(constrainedLayoutReference2);
        Object objX10 = composer.x();
        if (zK4 || objX10 == composer$Companion$Empty$3) {
            objX10 = new ConsentViewKt$ConsentView$1$1$7$1(constrainedLayoutReference2);
            composer.q(objX10);
        }
        ButtonsKt.LargeConfirmButton(string, function1, PaddingKt.m(ConstraintLayoutScope.a(constrainedLayoutReferenceB5, (Function1) objX10), Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), composer, 0, 0);
        String string2 = this.$context$inlined.getString(com.sightcall.core.R.string.consent_button_decline);
        string2.getClass();
        Function0 function6 = this.$onDecline$inlined;
        Object objX11 = composer.x();
        if (objX11 == composer$Companion$Empty$3) {
            objX11 = ConsentViewKt$ConsentView$1$1$8$1.INSTANCE;
            composer.q(objX11);
        }
        ButtonsKt.VisionTextButton(string2, function6, ConstraintLayoutScope.a(constrainedLayoutReference2, (Function1) objX11), composer, 0, 0);
        composer.F();
        boolean zY2 = composer.y(this.$scope) | composer.y(this.$channel);
        final ConstraintLayoutScope constraintLayoutScope3 = this.$scope;
        final MutableState mutableState = this.$start;
        final MutableState mutableState2 = this.$end;
        final Channel channel = this.$channel;
        Object objX12 = composer.x();
        if (zY2 || objX12 == composer$Companion$Empty$3) {
            objX12 = new Function0<Unit>() { // from class: com.sightcall.core.consent.compose.ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                public final void invoke() {
                    RawConstraintSet rawConstraintSet = new RawConstraintSet(constraintLayoutScope3.f11238a.clone());
                    if (mutableState.getF10755b() != null && mutableState2.getF10755b() != null) {
                        channel.b(rawConstraintSet);
                    } else {
                        mutableState.setValue(rawConstraintSet);
                        mutableState2.setValue(mutableState.getF10755b());
                    }
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public /* bridge */ /* synthetic */ Object mo47invoke() {
                    invoke();
                    return Unit.f71739a;
                }
            };
            composer.q(objX12);
        }
        EffectsKt.i((Function0) objX12, composer);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.f71739a;
    }
}
