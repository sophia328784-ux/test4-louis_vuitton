package defpackage;

import com.perfectcorp.common.network.HttpRequestProvider;
import com.perfectcorp.common.utility.HttpRequest;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.utility.SettingHelper;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g81 implements HttpRequestProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69337a;

    public /* synthetic */ g81(int i2) {
        this.f69337a = i2;
    }

    @Override // com.perfectcorp.common.network.HttpRequestProvider
    public final HttpRequest get() {
        switch (this.f69337a) {
            case 0:
                HttpRequest httpRequest = new HttpRequest(NetworkManager.Uris.a());
                NetworkManager.a(httpRequest);
                SettingHelper.f(httpRequest);
                httpRequest.a("1.0", "contentver");
                httpRequest.a("SdkInitSetting", "type");
                return httpRequest;
            case 1:
                HttpRequest httpRequest2 = new HttpRequest(NetworkManager.Uris.a());
                NetworkManager.a(httpRequest2);
                SettingHelper.f(httpRequest2);
                httpRequest2.a("1.0", "contentver");
                httpRequest2.a("SdkInitSetting", "type");
                return httpRequest2;
            case 2:
                HttpRequest httpRequest3 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getGenericStoreItemList", new StringBuilder()));
                NetworkManager.a(httpRequest3);
                httpRequest3.a(Float.valueOf(9.0f), "contentver");
                httpRequest3.a("SkuSet", "type");
                SettingHelper.f(httpRequest3);
                return httpRequest3;
            case 3:
                HttpRequest httpRequest4 = new HttpRequest(NetworkManager.Uris.a());
                NetworkManager.a(httpRequest4);
                httpRequest4.a("1.0", "contentver");
                httpRequest4.a("ShadeFinderDetectMode", "type");
                SettingHelper.f(httpRequest4);
                return httpRequest4;
            case 4:
                HttpRequest httpRequest5 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/sdk/getShadeFinderRecommendInfo", new StringBuilder()));
                NetworkManager.a(httpRequest5);
                SettingHelper.f(httpRequest5);
                httpRequest5.a("1.0", "contentVer");
                return httpRequest5;
            case 5:
                HttpRequest httpRequest6 = new HttpRequest(NetworkManager.Uris.a());
                NetworkManager.a(httpRequest6);
                SettingHelper.f(httpRequest6);
                httpRequest6.a("1.0", "contentver");
                httpRequest6.a("SkincareRecommendExtraInfo", "type");
                return httpRequest6;
            case 6:
                HttpRequest httpRequest7 = new HttpRequest(NetworkManager.Uris.a());
                NetworkManager.a(httpRequest7);
                SettingHelper.f(httpRequest7);
                httpRequest7.a("1.0", "contentver");
                httpRequest7.a("SdkSkinCareRecommendation", "type");
                return httpRequest7;
            case 7:
                HttpRequest httpRequest8 = new HttpRequest(NetworkManager.Uris.a());
                NetworkManager.a(httpRequest8);
                SettingHelper.f(httpRequest8);
                httpRequest8.a("1.0", "contentver");
                httpRequest8.a("SkincareDetectionFeatures", "type");
                return httpRequest8;
            default:
                HttpRequest httpRequest9 = new HttpRequest(NetworkManager.Uris.a());
                NetworkManager.a(httpRequest9);
                SettingHelper.f(httpRequest9);
                httpRequest9.a("1.0", "contentver");
                httpRequest9.a("SdkInitSetting", "type");
                return httpRequest9;
        }
    }
}
