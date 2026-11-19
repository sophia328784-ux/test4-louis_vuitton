package defpackage;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightMockKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import com.vuitton.android.presentation.screen.storemode.components.ComposableSingletons$StoreModeExpiredComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeExpiredComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$StoreModeLevel2ScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$StoreModeLevel3ScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.ComposableSingletons$StoreModeItemsKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.StoreModeItemsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lo implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76064b;

    public /* synthetic */ lo(int i2) {
        this.f76064b = i2;
    }

    private final Object a(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$StoreModeItemsKt composableSingletons$StoreModeItemsKt = ComposableSingletons$StoreModeItemsKt.f64896a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            StoreModeItemsKt.a(null, "Title", "Message", composer, 432, 1);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$StoreModeLevel2ScreenKt composableSingletons$StoreModeLevel2ScreenKt = ComposableSingletons$StoreModeLevel2ScreenKt.f64867a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("lambda__1544291885$lambda$0"), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(composer).f48385c, LVAppDesignKitTheme.c(composer).f48361b.q, composer, 0, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f76064b;
        int i7 = 29;
        int i8 = 23;
        int i9 = 19;
        int i10 = 28;
        int i11 = 22;
        int i12 = 25;
        int i13 = 24;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i14 = 3;
        int i15 = 2;
        boolean z = false;
        int i16 = 1;
        switch (i6) {
            case 0:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 1:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt2 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 2:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt3 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 3:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt4 = ComposableSingletons$SpotlightScreenKt.f64582a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    SpotlightViewState spotlightViewState = new SpotlightViewState(SpotlightMockKt.f64646a.f64678b, true, true, new SpotlightContainerStateUiModel(false, false, false, false, false, false, false, false, false, false, false, 2047, null), null, false, null, null, false, 496, null);
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new no(i13);
                        composer.q(objX);
                    }
                    Function1 function1 = (Function1) objX;
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new fo(i13);
                        composer.q(objX2);
                    }
                    Function2 function2 = (Function2) objX2;
                    Object objX3 = composer.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new jo(16);
                        composer.q(objX3);
                    }
                    Function0 function0 = (Function0) objX3;
                    Object objX4 = composer.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new fo(i12);
                        composer.q(objX4);
                    }
                    Function2 function3 = (Function2) objX4;
                    Object objX5 = composer.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new jo(17);
                        composer.q(objX5);
                    }
                    Function0 function4 = (Function0) objX5;
                    Object objX6 = composer.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        i2 = 18;
                        objX6 = new jo(i2);
                        composer.q(objX6);
                    } else {
                        i2 = 18;
                    }
                    Function0 function5 = (Function0) objX6;
                    Object objX7 = composer.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new io(i2);
                        composer.q(objX7);
                    }
                    Function1 function6 = (Function1) objX7;
                    Object objX8 = composer.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new jo(i9);
                        composer.q(objX8);
                    }
                    Function0 function7 = (Function0) objX8;
                    Object objX9 = composer.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new jo(20);
                        composer.q(objX9);
                    }
                    Function0 function8 = (Function0) objX9;
                    Object objX10 = composer.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new jo(21);
                        composer.q(objX10);
                    }
                    Function0 function9 = (Function0) objX10;
                    Object objX11 = composer.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new lo(i13);
                        composer.q(objX11);
                    }
                    Function2 function10 = (Function2) objX11;
                    Object objX12 = composer.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new no(i12);
                        composer.q(objX12);
                    }
                    Function1 function11 = (Function1) objX12;
                    Object objX13 = composer.x();
                    if (objX13 == composer$Companion$Empty$1) {
                        objX13 = new no(26);
                        composer.q(objX13);
                    }
                    Function1 function12 = (Function1) objX13;
                    Object objX14 = composer.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new no(27);
                        composer.q(objX14);
                    }
                    SpotlightScreenKt.b(spotlightViewState, function1, function2, function0, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, (Function1) objX14, composer, 920350128, 28086);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt5 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 5:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt6 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 6:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt7 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 7:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt8 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 8:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt9 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 9:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt10 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 10:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt11 = ComposableSingletons$SpotlightScreenKt.f64582a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    List list = SpotlightMockKt.f64646a.f64678b;
                    SpotlightViewState spotlightViewState2 = new SpotlightViewState(list, false, false, new SpotlightContainerStateUiModel(false, false, false, false, false, false, false, false, false, false, false, 2047, null), null, false, ArraysKt.Z(new String[]{((SpotlightSlideUiModel) list.get(0)).f64650a, ((SpotlightSlideUiModel) list.get(1)).f64650a}), null, false, 438, null);
                    Object objX15 = composer2.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new no(9);
                        composer2.q(objX15);
                    }
                    Function1 function13 = (Function1) objX15;
                    Object objX16 = composer2.x();
                    if (objX16 == composer$Companion$Empty$1) {
                        objX16 = new lo(12);
                        composer2.q(objX16);
                    }
                    Function2 function14 = (Function2) objX16;
                    Object objX17 = composer2.x();
                    if (objX17 == composer$Companion$Empty$1) {
                        objX17 = new mo(16);
                        composer2.q(objX17);
                    }
                    Function0 function15 = (Function0) objX17;
                    Object objX18 = composer2.x();
                    if (objX18 == composer$Companion$Empty$1) {
                        objX18 = new lo(14);
                        composer2.q(objX18);
                    }
                    Function2 function16 = (Function2) objX18;
                    Object objX19 = composer2.x();
                    if (objX19 == composer$Companion$Empty$1) {
                        objX19 = new mo(17);
                        composer2.q(objX19);
                    }
                    Function0 function17 = (Function0) objX19;
                    Object objX20 = composer2.x();
                    if (objX20 == composer$Companion$Empty$1) {
                        objX20 = new mo(18);
                        composer2.q(objX20);
                    }
                    Function0 function18 = (Function0) objX20;
                    Object objX21 = composer2.x();
                    if (objX21 == composer$Companion$Empty$1) {
                        objX21 = new no(13);
                        composer2.q(objX21);
                    }
                    Function1 function19 = (Function1) objX21;
                    Object objX22 = composer2.x();
                    if (objX22 == composer$Companion$Empty$1) {
                        objX22 = new mo(i9);
                        composer2.q(objX22);
                    }
                    Function0 function20 = (Function0) objX22;
                    Object objX23 = composer2.x();
                    if (objX23 == composer$Companion$Empty$1) {
                        objX23 = new mo(20);
                        composer2.q(objX23);
                    }
                    Function0 function21 = (Function0) objX23;
                    Object objX24 = composer2.x();
                    if (objX24 == composer$Companion$Empty$1) {
                        objX24 = new mo(21);
                        composer2.q(objX24);
                    }
                    Function0 function22 = (Function0) objX24;
                    Object objX25 = composer2.x();
                    if (objX25 == composer$Companion$Empty$1) {
                        objX25 = new lo(11);
                        composer2.q(objX25);
                    }
                    Function2 function23 = (Function2) objX25;
                    Object objX26 = composer2.x();
                    if (objX26 == composer$Companion$Empty$1) {
                        objX26 = new no(10);
                        composer2.q(objX26);
                    }
                    Function1 function24 = (Function1) objX26;
                    Object objX27 = composer2.x();
                    if (objX27 == composer$Companion$Empty$1) {
                        objX27 = new no(11);
                        composer2.q(objX27);
                    }
                    Function1 function25 = (Function1) objX27;
                    Object objX28 = composer2.x();
                    if (objX28 == composer$Companion$Empty$1) {
                        objX28 = new no(12);
                        composer2.q(objX28);
                    }
                    SpotlightScreenKt.b(spotlightViewState2, function13, function14, function15, function16, function17, function18, function19, function20, function21, function22, function23, function24, function25, (Function1) objX28, composer2, 920350128, 28086);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 11:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt12 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 12:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt13 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 13:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt14 = ComposableSingletons$SpotlightScreenKt.f64582a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    List list2 = SpotlightMockKt.f64646a.f64678b;
                    SpotlightViewState spotlightViewState3 = new SpotlightViewState(list2, false, false, new SpotlightContainerStateUiModel(false, false, false, false, false, false, false, false, false, false, false, 2047, null), null, false, ArraysKt.Z(new String[]{((SpotlightSlideUiModel) list2.get(0)).f64650a, ((SpotlightSlideUiModel) list2.get(1)).f64650a}), null, false, 438, null);
                    Object objX29 = composer3.x();
                    if (objX29 == composer$Companion$Empty$1) {
                        objX29 = new no(14);
                        composer3.q(objX29);
                    }
                    Function1 function26 = (Function1) objX29;
                    Object objX30 = composer3.x();
                    if (objX30 == composer$Companion$Empty$1) {
                        objX30 = new lo(17);
                        composer3.q(objX30);
                    }
                    Function2 function27 = (Function2) objX30;
                    Object objX31 = composer3.x();
                    if (objX31 == composer$Companion$Empty$1) {
                        objX31 = new mo(22);
                        composer3.q(objX31);
                    }
                    Function0 function28 = (Function0) objX31;
                    Object objX32 = composer3.x();
                    if (objX32 == composer$Companion$Empty$1) {
                        objX32 = new lo(18);
                        composer3.q(objX32);
                    }
                    Function2 function29 = (Function2) objX32;
                    Object objX33 = composer3.x();
                    if (objX33 == composer$Companion$Empty$1) {
                        objX33 = new mo(i8);
                        composer3.q(objX33);
                    }
                    Function0 function30 = (Function0) objX33;
                    Object objX34 = composer3.x();
                    if (objX34 == composer$Companion$Empty$1) {
                        objX34 = new mo(i13);
                        composer3.q(objX34);
                    }
                    Function0 function31 = (Function0) objX34;
                    Object objX35 = composer3.x();
                    if (objX35 == composer$Companion$Empty$1) {
                        objX35 = new no(18);
                        composer3.q(objX35);
                    }
                    Function1 function32 = (Function1) objX35;
                    Object objX36 = composer3.x();
                    if (objX36 == composer$Companion$Empty$1) {
                        objX36 = new mo(i12);
                        composer3.q(objX36);
                    }
                    Function0 function33 = (Function0) objX36;
                    Object objX37 = composer3.x();
                    if (objX37 == composer$Companion$Empty$1) {
                        objX37 = new mo(26);
                        composer3.q(objX37);
                    }
                    Function0 function34 = (Function0) objX37;
                    Object objX38 = composer3.x();
                    if (objX38 == composer$Companion$Empty$1) {
                        objX38 = new mo(27);
                        composer3.q(objX38);
                    }
                    Function0 function35 = (Function0) objX38;
                    Object objX39 = composer3.x();
                    if (objX39 == composer$Companion$Empty$1) {
                        i3 = 15;
                        objX39 = new lo(i3);
                        composer3.q(objX39);
                    } else {
                        i3 = 15;
                    }
                    Function2 function36 = (Function2) objX39;
                    Object objX40 = composer3.x();
                    if (objX40 == composer$Companion$Empty$1) {
                        objX40 = new no(i3);
                        composer3.q(objX40);
                    }
                    Function1 function37 = (Function1) objX40;
                    Object objX41 = composer3.x();
                    if (objX41 == composer$Companion$Empty$1) {
                        objX41 = new no(16);
                        composer3.q(objX41);
                    }
                    Function1 function38 = (Function1) objX41;
                    Object objX42 = composer3.x();
                    if (objX42 == composer$Companion$Empty$1) {
                        objX42 = new no(17);
                        composer3.q(objX42);
                    }
                    SpotlightScreenKt.b(spotlightViewState3, function26, function27, function28, function29, function30, function31, function32, function33, function34, function35, function36, function37, function38, (Function1) objX42, composer3, 920350128, 28086);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 14:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt15 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 15:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt16 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 16:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt17 = ComposableSingletons$SpotlightScreenKt.f64582a;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    SpotlightViewState spotlightViewState4 = new SpotlightViewState(SpotlightMockKt.f64646a.f64678b, false, false, new SpotlightContainerStateUiModel(false, false, false, false, false, false, false, false, false, true, false, 1535, null), null, false, null, null, false, 502, null);
                    Object objX43 = composer4.x();
                    if (objX43 == composer$Companion$Empty$1) {
                        objX43 = new no(4);
                        composer4.q(objX43);
                    }
                    Function1 function39 = (Function1) objX43;
                    Object objX44 = composer4.x();
                    if (objX44 == composer$Companion$Empty$1) {
                        objX44 = new lo(8);
                        composer4.q(objX44);
                    }
                    Function2 function40 = (Function2) objX44;
                    Object objX45 = composer4.x();
                    if (objX45 == composer$Companion$Empty$1) {
                        objX45 = new mo(10);
                        composer4.q(objX45);
                    }
                    Function0 function41 = (Function0) objX45;
                    Object objX46 = composer4.x();
                    if (objX46 == composer$Companion$Empty$1) {
                        objX46 = new lo(9);
                        composer4.q(objX46);
                    }
                    Function2 function42 = (Function2) objX46;
                    Object objX47 = composer4.x();
                    if (objX47 == composer$Companion$Empty$1) {
                        objX47 = new mo(11);
                        composer4.q(objX47);
                    }
                    Function0 function43 = (Function0) objX47;
                    Object objX48 = composer4.x();
                    if (objX48 == composer$Companion$Empty$1) {
                        objX48 = new mo(12);
                        composer4.q(objX48);
                    }
                    Function0 function44 = (Function0) objX48;
                    Object objX49 = composer4.x();
                    if (objX49 == composer$Companion$Empty$1) {
                        objX49 = new no(8);
                        composer4.q(objX49);
                    }
                    Function1 function45 = (Function1) objX49;
                    Object objX50 = composer4.x();
                    if (objX50 == composer$Companion$Empty$1) {
                        objX50 = new mo(13);
                        composer4.q(objX50);
                    }
                    Function0 function46 = (Function0) objX50;
                    Object objX51 = composer4.x();
                    if (objX51 == composer$Companion$Empty$1) {
                        objX51 = new mo(14);
                        composer4.q(objX51);
                    }
                    Function0 function47 = (Function0) objX51;
                    Object objX52 = composer4.x();
                    if (objX52 == composer$Companion$Empty$1) {
                        objX52 = new mo(15);
                        composer4.q(objX52);
                    }
                    Function0 function48 = (Function0) objX52;
                    Object objX53 = composer4.x();
                    if (objX53 == composer$Companion$Empty$1) {
                        objX53 = new lo(7);
                        composer4.q(objX53);
                    }
                    Function2 function49 = (Function2) objX53;
                    Object objX54 = composer4.x();
                    if (objX54 == composer$Companion$Empty$1) {
                        objX54 = new no(5);
                        composer4.q(objX54);
                    }
                    Function1 function50 = (Function1) objX54;
                    Object objX55 = composer4.x();
                    if (objX55 == composer$Companion$Empty$1) {
                        objX55 = new no(6);
                        composer4.q(objX55);
                    }
                    Function1 function51 = (Function1) objX55;
                    Object objX56 = composer4.x();
                    if (objX56 == composer$Companion$Empty$1) {
                        objX56 = new no(7);
                        composer4.q(objX56);
                    }
                    SpotlightScreenKt.b(spotlightViewState4, function39, function40, function41, function42, function43, function44, function45, function46, function47, function48, function49, function50, function51, (Function1) objX56, composer4, 920350128, 28086);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 17:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt18 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 18:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt19 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 19:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt20 = ComposableSingletons$SpotlightScreenKt.f64582a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    SpotlightViewState spotlightViewState5 = new SpotlightViewState(SpotlightMockKt.f64646a.f64678b, false, false, new SpotlightContainerStateUiModel(true, false, false, true, true, false, false, false, false, false, false, 2016, null), null, false, null, null, false, 502, null);
                    Object objX57 = composer5.x();
                    if (objX57 == composer$Companion$Empty$1) {
                        objX57 = new no(i9);
                        composer5.q(objX57);
                    }
                    Function1 function52 = (Function1) objX57;
                    Object objX58 = composer5.x();
                    if (objX58 == composer$Companion$Empty$1) {
                        objX58 = new lo(21);
                        composer5.q(objX58);
                    }
                    Function2 function53 = (Function2) objX58;
                    Object objX59 = composer5.x();
                    if (objX59 == composer$Companion$Empty$1) {
                        objX59 = new mo(i10);
                        composer5.q(objX59);
                    }
                    Function0 function54 = (Function0) objX59;
                    Object objX60 = composer5.x();
                    if (objX60 == composer$Companion$Empty$1) {
                        objX60 = new lo(22);
                        composer5.q(objX60);
                    }
                    Function2 function55 = (Function2) objX60;
                    Object objX61 = composer5.x();
                    if (objX61 == composer$Companion$Empty$1) {
                        objX61 = new mo(i7);
                        composer5.q(objX61);
                    }
                    Function0 function56 = (Function0) objX61;
                    Object objX62 = composer5.x();
                    if (objX62 == composer$Companion$Empty$1) {
                        objX62 = new oo(z ? 1 : 0);
                        composer5.q(objX62);
                    }
                    Function0 function57 = (Function0) objX62;
                    Object objX63 = composer5.x();
                    if (objX63 == composer$Companion$Empty$1) {
                        objX63 = new no(i8);
                        composer5.q(objX63);
                    }
                    Function1 function58 = (Function1) objX63;
                    Object objX64 = composer5.x();
                    if (objX64 == composer$Companion$Empty$1) {
                        objX64 = new oo(i16);
                        composer5.q(objX64);
                    }
                    Function0 function59 = (Function0) objX64;
                    Object objX65 = composer5.x();
                    if (objX65 == composer$Companion$Empty$1) {
                        objX65 = new oo(i15);
                        composer5.q(objX65);
                    }
                    Function0 function60 = (Function0) objX65;
                    Object objX66 = composer5.x();
                    if (objX66 == composer$Companion$Empty$1) {
                        objX66 = new oo(i14);
                        composer5.q(objX66);
                    }
                    Function0 function61 = (Function0) objX66;
                    Object objX67 = composer5.x();
                    if (objX67 == composer$Companion$Empty$1) {
                        i4 = 20;
                        objX67 = new lo(i4);
                        composer5.q(objX67);
                    } else {
                        i4 = 20;
                    }
                    Function2 function62 = (Function2) objX67;
                    Object objX68 = composer5.x();
                    if (objX68 == composer$Companion$Empty$1) {
                        objX68 = new no(i4);
                        composer5.q(objX68);
                    }
                    Function1 function63 = (Function1) objX68;
                    Object objX69 = composer5.x();
                    if (objX69 == composer$Companion$Empty$1) {
                        objX69 = new no(21);
                        composer5.q(objX69);
                    }
                    Function1 function64 = (Function1) objX69;
                    Object objX70 = composer5.x();
                    if (objX70 == composer$Companion$Empty$1) {
                        objX70 = new no(22);
                        composer5.q(objX70);
                    }
                    SpotlightScreenKt.b(spotlightViewState5, function52, function53, function54, function55, function56, function57, function58, function59, function60, function61, function62, function63, function64, (Function1) objX70, composer5, 920350128, 28086);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 20:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt21 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 21:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt22 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 22:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt23 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 23:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt24 = ComposableSingletons$SpotlightScreenKt.f64582a;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    List list3 = SpotlightMockKt.f64646a.f64678b;
                    SpotlightViewState spotlightViewState6 = new SpotlightViewState(list3, false, false, new SpotlightContainerStateUiModel(true, false, false, true, true, false, false, false, false, false, false, 2016, null), null, false, null, ArraysKt.Z(new String[]{((SpotlightSlideUiModel) list3.get(0)).f64650a, ((SpotlightSlideUiModel) list3.get(1)).f64650a}), false, 374, null);
                    Object objX71 = composer6.x();
                    if (objX71 == composer$Companion$Empty$1) {
                        objX71 = new io(i9);
                        composer6.q(objX71);
                    }
                    Function1 function65 = (Function1) objX71;
                    Object objX72 = composer6.x();
                    if (objX72 == composer$Companion$Empty$1) {
                        objX72 = new fo(i10);
                        composer6.q(objX72);
                    }
                    Function2 function66 = (Function2) objX72;
                    Object objX73 = composer6.x();
                    if (objX73 == composer$Companion$Empty$1) {
                        objX73 = new jo(i11);
                        composer6.q(objX73);
                    }
                    Function0 function67 = (Function0) objX73;
                    Object objX74 = composer6.x();
                    if (objX74 == composer$Companion$Empty$1) {
                        objX74 = new fo(i7);
                        composer6.q(objX74);
                    }
                    Function2 function68 = (Function2) objX74;
                    Object objX75 = composer6.x();
                    if (objX75 == composer$Companion$Empty$1) {
                        objX75 = new jo(i8);
                        composer6.q(objX75);
                    }
                    Function0 function69 = (Function0) objX75;
                    Object objX76 = composer6.x();
                    if (objX76 == composer$Companion$Empty$1) {
                        objX76 = new jo(i13);
                        composer6.q(objX76);
                    }
                    Function0 function70 = (Function0) objX76;
                    Object objX77 = composer6.x();
                    if (objX77 == composer$Companion$Empty$1) {
                        objX77 = new io(i8);
                        composer6.q(objX77);
                    }
                    Function1 function71 = (Function1) objX77;
                    Object objX78 = composer6.x();
                    if (objX78 == composer$Companion$Empty$1) {
                        objX78 = new jo(i12);
                        composer6.q(objX78);
                    }
                    Function0 function72 = (Function0) objX78;
                    Object objX79 = composer6.x();
                    if (objX79 == composer$Companion$Empty$1) {
                        objX79 = new jo(26);
                        composer6.q(objX79);
                    }
                    Function0 function73 = (Function0) objX79;
                    Object objX80 = composer6.x();
                    if (objX80 == composer$Companion$Empty$1) {
                        i5 = 27;
                        objX80 = new jo(i5);
                        composer6.q(objX80);
                    } else {
                        i5 = 27;
                    }
                    Function0 function74 = (Function0) objX80;
                    Object objX81 = composer6.x();
                    if (objX81 == composer$Companion$Empty$1) {
                        objX81 = new fo(i5);
                        composer6.q(objX81);
                    }
                    Function2 function75 = (Function2) objX81;
                    Object objX82 = composer6.x();
                    if (objX82 == composer$Companion$Empty$1) {
                        objX82 = new io(20);
                        composer6.q(objX82);
                    }
                    Function1 function76 = (Function1) objX82;
                    Object objX83 = composer6.x();
                    if (objX83 == composer$Companion$Empty$1) {
                        objX83 = new io(21);
                        composer6.q(objX83);
                    }
                    Function1 function77 = (Function1) objX83;
                    Object objX84 = composer6.x();
                    if (objX84 == composer$Companion$Empty$1) {
                        objX84 = new io(22);
                        composer6.q(objX84);
                    }
                    SpotlightScreenKt.b(spotlightViewState6, function65, function66, function67, function68, function69, function70, function71, function72, function73, function74, function75, function76, function77, (Function1) objX84, composer6, 920350128, 28086);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 24:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt25 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 25:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt26 = ComposableSingletons$SpotlightScreenKt.f64582a;
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    SpotlightViewState spotlightViewState7 = new SpotlightViewState(SpotlightMockKt.f64646a.f64678b, false, false, new SpotlightContainerStateUiModel(false, false, false, false, false, false, false, false, false, false, false, 2047, null), null, true, null, null, false, 470, null);
                    Object objX85 = composer7.x();
                    if (objX85 == composer$Companion$Empty$1) {
                        objX85 = new io(i13);
                        composer7.q(objX85);
                    }
                    Function1 function78 = (Function1) objX85;
                    Object objX86 = composer7.x();
                    if (objX86 == composer$Companion$Empty$1) {
                        objX86 = new lo(i16);
                        composer7.q(objX86);
                    }
                    Function2 function79 = (Function2) objX86;
                    Object objX87 = composer7.x();
                    if (objX87 == composer$Companion$Empty$1) {
                        objX87 = new jo(i10);
                        composer7.q(objX87);
                    }
                    Function0 function80 = (Function0) objX87;
                    Object objX88 = composer7.x();
                    if (objX88 == composer$Companion$Empty$1) {
                        objX88 = new lo(i15);
                        composer7.q(objX88);
                    }
                    Function2 function81 = (Function2) objX88;
                    Object objX89 = composer7.x();
                    if (objX89 == composer$Companion$Empty$1) {
                        objX89 = new jo(i7);
                        composer7.q(objX89);
                    }
                    Function0 function82 = (Function0) objX89;
                    Object objX90 = composer7.x();
                    if (objX90 == composer$Companion$Empty$1) {
                        objX90 = new mo(z ? 1 : 0);
                        composer7.q(objX90);
                    }
                    Function0 function83 = (Function0) objX90;
                    Object objX91 = composer7.x();
                    if (objX91 == composer$Companion$Empty$1) {
                        objX91 = new io(i10);
                        composer7.q(objX91);
                    }
                    Function1 function84 = (Function1) objX91;
                    Object objX92 = composer7.x();
                    if (objX92 == composer$Companion$Empty$1) {
                        objX92 = new mo(i16);
                        composer7.q(objX92);
                    }
                    Function0 function85 = (Function0) objX92;
                    Object objX93 = composer7.x();
                    if (objX93 == composer$Companion$Empty$1) {
                        objX93 = new mo(i15);
                        composer7.q(objX93);
                    }
                    Function0 function86 = (Function0) objX93;
                    Object objX94 = composer7.x();
                    if (objX94 == composer$Companion$Empty$1) {
                        objX94 = new mo(i14);
                        composer7.q(objX94);
                    }
                    Function0 function87 = (Function0) objX94;
                    Object objX95 = composer7.x();
                    if (objX95 == composer$Companion$Empty$1) {
                        objX95 = new lo(z ? 1 : 0);
                        composer7.q(objX95);
                    }
                    Function2 function88 = (Function2) objX95;
                    Object objX96 = composer7.x();
                    if (objX96 == composer$Companion$Empty$1) {
                        objX96 = new io(i12);
                        composer7.q(objX96);
                    }
                    Function1 function89 = (Function1) objX96;
                    Object objX97 = composer7.x();
                    if (objX97 == composer$Companion$Empty$1) {
                        objX97 = new io(26);
                        composer7.q(objX97);
                    }
                    Function1 function90 = (Function1) objX97;
                    Object objX98 = composer7.x();
                    if (objX98 == composer$Companion$Empty$1) {
                        objX98 = new io(27);
                        composer7.q(objX98);
                    }
                    SpotlightScreenKt.b(spotlightViewState7, function78, function79, function80, function81, function82, function83, function84, function85, function86, function87, function88, function89, function90, (Function1) objX98, composer7, 920350128, 28086);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 26:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                ComposableSingletons$StoreModeExpiredComposableKt composableSingletons$StoreModeExpiredComposableKt = ComposableSingletons$StoreModeExpiredComposableKt.f64833a;
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    Object objX99 = composer8.x();
                    if (objX99 == composer$Companion$Empty$1) {
                        objX99 = new oo(4);
                        composer8.q(objX99);
                    }
                    StoreModeExpiredComposableKt.a((Function0) objX99, composer8, 6);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 27:
                return a(obj, obj2);
            case 28:
                return b(obj, obj2);
            default:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                ComposableSingletons$StoreModeLevel3ScreenKt composableSingletons$StoreModeLevel3ScreenKt = ComposableSingletons$StoreModeLevel3ScreenKt.f64869a;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("lambda_464916164$lambda$0"), LVAppDesignKitTheme.l(composer9).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(composer9).f48385c, LVAppDesignKitTheme.c(composer9).f48361b.q, composer9, 0, 0);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
        }
    }
}
