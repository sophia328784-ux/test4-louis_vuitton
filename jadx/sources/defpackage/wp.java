package defpackage;

import android.text.TextUtils;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.dynatrace.android.lifecycle.ActivityLifecycleMonitor;
import com.google.android.datatransport.Transformer;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.send.DataTransportCrashlyticsReportSender;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import org.teleal.cling.transport.spi.UnsupportedDataException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wp implements Predicate, Function, ConfigurationPublisher.ConfigurationTransform, Transformer, ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80919b;

    public static /* synthetic */ void b(Object obj) throws InvalidKeySpecException {
        throw new InvalidKeySpecException(obj.toString());
    }

    public static /* synthetic */ void c(Object obj, String str) {
        throw new UnsupportedDataException(str + obj);
    }

    public static /* synthetic */ void d(String str) throws InvalidKeyException {
        throw new InvalidKeyException(str);
    }

    public static /* synthetic */ void e(String str, Object obj, Object obj2) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void f(String str, Object obj, Object obj2, Object obj3) {
        throw new KotlinReflectionInternalError(str + obj + obj2 + obj3 + ')');
    }

    public static /* synthetic */ void g(Object obj) throws SignatureException {
        throw new SignatureException(obj.toString());
    }

    @Override // com.dynatrace.android.agent.conf.ConfigurationPublisher.ConfigurationTransform
    public ConfigurationPublisher.ConfigurationUpdate.Builder a(ConfigurationPublisher.ConfigurationUpdate.Builder builder) {
        ActivityLifecycleMonitor activityLifecycleMonitor = Core.f27280a;
        builder.l = false;
        return builder;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        switch (this.f80919b) {
            case 1:
                return ((SkuBeautyMode$FeatureType) obj).toString();
            case 2:
                return new File((String) obj).getName();
            case 3:
            default:
                DataTransportCrashlyticsReportSender.f35013c.getClass();
                return CrashlyticsReportJsonTransform.f34994a.encode((CrashlyticsReport) obj).getBytes(Charset.forName("UTF-8"));
            case 4:
                Log.e("ContentPreloader", "preload ID system content error", (Throwable) obj);
                return g.f42660b;
            case 5:
                Throwable th = (Throwable) obj;
                if (th instanceof FileNotFoundException) {
                    Log.d("ContentPreloader", "preload fun sticker content error." + th);
                } else {
                    Log.e("ContentPreloader", "preload fun sticker content error", th);
                }
                return g.f42660b;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f80919b) {
            case 21:
                analyticsListener.getClass();
                break;
            case 22:
                analyticsListener.getClass();
                break;
            case 23:
                analyticsListener.getClass();
                break;
            case 24:
                analyticsListener.getClass();
                break;
            case 25:
                analyticsListener.getClass();
                break;
            case 26:
                analyticsListener.getClass();
                break;
            case 27:
                analyticsListener.getClass();
                break;
            case 28:
                analyticsListener.getClass();
                break;
            default:
                analyticsListener.getClass();
                break;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        switch (this.f80919b) {
            case 0:
                return ((SkuBeautyMode$FeatureType) obj) != SkuBeautyMode$FeatureType.UNDEFINED;
            default:
                return !TextUtils.isEmpty((String) obj);
        }
    }

    public /* synthetic */ wp(int i2) {
        this.f80919b = i2;
    }
}
