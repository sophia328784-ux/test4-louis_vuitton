package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.AlertDialogKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.DialogProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.g5;
import defpackage.h5;
import defpackage.i1;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class AlertDialogKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f6549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f6550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f6551c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f6549a = 280.0f;
        f6550b = 560.0f;
        PaddingKt.a(24.0f);
        PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, 7);
        PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, 7);
        PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 24.0f, 7);
        f6551c = CompositionLocalKt.c(new g5(0));
    }

    public static final void a(final float f2, final float f3, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(-917637668);
        if (gapComposerH.p(i2 & 1, (i2 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new MeasurePolicy() { // from class: androidx.compose.material3.AlertDialogKt$AlertDialogFlowRow$1$1
                    public static final void a(ArrayList arrayList, Ref$IntRef ref$IntRef, MeasureScope measureScope, float f4, ArrayList arrayList2, ArrayList arrayList3, Ref$IntRef ref$IntRef2, ArrayList arrayList4, Ref$IntRef ref$IntRef3, Ref$IntRef ref$IntRef4) {
                        if (!arrayList.isEmpty()) {
                            ref$IntRef.f71919b = measureScope.B0(f4) + ref$IntRef.f71919b;
                        }
                        arrayList.add(0, CollectionsKt.y0(arrayList2));
                        arrayList3.add(Integer.valueOf(ref$IntRef2.f71919b));
                        arrayList4.add(Integer.valueOf(ref$IntRef.f71919b));
                        ref$IntRef.f71919b += ref$IntRef2.f71919b;
                        ref$IntRef3.f71919b = Math.max(ref$IntRef3.f71919b, ref$IntRef4.f71919b);
                        arrayList2.clear();
                        ref$IntRef4.f71919b = 0;
                        ref$IntRef2.f71919b = 0;
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                        Placeable placeable;
                        List list2 = list;
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        Ref$IntRef ref$IntRef = new Ref$IntRef();
                        Ref$IntRef ref$IntRef2 = new Ref$IntRef();
                        ArrayList arrayList4 = new ArrayList();
                        Ref$IntRef ref$IntRef3 = new Ref$IntRef();
                        Ref$IntRef ref$IntRef4 = new Ref$IntRef();
                        int i3 = 0;
                        for (int size = list2.size(); i3 < size; size = size) {
                            Placeable placeableT = ((Measurable) list2.get(i3)).T(j2);
                            boolean zIsEmpty = arrayList4.isEmpty();
                            float f4 = f2;
                            if (zIsEmpty) {
                                placeable = placeableT;
                            } else {
                                ArrayList arrayList5 = arrayList;
                                Ref$IntRef ref$IntRef5 = ref$IntRef2;
                                if (measureScope.B0(f4) + ref$IntRef3.f71919b + placeableT.f9548b <= Constraints.h(j2)) {
                                    arrayList = arrayList5;
                                    ref$IntRef2 = ref$IntRef5;
                                    placeable = placeableT;
                                } else {
                                    ref$IntRef2 = ref$IntRef5;
                                    placeable = placeableT;
                                    arrayList = arrayList5;
                                    a(arrayList, ref$IntRef2, measureScope, f3, arrayList4, arrayList2, ref$IntRef4, arrayList3, ref$IntRef, ref$IntRef3);
                                }
                            }
                            if (!arrayList4.isEmpty()) {
                                ref$IntRef3.f71919b = measureScope.B0(f4) + ref$IntRef3.f71919b;
                            }
                            arrayList4.add(placeable);
                            ref$IntRef3.f71919b += placeable.f9548b;
                            ref$IntRef4.f71919b = Math.max(ref$IntRef4.f71919b, placeable.f9549c);
                            i3++;
                            list2 = list;
                        }
                        if (!arrayList4.isEmpty()) {
                            a(arrayList, ref$IntRef2, measureScope, f3, arrayList4, arrayList2, ref$IntRef4, arrayList3, ref$IntRef, ref$IntRef3);
                        }
                        int iMax = Math.max(ref$IntRef.f71919b, Constraints.j(j2));
                        return measureScope.V0(iMax, Math.max(ref$IntRef2.f71919b, Constraints.i(j2)), MapsKt.c(), new h5(arrayList, measureScope, f2, iMax, arrayList3));
                    }
                };
                gapComposerH.q(objX);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objX;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AlertDialogFlowRow-ixp7dh8");
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function2 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function2);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImpl.invoke(gapComposerH, 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(f2, f3, composableLambdaImpl, i2) { // from class: f5

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ float f69046b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ float f69047c;
                public final /* synthetic */ ComposableLambdaImpl d;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(439);
                    AlertDialogKt.a(this.f69046b, this.f69047c, this.d, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Function0 function0, Modifier modifier, DialogProperties dialogProperties, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "BasicAlertDialog");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(24925658);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(dialogProperties) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ((BasicAlertDialogOverride) gapComposerH.k(f6551c)).a(new BasicAlertDialogOverrideScope(function0, modifier2, dialogProperties, composableLambdaImpl), gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(function0, modifier2, dialogProperties, composableLambdaImpl, i2);
        }
    }
}
