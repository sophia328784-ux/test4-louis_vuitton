package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVNotificationIconKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p4 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78751c;

    public /* synthetic */ p4(boolean z, int i2) {
        this.f78750b = 0;
        this.f78751c = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        float f2;
        float f3;
        long j2;
        long j3;
        int i2;
        int i3 = this.f78750b;
        boolean z = this.f78751c;
        switch (i3) {
            case 0:
                ((Integer) obj2).getClass();
                AddressBookContentKt.e(z, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(-1994473673);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("EditorialCardBackground$lambda$0$3");
                long j4 = LVAppDesignKitTheme.c(composer).f48361b.u;
                if (z) {
                    composer.L(-1133777024);
                    f2 = LVAppDesignKitTheme.h(composer).f48403c;
                } else {
                    composer.L(-1133775648);
                    f2 = LVAppDesignKitTheme.h(composer).d;
                }
                composer.F();
                Modifier modifierA = GradientKt.a(dTFunctionNameModifier, new SolidColor(Color.b(f2, j4), null));
                composer.F();
                return modifierA;
            case 2:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(42080159);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("TopAssetWithGradients$lambda$0$3");
                long j5 = LVAppDesignKitTheme.c(composer2).f48361b.u;
                if (z) {
                    composer2.L(-520188234);
                    f3 = LVAppDesignKitTheme.h(composer2).f48403c;
                    composer2.F();
                } else {
                    composer2.L(-520074154);
                    f3 = LVAppDesignKitTheme.h(composer2).d;
                    composer2.F();
                }
                Modifier modifierA2 = GradientKt.a(dTFunctionNameModifier2, new SolidColor(Color.b(f3, j5), null));
                composer2.F();
                return modifierA2;
            case 3:
                Composer composer3 = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                float f4 = LVCalendarKt.f50961a;
                if (composer3.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("CalendarArrows$lambda$0$1"), LVAppDesignKitTheme.d(composer3).o);
                    Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).I, composer3, 0);
                    String strC = StringResources_androidKt.c(composer3, R.string.alt_next_month_button);
                    if (z) {
                        composer3.L(34262304);
                        j2 = LVAppDesignKitTheme.c(composer3).f48361b.f48382k;
                        composer3.F();
                    } else {
                        composer3.L(34352545);
                        j2 = LVAppDesignKitTheme.c(composer3).f48361b.l;
                        composer3.F();
                    }
                    IconKt.a(painterA, strC, modifierO, j2, composer3, 8, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer4 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                float f5 = LVCalendarKt.f50961a;
                if (composer4.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierO2 = SizeKt.o(new DTFunctionNameModifier("CalendarArrows$lambda$0$0"), LVAppDesignKitTheme.d(composer4).o);
                    Painter painterA2 = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).H, composer4, 0);
                    String strC2 = StringResources_androidKt.c(composer4, R.string.alt_previous_month_button);
                    if (z) {
                        composer4.L(336597335);
                        j3 = LVAppDesignKitTheme.c(composer4).f48361b.f48382k;
                        composer4.F();
                    } else {
                        composer4.L(336687576);
                        j3 = LVAppDesignKitTheme.c(composer4).f48361b.l;
                        composer4.F();
                    }
                    IconKt.a(painterA2, strC2, modifierO2, j3, composer4, 8, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer5 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierO3 = SizeKt.o(new DTFunctionNameModifier("LVPlayPauseButton$lambda$0"), IconSize.f48347a);
                    if (z) {
                        composer5.L(1388470989);
                        i2 = LVAppDesignKitTheme.g(composer5).a0;
                        composer5.F();
                    } else {
                        composer5.L(1388547528);
                        i2 = LVAppDesignKitTheme.g(composer5).Z;
                        composer5.F();
                    }
                    IconKt.a(PainterResources_androidKt.a(i2, composer5, 0), StringResources_androidKt.c(composer5, z ? R.string.alt_pause : R.string.alt_play), modifierO3, 0L, composer5, 8, 8);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer6.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(z ? R.drawable.ic_sound_on : R.drawable.ic_sound_off, composer6, 0), StringResources_androidKt.c(composer6, R.string.alt_sound), ClipKt.a(SizeKt.o(PaddingKt.i(new DTFunctionNameModifier("LVSoundButton$lambda$0"), LVAppDesignKitTheme.l(composer6).f48416e), LVAppDesignKitTheme.d(composer6).m), RoundedCornerShapeKt.f5846a), LVAppDesignKitTheme.c(composer6).f48361b.m, composer6, 8, 0);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            default:
                Composer composer7 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer7.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("SearchResultCountBarStoreMode$lambda$0$1");
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer7.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer7.n();
                    Modifier modifierC = ComposedModifierKt.c(composer7, dTFunctionNameModifier3);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer7.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer7.B();
                    if (composer7.getS()) {
                        composer7.C(function0);
                    } else {
                        composer7.o();
                    }
                    Updater.c(composer7, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer7, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer7, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer7, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer7, modifierC, ComposeUiNode.Companion.d);
                    Composer composer8 = composer7;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer7).p, composer7, 0), StringResources_androidKt.c(composer7, R.string.alt_show_filters), null, 0L, composer8, 8, 12);
                    if (z) {
                        LVNotificationIconKt.a(BoxScopeInstance.f4938a.g(pq0.j(-959597139, composer8, "SearchResultCountBarStoreMode$lambda$0$1"), Alignment.Companion.d), LVAppDesignKitTheme.d(composer8).f48388h, 0L, composer8, 0, 4);
                        composer8 = composer8;
                        composer8.F();
                    } else {
                        composer8.L(-959369382);
                        composer8.F();
                    }
                    composer8.r();
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ p4(boolean z, int i2, byte b2) {
        this.f78750b = i2;
        this.f78751c = z;
    }
}
