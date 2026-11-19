package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.n00;
import defpackage.o60;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class f implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f48787b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f48788c;
    public final /* synthetic */ StandardTopBarConfig d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f48789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f48790f;

    public /* synthetic */ f(String str, String str2, StandardTopBarConfig standardTopBarConfig, String str3) {
        this.f48788c = str;
        this.f48789e = str2;
        this.d = standardTopBarConfig;
        this.f48790f = str3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier dTFunctionNameModifier;
        int i2 = this.f48787b;
        final StandardTopBarConfig standardTopBarConfig = this.d;
        Object obj3 = this.f48790f;
        Object obj4 = this.f48789e;
        switch (i2) {
            case 0:
                String str = (String) obj4;
                String str2 = (String) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVTopBarCommonKt.a(this.f48788c, str, standardTopBarConfig.f48761b, standardTopBarConfig.f48762c, Call.Parameters.DEFAULT_CAMERA_ZOOM, str2, composer, 0, 16);
                } else {
                    composer.D();
                }
                break;
            default:
                Function0 function0 = (Function0) obj4;
                final TopBarNavIcon topBarNavIcon = (TopBarNavIcon) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (function0 != null) {
                        composer2.L(-570553114);
                        String str3 = this.f48788c;
                        if (str3 == null || (dTFunctionNameModifier = n00.g("LVStandardTopBar$lambda$0$1", str3)) == null) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar$lambda$0$1");
                        }
                        IconButtonKt.a(function0, dTFunctionNameModifier, false, null, null, ComposableLambdaKt.b(-1180593746, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.g
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj5, Object obj6) {
                                Painter painterA;
                                int i3;
                                int i4;
                                Composer composer3 = (Composer) obj5;
                                int iIntValue3 = ((Integer) obj6).intValue();
                                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    int[] iArr = LVStandardTopBarKt.WhenMappings.f48756b;
                                    TopBarNavIcon topBarNavIcon2 = topBarNavIcon;
                                    int i5 = iArr[topBarNavIcon2.ordinal()];
                                    if (i5 == 1) {
                                        composer3.L(-679219191);
                                        painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).H, composer3, 0);
                                        composer3.F();
                                    } else {
                                        if (i5 != 2) {
                                            throw o60.v(composer3, -679221253);
                                        }
                                        composer3.L(-679215517);
                                        painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).q, composer3, 0);
                                        composer3.F();
                                    }
                                    int i6 = iArr[topBarNavIcon2.ordinal()];
                                    if (i6 == 1) {
                                        i3 = -679208077;
                                        i4 = R.string.alt_back;
                                    } else {
                                        if (i6 != 2) {
                                            throw o60.v(composer3, -679210154);
                                        }
                                        i3 = -679205100;
                                        i4 = R.string.alt_close;
                                    }
                                    IconKt.a(painterA, o60.k(composer3, i3, i4, composer3), null, standardTopBarConfig.f48761b, composer3, 8, 4);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 1572864, 60);
                        composer2.F();
                    } else {
                        composer2.L(-569623827);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ f(Function0 function0, String str, TopBarNavIcon topBarNavIcon, StandardTopBarConfig standardTopBarConfig) {
        this.f48789e = function0;
        this.f48788c = str;
        this.f48790f = topBarNavIcon;
        this.d = standardTopBarConfig;
    }
}
