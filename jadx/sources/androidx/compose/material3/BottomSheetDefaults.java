package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.material3.BottomSheetDefaults;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.ShapeKeyTokens;
import androidx.compose.material3.tokens.SheetBottomTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import defpackage.a4;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/BottomSheetDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BottomSheetDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BottomSheetDefaults f6575a = new BottomSheetDefaults();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f6576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f6577c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f6578e;

    static {
        ShapeKeyTokens shapeKeyTokens = SheetBottomTokens.f7849a;
        f6576b = SheetBottomTokens.f7852e;
        Dp.Companion companion = Dp.f11004c;
        f6577c = 640.0f;
        d = 56.0f;
        f6578e = 125.0f;
    }

    public final void a(Modifier modifier, float f2, float f3, Shape shape, long j2, Composer composer, final int i2) {
        GapComposer gapComposer;
        final float f4;
        final float f5;
        final Shape shape2;
        final long j3;
        final float f6;
        final float f7;
        long jD;
        Shape shape3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "DragHandle-lgZ2HuY");
        }
        GapComposer gapComposerH = composer.h(-1364277227);
        int i3 = i2 | 9654;
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("DragHandle-lgZ2HuY");
                f6 = SheetBottomTokens.d;
                f7 = SheetBottomTokens.f7851c;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                CornerBasedShape cornerBasedShape = ((Shapes) gapComposerH.k(ShapesKt.f7199a)).f7196e;
                jD = ColorSchemeKt.d(SheetBottomTokens.f7850b, gapComposerH);
                shape3 = cornerBasedShape;
            } else {
                gapComposerH.D();
                f6 = f2;
                f7 = f3;
                shape3 = shape;
                jD = j2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int i4 = Strings.f7646a;
            String strA = Strings_androidKt.a(gapComposerH, R.string.m3c_bottom_sheet_drag_handle_description);
            Modifier modifierK = PaddingKt.k(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, SheetDefaultsKt.f7201a, 1);
            boolean zK = gapComposerH.K(strA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new a4(strA, 20);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            SurfaceKt.a(SemanticsModifierKt.b(modifierK, false, (Function1) objX), shape3, jD, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(-1039573072, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetDefaults$DragHandle$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        BoxKt.a(SizeKt.p(Modifier.Companion.f8607b, f6, f7), composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 12582912, 120);
            f5 = f7;
            shape2 = shape3;
            j3 = jD;
            f4 = f6;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            f4 = f2;
            f5 = f3;
            shape2 = shape;
            j3 = j2;
        }
        final Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(modifier2, f4, f5, shape2, j3, i2) { // from class: ch

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f21154c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f21155e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Shape f21156f;
                public final /* synthetic */ long g;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    BottomSheetDefaults bottomSheetDefaults = BottomSheetDefaults.f6575a;
                    this.f21153b.a(this.f21154c, this.d, this.f21155e, this.f21156f, this.g, composer2, RecomposeScopeImplKt.a(196609));
                    return Unit.f71739a;
                }
            };
        }
    }
}
