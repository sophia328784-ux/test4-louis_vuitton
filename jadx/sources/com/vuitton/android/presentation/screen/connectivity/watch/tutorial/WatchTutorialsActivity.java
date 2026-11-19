package com.vuitton.android.presentation.screen.connectivity.watch.tutorial;

import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialsActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchTutorialsActivity extends Hilt_WatchTutorialsActivity {
    public static final Companion q = new Companion(null);
    public WatchTutorialRouter p;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialsActivity$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_fragment_container);
        if (this.p == null) {
            Intrinsics.h("watchTutorialRouter");
            throw null;
        }
        FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
        fragmentTransactionD.n(R.anim.no_animation, R.anim.no_animation, R.anim.no_animation, R.anim.no_animation);
        WatchTutorialCategoriesFragment.I.getClass();
        fragmentTransactionD.m(R.id.fragment_container, new WatchTutorialCategoriesFragment(), WatchTutorialCategoriesFragment.K);
        fragmentTransactionD.e();
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
