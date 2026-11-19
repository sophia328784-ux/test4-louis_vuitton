package androidx.compose.ui.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SubcomposeLayoutKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SubcomposeLayoutKt$ReusedSlotId$1 f9569a = new SubcomposeLayoutKt$ReusedSlotId$1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f9570b = new Object();

    public static final void a(final Modifier modifier, final Function2 function2, Composer composer, final int i2, final int i3) {
        int i4;
        if (modifier != null) {
            modifier = a.e(modifier, "SubcomposeLayout");
        }
        GapComposer gapComposerH = composer.h(-1298353104);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("SubcomposeLayout");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new SubcomposeLayoutState();
                gapComposerH.q(objX);
            }
            b((SubcomposeLayoutState) objX, modifier, function2, gapComposerH, (i4 << 3) & 1008);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int i6 = i3;
                    SubcomposeLayoutKt.a(modifier, function2, (Composer) obj, iA, i6);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final SubcomposeLayoutState subcomposeLayoutState, final Modifier modifier, final Function2 function2, Composer composer, final int i2) {
        int i3;
        if (modifier != null) {
            modifier = a.e(modifier, "SubcomposeLayout");
        }
        GapComposer gapComposerH = composer.h(-511989831);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(subcomposeLayoutState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            GapComposer.CompositionContextImpl compositionContextImplH = gapComposerH.H();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            LayoutNode.T.getClass();
            Function0 function0 = LayoutNode.W;
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
            Updater.c(gapComposerH, subcomposeLayoutState, subcomposeLayoutState.f9580c);
            Updater.c(gapComposerH, compositionContextImplH, subcomposeLayoutState.d);
            Updater.c(gapComposerH, function2, subcomposeLayoutState.f9581e);
            ComposeUiNode.b0.getClass();
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            gapComposerH.Z(true);
            if (gapComposerH.i()) {
                gapComposerH.L(-1259187287);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1259245908);
                boolean zY = gapComposerH.y(subcomposeLayoutState);
                Object objX = gapComposerH.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new Function0<Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$4$1
                        {
                            super(0);
                        }

                        /* JADX WARN: Code duplicated, block: B:16:0x0056 A[DONT_INVERT] */
                        /* JADX WARN: Code duplicated, block: B:17:0x0058 A[LOOP:0: B:7:0x0022->B:17:0x0058, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:28:0x005b A[EDGE_INSN: B:28:0x005b->B:18:0x005b BREAK  A[LOOP:0: B:7:0x0022->B:17:0x0058], SYNTHETIC] */
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsStateA = subcomposeLayoutState.a();
                            LayoutNode layoutNode = layoutNodeSubcompositionsStateA.f9479b;
                            if (layoutNodeSubcompositionsStateA.o != layoutNode.I().size()) {
                                MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsStateA.g;
                                Object[] objArr = mutableScatterMap.f3363c;
                                long[] jArr = mutableScatterMap.f3361a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i4 = 0;
                                    while (true) {
                                        long j2 = jArr[i4];
                                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                                            if (i4 != length) {
                                                break;
                                                break;
                                            }
                                            i4++;
                                        } else {
                                            int i5 = 8 - ((~(i4 - length)) >>> 31);
                                            for (int i6 = 0; i6 < i5; i6++) {
                                                if ((255 & j2) < 128) {
                                                    ((LayoutNodeSubcompositionsState.NodeState) objArr[(i4 << 3) + i6]).d = true;
                                                }
                                                j2 >>= 8;
                                            }
                                            if (i5 != 8) {
                                                break;
                                            }
                                            if (i4 != length) {
                                                break;
                                            }
                                            i4++;
                                        }
                                    }
                                }
                                if (layoutNode.f9694j != null) {
                                    if (!layoutNode.I.f9709e) {
                                        LayoutNode.k0(layoutNode, false, 7);
                                    }
                                } else if (!layoutNode.K()) {
                                    LayoutNode.m0(layoutNode, false, 7);
                                }
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX);
                }
                EffectsKt.i((Function0) objX, gapComposerH);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    SubcomposeLayoutKt.b(subcomposeLayoutState, modifier, function2, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
