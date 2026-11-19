package defpackage;

import android.media.AudioDeviceInfo;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import java.nio.charset.Charset;
import java.util.function.Function;
import net.rtccloud.sdk.AudioModule;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kb implements Function {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f71609b;

    public /* synthetic */ kb(Object obj, int i2) {
        this.f71608a = i2;
        this.f71609b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i2 = this.f71608a;
        Object obj2 = this.f71609b;
        switch (i2) {
            case 0:
                return ((AudioModule) obj2).lambda$getDevices$0((AudioDeviceInfo) obj);
            case 1:
                return ((AudioModule) obj2).lambda$getDevices$1((AudioDeviceInfo) obj);
            default:
                CrashlyticsReport.Session.Event event = (CrashlyticsReport.Session.Event) obj2;
                Charset charset = CrashlyticsReportPersistence.f35001e;
                CrashlyticsReport.Session.Event.Builder builderH = event.h();
                CrashlyticsReport.Session.Event.Application.Builder builderI = event.b().i();
                CrashlyticsReport.Session.Event.Application.Execution.Builder builderH2 = event.b().f().h();
                builderH2.e((CrashlyticsReport.ProfilingManagerInfo) obj);
                builderI.f(builderH2.a());
                builderH.b(builderI.a());
                return builderH.a();
        }
    }
}
