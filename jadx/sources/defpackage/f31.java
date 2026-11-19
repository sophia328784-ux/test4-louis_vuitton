package defpackage;

import android.R;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.camera.video.VideoCapture;
import com.batch.android.c0.b;
import com.batch.android.j1.d;
import com.batch.android.n0.c;
import com.batch.android.n0.e;
import com.batch.android.r0.h;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputLayout;
import com.perfectcorp.common.network.DownloadTask;
import com.perfectcorp.perfectlib.makeupcam.camera.g;
import com.sightcall.universal.media.UploaderService;
import com.sightcall.universal.scenario.steps.AcdCallStep;
import com.sightcall.universal.ui.UniversalLoadingActivity;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f31 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69033c;

    public /* synthetic */ f31(Object obj, int i2) {
        this.f69032b = i2;
        this.f69033c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69032b;
        Object obj = this.f69033c;
        switch (i2) {
            case 0:
                ((TextInputLayout) obj).f33209f.requestLayout();
                break;
            case 1:
                ((Toolbar) obj).n();
                break;
            case 2:
                TutorialFragment.Companion companion = TutorialFragment.I;
                Snackbar.f(((TutorialFragment) obj).requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            case 3:
                UniversalLoadingActivity.lambda$cancelAcd$3((AcdCallStep) obj);
                break;
            case 4:
                ((UploaderService) obj).bootstrap();
                break;
            case 5:
                VideoCapture.Defaults defaults = VideoCapture.F;
                ((VideoCapture) obj).q();
                break;
            case 6:
                WatchDetailsFragment.Companion companion2 = WatchDetailsFragment.O;
                Snackbar.f(((WatchDetailsFragment) obj).requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            case 7:
                WatchTutorialCategoriesFragment.Companion companion3 = WatchTutorialCategoriesFragment.I;
                Snackbar.f(((WatchTutorialCategoriesFragment) obj).requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            case 8:
                WatchfacePresentationPagerFragment.Companion companion4 = WatchfacePresentationPagerFragment.K;
                Snackbar.f(((WatchfacePresentationPagerFragment) obj).requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            case 9:
                WebViewFragment.Companion companion5 = WebViewFragment.n1;
                Snackbar.f(((WebViewFragment) obj).requireActivity().findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                break;
            case 10:
                WorkInitializer workInitializer = (WorkInitializer) obj;
                workInitializer.d.c(new ln0(workInitializer, 28));
                break;
            case 11:
                ((DownloadTask) obj).cancel(false);
                break;
            case 12:
                ((b) obj).m();
                break;
            case 13:
                com.batch.android.m0.b.d((com.batch.android.m0.b) obj);
                break;
            case 14:
                ((c) obj).i();
                break;
            case 15:
                ((com.batch.android.e0.c) obj).a();
                break;
            case 16:
                ((d) obj).b();
                break;
            case 17:
                ((e) obj).f();
                break;
            case 18:
                g gVar = (g) obj;
                TextView textView = gVar.f40889c;
                if (textView != null) {
                    textView.setText(String.format("FPS: %.1f", Float.valueOf(gVar.f40890e)));
                }
                break;
            default:
                h.d((h) obj);
                break;
        }
    }
}
