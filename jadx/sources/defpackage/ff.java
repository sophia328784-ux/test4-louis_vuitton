package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.SwipeToDismissVerticalKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationViewState;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ff implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69127b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f69128c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69130f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69131h;

    public /* synthetic */ ff(float f2, BookingConfirmationViewState bookingConfirmationViewState, Function1 function1, Function1 function2, Function2 function3, Function1 function4, int i2) {
        this.f69128c = f2;
        this.d = bookingConfirmationViewState;
        this.f69129e = function1;
        this.f69130f = function2;
        this.f69131h = function3;
        this.g = function4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer;
        int i2 = this.f69127b;
        Object obj3 = this.f69131h;
        Object obj4 = this.g;
        Object obj5 = this.f69130f;
        Object obj6 = this.f69129e;
        Object obj7 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                BookingConfirmationScreenKt.a(this.f69128c, (BookingConfirmationViewState) obj7, (Function1) obj6, (Function1) obj5, (Function2) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                Modifier modifierE = (Modifier) obj7;
                Function0 function0 = (Function0) obj6;
                Function0 function1 = (Function0) obj5;
                InboxNotificationUiModel inboxNotificationUiModel = (InboxNotificationUiModel) obj4;
                ScrollState scrollState = (ScrollState) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "NotificationDialog$lambda$0");
                }
                if (composer2.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.m(PaddingKt.i(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.l(composer2).f48416e), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.f69128c, 7), LVAppDesignKitTheme.j(composer2).f48411c), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                    boolean zK = composer2.K(function0);
                    Object objX = composer2.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new ee0(function0, 6);
                        composer2.q(objX);
                    }
                    Modifier modifierC = ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 31);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierC);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function2);
                    } else {
                        composer2.o();
                    }
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, measurePolicyD, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function5);
                    Function1 function6 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function6);
                    Function2 function7 = ComposeUiNode.Companion.d;
                    Modifier modifierC3 = n00.c(composer2, modifierC2, function7, "NotificationDialog$lambda$0", 1.0f);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer2).f48416e);
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, horizontal, composer2, 0);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierC3);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function2);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, function3);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function4);
                    cj.s(iHashCode2, composer2, function5, composer2, function6);
                    Updater.c(composer2, modifierC4, function7);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), null, ModifierExtKt.c(PaddingKt.m(ColumnScopeInstance.f4944a.b(new DTFunctionNameModifier("NotificationDialog$lambda$0"), Alignment.Companion.p), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), false, null, null, function1, 31), LVAppDesignKitTheme.c(composer2).f48361b.f48382k, composer2, 56, 0);
                    Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("NotificationDialog$lambda$0"), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    String strK = inboxNotificationUiModel.f52413b;
                    if (strK == null) {
                        strK = o60.k(composer2, -285639824, R.string.my_notifications_empty_default_title, composer2);
                    } else {
                        composer2.L(-285640506);
                        composer2.F();
                    }
                    TextKt.c(strK, modifierK, LVAppDesignKitTheme.c(composer2).f48361b.u, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48426f, composer2, 0, 0, 131064);
                    Modifier modifierD = ScrollKt.d(SizeKt.d(new DTFunctionNameModifier("NotificationDialog$lambda$0"), 1.0f), scrollState, false, 14);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, horizontal, composer2, 0);
                    int iHashCode3 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer2, modifierD);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function2);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA2, function3);
                    Updater.c(composer2, persistentCompositionLocalMapN3, function4);
                    cj.s(iHashCode3, composer2, function5, composer2, function6);
                    TextKt.c(inboxNotificationUiModel.f52414c, PaddingKt.m(PaddingKt.k(a.f(composer2, modifierC5, function7, "NotificationDialog$lambda$0"), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 7), LVAppDesignKitTheme.c(composer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48427h, composer2, 0, 0, 131064);
                    String str = inboxNotificationUiModel.d;
                    if (str == null) {
                        composer2.L(-602557474);
                        composer2.F();
                        composer = composer2;
                    } else {
                        Modifier modifierA = AspectRatioKt.a(pq0.h(1.0f, -602557473, composer2, "NotificationDialog$lambda$0"), 1.0f, false);
                        ContentScale.f9447a.getClass();
                        ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer2, 390, 2040);
                        composer = composer2;
                        composer.F();
                    }
                    composer.r();
                    composer.r();
                    composer.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                SwipeToDismissVerticalKt.a((AnchoredDraggableState) obj7, (Modifier) obj6, (Set) obj5, this.f69128c, (Function3) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(28039));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ ff(AnchoredDraggableState anchoredDraggableState, Modifier modifier, Set set, float f2, Function3 function3, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.d = anchoredDraggableState;
        this.f69129e = modifier;
        this.f69130f = set;
        this.f69128c = f2;
        this.g = function3;
        this.f69131h = composableLambdaImpl;
    }

    public /* synthetic */ ff(Modifier modifier, float f2, Function0 function0, Function0 function1, InboxNotificationUiModel inboxNotificationUiModel, ScrollState scrollState) {
        this.d = modifier;
        this.f69128c = f2;
        this.f69129e = function0;
        this.f69130f = function1;
        this.g = inboxNotificationUiModel;
        this.f69131h = scrollState;
    }
}
