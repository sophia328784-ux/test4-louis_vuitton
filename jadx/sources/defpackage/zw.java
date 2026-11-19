package defpackage;

import android.text.TextUtils;
import com.perfectcorp.common.network.HttpRequestProvider;
import com.perfectcorp.common.utility.HttpRequest;
import com.perfectcorp.perfectlib.exceptions.LocaleCodeNotSetException;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.requests.RequestUrlHelper;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$a;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$b;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$c;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$d;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$e;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$f;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$g;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$h;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$i;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$j;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$k;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$l;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$m;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$o;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$p;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$q;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$r;
import com.perfectcorp.perfectlib.rh.utility.networkcache.d$a;
import com.perfectcorp.perfectlib.rh.utility.networkcache.d$b;
import com.perfectcorp.perfectlib.rh.utility.networkcache.d$d;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.perfectlib.ymk.utility.SettingHelper;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zw implements HttpRequestProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f81735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Factory.Builder f81736b;

    public /* synthetic */ zw(Factory.Builder builder, int i2) {
        this.f81735a = i2;
        this.f81736b = builder;
    }

    @Override // com.perfectcorp.common.network.HttpRequestProvider
    public final HttpRequest get() {
        int i2 = this.f81735a;
        Factory.Builder builder = this.f81736b;
        switch (i2) {
            case 0:
                return new HttpRequest(((Factory.StringResponseBuilder) builder).f42050b);
            case 1:
                HttpRequest httpRequest = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getGenericStoreItemByGuid", new StringBuilder()));
                NetworkManager.a(httpRequest);
                httpRequest.a("44.0", "contentver");
                httpRequest.a(SkuBeautyMode$FeatureType.BACKGROUND.toString(), "type");
                httpRequest.a(RequestUrlHelper.a(((c$a) builder).f41760b), "guids");
                SettingHelper.f(httpRequest);
                return httpRequest;
            case 2:
                c$b c_b = (c$b) builder;
                HttpRequest httpRequest2 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getGenericStoreItemList", new StringBuilder()));
                NetworkManager.a(httpRequest2);
                httpRequest2.a(c_b.f41762c, "contentver");
                httpRequest2.a(c_b.f41761b, "type");
                SettingHelper.f(httpRequest2);
                String str = c_b.d;
                if (!TextUtils.isEmpty(str)) {
                    httpRequest2.a(str, "messagedigest");
                }
                return httpRequest2;
            case 3:
                c$c c_c = (c$c) builder;
                HttpRequest httpRequest3 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/channel/getGenericTag", new StringBuilder()));
                NetworkManager.a(httpRequest3);
                SettingHelper.f(httpRequest3);
                httpRequest3.a(c_c.f41763b, "type");
                if (!TextUtils.isEmpty(c_c.f41764c)) {
                    httpRequest3.a(c_c.f41764c, "messagedigest");
                }
                return httpRequest3;
            case 4:
                HttpRequest httpRequest4 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V3/getIDSystemData", new StringBuilder()));
                httpRequest4.a(RequestUrlHelper.a(((c$d) builder).f41765b), "ids");
                return httpRequest4;
            case 5:
                HttpRequest httpRequest5 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V3/getMakeupItemList", new StringBuilder()));
                NetworkManager.a(httpRequest5);
                httpRequest5.a(String.valueOf(TemplateUtils.f41580a), "contentVer");
                httpRequest5.a("JewelryLook", "type");
                httpRequest5.a("New", "order");
                SettingHelper.f(httpRequest5);
                String str2 = ((c$e) builder).f41766b;
                if (!TextUtils.isEmpty(str2)) {
                    httpRequest5.a(str2, "messagedigest");
                }
                return httpRequest5;
            case 6:
                c$f c_f = (c$f) builder;
                HttpRequest httpRequest6 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/sdk/getLookList", new StringBuilder()));
                NetworkManager.a(httpRequest6);
                httpRequest6.a(String.valueOf(TemplateUtils.f41580a), "contentver");
                SettingHelper.f(httpRequest6);
                if (!TextUtils.isEmpty(c_f.f41767b)) {
                    httpRequest6.a(c_f.f41767b, "messagedigest");
                }
                return httpRequest6;
            case 7:
                HttpRequest httpRequest7 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getMakeupItemByGuids", new StringBuilder()));
                NetworkManager.a(httpRequest7);
                httpRequest7.a(RequestUrlHelper.a(((c$g) builder).f41769b), "guids");
                httpRequest7.a(String.valueOf(TemplateUtils.f41580a), "contentVer");
                httpRequest7.a("true", "zipJSON");
                SettingHelper.f(httpRequest7);
                return httpRequest7;
            case 8:
                HttpRequest httpRequest8 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V3/getMakeupItemList", new StringBuilder()));
                NetworkManager.a(httpRequest8);
                httpRequest8.a("15.0", "contentVer");
                httpRequest8.a("NailLook", "type");
                httpRequest8.a("New", "order");
                SettingHelper.f(httpRequest8);
                String str3 = ((c$h) builder).f41771b;
                if (!TextUtils.isEmpty(str3)) {
                    httpRequest8.a(str3, "messagedigest");
                }
                return httpRequest8;
            case 9:
                HttpRequest httpRequest9 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getProductGUIDBySkuGUID", new StringBuilder()));
                NetworkManager.a(httpRequest9);
                SettingHelper.f(httpRequest9);
                httpRequest9.a(String.valueOf(TemplateUtils.f41580a), "makeupver");
                httpRequest9.a("4.0", "skuformatver");
                httpRequest9.a(RequestUrlHelper.a(((c$i) builder).f41772b), "skuguids");
                return httpRequest9;
            case 10:
                HttpRequest httpRequest10 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/sdk/getProductMapping", new StringBuilder()));
                NetworkManager.b(httpRequest10);
                SettingHelper.f(httpRequest10);
                httpRequest10.a(((c$j) builder).f41773b, "type");
                return httpRequest10;
            case 11:
                HttpRequest httpRequest11 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getProductMaskByProductGUIDs", new StringBuilder()));
                NetworkManager.a(httpRequest11);
                SettingHelper.f(httpRequest11);
                httpRequest11.a(RequestUrlHelper.a(((c$k) builder).f41774b), "productguids");
                return httpRequest11;
            case 12:
                HttpRequest httpRequest12 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getProductMaskList", new StringBuilder()));
                NetworkManager.a(httpRequest12);
                SettingHelper.f(httpRequest12);
                httpRequest12.a(((c$l) builder).f41775b, "producttype");
                return httpRequest12;
            case 13:
                HttpRequest httpRequest13 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/sdk/getSkuByCustShadeIds", new StringBuilder()));
                NetworkManager.a(httpRequest13);
                SettingHelper.f(httpRequest13);
                httpRequest13.a(String.valueOf(TemplateUtils.f41580a), "makeupver");
                httpRequest13.a("4.0", "skuformatver");
                httpRequest13.a(RequestUrlHelper.a(((c$m) builder).f41776b), "custshadeids");
                return httpRequest13;
            case 14:
                HttpRequest httpRequest14 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getGenericStoreItemByGuid", new StringBuilder()));
                NetworkManager.a(httpRequest14);
                httpRequest14.a(Float.valueOf(9.0f), "contentver");
                httpRequest14.a("SkuSet", "type");
                httpRequest14.a(RequestUrlHelper.a(((c$o) builder).f41777b), "guids");
                SettingHelper.f(httpRequest14);
                return httpRequest14;
            case 15:
                c$p c_p = (c$p) builder;
                HttpRequest httpRequest15 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/sdk/getSkuGUIDsByType", new StringBuilder()));
                NetworkManager.a(httpRequest15);
                httpRequest15.a(c_p.f41778b, "type");
                httpRequest15.a(Integer.valueOf(SkuBeautyMode$FeatureType.a(c_p.f41778b)), "makeupver");
                httpRequest15.a("4.0", "skuformatver");
                SettingHelper.f(httpRequest15);
                if (!TextUtils.isEmpty(c_p.f41779c)) {
                    httpRequest15.a(c_p.f41779c, "messagedigest");
                }
                return httpRequest15;
            case 16:
                c$q c_q = (c$q) builder;
                HttpRequest httpRequest16 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/sdk/getSkuByGuids", new StringBuilder()));
                NetworkManager.a(httpRequest16);
                int i3 = c_q.f41781c;
                httpRequest16.a(i3 > 0 ? Integer.valueOf(i3) : String.valueOf(TemplateUtils.f41580a), "makeupver");
                httpRequest16.a("4.0", "skuformatver");
                httpRequest16.a(RequestUrlHelper.a(c_q.f41780b), "guids");
                SettingHelper.f(httpRequest16);
                return httpRequest16;
            case 17:
                c$r c_r = (c$r) builder;
                HttpRequest httpRequest17 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getTemplateByGuid", new StringBuilder()));
                NetworkManager.a(httpRequest17);
                httpRequest17.a(c_r.f41783c, "contentVer");
                httpRequest17.a(RequestUrlHelper.a(c_r.f41782b), "guids");
                SettingHelper.f(httpRequest17);
                return httpRequest17;
            case 18:
                HttpRequest httpRequest18 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/get-conditional-info", new StringBuilder()));
                NetworkManager.a(httpRequest18);
                SettingHelper.f(httpRequest18);
                httpRequest18.a("sku", "type");
                httpRequest18.a(RequestUrlHelper.a(((d$a) builder).f41836b), "guids");
                return httpRequest18;
            case 19:
                HttpRequest httpRequest19 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/inventory", new StringBuilder()));
                NetworkManager.a(httpRequest19);
                SettingHelper.f(httpRequest19);
                httpRequest19.a(RequestUrlHelper.a(((d$b) builder).f41837b), "skuIds");
                return httpRequest19;
            default:
                d$d d_d = (d$d) builder;
                HttpRequest httpRequest20 = new HttpRequest(n00.r(NetworkManager.f41984a, "/service/V2/getSkincareProduct", new StringBuilder()));
                String strB = QuickLaunchPreferenceHelper.b();
                if (TextUtils.isEmpty(strB)) {
                    throw new LocaleCodeNotSetException();
                }
                httpRequest20.a(strB, "lang");
                httpRequest20.a(RequestUrlHelper.a(d_d.f41838b), "productIds");
                return httpRequest20;
        }
    }
}
