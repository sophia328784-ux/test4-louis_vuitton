package com.vuitton.android.presentation.screen.connectivity.home;

import android.content.Intent;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivity;
import com.vuitton.android.presentation.screen.connectivity.section.SectionType;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectivityRouter {
    @Inject
    public ConnectivityRouter() {
    }

    public static void a(FragmentActivity fragmentActivity, SectionType sectionType) {
        sectionType.getClass();
        if (fragmentActivity != null) {
            ConnectivitySectionDetailActivity.p.getClass();
            Intent intentPutExtra = new Intent(fragmentActivity, (Class<?>) ConnectivitySectionDetailActivity.class).putExtra("SECTION_TYPE", sectionType).putExtra("SHOULD_SHOW_WATCH_FACES_PAGE", false);
            intentPutExtra.getClass();
            fragmentActivity.startActivity(intentPutExtra);
        }
    }
}
