package coil3.compose;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import coil3.compose.SubcomposeAsyncImageKt;
import coil3.compose.internal.AsyncImageState;
import coil3.compose.internal.SubcomposeContentPainterElement;
import coil3.compose.internal.UtilsKt;
import coil3.request.ImageRequest;
import coil3.size.SizeResolver;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.sd;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-compose-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class SubcomposeAsyncImageKt {
    public static final void a(AsyncImageState asyncImageState, final String str, Modifier modifier, Function1 function1, Function1 function2, final Alignment alignment, final ContentScale contentScale, int i2, final Function3 function3, Composer composer, int i3, int i4) {
        int i5;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SubcomposeAsyncImage-gl8XCv8");
        }
        GapComposer gapComposerH = composer.h(-205779950);
        int i6 = i3 | (gapComposerH.K(asyncImageState) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(modifierE) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.K(alignment) ? 131072 : 65536) | (gapComposerH.K(contentScale) ? 1048576 : 524288) | (gapComposerH.c(1.0f) ? 8388608 : 4194304) | (gapComposerH.K(null) ? 67108864 : 33554432) | (gapComposerH.d(i2) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if ((i4 & 6) == 0) {
            i5 = i4 | (gapComposerH.b(true) ? 4 : 2);
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposerH.y(function3) ? 32 : 16;
        }
        if (gapComposerH.p(i6 & 1, ((306783379 & i6) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ImageRequest imageRequestE = UtilsKt.e(asyncImageState.f21320a, contentScale, gapComposerH, (i6 >> 15) & 112);
            int i7 = i6 >> 6;
            int i8 = i6 >> 12;
            final AsyncImagePainter asyncImagePainterA = AsyncImagePainterKt.a(new AsyncImageState(imageRequestE, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), asyncImageState.f21322c), function1, function2, contentScale, i2, gapComposerH);
            SizeResolver sizeResolver = imageRequestE.u;
            if (sizeResolver instanceof ConstraintsSizeResolver) {
                gapComposerH.L(-1470570430);
                final ConstraintsSizeResolver constraintsSizeResolver = (ConstraintsSizeResolver) sizeResolver;
                modifier2 = modifierE;
                BoxWithConstraintsKt.a(modifier2, alignment, true, ComposableLambdaKt.b(-374957172, new Function3() { // from class: coil3.compose.b
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(boxWithConstraintsScope) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            constraintsSizeResolver.v(boxWithConstraintsScope.getF4940b());
                            function3.A(new RealSubcomposeAsyncImageScope(boxWithConstraintsScope, asyncImagePainterA, str, alignment, contentScale, 1.0f, null, true), composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, (i7 & 14) | 3456 | (i8 & 112), 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1471259157);
                MeasurePolicy measurePolicyD = BoxKt.d(alignment, true);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                function3.A(new RealSubcomposeAsyncImageScope(BoxScopeInstance.f4938a, asyncImagePainterA, str, alignment, contentScale, 1.0f, null, true), gapComposerH, Integer.valueOf(i5 & 112));
                gapComposerH.Z(true);
                gapComposerH.Z(false);
                modifier2 = modifierE;
            }
        } else {
            modifier2 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sd(asyncImageState, str, modifier2, function1, function2, alignment, contentScale, i2, function3, i3, i4);
        }
    }

    public static final void b(SubcomposeAsyncImageScope subcomposeAsyncImageScope, Modifier modifier, Painter painter, String str, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, boolean z, Composer composer, final int i2) {
        SubcomposeAsyncImageScope subcomposeAsyncImageScope2;
        int i3;
        Painter painterD;
        final String contentDescription;
        final Alignment alignment2;
        final ContentScale contentScaleF;
        final float f3;
        final ColorFilter colorFilter2;
        final boolean z2;
        float fA;
        ColorFilter colorFilterB;
        boolean zH;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "SubcomposeAsyncImageContent");
        }
        GapComposer gapComposerH = composer.h(-1375825518);
        if ((i2 & 6) == 0) {
            subcomposeAsyncImageScope2 = subcomposeAsyncImageScope;
            i3 = (gapComposerH.K(subcomposeAsyncImageScope2) ? 4 : 2) | i2;
        } else {
            subcomposeAsyncImageScope2 = subcomposeAsyncImageScope;
            i3 = i2;
        }
        int i4 = i3 | 48;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 = i3 | 176;
        }
        if ((i2 & 3072) == 0) {
            i4 |= 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= 33554432;
        }
        if (gapComposerH.p(i4 & 1, (38347923 & i4) != 38347922)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("SubcomposeAsyncImageContent");
                painterD = subcomposeAsyncImageScope2.getF21311b();
                contentDescription = subcomposeAsyncImageScope2.getF21312c();
                alignment2 = subcomposeAsyncImageScope2.getD();
                contentScaleF = subcomposeAsyncImageScope2.getF21313e();
                fA = subcomposeAsyncImageScope2.getF21314f();
                colorFilterB = subcomposeAsyncImageScope2.getG();
                zH = subcomposeAsyncImageScope2.getF21315h();
            } else {
                gapComposerH.D();
                painterD = painter;
                contentDescription = str;
                alignment2 = alignment;
                contentScaleF = contentScale;
                fA = f2;
                colorFilterB = colorFilter;
                zH = z;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = dTFunctionNameModifier.o(new SubcomposeContentPainterElement(painterD, alignment2, contentScaleF, fA, colorFilterB, zH, contentDescription));
            MeasurePolicy measurePolicyA = UtilsKt.a();
            int iHashCode = Long.hashCode(gapComposerH.T);
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Modifier modifier2 = dTFunctionNameModifier;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            gapComposerH.Z(true);
            f3 = fA;
            colorFilter2 = colorFilterB;
            z2 = zH;
            dTFunctionNameModifier = modifier2;
        } else {
            gapComposerH.D();
            painterD = painter;
            contentDescription = str;
            alignment2 = alignment;
            contentScaleF = contentScale;
            f3 = f2;
            colorFilter2 = colorFilter;
            z2 = z;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = dTFunctionNameModifier;
            final SubcomposeAsyncImageScope subcomposeAsyncImageScope3 = subcomposeAsyncImageScope2;
            final Painter painter2 = painterD;
            recomposeScopeImplB0.d = new Function2() { // from class: a21
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SubcomposeAsyncImageKt.b(subcomposeAsyncImageScope3, modifier3, painter2, contentDescription, alignment2, contentScaleF, f3, colorFilter2, z2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
