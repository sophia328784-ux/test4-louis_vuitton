package defpackage;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ListeningQueueTrackItemKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import com.vuitton.android.presentation.screen.feed.components.card.FeedLiveCardContentKt;
import com.vuitton.android.presentation.screen.feed.components.card.FeedNotifyIconButtonsKt;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModel;
import com.vuitton.android.presentation.screen.options.legaltext.components.LegalTextComposableKt;
import com.vuitton.android.presentation.screen.story.components.StoryFooterKt;
import com.vuitton.android.presentation.screen.story.models.StorySlideUiModel;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zr implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81699c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f81700e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81701f;
    public final /* synthetic */ Object g;

    public /* synthetic */ zr(BoxScope boxScope, boolean z, LiveInfoUiModel liveInfoUiModel, Function0 function0, int i2) {
        this.f81698b = 1;
        this.f81701f = boxScope;
        this.f81699c = z;
        this.g = liveInfoUiModel;
        this.d = function0;
        this.f81700e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81698b;
        int i3 = this.f81700e;
        Object obj3 = this.d;
        Object obj4 = this.g;
        Object obj5 = this.f81701f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                boolean z = this.f81699c;
                DatePickerKt.o((Function0) obj3, z, (Modifier) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).intValue();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                boolean z2 = this.f81699c;
                FeedLiveCardContentKt.a((BoxScope) obj5, z2, (LiveInfoUiModel) obj4, (Function0) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                FeedNotifyIconButtonsKt.a((Modifier) obj5, (LVColorScheme) obj4, this.f81699c, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                boolean z3 = this.f81699c;
                LegalTextComposableKt.a((LegalTextViewModel) obj5, z3, (Function0) obj3, (Function1) obj4, (Composer) obj, iA3);
                break;
            case 4:
                ((Integer) obj2).getClass();
                ListeningQueueTrackItemKt.c((AudioGuideUiModel.TrackUiModel) obj5, (AudioGuideUiModel.AudioGuideColorsUiModel) obj4, this.f81699c, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                StaggeredGridItemKt.a(this.f81699c, (AssetUiModel) obj5, (String) obj4, (Function0) obj3, (Composer) obj, iA4);
                break;
            case 6:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                boolean z4 = this.f81699c;
                StoryFooterKt.a((Modifier) obj5, (StorySlideUiModel) obj3, z4, (Function1) obj4, (Composer) obj, iA5);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(i3 | 1);
                boolean z5 = this.f81699c;
                ThankYouScreenKt.j((Modifier) obj5, (CheckoutConfirmationDetailUiModel) obj4, z5, (Function0) obj3, (Composer) obj, iA6);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ zr(int i2, int i3, Object obj, Object obj2, Function0 function0, boolean z) {
        this.f81698b = i3;
        this.f81701f = obj;
        this.g = obj2;
        this.f81699c = z;
        this.d = function0;
        this.f81700e = i2;
    }

    public /* synthetic */ zr(Modifier modifier, StorySlideUiModel storySlideUiModel, boolean z, Function1 function1, int i2) {
        this.f81698b = 6;
        this.f81701f = modifier;
        this.d = storySlideUiModel;
        this.f81699c = z;
        this.g = function1;
        this.f81700e = i2;
    }

    public /* synthetic */ zr(LegalTextViewModel legalTextViewModel, boolean z, Function0 function0, Function1 function1, int i2) {
        this.f81698b = 3;
        this.f81701f = legalTextViewModel;
        this.f81699c = z;
        this.d = function0;
        this.g = function1;
        this.f81700e = i2;
    }

    public /* synthetic */ zr(Function0 function0, boolean z, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f81698b = 0;
        this.d = function0;
        this.f81699c = z;
        this.f81701f = modifier;
        this.g = composableLambdaImpl;
        this.f81700e = i2;
    }

    public /* synthetic */ zr(boolean z, AssetUiModel assetUiModel, String str, Function0 function0, int i2) {
        this.f81698b = 5;
        this.f81699c = z;
        this.f81701f = assetUiModel;
        this.g = str;
        this.d = function0;
        this.f81700e = i2;
    }
}
