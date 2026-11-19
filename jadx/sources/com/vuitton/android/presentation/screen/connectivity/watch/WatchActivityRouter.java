package com.vuitton.android.presentation.screen.connectivity.watch;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity;
import com.vuitton.android.presentation.screen.connectivity.travel.MapperKt;
import com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchActivityRouter {
    @Inject
    public WatchActivityRouter() {
    }

    public static void a(AppCompatActivity appCompatActivity) {
        AddTravelActivity.u.getClass();
        appCompatActivity.startActivity(new Intent(appCompatActivity, (Class<?>) AddTravelActivity.class));
    }

    public static void b(AppCompatActivity appCompatActivity, Travel travel) {
        travel.getClass();
        FragmentTransaction fragmentTransactionD = appCompatActivity.getSupportFragmentManager().d();
        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        TravelDetailsFragment.K.getClass();
        TravelDetailsFragment travelDetailsFragment = new TravelDetailsFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("KEY_TRAVEL", MapperKt.b(travel));
        travelDetailsFragment.setArguments(bundle);
        String str = TravelDetailsFragment.M;
        fragmentTransactionD.m(R.id.fragment_container, travelDetailsFragment, str);
        fragmentTransactionD.d(str);
        fragmentTransactionD.e();
    }
}
