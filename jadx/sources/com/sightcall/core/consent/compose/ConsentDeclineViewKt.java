package com.sightcall.core.consent.compose;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.ConstraintLayoutScope;
import androidx.constraintlayout.compose.ConstraintSetForInlineDsl;
import androidx.constraintlayout.compose.Measurer2;
import androidx.constraintlayout.compose.ToolingUtilsKt;
import com.sightcall.core.R;
import com.sightcall.graphik.Colors;
import com.sightcall.graphik.ColorsKt;
import com.sightcall.graphik.VisionThemeKt;
import com.sightcall.graphik.composent.ButtonsKt;
import com.sightcall.graphik.composent.DividersKt;
import defpackage.i1;
import defpackage.lp;
import defpackage.wh;
import defpackage.z;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a3\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\bH\u0007¢\u0006\u0002\u0010\t\u001a\r\u0010\n\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"ConsentDeclineView", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "declineTitle", "", "declineBody", "onDeclineBack", "Lkotlin/Function0;", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "PreviewConsentDeclineView", "(Landroidx/compose/runtime/Composer;I)V", "core_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ConsentDeclineViewKt {
    public static final void ConsentDeclineView(Context context, String str, String str2, Function0<Unit> function0, Composer composer, int i2) {
        int i3;
        context.getClass();
        str.getClass();
        str2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1149710592);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(context) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i3 & 1171) == 1170 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            VisionThemeKt.VisionTheme(ComposableLambdaKt.b(735412758, new z(str, str2, context, function0), gapComposerH), gapComposerH, 6);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(context, str, str2, function0, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ConsentDeclineView$lambda$0(final String str, final String str2, final Context context, final Function0 function0, Composer composer, int i2) {
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
                objX6 = new MeasurePolicy() { // from class: com.sightcall.core.consent.compose.ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2
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
                        long jF = measurer2.f(j2, measureScope.getF9495b(), constraintSetForInlineDsl, list, linkedHashMap, i3);
                        mutableState.getF10755b();
                        IntSize.Companion companion2 = IntSize.f11020b;
                        int i4 = (int) (jF >> 32);
                        int i5 = (int) (jF & BodyPartID.bodyIdMax);
                        final Measurer2 measurer3 = measurer2;
                        return measureScope.V0(i4, i5, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: com.sightcall.core.consent.compose.ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2.1
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
                objX7 = new Function0<Unit>() { // from class: com.sightcall.core.consent.compose.ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$3
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
            final Function0 function1 = (Function0) objX7;
            boolean zY2 = composer.y(measurer2);
            Object objX8 = composer.x();
            if (zY2 || objX8 == obj) {
                objX8 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.sightcall.core.consent.compose.ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$4
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
            LayoutKt.a(SemanticsModifierKt.b(modifierO, false, (Function1) objX8), ComposableLambdaKt.b(1200550679, new Function2<Composer, Integer, Unit>() { // from class: com.sightcall.core.consent.compose.ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                /* JADX WARN: Code duplicated, block: B:23:0x0132  */
                /* JADX WARN: Code duplicated, block: B:26:0x0177  */
                public final void invoke(Composer composer2, int i4) {
                    Object obj2;
                    boolean zK;
                    Object objX9;
                    Object obj3;
                    Object objX10;
                    if ((i4 & 3) == 2 && composer2.i()) {
                        composer2.D();
                        return;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    mutableState2.setValue(Unit.f71739a);
                    constraintLayoutScope.getClass();
                    constraintLayoutScope.d();
                    ConstraintLayoutScope constraintLayoutScope2 = constraintLayoutScope;
                    composer2.L(876141467);
                    ConstraintLayoutScope constraintLayoutScope3 = ConstraintLayoutScope.this;
                    ConstrainedLayoutReference constrainedLayoutReferenceB = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB2 = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB3 = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB4 = constraintLayoutScope3.b();
                    ConstrainedLayoutReference constrainedLayoutReferenceB5 = constraintLayoutScope3.b();
                    TextStyle textStyle = MaterialTheme.b(composer2).g;
                    Colors colors = (Colors) composer2.k(ColorsKt.getLocalVisionAppColors());
                    int i5 = Colors.$stable;
                    TextStyle textStyleA = TextStyle.a(textStyle, colors.getConsentTitleTextColor(composer2, i5), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
                    boolean zK2 = composer2.K(constrainedLayoutReferenceB);
                    Object objX11 = composer2.x();
                    Object obj4 = Composer.Companion.f7939a;
                    if (zK2 || objX11 == obj4) {
                        objX11 = new ConsentDeclineViewKt$ConsentDeclineView$1$1$1$1(constrainedLayoutReferenceB);
                        composer2.q(objX11);
                    }
                    TextKt.b(str, ConstraintLayoutScope.a(constrainedLayoutReferenceB2, (Function1) objX11), 0L, 0L, 0L, 0L, 0, false, 0, 0, textStyleA, composer2, 0, 65532);
                    boolean zK3 = composer2.K(constrainedLayoutReferenceB2);
                    Object objX12 = composer2.x();
                    if (!zK3) {
                        obj2 = obj4;
                        if (objX12 == obj2) {
                        }
                        DividersKt.VisionDivider(ConstraintLayoutScope.a(constrainedLayoutReferenceB3, (Function1) objX12), composer2, 0, 0);
                        TextStyle textStyleA2 = TextStyle.a(MaterialTheme.b(composer2).f7450k, ((Colors) composer2.k(ColorsKt.getLocalVisionAppColors())).getConsentBodyTextColor(composer2, i5), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
                        zK = composer2.K(constrainedLayoutReferenceB3);
                        objX9 = composer2.x();
                        if (zK || objX9 == obj2) {
                            objX9 = new ConsentDeclineViewKt$ConsentDeclineView$1$1$3$1(constrainedLayoutReferenceB3);
                            composer2.q(objX9);
                        }
                        obj3 = obj2;
                        TextKt.b(str2, ConstraintLayoutScope.a(constrainedLayoutReferenceB4, (Function1) objX9), 0L, 0L, 0L, 0L, 0, false, 0, 0, textStyleA2, composer2, 0, 65532);
                        String string = context.getString(R.string.consent_declined_button_back);
                        string.getClass();
                        Function0 function2 = function0;
                        objX10 = composer2.x();
                        if (objX10 == obj3) {
                            objX10 = ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1.INSTANCE;
                            composer2.q(objX10);
                        }
                        ButtonsKt.LargeConfirmButton(string, function2, ConstraintLayoutScope.a(constrainedLayoutReferenceB5, (Function1) objX10), composer2, 0, 0);
                        composer2.F();
                        constraintLayoutScope.getClass();
                    }
                    obj2 = obj4;
                    objX12 = new ConsentDeclineViewKt$ConsentDeclineView$1$1$2$1(constrainedLayoutReferenceB2);
                    composer2.q(objX12);
                    DividersKt.VisionDivider(ConstraintLayoutScope.a(constrainedLayoutReferenceB3, (Function1) objX12), composer2, 0, 0);
                    TextStyle textStyleA3 = TextStyle.a(MaterialTheme.b(composer2).f7450k, ((Colors) composer2.k(ColorsKt.getLocalVisionAppColors())).getConsentBodyTextColor(composer2, i5), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
                    zK = composer2.K(constrainedLayoutReferenceB3);
                    objX9 = composer2.x();
                    if (zK) {
                        objX9 = new ConsentDeclineViewKt$ConsentDeclineView$1$1$3$1(constrainedLayoutReferenceB3);
                        composer2.q(objX9);
                    } else {
                        objX9 = new ConsentDeclineViewKt$ConsentDeclineView$1$1$3$1(constrainedLayoutReferenceB3);
                        composer2.q(objX9);
                    }
                    obj3 = obj2;
                    TextKt.b(str2, ConstraintLayoutScope.a(constrainedLayoutReferenceB4, (Function1) objX9), 0L, 0L, 0L, 0L, 0, false, 0, 0, textStyleA3, composer2, 0, 65532);
                    String string2 = context.getString(R.string.consent_declined_button_back);
                    string2.getClass();
                    Function0 function3 = function0;
                    objX10 = composer2.x();
                    if (objX10 == obj3) {
                        objX10 = ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1.INSTANCE;
                        composer2.q(objX10);
                    }
                    ButtonsKt.LargeConfirmButton(string2, function3, ConstraintLayoutScope.a(constrainedLayoutReferenceB5, (Function1) objX10), composer2, 0, 0);
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
    public static final Unit ConsentDeclineView$lambda$1(Context context, String str, String str2, Function0 function0, int i2, Composer composer, int i3) {
        ConsentDeclineView(context, str, str2, function0, composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }

    public static final void PreviewConsentDeclineView(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(256556309);
        if (i2 == 0 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new lp(14);
                gapComposerH.q(objX);
            }
            ConsentDeclineView(context, "Decline", "You have declined the privacy policy.", (Function0) objX, gapComposerH, 3504);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wh(i2, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PreviewConsentDeclineView$lambda$1(int i2, Composer composer, int i3) {
        PreviewConsentDeclineView(composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }
}
