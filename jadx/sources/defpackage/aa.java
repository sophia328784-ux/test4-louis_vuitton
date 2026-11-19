package defpackage;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import io.reactivex.rxjava3.core.Observable;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.Objects;
import java.util.Optional;
import java.util.StringJoiner;
import java.util.function.Function;
import net.rtccloud.sdk.Participant;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class aa implements Function {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f461a;

    public /* synthetic */ aa(int i2) {
        this.f461a = i2;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f461a) {
            case 0:
                return Integer.valueOf(Integer.bitCount(((Integer) obj).intValue()));
            case 1:
                File file = (File) obj;
                try {
                    CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = CrashlyticsReportPersistence.g;
                    String strF = CrashlyticsReportPersistence.f(file);
                    crashlyticsReportJsonTransform.getClass();
                    try {
                        JsonReader jsonReader = new JsonReader(new StringReader(strF));
                        try {
                            CrashlyticsReport.ProfilingManagerInfo profilingManagerInfoH = CrashlyticsReportJsonTransform.h(jsonReader);
                            jsonReader.close();
                            return Optional.of(profilingManagerInfoH);
                        } catch (Throwable th) {
                            try {
                                jsonReader.close();
                                break;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IllegalStateException e2) {
                        throw new IOException(e2);
                    }
                } catch (IOException unused) {
                    Logger.f34483b.a(5);
                    return Optional.empty();
                }
            case 2:
                return ((StringJoiner) obj).toString();
            case 3:
                return Observable.just(obj);
            case 4:
                return Rtcc.lambda$jni_participantsCB$4((Participant) obj);
            case 5:
                return Rtcc.lambda$jni_participantsCB$5((Participant) obj);
            default:
                return Objects.toString(obj, "");
        }
    }
}
