package defpackage;

import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.lifecycle.ViewModelLazy;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.LookSkuTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleNavHostKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleTrackingUiModel;
import defpackage.s31;
import defpackage.xe0;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s31 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TheLookImmersiveArticleActivity f79702c;

    public /* synthetic */ s31(TheLookImmersiveArticleActivity theLookImmersiveArticleActivity, int i2) {
        this.f79701b = i2;
        this.f79702c = theLookImmersiveArticleActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AssetUiModel assetUiModel;
        AssetImageUiModel assetImageUiModel;
        String str;
        int i2 = this.f79701b;
        final TheLookImmersiveArticleActivity theLookImmersiveArticleActivity = this.f79702c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                TheLookImmersiveArticleActivity.Companion companion = TheLookImmersiveArticleActivity.q;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    SystemBarStyle.f684e.getClass();
                    EdgeToEdge.a(theLookImmersiveArticleActivity, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.a());
                    ThemeKt.a(null, ComposableLambdaKt.b(-1618540804, new Function2() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            TheLookImmersiveArticleActivity.Companion companion2 = TheLookImmersiveArticleActivity.q;
                            int i3 = 1;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                final TheLookImmersiveArticleActivity theLookImmersiveArticleActivity2 = theLookImmersiveArticleActivity;
                                TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel = (TheLookImmersiveArticleViewModel) theLookImmersiveArticleActivity2.p.getF71699b();
                                boolean zY = composer2.y(theLookImmersiveArticleActivity2);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new s31(theLookImmersiveArticleActivity2, i3);
                                    composer2.q(objX);
                                }
                                Function2 function2 = (Function2) objX;
                                boolean zY2 = composer2.y(theLookImmersiveArticleActivity2);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new Function2<SkuIdUiModel, LookSkuTypeUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleActivity$onCreate$1$1$2$1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj5, Object obj6) {
                                            String str2 = ((SkuIdUiModel) obj5).f61764b;
                                            LookSkuTypeUiModel lookSkuTypeUiModel = (LookSkuTypeUiModel) obj6;
                                            str2.getClass();
                                            TheLookImmersiveArticleActivity.Companion companion3 = TheLookImmersiveArticleActivity.q;
                                            TheLookImmersiveArticleActivity theLookImmersiveArticleActivity3 = theLookImmersiveArticleActivity2;
                                            ((TheLookImmersiveArticleViewModel) theLookImmersiveArticleActivity3.p.getF71699b()).w2(new TheLookImmersiveArticleTrackingUiModel.ShopTheLookImmersiveArticle(str2, null));
                                            if ((lookSkuTypeUiModel == null ? -1 : TheLookImmersiveArticleActivity.WhenMappings.f65305a[lookSkuTypeUiModel.ordinal()]) == 1) {
                                                theLookImmersiveArticleActivity3.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToProductPage(str2, false, null, null, 14, null), theLookImmersiveArticleActivity3));
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX2);
                                }
                                Function2 function3 = (Function2) objX2;
                                boolean zY3 = composer2.y(theLookImmersiveArticleActivity2);
                                Object objX3 = composer2.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new xe0(theLookImmersiveArticleActivity2, 20);
                                    composer2.q(objX3);
                                }
                                TheLookImmersiveArticleNavHostKt.a(theLookImmersiveArticleViewModel, function2, function3, (Function3) objX3, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                String str2 = (String) obj;
                ImmersiveArticleLookCardUiModel immersiveArticleLookCardUiModel = (ImmersiveArticleLookCardUiModel) obj2;
                TheLookImmersiveArticleActivity.Companion companion2 = TheLookImmersiveArticleActivity.q;
                str2.getClass();
                immersiveArticleLookCardUiModel.getClass();
                ViewModelLazy viewModelLazy = theLookImmersiveArticleActivity.p;
                ((TheLookImmersiveArticleViewModel) viewModelLazy.getF71699b()).w2(new TheLookImmersiveArticleTrackingUiModel.ShareLookImmersiveArticle(str2, immersiveArticleLookCardUiModel.f58681a));
                List list = immersiveArticleLookCardUiModel.f58685f;
                if (list != null && (assetUiModel = (AssetUiModel) CollectionsKt.firstOrNull(list)) != null && (assetImageUiModel = assetUiModel.f51780b) != null && (str = assetImageUiModel.f51778b) != null) {
                    ((TheLookImmersiveArticleViewModel) viewModelLazy.getF71699b()).v6(str);
                }
                break;
        }
        return Unit.f71739a;
    }
}
