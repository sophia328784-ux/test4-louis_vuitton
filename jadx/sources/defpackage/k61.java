package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.net.http.SslError;
import android.os.Build;
import android.webkit.ConsoleMessage;
import androidx.work.Configuration;
import androidx.work.Worker;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemjob.JobSchedulerExtKt;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import com.vuitton.android.presentation.extensions.WebViewExtKt;
import com.vuitton.android.presentation.link.WebViewSocialAuthenticationHandlerImpl;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthChromeClient;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthClient;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthUtilsKt;
import com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment;
import com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterFragment;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistTrackingUiModel;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k61 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71578c;

    public /* synthetic */ k61(Object obj, int i2) {
        this.f71577b = i2;
        this.f71578c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71577b;
        Object obj = this.f71578c;
        switch (i2) {
            case 0:
                ConsoleMessage consoleMessage = (ConsoleMessage) obj;
                int i3 = WebViewAuthChromeClient.f53454e;
                return "at " + WebViewAuthUtilsKt.c(consoleMessage.sourceId()) + ":" + consoleMessage.lineNumber();
            case 1:
                SslError sslError = (SslError) obj;
                int i4 = WebViewAuthClient.f53459f;
                return fc.i("SSL error on ", WebViewAuthUtilsKt.c(sslError.getUrl()), ": ", WebViewExtKt.a(sslError));
            case 2:
                WebViewKisaFragment webViewKisaFragment = (WebViewKisaFragment) obj;
                if (webViewKisaFragment.K != null) {
                    AuthenticationActivityRouter.c(webViewKisaFragment.getActivity());
                    return Unit.f71739a;
                }
                Intrinsics.h("authenticationActivityRouter");
                throw null;
            case 3:
                WebViewRegisterFragment webViewRegisterFragment = (WebViewRegisterFragment) obj;
                if (webViewRegisterFragment.K != null) {
                    AuthenticationActivityRouter.c(webViewRegisterFragment.getActivity());
                    return Unit.f71739a;
                }
                Intrinsics.h("authenticationActivityRouter");
                throw null;
            case 4:
                return ((WebViewSocialAuthenticationHandlerImpl) obj).f51611e.f49912a.b();
            case 5:
                ((WishlistViewModel) obj).h1(WishlistTrackingUiModel.OpenMyLVEvent.f65748a);
                return Unit.f71739a;
            case 6:
                WorkContinuationImpl workContinuationImpl = (WorkContinuationImpl) obj;
                int i5 = WorkContinuationImpl.f20330j;
                int i6 = EnqueueRunnable.f20541a;
                WorkManagerImpl workManagerImpl = workContinuationImpl.f20331a;
                if (WorkContinuationImpl.b(workContinuationImpl, new HashSet())) {
                    mt.j("WorkContinuation has cycles (", workContinuationImpl, ")");
                    return null;
                }
                WorkDatabase workDatabase = workManagerImpl.d;
                Configuration configuration = workManagerImpl.f20344c;
                workDatabase.c();
                try {
                    EnqueueUtilsKt.a(workDatabase, configuration, workContinuationImpl);
                    boolean zA = EnqueueRunnable.a(workContinuationImpl);
                    workDatabase.w();
                    workDatabase.h();
                    if (zA) {
                        Schedulers.b(configuration, workManagerImpl.d, workManagerImpl.f20346f);
                    }
                    return Unit.f71739a;
                } catch (Throwable th) {
                    workDatabase.h();
                    throw th;
                }
            case 7:
                WorkManagerImpl workManagerImpl2 = (WorkManagerImpl) obj;
                WorkDatabase workDatabase2 = workManagerImpl2.d;
                Context context = workManagerImpl2.f20343b;
                int i7 = SystemJobScheduler.g;
                if (Build.VERSION.SDK_INT >= 34) {
                    JobSchedulerExtKt.b(context).cancelAll();
                }
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                ArrayList arrayListE = SystemJobScheduler.e(context, jobScheduler);
                if (arrayListE != null && !arrayListE.isEmpty()) {
                    Iterator it = arrayListE.iterator();
                    while (it.hasNext()) {
                        SystemJobScheduler.c(jobScheduler, ((JobInfo) it.next()).getId());
                    }
                }
                workDatabase2.D().n();
                Schedulers.b(workManagerImpl2.f20344c, workDatabase2, workManagerImpl2.f20346f);
                return Unit.f71739a;
            default:
                return ((Worker) obj).c();
        }
    }
}
