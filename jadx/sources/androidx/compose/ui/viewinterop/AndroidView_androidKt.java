package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.GroupKind;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.UiApplier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidView_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function1 f11071a = AndroidView_androidKt$NoOpUpdate$1.f11080c;

    public static final void a(Function1 function1, Modifier modifier, Function1 function2, Composer composer, final int i2, final int i3) {
        int i4;
        Function1 function3;
        final Function1 function4;
        final Modifier modifier2;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "AndroidView");
        }
        GapComposer gapComposerH = composer.h(-1783766393);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(function1) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i5 = i3 & 2;
        if (i5 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifier) ? 32 : 16;
        }
        int i6 = i3 & 4;
        if (i6 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("AndroidView");
            }
            Modifier modifier3 = modifier;
            Function1 function5 = f11071a;
            Function1 function6 = i6 != 0 ? function5 : function2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function3 = function1;
            b(function3, modifier3, function5, function6, gapComposerH, (i4 & 14) | 3072 | (i4 & 112) | (57344 & (i4 << 6)));
            modifier2 = modifier3;
            function4 = function6;
        } else {
            function3 = function1;
            gapComposerH.D();
            function4 = function2;
            modifier2 = modifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Function1 function7 = function3;
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AndroidView_androidKt.a(function7, modifier2, function4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final Function1 function1, Modifier modifier, final Function1 function2, final Function1 function3, Composer composer, final int i2) {
        int i3;
        LifecycleOwner lifecycleOwner;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AndroidView");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-180024211);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function1) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        int i4 = i3 | KyberEngine.KyberPolyBytes;
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2.o(FocusGroupPropertiesElement.f11096b).o(FocusTargetNode.FocusTargetElement.f8781b).o(FocusTargetPropertiesElement.f11101b).o(FocusTargetInteropElement.f11099b));
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            LayoutDirection layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a);
            SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) gapComposerH.k(LocalSavedStateRegistryOwnerKt.f19789a);
            gapComposerH.L(1314774735);
            int i5 = i4 & 14;
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            final int iHashCode2 = Long.hashCode(gapComposerH.getT());
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final GapComposer.CompositionContextImpl compositionContextImplH = gapComposerH.H();
            final SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposerH.k(SaveableStateRegistryKt.f8434a);
            final View view = (View) gapComposerH.k(AndroidCompositionLocals_androidKt.f9939f);
            boolean zY = gapComposerH.y(context) | ((((i5 & 14) ^ 6) > 4 && gapComposerH.K(function1)) || (i5 & 6) == 4) | gapComposerH.y(compositionContextImplH) | gapComposerH.y(saveableStateRegistry) | gapComposerH.d(iHashCode2) | gapComposerH.y(view);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                lifecycleOwner = lifecycleOwner2;
                Function0<LayoutNode> function0 = new Function0<LayoutNode>() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$createAndroidViewNodeFactory$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        KeyEvent.Callback callback = view;
                        callback.getClass();
                        return new ViewFactoryHolder(context, function1, compositionContextImplH, saveableStateRegistry, iHashCode2, (Owner) callback).getLayoutNode();
                    }
                };
                gapComposerH.q(function0);
                objX = function0;
            } else {
                lifecycleOwner = lifecycleOwner2;
            }
            Function0 function4 = (Function0) objX;
            if (!(gapComposerH.f7976a instanceof UiApplier)) {
                ComposablesKt.b();
                throw null;
            }
            GroupKind.f8183a.getClass();
            gapComposerH.x0(null, 125, null, GroupKind.f8184b);
            gapComposerH.r = true;
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            ComposeUiNode.b0.getClass();
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, modifierC, AndroidView_androidKt$updateViewHolderParams$1.f11085c);
            Updater.c(gapComposerH, density, AndroidView_androidKt$updateViewHolderParams$2.f11086c);
            Updater.c(gapComposerH, lifecycleOwner, AndroidView_androidKt$updateViewHolderParams$3.f11087c);
            Updater.c(gapComposerH, savedStateRegistryOwner, AndroidView_androidKt$updateViewHolderParams$4.f11088c);
            Updater.c(gapComposerH, layoutDirection, AndroidView_androidKt$updateViewHolderParams$5.f11089c);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.c(gapComposerH, function3, AndroidView_androidKt$AndroidView$3$1.f11075c);
            Updater.c(gapComposerH, function2, AndroidView_androidKt$AndroidView$3$2.f11076c);
            gapComposerH.Z(true);
            gapComposerH.Z(false);
        } else {
            modifier2 = modifier2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = modifier2;
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AndroidView_androidKt.b(function1, modifier3, function2, function3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final ViewFactoryHolder c(LayoutNode layoutNode) {
        AndroidViewHolder androidViewHolder = layoutNode.q;
        if (androidViewHolder != null) {
            return (ViewFactoryHolder) androidViewHolder;
        }
        throw defpackage.a.s("Required value was null.");
    }
}
