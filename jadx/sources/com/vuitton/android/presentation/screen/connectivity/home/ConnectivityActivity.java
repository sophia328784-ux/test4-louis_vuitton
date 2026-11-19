package com.vuitton.android.presentation.screen.connectivity.home;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ActivityFragmentContainerBinding;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ConnectivityActivity extends Hilt_ConnectivityActivity {
    public static final Companion q = new Companion(null);
    public ActivityFragmentContainerBinding p;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;", "", "", "KEY_DEEPLINK", "Ljava/lang/String;", "KEY_PAIRING_V2", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str) {
            context.getClass();
            Intent intent = new Intent(context, (Class<?>) ConnectivityActivity.class);
            intent.putExtra("DEEPLINK", str);
            return intent;
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Parcelable parcelable;
        super.onCreate(bundle);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_fragment_container, (ViewGroup) null, false);
        if (viewInflate == null) {
            r81.d("rootView");
            return;
        }
        FrameLayout frameLayout = (FrameLayout) viewInflate;
        ActivityFragmentContainerBinding activityFragmentContainerBinding = new ActivityFragmentContainerBinding(frameLayout, frameLayout);
        setContentView(frameLayout);
        this.p = activityFragmentContainerBinding;
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if (intent.hasExtra("DEEPLINK")) {
            String stringExtra = intent.getStringExtra("DEEPLINK");
            if (Intrinsics.c(stringExtra, DeepLink.TRAVELS.getHost())) {
                FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
                ActivityFragmentContainerBinding activityFragmentContainerBinding2 = this.p;
                if (activityFragmentContainerBinding2 == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                int id = activityFragmentContainerBinding2.f51204b.getId();
                TravelListFragment.L.getClass();
                Fragment travelListFragment = new TravelListFragment();
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("FROM_DEEPLINK", true);
                travelListFragment.setArguments(bundle2);
                fragmentTransactionD.m(id, travelListFragment, TravelListFragment.N);
                fragmentTransactionD.e();
                return;
            }
            FragmentTransaction fragmentTransactionD2 = getSupportFragmentManager().d();
            ActivityFragmentContainerBinding activityFragmentContainerBinding3 = this.p;
            if (activityFragmentContainerBinding3 == null) {
                Intrinsics.h("binding");
                throw null;
            }
            int id2 = activityFragmentContainerBinding3.f51204b.getId();
            ConnectivityFragment.Q.getClass();
            Fragment connectivityFragment = new ConnectivityFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putString("DEEPLINK", stringExtra);
            connectivityFragment.setArguments(bundle3);
            fragmentTransactionD2.m(id2, connectivityFragment, ConnectivityFragment.S);
            fragmentTransactionD2.e();
            return;
        }
        if (!intent.hasExtra("PAIRING_V2")) {
            FragmentTransaction fragmentTransactionD3 = getSupportFragmentManager().d();
            ActivityFragmentContainerBinding activityFragmentContainerBinding4 = this.p;
            if (activityFragmentContainerBinding4 == null) {
                Intrinsics.h("binding");
                throw null;
            }
            int id3 = activityFragmentContainerBinding4.f51204b.getId();
            ConnectivityFragment.Q.getClass();
            fragmentTransactionD3.m(id3, new ConnectivityFragment(), ConnectivityFragment.S);
            fragmentTransactionD3.e();
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) intent.getParcelableExtra("PAIRING_V2", PairWatchV2Ui.class);
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra("PAIRING_V2");
            if (!(parcelableExtra instanceof PairWatchV2Ui)) {
                parcelableExtra = null;
            }
            parcelable = (PairWatchV2Ui) parcelableExtra;
        }
        Parcelable parcelable2 = (PairWatchV2Ui) parcelable;
        FragmentTransaction fragmentTransactionD4 = getSupportFragmentManager().d();
        ActivityFragmentContainerBinding activityFragmentContainerBinding5 = this.p;
        if (activityFragmentContainerBinding5 == null) {
            Intrinsics.h("binding");
            throw null;
        }
        int id4 = activityFragmentContainerBinding5.f51204b.getId();
        ConnectivityFragment.Q.getClass();
        Fragment connectivityFragment2 = new ConnectivityFragment();
        Bundle bundle4 = new Bundle();
        bundle4.putParcelable("PAIRING_V2", parcelable2);
        connectivityFragment2.setArguments(bundle4);
        fragmentTransactionD4.m(id4, connectivityFragment2, ConnectivityFragment.S);
        fragmentTransactionD4.e();
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        if (getSupportFragmentManager().J() > 0) {
            getSupportFragmentManager().V();
            return true;
        }
        finish();
        return true;
    }
}
