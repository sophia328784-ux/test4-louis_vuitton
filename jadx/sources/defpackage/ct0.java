package defpackage;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.arch.core.util.Function;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import com.caverock.androidsvg.SVGParseException;
import com.dynatrace.agent.di.SelfMonitoringComponent;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.components.DependencyException;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.b;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.e;
import com.perfectcorp.perfectlib.rh.utility.networkcache.d$b;
import com.perfectcorp.perfectlib.rh.utility.networkcache.d$d;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder.a;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import io.jsonwebtoken.security.SignatureException;
import io.jsonwebtoken.security.WeakKeyException;
import java.io.File;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import org.bouncycastle.cms.CMSException;
import org.teleal.cling.model.message.header.InvalidHeaderException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ct0 implements Function, com.perfectcorp.thirdparty.io.reactivex.functions.Function, DoubleFunction, SelfMonitoringComponent, Continuation, BiConsumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68329b;

    public static /* bridge */ /* synthetic */ Activity.ScreenCaptureCallback a(Object obj) {
        return (Activity.ScreenCaptureCallback) obj;
    }

    public static /* synthetic */ void c() {
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void e(int i2, String str) {
        throw new IllegalStateException((str + i2).toString());
    }

    public static /* synthetic */ void f(Object obj, Object obj2, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append((Object) " requires exactly ");
        sb.append(i2);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void g(Object obj, Object obj2, int i2, Object obj3, Object obj4, Object obj5, int i3, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12) {
        throw new WeakKeyException("The " + obj + obj2 + i2 + ((Object) " bits which is not secure enough for the ") + obj3 + obj4 + obj5 + ((Object) " MUST have a size >= ") + i3 + obj6 + obj7 + obj8 + obj9 + obj10 + obj11 + obj12);
    }

    public static /* synthetic */ void h(Object obj, Object obj2, Object obj3, Object obj4, String str) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void i(Object obj, String str) {
        throw new IllegalStateException((str + obj + '\'').toString());
    }

    public static /* synthetic */ void j(String str) throws SVGParseException {
        throw new SVGParseException(str);
    }

    public static /* synthetic */ void k(String str, float f2, Object obj, float f3, Object obj2) {
        throw new IllegalArgumentException(str + f2 + obj + f3 + obj2);
    }

    public static /* synthetic */ void l(String str, Object obj, Object obj2) {
        throw new DependencyException(str + obj + obj2);
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new InvalidHeaderException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void n(String str, Object obj, Throwable th) {
        throw new SignatureException(str + obj, th);
    }

    public static /* synthetic */ void o(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void p(String str) throws CMSException {
        throw new CMSException(str);
    }

    public static /* synthetic */ void q(String str, Object obj, Object obj2) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        e.a aVar = (e.a) obj2;
        ((ConcurrentHashMap) obj).put(aVar.productId, aVar);
    }

    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply */
    public Object mo0apply(Object obj) {
        Throwable th;
        Cursor cursor = null;
        switch (this.f68329b) {
            case 0:
                return null;
            case 1:
                Object obj2 = ((RequestTask.Response) obj).f39358b;
                Objects.requireNonNull(obj2);
                return obj2;
            case 18:
                return Single.g(InternalErrorRetriever.a((Throwable) obj));
            case 19:
                a aVar = (a) ((RequestTask.Response) obj).f39358b;
                Objects.requireNonNull(aVar);
                String str = aVar.a().mode;
                Objects.requireNonNull(str, "shade finder detection mode should not be null");
                Log.g(3, "ShadeFinder", "[queryDetectionMode] queried shade finder detect mode=".concat(str));
                QuickLaunchPreferenceHelper.f42021a.o("KEY_SHADE_FINDER_DETECT_MODE", str);
                return str;
            case 20:
                return ((ProductInfo) obj).f39799e;
            case 21:
                b bVar = b.d;
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                bVar.getClass();
                try {
                    Cursor cursorQuery = sQLiteDatabaseB.query("ConditionalInfo", Contract.ConditionalInfo.f40207b, "GUID IN (" + DBUtility.g((List) obj) + ")", null, null, null, null, null);
                    try {
                        List listM = bVar.m(cursorQuery);
                        IO.b(cursorQuery);
                        ImmutableMap.Builder builder = new ImmutableMap.Builder();
                        for (Object obj3 : listM) {
                            com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a aVar2 = (com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a) obj3;
                            Objects.requireNonNull(aVar2);
                            builder.b(aVar2.f41817a, obj3);
                        }
                        try {
                            return builder.a();
                        } catch (IllegalArgumentException e2) {
                            a61.l(e2.getMessage(), ". To index multiple values under a key, use Multimaps.index.");
                            return null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursorQuery;
                        try {
                            Log.e("ConditionalInfoDao", "getByGuids", th);
                            throw th;
                        } catch (Throwable th3) {
                            IO.b(cursor);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
                break;
            case 24:
                return new d$d((List) obj).c();
            case 25:
                e eVar = (e) ((RequestTask.Response) obj).f39358b;
                Objects.requireNonNull(eVar);
                return eVar.productIds;
            case 27:
                return (File) ((List) obj).get(0);
            case 28:
                return new d$b((List) obj).c();
            default:
                return ((com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.a) ((RequestTask.Response) obj).f39358b).results;
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double b(double d) {
        Rgb.Companion companion = Rgb.r;
        return d;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object d(Task task) {
        boolean z;
        if (task.isSuccessful()) {
            CrashlyticsReportWithSessionId crashlyticsReportWithSessionId = (CrashlyticsReportWithSessionId) task.getResult();
            Logger logger = Logger.f34483b;
            crashlyticsReportWithSessionId.getClass();
            logger.a(3);
            File fileB = crashlyticsReportWithSessionId.b();
            if (fileB.delete()) {
                fileB.getPath();
                logger.a(3);
            } else {
                fileB.getPath();
                logger.a(5);
            }
            z = true;
        } else {
            Logger logger2 = Logger.f34483b;
            task.getException();
            logger2.a(5);
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public /* synthetic */ ct0(int i2) {
        this.f68329b = i2;
    }
}
