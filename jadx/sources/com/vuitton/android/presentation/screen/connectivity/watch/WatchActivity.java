package com.vuitton.android.presentation.screen.connectivity.watch;

import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModelKt;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchActivity extends Hilt_WatchActivity {
    public static final Companion r = new Companion(null);
    public WatchActivityRouter p;
    public AnalyticsTracker q;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivity$Companion;", "", "", "KEY_WATCH_ID", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_fragment_container);
        AnalyticsTracker analyticsTracker = this.q;
        if (analyticsTracker == null) {
            Intrinsics.h("tracker");
            throw null;
        }
        analyticsTracker.a(WatchTrackingUiModelKt.a(WatchTrackingUiModel.WatchGeneralPageScreen.f56748a));
        String stringExtra = getIntent().getStringExtra("WATCH_ID");
        if (stringExtra != null) {
            if (this.p == null) {
                Intrinsics.h("watchActivityRouter");
                throw null;
            }
            FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
            fragmentTransactionD.n(R.anim.no_animation, R.anim.no_animation, R.anim.no_animation, R.anim.no_animation);
            WatchDetailsFragment.O.getClass();
            WatchDetailsFragment watchDetailsFragment = new WatchDetailsFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("WATCH_ID", stringExtra);
            watchDetailsFragment.setArguments(bundle2);
            fragmentTransactionD.m(R.id.fragment_container, watchDetailsFragment, WatchDetailsFragment.Q);
            fragmentTransactionD.e();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        if (getSupportFragmentManager().J() == 0) {
            finish();
            return true;
        }
        getSupportFragmentManager().V();
        return true;
    }
}
