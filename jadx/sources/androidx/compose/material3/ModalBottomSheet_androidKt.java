package androidx.compose.material3;

import android.view.View;
import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ba0;
import defpackage.fa0;
import defpackage.fc;
import defpackage.vr;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u0017\u0010\u0003\u001a\r\u0012\u0004\u0012\u00020\u00010\u0000¢\u0006\u0002\b\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "currentContent", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ModalBottomSheet_androidKt {
    public static final void a(final Function0 function0, final long j2, final ModalBottomSheetProperties modalBottomSheetProperties, Animatable animatable, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        ModalBottomSheetProperties modalBottomSheetProperties2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z;
        LayoutDirection layoutDirection;
        Object obj;
        boolean z2;
        GapComposer gapComposerH = composer.h(766784632);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.e(j2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            modalBottomSheetProperties2 = modalBottomSheetProperties;
            i3 |= gapComposerH.K(modalBottomSheetProperties2) ? 256 : 128;
        } else {
            modalBottomSheetProperties2 = modalBottomSheetProperties;
        }
        if ((i2 & 3072) == 0) {
            i3 |= (i2 & 4096) == 0 ? gapComposerH.K(animatable) : gapComposerH.y(animatable) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            View view = (View) gapComposerH.k(AndroidCompositionLocals_androidKt.f9939f);
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            LayoutDirection layoutDirection2 = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            GapComposer.CompositionContextImpl compositionContextImplH = gapComposerH.H();
            final MutableState mutableStateL = SnapshotStateKt.l(composableLambdaImpl, gapComposerH);
            Object[] objArr = new Object[0];
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = new fa0(28);
                gapComposerH.q(objX);
            }
            UUID uuid = (UUID) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 48);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX2;
            boolean zK = gapComposerH.K(view) | gapComposerH.K(density);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                z = true;
                layoutDirection = layoutDirection2;
                ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper = new ModalBottomSheetDialogWrapper(function0, modalBottomSheetProperties2, j2, view, layoutDirection, density, uuid, animatable, coroutineScope, null);
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-1051373467, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetDialog$dialog$1$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Number) obj3).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Object objX4 = composer2.x();
                            if (objX4 == Composer.Companion.f7939a) {
                                objX4 = new ba0(9);
                                composer2.q(objX4);
                            }
                            Modifier modifierB = SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX4);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                            ComposeUiNode.b0.getClass();
                            Function0 function1 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function1);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function2 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function2, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            ((Function2) mutableStateL.getF10755b()).invoke(composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                });
                ModalBottomSheetDialogLayout modalBottomSheetDialogLayout = modalBottomSheetDialogWrapper.g;
                modalBottomSheetDialogLayout.setParentCompositionContext(compositionContextImplH);
                ((SnapshotMutableStateImpl) modalBottomSheetDialogLayout.m).setValue(composableLambdaImpl2);
                modalBottomSheetDialogLayout.n = true;
                modalBottomSheetDialogLayout.d();
                gapComposerH.q(modalBottomSheetDialogWrapper);
                obj = modalBottomSheetDialogWrapper;
            } else {
                layoutDirection = layoutDirection2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                z = true;
                obj = objX3;
            }
            final ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper2 = (ModalBottomSheetDialogWrapper) obj;
            boolean zY = gapComposerH.y(modalBottomSheetDialogWrapper2);
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
            if (zY || objX4 == composer$Companion$Empty$3) {
                z2 = false;
                objX4 = new o(modalBottomSheetDialogWrapper2, 0);
                gapComposerH.q(objX4);
            } else {
                z2 = false;
            }
            EffectsKt.c(modalBottomSheetDialogWrapper2, (Function1) objX4, gapComposerH);
            int i4 = i3;
            boolean zY2 = gapComposerH.y(modalBottomSheetDialogWrapper2) | ((i4 & 14) == 4 ? z : z2) | ((i4 & 896) == 256 ? z : z2) | ((i4 & 112) == 32 ? z : z2) | gapComposerH.d(layoutDirection.ordinal());
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$3) {
                final LayoutDirection layoutDirection3 = layoutDirection;
                objX5 = new Function0() { // from class: androidx.compose.material3.p
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        modalBottomSheetDialogWrapper2.b(function0, modalBottomSheetProperties, j2, layoutDirection3);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX5);
            }
            EffectsKt.i((Function0) objX5, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vr(function0, j2, modalBottomSheetProperties, animatable, composableLambdaImpl, i2);
        }
    }
}
