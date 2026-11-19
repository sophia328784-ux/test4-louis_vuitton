package defpackage;

import android.content.Context;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;
import com.batch.android.l.c;
import com.batch.android.m0.a;
import com.batch.android.n0.d;
import com.batch.android.n0.e;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.ui.UniversalLoadingActivity;
import com.sightcall.videoplayer.view.VideoPlayerBar;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchActivityRouter;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerFragment;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hi implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69714c;

    public /* synthetic */ hi(Object obj, int i2) {
        this.f69713b = i2;
        this.f69714c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f69713b;
        Object obj = this.f69714c;
        switch (i2) {
            case 0:
                CallActivity.m72instrumented$0$createUi$LandroidosBundleV((CallActivity) obj, view);
                return;
            case 1:
                Function0 function0 = (Function0) obj;
                Callback.n(view);
                try {
                    function0.mo47invoke();
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 2:
                ImagePickerFragment imagePickerFragment = (ImagePickerFragment) obj;
                Callback.n(view);
                try {
                    FragmentActivity activity = imagePickerFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 3:
                LightUpDetailFragment.P((LightUpDetailFragment) obj, view);
                return;
            case 4:
                PowerManagementBottomSheet powerManagementBottomSheet = (PowerManagementBottomSheet) obj;
                PowerManagementBottomSheet.Companion companion = PowerManagementBottomSheet.S;
                Callback.n(view);
                try {
                    powerManagementBottomSheet.dismiss();
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 5:
                SneakerDetailFragment sneakerDetailFragment = (SneakerDetailFragment) obj;
                SneakerDetailFragment.Companion companion2 = SneakerDetailFragment.Z;
                Callback.n(view);
                try {
                    Context contextRequireContext = sneakerDetailFragment.requireContext();
                    FaqActivity.Companion companion3 = FaqActivity.t;
                    contextRequireContext.getClass();
                    FaqType faqType = FaqType.LIGHT_UP_SNEAKERS;
                    companion3.getClass();
                    contextRequireContext.startActivity(FaqActivity.Companion.a(contextRequireContext, faqType));
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 6:
                TravelListFragment travelListFragment = (TravelListFragment) obj;
                TravelListFragment.Companion companion4 = TravelListFragment.L;
                Callback.n(view);
                try {
                    FragmentActivity activity2 = travelListFragment.getActivity();
                    AppCompatActivity appCompatActivity = activity2 instanceof AppCompatActivity ? (AppCompatActivity) activity2 : null;
                    if (appCompatActivity != null) {
                        if (travelListFragment.I == null) {
                            Intrinsics.h("watchActivityRouter");
                            throw null;
                        }
                        WatchActivityRouter.a(appCompatActivity);
                    }
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                    return;
                } catch (Throwable th) {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                    throw th;
                }
            case 7:
                UniversalLoadingActivity.m75instrumented$0$onCreate$LandroidosBundleV((UniversalLoadingActivity) obj, view);
                return;
            case 8:
                VideoPlayerBar.m76instrumented$0$init$V((VideoPlayerBar) obj, view);
                return;
            case 9:
                a.m19instrumented$0$a$V((a) obj, view);
                return;
            case 10:
                c.m15x961510d8((c) obj, view);
                return;
            case 11:
                d.m28instrumented$0$b$V((d) obj, view);
                return;
            default:
                e.m30xb7447c6f((e) obj, view);
                return;
        }
    }
}
