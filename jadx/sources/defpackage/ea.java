package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ea implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideActivity f68810c;

    public /* synthetic */ ea(AudioGuideActivity audioGuideActivity, int i2) {
        this.f68809b = i2;
        this.f68810c = audioGuideActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68809b;
        AudioGuideActivity audioGuideActivity = this.f68810c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                AudioGuideActivity.Companion companion = AudioGuideActivity.r;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2089839911, new ea(audioGuideActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                AudioGuideActivity.Companion companion2 = AudioGuideActivity.r;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    AudioGuideViewModel audioGuideViewModel = (AudioGuideViewModel) audioGuideActivity.q.getF71699b();
                    ContributionLinkNavigator contributionLinkNavigator = audioGuideActivity.p;
                    if (contributionLinkNavigator == null) {
                        Intrinsics.h("contributionLinkNavigator");
                        throw null;
                    }
                    boolean zY = composer.y(audioGuideActivity);
                    Object objX = composer.x();
                    if (zY || objX == Composer.Companion.f7939a) {
                        objX = new c1(audioGuideActivity, 12);
                        composer.q(objX);
                    }
                    AudioGuideComposableKt.a(audioGuideViewModel, contributionLinkNavigator, (Function1) objX, composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
        }
    }
}
