package defpackage;

import android.app.ForegroundServiceStartNotAllowedException;
import android.os.Bundle;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.foundation.MarqueeSpacing;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.compose.ui.unit.Density;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.Maps;
import com.kakao.sdk.common.util.KakaoJson;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.VtoApplier;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.a;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$g;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.vuitton.android.presentation.screen.main.MainActivity;
import java.security.GeneralSecurityException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import kotlin.NoWhenBranchMatchedException;
import kotlin.math.MathKt;
import org.teleal.cling.model.message.header.InvalidHeaderException;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v40 implements Converter, ShouldPauseCallback, CallbackToFutureAdapter.Resolver, Consumer, Function, LoudnessCodecController.LoudnessParameterUpdateListener, ActivityResultCallback, Maps.EntryTransformer, MarqueeSpacing {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80494b;

    public /* synthetic */ v40(uh uhVar) {
        this.f80494b = 25;
    }

    public static /* synthetic */ void g() {
        throw new NoWhenBranchMatchedException();
    }

    public static /* synthetic */ void h(Object obj, String str) {
        throw new InvalidHeaderException(str + obj);
    }

    public static /* synthetic */ void j(String str) throws GeneralSecurityException {
        throw new GeneralSecurityException(str);
    }

    public static /* synthetic */ void k(String str, Object obj, Object obj2) {
        throw new AssertionError(str + obj + obj2);
    }

    public static /* bridge */ /* synthetic */ boolean l(Object obj) {
        return obj instanceof ForegroundServiceStartNotAllowedException;
    }

    public static /* synthetic */ void m(String str) {
        throw new InvalidHeaderException(str);
    }

    @Override // androidx.media3.exoplayer.mediacodec.LoudnessCodecController.LoudnessParameterUpdateListener
    public Bundle a(Bundle bundle) {
        return bundle;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((ExecutorService) obj).shutdown();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        char c2 = 1;
        switch (this.f80494b) {
            case 8:
                Log.e("LookHandler", "getDownloadedLookInfo failed", (Throwable) obj);
                return Optional.a();
            case 9:
                return (LookInfo) ((Optional) obj).c();
            case 10:
                return g.f42660b;
            case 11:
                String str = (String) obj;
                b bVarA = a.a(YMKDatabase.b(), str);
                if (bVarA == null) {
                    Log.d("LookHandler", "Can't find metadata of " + str);
                }
                return Optional.b(bVarA);
            case 12:
                return (DownloadReport.CompleteReport) MoreFutures.b((Future) obj);
            case 13:
                return Single.h(Boolean.valueOf(((RequestTask.Response) obj).f39357a != 304));
            case 14:
                return new c$g((List) obj).c().l();
            case 15:
                RequestTask.Response response = (RequestTask.Response) obj;
                if (response.f39357a == 304) {
                    return Single.h(Collections.EMPTY_LIST);
                }
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a aVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a) response.f39358b;
                Objects.requireNonNull(aVar);
                return new m(Single.h(aVar.b()), new v40(17)).f(new r40(response, c2 == true ? 1 : 0));
            case 16:
                return (Optional) MoreFutures.b((Future) obj);
            case 17:
                List list = (List) obj;
                Single singleA = LookHandler.a(Lists.c(list, new g7(24)));
                c8 c8Var = new c8(list, 5);
                singleA.getClass();
                return new t(singleA, c8Var);
            case 18:
            case 19:
            case 20:
            default:
                return (VtoApplier.FunStickerActionHint) ((Optional) obj).c();
            case 21:
                Log.e("MakeupCam", "release failed", (Throwable) obj);
                return "MakeupCam";
            case 22:
                return ((FunStickerTemplate) obj).k();
            case 23:
                return VtoApplier.FunStickerActionHint.a((FunStickerTemplate.ActionHint) obj);
        }
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        ((Boolean) obj).booleanValue();
        MainActivity.Companion companion = MainActivity.L;
    }

    @Override // com.google.common.collect.Maps.EntryTransformer
    public Object c(Object obj, Object obj2) {
        return ImmutableMultiset.q((Collection) obj2);
    }

    @Override // androidx.compose.foundation.MarqueeSpacing
    public int d(Density density, int i2) {
        return MathKt.c(0.33333334f * i2);
    }

    @Override // androidx.compose.runtime.ShouldPauseCallback
    public boolean e() {
        return false;
    }

    @Override // retrofit2.Converter
    public Object f(Object obj) {
        obj.getClass();
        String json = KakaoJson.f35885a.toJson(obj);
        json.getClass();
        return json;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        completer.d(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for`getForegroundInfoAsync()`"));
        return "default failing getForegroundInfoAsync";
    }

    public /* synthetic */ v40(int i2) {
        this.f80494b = i2;
    }
}
