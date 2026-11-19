package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipKt;
import androidx.compose.material3.TooltipScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.booking.components.BookingImageSize;
import com.vuitton.android.presentation.screen.booking.components.BookingLoadingOverviewKt;
import com.vuitton.android.presentation.screen.booking.components.BookingOverviewKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationHeaderKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationLoadingHeaderKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceHeaderUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pf implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78841c;
    public final /* synthetic */ Object d;

    public /* synthetic */ pf(boolean z, Object obj, int i2) {
        this.f78840b = i2;
        this.f78841c = z;
        this.d = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        int i2 = this.f78840b;
        Object obj4 = this.d;
        boolean z = this.f78841c;
        switch (i2) {
            case 0:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (z) {
                        composer2.L(1238045814);
                        composer2.F();
                    } else {
                        composer2.L(1237970856);
                        composableLambdaImpl.invoke(composer2, 6);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 1:
                BookingExperienceViewState bookingExperienceViewState = (BookingExperienceViewState) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                int i3 = BookingReservationScreenKt.f54457b;
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(ClipKt.a(new DTFunctionNameModifier("BookingReservationScreen$lambda$3$4$1$0$0"), RoundedCornerShapeKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(composer3).m, LVAppDesignKitTheme.d(composer3).m, 3)), LVAppDesignKitTheme.c(composer3).f48361b.f48374a, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierB);
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
                    Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                    if (z) {
                        composer3.L(1584206602);
                        if (bookingExperienceViewState instanceof BookingExperienceViewState.Success) {
                            Modifier modifierI = PaddingKt.i(pq0.j(1584285218, composer3, "BookingReservationScreen$lambda$3$4$1$0$0"), LVAppDesignKitTheme.l(composer3).f48416e);
                            BookingExperienceHeaderUiModel bookingExperienceHeaderUiModel = ((BookingExperienceViewState.Success) bookingExperienceViewState).f54502a.f54558c;
                            BookingOverviewKt.a(modifierI, bookingExperienceHeaderUiModel.f54499f, bookingExperienceHeaderUiModel.f54495a, bookingExperienceHeaderUiModel.f54496b, bookingExperienceHeaderUiModel.f54498e, BookingImageSize.Large, composer3, ImageMetadata.EDGE_MODE, 0);
                            composer = composer3;
                            composer.F();
                        } else {
                            composer = composer3;
                            BookingLoadingOverviewKt.a(PaddingKt.i(pq0.j(1585013625, composer, "BookingReservationScreen$lambda$3$4$1$0$0"), LVAppDesignKitTheme.l(composer).f48416e), BookingImageSize.Large, composer, 48);
                            composer.F();
                        }
                        composer.F();
                    } else {
                        composer = composer3;
                        composer.L(1585423693);
                        if (bookingExperienceViewState instanceof BookingExperienceViewState.Success) {
                            composer.L(1585509873);
                            BookingReservationHeaderKt.a(null, ((BookingExperienceViewState.Success) bookingExperienceViewState).f54502a.f54558c, composer, 0);
                            composer.F();
                        } else {
                            composer.L(1585755021);
                            BookingReservationLoadingHeaderKt.a(null, composer, 0);
                            composer.F();
                        }
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 2:
                TooltipScope tooltipScope = (TooltipScope) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                tooltipScope.getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                TooltipKt.a(tooltipScope, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 0L, 0L, ComposableLambdaKt.b(-399410146, new z3(z, (String) obj4, 6), composer4), composer4, (iIntValue3 & 14) | 805306368);
                return Unit.f71739a;
            default:
                Function1 function1 = (Function1) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierI2 = PaddingKt.i(SizeKt.d(ScrollKt.d(SizeKt.v(new DTFunctionNameModifier("OrderReturnOrExchangePolicyBottomSheet$lambda$0"), null, 3), ScrollKt.b(composer5), false, 14), 1.0f), LVAppDesignKitTheme.l(composer5).f48417f);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer5, 0);
                    int iHashCode2 = Long.hashCode(composer5.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer5.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer5, modifierI2);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer5.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer5.B();
                    if (composer5.getS()) {
                        composer5.C(function2);
                    } else {
                        composer5.o();
                    }
                    Updater.c(composer5, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer5, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer5, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer5, ComposeUiNode.Companion.f9645h);
                    TextKt.c(StringResources_androidKt.c(composer5, z ? R.string.return_an_order_exchange_instructions_title : R.string.return_an_order_return_instructions_title), PaddingKt.m(n00.c(composer5, modifierC2, ComposeUiNode.Companion.d, "OrderReturnOrExchangePolicyBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).f48415c, 7), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(LVAppDesignKitTheme.n(composer5).f48426f, LVAppDesignKitTheme.c(composer5).f48361b.f48382k, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214), composer5, 0, 0, 131068);
                    Modifier modifierM = PaddingKt.m(tr.d("OrderReturnOrExchangePolicyBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).f48417f, 7);
                    int i4 = AnnotatedString.f10418f;
                    String strC = StringResources_androidKt.c(composer5, R.string.return_popup_top_message);
                    TextDecoration.f10965b.getClass();
                    TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    boolean zK = composer5.K(function1);
                    Object objX = composer5.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new rm(function1, 4);
                        composer5.q(objX);
                    }
                    TextKt.d(Html_androidKt.a(strC, textLinkStyles, (LinkInteractionListener) objX), modifierM, LVAppDesignKitTheme.c(composer5).f48361b.l, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer5).g, composer5, 0, 0, 262136);
                    composer5.r();
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
        }
    }
}
