package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import com.vuitton.android.R;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1", "Landroidx/fragment/app/FragmentStatePagerAdapter;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AirportListActivity$initPager$pagerAdapter$1 extends FragmentStatePagerAdapter {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AirportListActivity f56353i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AirportListActivity$initPager$pagerAdapter$1(AirportListActivity airportListActivity, FragmentManager fragmentManager) {
        super(fragmentManager, 1);
        this.f56353i = airportListActivity;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final CharSequence c(int i2) {
        AirportListActivity airportListActivity = this.f56353i;
        if (i2 == 0) {
            String string = airportListActivity.getString(R.string.country);
            string.getClass();
            return string;
        }
        String string2 = airportListActivity.getString(R.string.city);
        string2.getClass();
        return string2;
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public final AirportListFragment j(int i2) {
        AirportListFragment.Companion companion = AirportListFragment.K;
        boolean z = i2 == 0;
        companion.getClass();
        AirportListFragment airportListFragment = new AirportListFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("IS_COUNTRY_LIST", z);
        airportListFragment.setArguments(bundle);
        return airportListFragment;
    }
}
