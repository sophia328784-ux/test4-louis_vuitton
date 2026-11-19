package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.AnimationKt;
import com.vuitton.android.designkit.ui.theme.ColorKt;
import com.vuitton.android.designkit.ui.theme.DimensKt;
import com.vuitton.android.designkit.ui.theme.IconKt;
import com.vuitton.android.designkit.ui.theme.LVAnimation;
import com.vuitton.android.designkit.ui.theme.LVColor;
import com.vuitton.android.designkit.ui.theme.LVDimens;
import com.vuitton.android.designkit.ui.theme.LVIcon;
import com.vuitton.android.designkit.ui.theme.LVShape;
import com.vuitton.android.designkit.ui.theme.LVSpacings;
import com.vuitton.android.designkit.ui.theme.LVTypography;
import com.vuitton.android.designkit.ui.theme.LvTheme;
import com.vuitton.android.designkit.ui.theme.ShapeKt;
import com.vuitton.android.designkit.ui.theme.SpacingKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.TypographyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class f41 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69044b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f69045c;
    public final /* synthetic */ Function2 d;

    public /* synthetic */ f41(int i2, String str, Function2 function2) {
        this.f69045c = str;
        this.d = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69044b;
        Function2 function2 = this.d;
        String str = this.f69045c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeKt.f48435a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ProvidedValue providedValueC = SpacingKt.f48434a.c(new LVSpacings(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16383, null));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorKt.f48331a;
                    LvTheme lvTheme = LvTheme.Default;
                    lvTheme.getClass();
                    int[] iArr = ThemeKt.WhenMappings.f48437a;
                    if (iArr[lvTheme.ordinal()] != 1) {
                        v40.g();
                        return null;
                    }
                    LVColor.Core core = new LVColor.Core(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 67108863, null);
                    long j2 = core.y;
                    long j3 = core.f48370h;
                    long j4 = core.g;
                    long j5 = core.f48368e;
                    long j6 = core.f48367c;
                    long j7 = core.f48369f;
                    long j8 = core.u;
                    long j9 = core.t;
                    long j10 = core.s;
                    long j11 = core.q;
                    long j12 = core.f48365a;
                    long j13 = core.f48366b;
                    long j14 = core.d;
                    ProvidedValue providedValueC2 = staticProvidableCompositionLocal2.c(new LVColor(core, new LVColor.Semantic(j3, j4, j5, j6, j7, j8, j9, j10, j11, j7, j12, j13, j4, j14, j6, j14, j5, j11, core.r, j10, core.f48371i, core.f48372j, core.f48373k, core.l, core.v, core.w, core.x, j2, null), 0L, 0L, 0L, null, 60, null));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = TypographyKt.f48440c;
                    if (iArr[lvTheme.ordinal()] != 1) {
                        v40.g();
                        return null;
                    }
                    CompositionLocalKt.b(new ProvidedValue[]{providedValueC, providedValueC2, staticProvidableCompositionLocal3.c(new LVTypography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null)), ShapeKt.f48433a.c(new LVShape(null, null, null, null, null, 31, null)), DimensKt.f48341a.c(new LVDimens(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1, null)), IconKt.f48346a.c(new LVIcon(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, -1, -1, -1, -1, 524287, null)), AnimationKt.f48330a.c(new LVAnimation(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 255, null)), ThemeKt.f48436b.c(lvTheme), ThemeKt.f48435a.c(str)}, ComposableLambdaKt.b(-183185849, new z4(9, function2), composer), composer, 56);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                ThemeKt.a(str, function2, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ f41(String str, Function2 function2) {
        this.f69045c = str;
        this.d = function2;
    }
}
