package defpackage;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPSkeletonKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fl0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69167b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GridModes f69168c;

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2;
        int i3 = this.f69167b;
        GridModes gridModes = this.f69168c;
        switch (i3) {
            case 0:
                ((Integer) obj2).getClass();
                PLPSkeletonKt.c(gridModes, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("ThematicPlpToolBox___WMjBM$lambda$2$1$2"), LVAppDesignKitTheme.d(composer).m);
                    if (Intrinsics.c(gridModes, GridModes.Reduced.f55431b)) {
                        composer.L(1982189664);
                        i2 = LVAppDesignKitTheme.g(composer).C;
                        composer.F();
                    } else {
                        if (!Intrinsics.c(gridModes, GridModes.Full.f55430b)) {
                            throw o60.v(composer, 1982186567);
                        }
                        composer.L(1982192706);
                        i2 = LVAppDesignKitTheme.g(composer).D;
                        composer.F();
                    }
                    IconKt.a(PainterResources_androidKt.a(i2, composer, 0), null, modifierO, LVAppDesignKitTheme.c(composer).f48361b.m, composer, 56, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
        }
    }
}
