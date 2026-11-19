package defpackage;

import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.DownloadHandle;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class f91 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69086b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f69087c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NetworkTaskManager.TaskPriority f69088e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f69089f;

    public /* synthetic */ f91(int i2, String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
        this.f69089f = i2;
        this.d = str;
        this.f69088e = taskPriority;
        this.f69087c = downloadTaskCancelable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f69086b;
        int i3 = this.f69089f;
        NetworkTaskManager.TaskPriority taskPriority = this.f69088e;
        String str = this.d;
        DownloadTaskCancelable downloadTaskCancelable = this.f69087c;
        switch (i2) {
            case 0:
                AtomicInteger atomicInteger = j.f41498a;
                Log.g(3, "IdSystemDataHelper", "[#" + i3 + "] component#getDownloadMaybe()");
                return ((TemplateUtils.a) obj).a(str, taskPriority, downloadTaskCancelable);
            default:
                AtomicInteger atomicInteger2 = j.f41498a;
                downloadTaskCancelable.c();
                DownloadHandle downloadHandleA = a.a(str, (a) obj, taskPriority).a(NetworkTaskManagerHolder.a());
                downloadTaskCancelable.a(Collections.singletonList(Disposables.b(new et(downloadHandleA, 5))));
                Log.g(3, "IdSystemDataHelper", "[#" + i3 + "] #getDownloadImageObservable(); DownloadHandle#startDownload()");
                return ((BaseDownloadHandle) downloadHandleA).d(null, null);
        }
    }

    public /* synthetic */ f91(DownloadTaskCancelable downloadTaskCancelable, String str, NetworkTaskManager.TaskPriority taskPriority, int i2) {
        this.f69087c = downloadTaskCancelable;
        this.d = str;
        this.f69088e = taskPriority;
        this.f69089f = i2;
    }
}
