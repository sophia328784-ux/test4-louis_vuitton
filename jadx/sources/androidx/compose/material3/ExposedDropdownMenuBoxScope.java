package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.internal.AccessibilityServiceStateProvider_androidKt;
import androidx.compose.material3.tokens.MenuTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import com.google.ar.core.ImageMetadata;
import defpackage.d0;
import defpackage.r1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/material3/ExposedDropdownMenuBoxScope;", "", "Landroidx/compose/material3/ExposedDropdownMenuBoxScopeImpl;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ExposedDropdownMenuBoxScope {
    public ExposedDropdownMenuBoxScope(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public final void a(final boolean z, final Function0 function0, Modifier modifier, ScrollState scrollState, boolean z2, Shape shape, long j2, float f2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope;
        final ScrollState scrollState2;
        final boolean z3;
        final Shape shape2;
        final long j3;
        final float f3;
        int i5;
        final Shape shapeA;
        final long jD;
        final float f4;
        final ScrollState scrollState3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ExposedDropdownMenu-vNxi1II");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-126848451);
        int i6 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.K(modifier2) ? 256 : 128) | 919168000;
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.y(composableLambdaImpl) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            exposedDropdownMenuBoxScope = this;
            i4 |= gapComposerH.K(exposedDropdownMenuBoxScope) ? 32 : 16;
        } else {
            exposedDropdownMenuBoxScope = this;
        }
        if (gapComposerH.p(i6 & 1, ((306783379 & i6) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                ScrollState scrollStateB = ScrollKt.b(gapComposerH);
                float f5 = MenuDefaults.f7020a;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                i5 = i6 & (-4135937);
                shapeA = ShapesKt.a(MenuTokens.f7810c, gapComposerH);
                jD = ColorSchemeKt.d(MenuTokens.f7808a, gapComposerH);
                f4 = MenuDefaults.f7020a;
                z3 = true;
                scrollState3 = scrollStateB;
            } else {
                gapComposerH.D();
                i5 = i6 & (-4135937);
                scrollState3 = scrollState;
                z3 = z2;
                shapeA = shape;
                jD = j2;
                f4 = f2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.f(Unit.f71739a, SnapshotStateKt.h());
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            int i7 = WindowInsets_androidKt.b(gapComposerH).e().f12055b;
            int i8 = i5;
            if (z) {
                gapComposerH.L(629991660);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new d0(28, mutableState);
                    gapComposerH.q(objX2);
                }
                ExposedDropdownMenu_androidKt.a((Function0) objX2, gapComposerH, 6);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(630077189);
                gapComposerH.Z(false);
            }
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new MutableTransitionState(Boolean.FALSE);
                gapComposerH.q(objX3);
            }
            final MutableTransitionState mutableTransitionState = (MutableTransitionState) objX3;
            mutableTransitionState.g(Boolean.valueOf(z));
            if (((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.f3906b).getF10755b()).booleanValue() || ((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.f3907c).getF10755b()).booleanValue()) {
                gapComposerH.L(630396489);
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    TransformOrigin.f8941b.getClass();
                    objX4 = SnapshotStateKt.g(new TransformOrigin(TransformOrigin.f8942c));
                    gapComposerH.q(objX4);
                }
                final MutableState mutableState2 = (MutableState) objX4;
                boolean zK = gapComposerH.K(density) | gapComposerH.d(i7);
                Object objX5 = gapComposerH.x();
                if (zK || objX5 == composer$Companion$Empty$1) {
                    objX5 = new ExposedDropdownMenuPositionProvider(density, i7, mutableState, 0, new r1(6, mutableState2), 8, null);
                    gapComposerH.q(objX5);
                }
                ExposedDropdownMenuPositionProvider exposedDropdownMenuPositionProvider = (ExposedDropdownMenuPositionProvider) objX5;
                String strD = exposedDropdownMenuBoxScope.d();
                boolean zC = exposedDropdownMenuBoxScope.c();
                State stateB = AccessibilityServiceStateProvider_androidKt.b(0, gapComposerH, 7);
                int i9 = !((Boolean) stateB.getF10755b()).booleanValue() ? 393248 : ImageMetadata.HOT_PIXEL_MODE;
                ExposedDropdownMenuAnchorType.f6913b.getClass();
                if ((Intrinsics.c(strD, ExposedDropdownMenuAnchorType.d) || (Intrinsics.c(strD, ExposedDropdownMenuAnchorType.f6915e) && !((Boolean) stateB.getF10755b()).booleanValue())) && !zC) {
                    i9 |= 8;
                }
                PopupProperties popupProperties = new PopupProperties(i9, false, false, false, false, false, 62, (DefaultConstructorMarker) null);
                final ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope2 = exposedDropdownMenuBoxScope;
                Function2<Composer, Integer, Unit> function2 = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            MenuKt.a(this.f6917b.b(modifier2, z3), mutableTransitionState, mutableState2, scrollState3, shapeA, jD, f4, composableLambdaImpl, composer2, KyberEngine.KyberPolyBytes);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                };
                modifier2 = modifier2;
                AndroidPopup_androidKt.a(exposedDropdownMenuPositionProvider, function0, popupProperties, ComposableLambdaKt.b(2063119149, function2, gapComposerH), gapComposerH, (i8 & 112) | 3072, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(631807237);
                gapComposerH.Z(false);
            }
            scrollState2 = scrollState3;
            shape2 = shapeA;
            j3 = jD;
            f3 = f4;
        } else {
            gapComposerH.D();
            scrollState2 = scrollState;
            z3 = z2;
            shape2 = shape;
            j3 = j2;
            f3 = f2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(z, function0, modifier2, scrollState2, z3, shape2, j3, f3, composableLambdaImpl, i2, i3) { // from class: pw

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f78933c;
                public final /* synthetic */ Function0 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Modifier f78934e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ ScrollState f78935f;
                public final /* synthetic */ boolean g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Shape f78936h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ long f78937i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ float f78938j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ ComposableLambdaImpl f78939k;
                public final /* synthetic */ int l;

                {
                    this.l = i3;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    int iA2 = RecomposeScopeImplKt.a(this.l);
                    this.f78932b.a(this.f78933c, this.d, this.f78934e, this.f78935f, this.g, this.f78936h, this.f78937i, this.f78938j, this.f78939k, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public abstract Modifier b(Modifier modifier, boolean z);

    public abstract boolean c();

    public abstract String d();

    public abstract Modifier e(Modifier modifier, String str);
}
