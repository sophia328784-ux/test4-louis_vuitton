package com.vuitton.android.presentation.screen.connectivity.section;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialType;
import com.vuitton.android.presentation.screen.video.VideoActivity;
import com.vuitton.android.presentation.utils.TrackingFrom;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectivitySectionDetailActivityRouter {
    @Inject
    public ConnectivitySectionDetailActivityRouter() {
    }

    public static void a(FragmentActivity fragmentActivity, FaqCategoryType faqCategoryType) {
        faqCategoryType.getClass();
        if (fragmentActivity != null) {
            FaqCategoriesActivity.s.getClass();
            Intent intentPutExtra = new Intent(fragmentActivity, (Class<?>) FaqCategoriesActivity.class).putExtra("FAQ_CATEGORY_TYPE", faqCategoryType);
            intentPutExtra.getClass();
            fragmentActivity.startActivity(intentPutExtra);
        }
    }

    public static void b(FragmentActivity fragmentActivity, TutorialType tutorialType) {
        tutorialType.getClass();
        if (fragmentActivity != null) {
            FragmentTransaction fragmentTransactionD = fragmentActivity.getSupportFragmentManager().d();
            fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
            TutorialFragment.I.getClass();
            TutorialFragment tutorialFragment = new TutorialFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("TUTORIAL_TYPE", tutorialType);
            tutorialFragment.setArguments(bundle);
            String str = TutorialFragment.K;
            fragmentTransactionD.i(R.id.fragment_container, tutorialFragment, str, 1);
            fragmentTransactionD.d(str);
            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
            fragmentTransactionD.e();
        }
    }

    public static void c(FragmentActivity fragmentActivity, VideoUiModel videoUiModel, TrackingFrom trackingFrom, String str) {
        if (fragmentActivity != null) {
            VideoActivity.Companion companion = VideoActivity.m;
            if (trackingFrom == null) {
                trackingFrom = new TrackingFrom("LVPass/IoT", "IoT");
            }
            String str2 = videoUiModel.f55968b;
            String str3 = videoUiModel.f55969c;
            companion.getClass();
            fragmentActivity.startActivity(VideoActivity.Companion.b(fragmentActivity, trackingFrom, str2, str3, str));
        }
    }
}
