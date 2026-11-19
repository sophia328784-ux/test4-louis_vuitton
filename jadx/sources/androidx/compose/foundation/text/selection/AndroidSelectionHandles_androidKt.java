package androidx.compose.foundation.text.selection;

import android.graphics.Bitmap;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAbsoluteAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.compose.ui.window.SecureFlagPolicy;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.e6;
import defpackage.f6;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidSelectionHandles_androidKt {
    public static final void a(OffsetProvider offsetProvider, Alignment alignment, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-1090171650);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(offsetProvider) : gapComposerH.y(offsetProvider) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(alignment) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 256 : 128;
        }
        boolean z = false;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = (i3 & 112) == 32;
            if ((i3 & 14) == 4 || ((i3 & 8) != 0 && gapComposerH.K(offsetProvider))) {
                z = true;
            }
            boolean z3 = z2 | z;
            Object objX = gapComposerH.x();
            if (z3 || objX == Composer.Companion.f7939a) {
                objX = new HandlePositionProvider(alignment, offsetProvider);
                gapComposerH.q(objX);
            }
            AndroidPopup_androidKt.a((HandlePositionProvider) objX, null, new PopupProperties(false, false, false, (SecureFlagPolicy) null, true, false, 15, (DefaultConstructorMarker) null), composableLambdaImpl, gapComposerH, ((i3 << 3) & 7168) | KyberEngine.KyberPolyBytes, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 1, offsetProvider, alignment, composableLambdaImpl);
        }
    }

    public static final void b(final OffsetProvider offsetProvider, final boolean z, final ResolvedTextDirection resolvedTextDirection, final boolean z2, long j2, final float f2, Modifier modifier, Composer composer, final int i2) {
        int i3;
        final long j3;
        long j4;
        int i4;
        final boolean z3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SelectionHandle-wLIcFTc");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-466280168);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(offsetProvider) : gapComposerH.y(offsetProvider) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(resolvedTextDirection.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= 8192;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (533651 & i3) != 533650)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                DpSize.f11009b.getClass();
                j4 = DpSize.f11010c;
                i4 = i3 & (-57345);
            } else {
                gapComposerH.D();
                i4 = i3 & (-57345);
                j4 = j2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                float f3 = SelectionHandlesKt.f6429a;
                z3 = (resolvedTextDirection == ResolvedTextDirection.Ltr && !z2) || (resolvedTextDirection == ResolvedTextDirection.Rtl && z2);
            } else {
                float f4 = SelectionHandlesKt.f6429a;
                z3 = (resolvedTextDirection != ResolvedTextDirection.Ltr || z2) && !(resolvedTextDirection == ResolvedTextDirection.Rtl && z2);
            }
            BiasAbsoluteAlignment biasAbsoluteAlignment = z3 ? AbsoluteAlignment.f8579b : AbsoluteAlignment.f8578a;
            int i5 = i4 & 14;
            boolean zB = ((i4 & 112) == 32) | (i5 == 4 || ((i4 & 8) != 0 && gapComposerH.y(offsetProvider))) | gapComposerH.b(z3);
            Object objX = gapComposerH.x();
            if (zB || objX == Composer.Companion.f7939a) {
                objX = new Function1() { // from class: z5
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        long jA = offsetProvider.a();
                        semanticsPropertyReceiver.a(SelectionHandlesKt.f6431c, new SelectionHandleInfo(z ? Handle.SelectionStart : Handle.SelectionEnd, jA, z3 ? SelectionHandleAnchor.Left : SelectionHandleAnchor.Right, (9223372034707292159L & jA) != 9205357640488583168L, null));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            final Modifier modifierB = SemanticsModifierKt.b(modifier2, false, (Function1) objX);
            final ViewConfiguration viewConfiguration = (ViewConfiguration) gapComposerH.k(CompositionLocalsKt.u);
            long j5 = j4;
            BiasAbsoluteAlignment biasAbsoluteAlignment2 = biasAbsoluteAlignment;
            j3 = j5;
            a(offsetProvider, biasAbsoluteAlignment2, ComposableLambdaKt.b(1365123137, new Function2() { // from class: a6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Modifier modifierE2 = modifierB;
                    if (modifierE2 != null) {
                        modifierE2 = a.e(modifierE2, "SelectionHandle_wLIcFTc$lambda$1");
                    }
                    final Modifier modifier3 = modifierE2;
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        ProvidedValue providedValueC = CompositionLocalsKt.u.c(viewConfiguration);
                        final long j6 = j3;
                        final boolean z4 = z3;
                        final OffsetProvider offsetProvider2 = offsetProvider;
                        CompositionLocalKt.a(providedValueC, ComposableLambdaKt.b(1260045569, new Function2() { // from class: c6
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Integer) obj4).intValue();
                                Modifier modifierE3 = modifier3;
                                if (modifierE3 != null) {
                                    modifierE3 = a.e(modifierE3, "SelectionHandle_wLIcFTc$lambda$1$0");
                                }
                                Modifier modifier4 = modifierE3;
                                final int i6 = 1;
                                final int i7 = 0;
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    long j7 = j6;
                                    boolean z5 = z4;
                                    final OffsetProvider offsetProvider3 = offsetProvider2;
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                    if (j7 != 9205357640488583168L) {
                                        composer3.L(3458246);
                                        Arrangement.Horizontal horizontal = z5 ? Arrangement.Absolute.f4924b : Arrangement.Absolute.f4923a;
                                        Modifier modifierM = SizeKt.m(modifier4, DpSize.b(j7), DpSize.a(j7), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12);
                                        Alignment.f8582a.getClass();
                                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(horizontal, Alignment.Companion.f8591k, composer3, 0);
                                        int iHashCode = Long.hashCode(composer3.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer3, modifierM);
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
                                        Updater.c(composer3, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                        Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                        Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                                        DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer3, modifierC, ComposeUiNode.Companion.d, "SelectionHandle_wLIcFTc$lambda$1$0");
                                        boolean zY = composer3.y(offsetProvider3);
                                        Object objX2 = composer3.x();
                                        if (zY || objX2 == composer$Companion$Empty$1) {
                                            objX2 = new Function0() { // from class: d6
                                                @Override // kotlin.jvm.functions.Function0
                                                /* JADX INFO: renamed from: invoke */
                                                public final Object mo47invoke() {
                                                    int i8 = i7;
                                                    OffsetProvider offsetProvider4 = offsetProvider3;
                                                    switch (i8) {
                                                        case 0:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.a()) != 9205357640488583168L);
                                                        default:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.a()) != 9205357640488583168L);
                                                    }
                                                }
                                            };
                                            composer3.q(objX2);
                                        }
                                        AndroidSelectionHandles_androidKt.c(6, composer3, dTFunctionNameModifierF, (Function0) objX2, z5);
                                        composer3.r();
                                        composer3.F();
                                    } else {
                                        composer3.L(4389176);
                                        boolean zY2 = composer3.y(offsetProvider3);
                                        Object objX3 = composer3.x();
                                        if (zY2 || objX3 == composer$Companion$Empty$1) {
                                            objX3 = new Function0() { // from class: d6
                                                @Override // kotlin.jvm.functions.Function0
                                                /* JADX INFO: renamed from: invoke */
                                                public final Object mo47invoke() {
                                                    int i8 = i6;
                                                    OffsetProvider offsetProvider4 = offsetProvider3;
                                                    switch (i8) {
                                                        case 0:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.a()) != 9205357640488583168L);
                                                        default:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.a()) != 9205357640488583168L);
                                                    }
                                                }
                                            };
                                            composer3.q(objX3);
                                        }
                                        AndroidSelectionHandles_androidKt.c(0, composer3, modifier4, (Function0) objX3, z5);
                                        composer3.F();
                                    }
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 56);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, i5 | KyberEngine.KyberPolyBytes);
        } else {
            gapComposerH.D();
            j3 = j2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final long j6 = j3;
            recomposeScopeImplB0.d = new Function2() { // from class: b6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AndroidSelectionHandles_androidKt.b(offsetProvider, z, resolvedTextDirection, z2, j6, f2, modifier2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(int i2, Composer composer, Modifier modifier, Function0 function0, boolean z) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "SelectionHandleIcon");
        }
        GapComposer gapComposerH = composer.h(2111672474);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        int i4 = i3 | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SpacerKt.a(gapComposerH, ComposedModifierKt.a(SizeKt.p(modifier, SelectionHandlesKt.f6429a, SelectionHandlesKt.f6430b), InspectableValueKt.f10100a, new f6(z, function0)));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new e6(modifier, function0, z, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    public static final ImageBitmap d(CacheDrawScope cacheDrawScope, float f2) {
        int iCeil = ((int) Math.ceil(f2)) * 2;
        AndroidImageBitmap androidImageBitmapA = HandleImageCache.f6345a;
        AndroidCanvas androidCanvasA = HandleImageCache.f6346b;
        CanvasDrawScope canvasDrawScope = HandleImageCache.f6347c;
        if (androidImageBitmapA != null) {
            Bitmap bitmap = androidImageBitmapA.f8834a;
            if (androidCanvasA == null || iCeil > bitmap.getWidth() || iCeil > bitmap.getHeight()) {
                ImageBitmapConfig.f8892b.getClass();
                androidImageBitmapA = ImageBitmapKt.a(iCeil, iCeil, ImageBitmapConfig.f8893c);
                HandleImageCache.f6345a = androidImageBitmapA;
                androidCanvasA = CanvasKt.a(androidImageBitmapA);
                HandleImageCache.f6346b = androidCanvasA;
            }
        } else {
            ImageBitmapConfig.f8892b.getClass();
            androidImageBitmapA = ImageBitmapKt.a(iCeil, iCeil, ImageBitmapConfig.f8893c);
            HandleImageCache.f6345a = androidImageBitmapA;
            androidCanvasA = CanvasKt.a(androidImageBitmapA);
            HandleImageCache.f6346b = androidCanvasA;
        }
        AndroidImageBitmap androidImageBitmap = androidImageBitmapA;
        AndroidCanvas androidCanvas = androidCanvasA;
        Bitmap bitmap2 = androidImageBitmap.f8834a;
        if (canvasDrawScope == null) {
            canvasDrawScope = new CanvasDrawScope();
            HandleImageCache.f6347c = canvasDrawScope;
        }
        CanvasDrawScope canvasDrawScope2 = canvasDrawScope;
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope2.f8995b;
        LayoutDirection layoutDirection = cacheDrawScope.f8706b.getLayoutDirection();
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(bitmap2.getWidth())) << 32) | (((long) Float.floatToRawIntBits(bitmap2.getHeight())) & BodyPartID.bodyIdMax);
        Size.Companion companion = Size.f8820b;
        Density density = drawParams.f8998a;
        LayoutDirection layoutDirection2 = drawParams.f8999b;
        Canvas canvas = drawParams.f9000c;
        long j2 = drawParams.d;
        drawParams.f8998a = cacheDrawScope;
        drawParams.f8999b = layoutDirection;
        drawParams.f9000c = androidCanvas;
        drawParams.d = jFloatToRawIntBits;
        androidCanvas.p();
        Color.f8866b.getClass();
        long j3 = Color.f8867c;
        long jB = canvasDrawScope2.b();
        BlendMode.f8847a.getClass();
        DrawScope.k0(canvasDrawScope2, j3, 0L, jB, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 58);
        long jC = ColorKt.c(4278190080L);
        Offset.f8806b.getClass();
        DrawScope.k0(canvasDrawScope2, jC, 0L, (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 120);
        DrawScope.r0(canvasDrawScope2, ColorKt.c(4278190080L), f2, (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax), null, 120);
        androidCanvas.restore();
        drawParams.f8998a = density;
        drawParams.f8999b = layoutDirection2;
        drawParams.f9000c = canvas;
        drawParams.d = j2;
        return androidImageBitmap;
    }
}
