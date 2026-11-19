package defpackage;

import androidx.compose.foundation.ScrollState;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import com.vuitton.android.designkit.ui.common.ItemUtilsKt;
import com.vuitton.android.designkit.ui.common.RowItemCenterPosition;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cy implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68355b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f68356c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f68357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f68358f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f68359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f68360i;

    public /* synthetic */ cy(HapticFeedback hapticFeedback, Function2 function2, PLPEntryUiModel pLPEntryUiModel, Map map, int i2, ScrollState scrollState, CoroutineScope coroutineScope) {
        this.f68357e = hapticFeedback;
        this.f68356c = function2;
        this.f68358f = pLPEntryUiModel;
        this.g = map;
        this.d = i2;
        this.f68359h = scrollState;
        this.f68360i = coroutineScope;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0080  */
    /* JADX WARN: Code duplicated, block: B:13:0x0084  */
    /* JADX WARN: Code duplicated, block: B:15:0x0088  */
    /* JADX WARN: Code duplicated, block: B:16:0x008c  */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        ContributionLinkUiModel contributionLinkUiModel;
        int i2 = this.f68355b;
        Object obj = this.f68360i;
        Object obj2 = this.f68359h;
        int i3 = this.d;
        Object obj3 = this.g;
        Object obj4 = this.f68358f;
        Function2 function2 = this.f68356c;
        Object obj5 = this.f68357e;
        switch (i2) {
            case 0:
                FeedTracker feedTracker = (FeedTracker) obj5;
                FeedTab feedTab = (FeedTab) obj4;
                Function1 function1 = (Function1) obj2;
                Function1 function3 = (Function1) obj;
                EditorialModuleUiModel.CardUiModel cardUiModel = (EditorialModuleUiModel.CardUiModel) ((EditorialModuleUiModel) obj3);
                String str = cardUiModel.f50813a;
                EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel = cardUiModel.g;
                feedTracker.getClass();
                feedTab.getClass();
                str.getClass();
                editorialModuleCardTypeUiModel.getClass();
                feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.CardClickEvent(feedTab, str, editorialModuleCardTypeUiModel, i3)));
                if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Live) {
                    EditorialModuleCardTypeUiModel.Live live = (EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel;
                    LiveInfoUiModel liveInfoUiModel = live.f50806a;
                    if (liveInfoUiModel.f50863b != LiveVideoStatusUiModel.LIVE_UPCOMING) {
                        function2.invoke(new VideoIdUiModel(liveInfoUiModel.f50862a), live.f50807b);
                    } else {
                        contributionLinkUiModel = cardUiModel.f50815c;
                        if (contributionLinkUiModel != null) {
                            if (contributionLinkUiModel instanceof ContributionLinkUiModel.PushNotification) {
                                function1.invoke(str);
                            } else {
                                function3.invoke(contributionLinkUiModel);
                            }
                        }
                    }
                } else {
                    contributionLinkUiModel = cardUiModel.f50815c;
                    if (contributionLinkUiModel != null) {
                        if (contributionLinkUiModel instanceof ContributionLinkUiModel.PushNotification) {
                            function1.invoke(str);
                        } else {
                            function3.invoke(contributionLinkUiModel);
                        }
                    }
                }
                break;
            default:
                PLPEntryUiModel pLPEntryUiModel = (PLPEntryUiModel) obj4;
                HapticFeedbackType.f9193b.getClass();
                int i4 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj5).a(0);
                function2.invoke(pLPEntryUiModel, Boolean.TRUE);
                ItemUtilsKt.a((RowItemCenterPosition) ((Map) obj3).get(pLPEntryUiModel.f55373b), i3, (ScrollState) obj2, (CoroutineScope) obj);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ cy(FeedTracker feedTracker, FeedTab feedTab, EditorialModuleUiModel editorialModuleUiModel, int i2, Function2 function2, Function1 function1, Function1 function3) {
        this.f68357e = feedTracker;
        this.f68358f = feedTab;
        this.g = editorialModuleUiModel;
        this.d = i2;
        this.f68356c = function2;
        this.f68359h = function1;
        this.f68360i = function3;
    }
}
