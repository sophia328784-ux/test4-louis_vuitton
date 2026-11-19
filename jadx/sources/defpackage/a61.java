package defpackage;

import android.util.Pair;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.internal.utils.RingBuffer;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHeightCalculator;
import androidx.compose.ui.layout.MeasureScope;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.wav.WavExtractor;
import com.batch.android.Batch;
import com.batch.android.h.a;
import com.batch.android.h.b;
import com.batch.android.json.JSONException;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.exceptions.AuthorizationFailedException;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.e;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$o;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a61 implements Function, ExtractorsFactory, WindowInsetsHeightCalculator, BiConsumer, RingBuffer.OnRemoveCallback, a.InterfaceC0055a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f426b;

    public /* synthetic */ a61(int i2) {
        this.f426b = i2;
    }

    public static /* synthetic */ void h() {
        throw new AssertionError();
    }

    public static /* synthetic */ void i(int i2, int i3, Object obj) {
        throw new IllegalArgumentException("Unsupported bitmap!!! config=" + obj + ((Object) ", stride=") + i2 + ((Object) ", width=") + i3);
    }

    public static /* synthetic */ void k(Object obj) {
        throw new RuntimeException(obj.toString());
    }

    public static /* synthetic */ void l(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, Object obj3) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void n(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void o(String str) throws JSONException {
        throw new JSONException(str);
    }

    public static /* synthetic */ void p(String str, float f2) {
        throw new IllegalArgumentException(str + f2);
    }

    public static /* synthetic */ void q(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        ((EnumSet) obj).add((YMKPrimitiveData.TextureSupportedMode) obj2);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) throws IOException {
        switch (this.f426b) {
            case 0:
                return (SkuInfo) ((Optional) obj).c();
            case 1:
                return (Pair) ((Optional) obj).c();
            case 7:
                return ((String) obj).trim();
            case 8:
                return YMKPrimitiveData.TextureSupportedMode.a((String) obj);
            case 13:
                e eVar = (e) obj;
                Pattern pattern = com.perfectcorp.perfectlib.ph.unit.sku.a.f41721a;
                return eVar.f41559a != null ? (Iterable) eVar.a() : Collections.EMPTY_LIST;
            case 14:
                Pair pair = (Pair) obj;
                Object obj2 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                RequestTask.Response response = (RequestTask.Response) pair.second;
                int i2 = response.f39357a;
                if (i2 >= 400 && i2 >= 400) {
                    if (i2 >= 600) {
                        throw new AuthorizationFailedException(i2);
                    }
                    az.o(pq0.k(i2, "Init SDK with server failed. responseCode="));
                    return null;
                }
                String str = (String) pair.first;
                InitResponse initResponse = (InitResponse) response.f39358b;
                Objects.requireNonNull(initResponse, "InitResponse is null");
                Pair pairCreate = Pair.create(str, initResponse);
                StringBuilder sb = new StringBuilder("[startInit] Init response. domain=");
                sb.append((String) pairCreate.first);
                sb.append(", response=");
                a.A(sb, ((InitResponse) pairCreate.second).f41993a, 3, "SDKInitHandler");
                return (InitResponse) pairCreate.second;
            case 15:
                Pattern pattern2 = com.perfectcorp.perfectlib.ph.unit.sku.a.f41721a;
                return Single.h(Boolean.TRUE);
            case 16:
                InitResponse initResponse2 = (InitResponse) obj;
                Object obj3 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                Log.g(3, "SDKInitHandler", "[startInit] update setting by response start");
                Log.g(3, "SDKInitHandler", "[updateDomainByResponse] start");
                synchronized (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c) {
                    Log.g(3, "SDKInitHandler", "[updateDomainByResponse] enter critical section");
                    com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().o("TESTBED_DOMAIN", initResponse2.d);
                    com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().o("PRODUCTION_DOMAIN", initResponse2.f41996e);
                    com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().o("HE_SERVER_DOMAIN", initResponse2.f41997f);
                    NetworkManager.e(initResponse2);
                    Log.g(3, "SDKInitHandler", "[updateDomainByResponse] Update domain finished. current domain=" + NetworkManager.f41984a);
                    Log.g(3, "SDKInitHandler", "[updateDomainByResponse] exit critical section");
                    break;
                }
                Log.g(3, "SDKInitHandler", "[updateDomainByResponse] end");
                Log.g(3, "SDKInitHandler", "[startInit] update setting by response end");
                return initResponse2;
            case 17:
                Pattern pattern3 = com.perfectcorp.perfectlib.ph.unit.sku.a.f41721a;
                ArrayList arrayList = new ArrayList();
                Iterator it = ((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.a) obj).a().iterator();
                while (it.hasNext()) {
                    arrayList.add(((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.a.C0170a) it.next()).skuSetId);
                }
                return arrayList;
            case 18:
                Pattern pattern4 = com.perfectcorp.perfectlib.ph.unit.sku.a.f41721a;
                return new c$o((List) obj).c().l();
            case 22:
                return new e((Throwable) obj);
            default:
                return new e((Collection) obj);
        }
    }

    @Override // androidx.compose.foundation.layout.WindowInsetsHeightCalculator
    public int c(WindowInsets windowInsets, MeasureScope measureScope) {
        return windowInsets.c(measureScope);
    }

    @Override // androidx.camera.core.internal.utils.RingBuffer.OnRemoveCallback
    public void d(Object obj) throws Exception {
        ((ImageProxy) obj).close();
    }

    @Override // com.batch.android.h.a.InterfaceC0055a
    public String get() {
        switch (this.f426b) {
            case 27:
                return Batch.User.getInstallationID();
            case 28:
                return b.a();
            default:
                return Batch.getSessionID();
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] j() {
        return new Extractor[]{new WavExtractor()};
    }
}
