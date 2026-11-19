package com.vuitton.android.data.analytics.builder;

import android.os.Bundle;
import android.os.Parcelable;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.AnalyticsConstants$Values;
import com.vuitton.foundation.model.domain.model.analytics.ECommerceValues;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.SelectItemTrackingValue;
import com.vuitton.foundation.model.domain.model.analytics.ViewItemListTrackingValue;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.DispatchLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionGroup;
import com.vuitton.foundation.model.domain.model.environment.Environment;
import defpackage.cj;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;", "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;", "Landroid/os/Bundle;", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FirebaseAnalyticsHitBuilder implements AnalyticsHitBuilder<Bundle> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserPreferencesRepository f43542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentProvider f43543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BuildConfigProvider f43544c;

    @Inject
    public FirebaseAnalyticsHitBuilder(UserPreferencesRepository userPreferencesRepository, EnvironmentProvider environmentProvider, BuildConfigProvider buildConfigProvider) {
        userPreferencesRepository.getClass();
        environmentProvider.getClass();
        buildConfigProvider.getClass();
        this.f43542a = userPreferencesRepository;
        this.f43543b = environmentProvider;
        this.f43544c = buildConfigProvider;
    }

    public static Bundle d(ECommerceValues eCommerceValues) {
        Bundle bundle = new Bundle();
        String str = eCommerceValues.f66444a;
        if (str == null) {
            str = null;
        }
        bundle.putString("item_id", str);
        bundle.putString("item_name", eCommerceValues.f66445b);
        bundle.putString("item_category", eCommerceValues.f66446c);
        Double d = eCommerceValues.d;
        if (d != null) {
            if (d.doubleValue() <= 0.0d) {
                d = null;
            }
            if (d != null) {
                bundle.putDouble("price", d.doubleValue());
            }
        }
        Double d2 = eCommerceValues.f66448f;
        if (d2 != null) {
            Double d3 = d2.doubleValue() > 0.0d ? d2 : null;
            if (d3 != null) {
                bundle.putDouble("quantity", d3.doubleValue());
            }
        }
        return bundle;
    }

    @Override // com.vuitton.android.data.analytics.builder.AnalyticsHitBuilder
    public final Object a(InAppDispatch inAppDispatch, Hit hit) throws JSONException {
        Bundle bundleC;
        inAppDispatch.getClass();
        hit.getClass();
        if (hit instanceof Hit.EventHit.AddToCartEventHit) {
            Hit.EventHit.AddToCartEventHit addToCartEventHit = (Hit.EventHit.AddToCartEventHit) hit;
            ECommerceValues eCommerceValues = addToCartEventHit.f66459f;
            bundleC = c(inAppDispatch, addToCartEventHit);
            bundleC.putParcelableArrayList("items", CollectionsKt.l(d(eCommerceValues)));
            String str = eCommerceValues.f66447e;
            if (str != null) {
                if (StringsKt.w(str)) {
                    str = null;
                }
                if (str != null) {
                    bundleC.putString("currency", str);
                }
            }
            Double d = eCommerceValues.d;
            if (d != null) {
                if (d.doubleValue() <= 0.0d) {
                    d = null;
                }
                if (d != null) {
                    bundleC.putDouble("value", d.doubleValue());
                }
            }
        } else if (hit instanceof Hit.EventHit.BeginCheckoutEventHit) {
            Hit.EventHit.BeginCheckoutEventHit beginCheckoutEventHit = (Hit.EventHit.BeginCheckoutEventHit) hit;
            bundleC = b(inAppDispatch, beginCheckoutEventHit);
            bundleC.putString("productSku", beginCheckoutEventHit.f66465f);
            bundleC.putString("currency", beginCheckoutEventHit.g);
            bundleC.putString("backOrderStatus", Intrinsics.c(beginCheckoutEventHit.f66468j, Boolean.TRUE) ? "backOrder_yes" : "backOrder_no");
            bundleC.putString("quantity", beginCheckoutEventHit.f66466h);
            bundleC.putString("price", beginCheckoutEventHit.f66467i);
            List list = beginCheckoutEventHit.f66469k;
            if (!list.isEmpty()) {
                List list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(d((ECommerceValues) it.next()));
                }
                bundleC.putParcelableArrayList("items", new ArrayList<>(arrayList));
            }
        } else {
            String str2 = "item_name";
            if (hit instanceof Hit.EventHit.SelectItemEventHit) {
                Hit.EventHit.SelectItemEventHit selectItemEventHit = (Hit.EventHit.SelectItemEventHit) hit;
                bundleC = b(inAppDispatch, selectItemEventHit);
                String str3 = selectItemEventHit.f66480h;
                List list3 = selectItemEventHit.f66482j;
                bundleC.putString("item_list_id", str3);
                bundleC.putString("item_list_name", selectItemEventHit.f66481i);
                String str4 = selectItemEventHit.g;
                if (str4 != null) {
                    if (StringsKt.w(str4)) {
                        str4 = null;
                    }
                    if (str4 != null) {
                        bundleC.putString("currency", str4);
                    }
                }
                if (!list3.isEmpty()) {
                    List<SelectItemTrackingValue> list4 = list3;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
                    for (SelectItemTrackingValue selectItemTrackingValue : list4) {
                        Bundle bundle = new Bundle();
                        bundle.putString("item_id", selectItemTrackingValue.f66529c);
                        bundle.putString("item_name", selectItemTrackingValue.d);
                        bundle.putString("item_list_name", selectItemTrackingValue.f66528b);
                        bundle.putString("item_list_id", selectItemTrackingValue.f66527a);
                        Double d2 = selectItemTrackingValue.f66530e;
                        bundle.putDouble("price", d2 != null ? d2.doubleValue() : 0.0d);
                        bundle.putInt("index", selectItemTrackingValue.f66531f);
                        arrayList2.add(bundle);
                    }
                    bundleC.putParcelableArrayList("items", new ArrayList<>(arrayList2));
                }
            } else if (hit instanceof Hit.EventHit.ViewItemListEventHit) {
                Hit.EventHit.ViewItemListEventHit viewItemListEventHit = (Hit.EventHit.ViewItemListEventHit) hit;
                bundleC = b(inAppDispatch, viewItemListEventHit);
                String str5 = viewItemListEventHit.f66489h;
                List list5 = viewItemListEventHit.f66491j;
                bundleC.putString("item_list_id", str5);
                bundleC.putString("item_list_name", viewItemListEventHit.f66490i);
                String str6 = viewItemListEventHit.g;
                if (str6 != null) {
                    if (StringsKt.w(str6)) {
                        str6 = null;
                    }
                    if (str6 != null) {
                        bundleC.putString("currency", str6);
                    }
                }
                if (!list5.isEmpty()) {
                    List<ViewItemListTrackingValue> list6 = list5;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list6, 10));
                    for (ViewItemListTrackingValue viewItemListTrackingValue : list6) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("item_id", viewItemListTrackingValue.f66536c);
                        bundle2.putString("item_name", viewItemListTrackingValue.d);
                        bundle2.putString("item_list_name", viewItemListTrackingValue.f66535b);
                        bundle2.putString("item_list_id", viewItemListTrackingValue.f66534a);
                        Double d3 = viewItemListTrackingValue.f66537e;
                        bundle2.putDouble("price", d3 != null ? d3.doubleValue() : 0.0d);
                        bundle2.putInt("index", viewItemListTrackingValue.g);
                        arrayList3.add(bundle2);
                    }
                    bundleC.putParcelableArrayList("items", new ArrayList<>(arrayList3));
                }
            } else if (hit instanceof Hit.ViewSearchResultHit) {
                Hit.ViewSearchResultHit viewSearchResultHit = (Hit.ViewSearchResultHit) hit;
                bundleC = c(inAppDispatch, viewSearchResultHit);
                bundleC.putString("search_term", viewSearchResultHit.f66498b);
            } else if (hit instanceof Hit.AnomalyHit) {
                bundleC = null;
            } else if (hit instanceof Hit.ScreenHit) {
                Hit.ScreenHit screenHit = (Hit.ScreenHit) hit;
                bundleC = c(inAppDispatch, screenHit);
                bundleC.putString("screen_name", screenHit.getF66494b());
                bundleC.putString("page_name", screenHit.getF66495c());
                bundleC.putString("environmentLanguage", inAppDispatch.l);
                bundleC.putString("screenOrientation", "portrait");
                bundleC.putString("page_type", screenHit.getD());
                List list7 = InAppDispatchExtKt.f67487a;
                DispatchLocale dispatchLocale = inAppDispatch.f67477b;
                if (dispatchLocale.d == RegionGroup.EURO_LAND || InAppDispatchExtKt.g(inAppDispatch) || dispatchLocale.f67494e) {
                    String lowerCase = inAppDispatch.f67483j.toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                    bundleC.putString("invoicingCountryForSite", lowerCase);
                }
            } else if (hit instanceof Hit.EventHit) {
                bundleC = b(inAppDispatch, (Hit.EventHit) hit);
            } else if (hit instanceof Hit.ABTestHit) {
                Hit.ABTestHit aBTestHit = (Hit.ABTestHit) hit;
                bundleC = c(inAppDispatch, aBTestHit);
                bundleC.putString("experience_id", aBTestHit.f66450b);
                bundleC.putString("variant_id", aBTestHit.f66451c);
            } else {
                if (!(hit instanceof Hit.WebViewHit)) {
                    v40.g();
                    return null;
                }
                Hit.WebViewHit webViewHit = (Hit.WebViewHit) hit;
                bundleC = c(inAppDispatch, webViewHit);
                JSONObject jSONObject = new JSONObject(webViewHit.f66502c);
                if (jSONObject.has("currency")) {
                    bundleC.putString("currency", jSONObject.getString("currency"));
                }
                if (jSONObject.has("value")) {
                    String string = jSONObject.getString("value");
                    string.getClass();
                    bundleC.putDouble("value", Double.parseDouble(string));
                }
                if (jSONObject.has("transaction_id")) {
                    bundleC.putString("transaction_id", jSONObject.getString("transaction_id"));
                }
                if (jSONObject.has("page_url")) {
                    bundleC.putString("page_url", jSONObject.getString("page_url"));
                }
                if (jSONObject.has("payment_type")) {
                    bundleC.putString("payment_type", jSONObject.getString("payment_type"));
                }
                if (jSONObject.has("items")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("items");
                    ArrayList arrayList4 = new ArrayList();
                    int length = jSONArray.length();
                    int i2 = 0;
                    while (i2 < length) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        Bundle bundle3 = new Bundle();
                        bundle3.putString("item_id", jSONObject2.getString("item_id"));
                        bundle3.putString(str2, jSONObject2.getString(str2));
                        if (jSONObject2.has("price")) {
                            String string2 = jSONObject2.getString("price");
                            string2.getClass();
                            bundle3.putDouble("price", Double.parseDouble(string2));
                        }
                        if (jSONObject2.has("currency")) {
                            bundle3.putString("currency", jSONObject2.getString("currency"));
                        }
                        if (jSONObject2.has("quantity")) {
                            String string3 = jSONObject2.getString("quantity");
                            string3.getClass();
                            bundle3.putInt("quantity", Integer.parseInt(string3));
                        }
                        arrayList4.add(bundle3);
                        i2++;
                        str2 = str2;
                    }
                    bundleC.putParcelableArray("items", (Parcelable[]) arrayList4.toArray(new Parcelable[0]));
                }
            }
        }
        if (bundleC == null) {
            return null;
        }
        for (String str7 : bundleC.keySet()) {
            String string4 = bundleC.getString(str7);
            if (string4 != null) {
                bundleC.putString(str7, StringKtExtKt.k(100, string4));
            }
        }
        return bundleC;
    }

    public final Bundle b(InAppDispatch inAppDispatch, Hit.EventHit eventHit) {
        Bundle bundleC = c(inAppDispatch, eventHit);
        bundleC.putString("event_category", eventHit.getD());
        bundleC.putString("event_label", eventHit.getF66486c());
        bundleC.putString("actionPosition", eventHit.getF66484a());
        bundleC.putString("event_action", eventHit.getF66487e());
        bundleC.putString("page_type", eventHit.getF66485b());
        return bundleC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.BaseBundle, android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r24v1, types: [android.os.Bundle, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v8, types: [android.os.BaseBundle, android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r4v129 */
    /* JADX WARN: Type inference failed for: r4v79, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v80 */
    public final Bundle c(InAppDispatch inAppDispatch, Hit hit) {
        ?? r24;
        ?? r4;
        ?? bundle = new Bundle();
        bundle.putString("environmentId", "LVPassApp");
        this.f43544c.getClass();
        Intrinsics.c(this.f43543b.d(), Environment.Nrt.d);
        bundle.putString("environmentType", "prd");
        bundle.putString("environmentVersion", inAppDispatch.f67484k);
        bundle.putString("platform_name", "LV_APP");
        bundle.putString("platform_type", "APP");
        String userId = this.f43542a.getUserId();
        ?? r2 = 0;
        if (userId == null || StringsKt.w(userId)) {
            userId = null;
        }
        bundle.putString("userLogStatus", userId != null ? "logged_user" : "not_logged_user");
        List<AdditionalProperty> f66501b = hit.getF66501b();
        ?? bundle2 = new Bundle();
        for (AdditionalProperty additionalProperty : f66501b) {
            if (additionalProperty instanceof AdditionalProperty.ProductSku) {
                int i2 = 0;
                for (Object obj : CollectionsKt.s(((AdditionalProperty.ProductSku) additionalProperty).f66429a, 10)) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt.t0();
                        throw r2;
                    }
                    bundle2.putString(cj.i(i2 > 0 ? Integer.valueOf(i2) : "", "productSku"), CollectionsKt.K((List) obj, ",", null, null, FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$1$1.f43545b, 30));
                    i2 = i3;
                }
            } else if (additionalProperty instanceof AdditionalProperty.VtoSkus) {
                int i4 = 0;
                for (Object obj2 : CollectionsKt.s(((AdditionalProperty.VtoSkus) additionalProperty).f66443a, 10)) {
                    int i5 = i4 + 1;
                    if (i4 < 0) {
                        CollectionsKt.t0();
                        throw r2;
                    }
                    bundle2.putString(cj.i(i4 > 0 ? Integer.valueOf(i4) : "", "vtoSku"), CollectionsKt.K((List) obj2, ",", null, null, FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$2$1.f43546b, 30));
                    i4 = i5;
                }
            } else if (additionalProperty instanceof AdditionalProperty.LevelName) {
                bundle2.putString("level_name", ((AdditionalProperty.LevelName) additionalProperty).f66399a);
            } else if (additionalProperty instanceof AdditionalProperty.NumberOfResults) {
                bundle2.putString("numberOfResults", ((AdditionalProperty.NumberOfResults) additionalProperty).f66405a);
            } else if (additionalProperty instanceof AdditionalProperty.InternalSearchKeywords) {
                bundle2.putString("internalSearchKeywords", ((AdditionalProperty.InternalSearchKeywords) additionalProperty).f66398a);
            } else if (additionalProperty instanceof AdditionalProperty.FilterId) {
                bundle2.putString("filterId", ((AdditionalProperty.FilterId) additionalProperty).f66396a);
            } else if (additionalProperty instanceof AdditionalProperty.ContentId) {
                bundle2.putString("contentId", ((AdditionalProperty.ContentId) additionalProperty).f66383a);
            } else if (additionalProperty instanceof AdditionalProperty.ContentType) {
                bundle2.putString(CMSAttributeTableGenerator.CONTENT_TYPE, ((AdditionalProperty.ContentType) additionalProperty).f66384a);
            } else if (additionalProperty instanceof AdditionalProperty.ArticleId) {
                bundle2.putString("article_id", ((AdditionalProperty.ArticleId) additionalProperty).f66376a);
            } else if (additionalProperty instanceof AdditionalProperty.ModuleId) {
                bundle2.putString("module_id", ((AdditionalProperty.ModuleId) additionalProperty).f66402a);
            } else if (additionalProperty instanceof AdditionalProperty.LookId) {
                bundle2.putString("look_id", ((AdditionalProperty.LookId) additionalProperty).f66400a);
            } else if (additionalProperty instanceof AdditionalProperty.OnlineSellable) {
                bundle2.putString("onlineSellable", ((AdditionalProperty.OnlineSellable) additionalProperty).f66407a);
            } else if (additionalProperty instanceof AdditionalProperty.ProductStockStatus) {
                bundle2.putString("productStockStatus", ((AdditionalProperty.ProductStockStatus) additionalProperty).f66430a);
            } else if (additionalProperty instanceof AdditionalProperty.ExclusiveSaleEligible) {
                bundle2.putString("exclusiveSaleStatus", ((AdditionalProperty.ExclusiveSaleEligible) additionalProperty).f66394a);
            } else if (additionalProperty instanceof AdditionalProperty.CookieConsent) {
                AdditionalProperty.CookieConsent cookieConsent = (AdditionalProperty.CookieConsent) additionalProperty;
                bundle2.putString("cookie_consent", AnalyticsConstants$Values.a(cookieConsent.f66386a, cookieConsent.f66387b, cookieConsent.f66388c, cookieConsent.d, cookieConsent.f66389e));
            } else if (additionalProperty instanceof AdditionalProperty.StoreMode) {
                AdditionalProperty.StoreMode storeMode = (AdditionalProperty.StoreMode) additionalProperty;
                bundle2.putString("storeId", storeMode.f66437a);
                bundle2.putString("store_mode", String.valueOf(storeMode.f66438b));
            } else if (additionalProperty instanceof AdditionalProperty.Price) {
                bundle2.putString("price", ((AdditionalProperty.Price) additionalProperty).f66427a);
            } else if (additionalProperty instanceof AdditionalProperty.Currency) {
                bundle2.putString("currency", ((AdditionalProperty.Currency) additionalProperty).f66390a);
            } else if (additionalProperty instanceof AdditionalProperty.Sku) {
                bundle2.putString("SKU", ((AdditionalProperty.Sku) additionalProperty).f66434a);
            } else if (additionalProperty instanceof AdditionalProperty.StepId) {
                bundle2.putString("step_id", ((AdditionalProperty.StepId) additionalProperty).f66435a);
            } else if (additionalProperty instanceof AdditionalProperty.ProductId) {
                String str = ((AdditionalProperty.ProductId) additionalProperty).f66428a;
                if (str == null) {
                    r4 = str;
                    r4 = r2;
                }
                r4 = str;
                bundle2.putString("productID", r4);
            } else if (additionalProperty instanceof AdditionalProperty.CertificateId) {
                bundle2.putString("certificate_id", ((AdditionalProperty.CertificateId) additionalProperty).f66380a);
            } else if (additionalProperty instanceof AdditionalProperty.BackOrderStatus) {
                bundle2.putString("backOrderStatus", Intrinsics.c(((AdditionalProperty.BackOrderStatus) additionalProperty).f66377a, Boolean.TRUE) ? "backOrder_yes" : "backOrder_no");
            } else if (additionalProperty instanceof AdditionalProperty.Quantity) {
                bundle2.putString("quantity", ((AdditionalProperty.Quantity) additionalProperty).f66431a);
            } else if (additionalProperty instanceof AdditionalProperty.NumberOfAppointments) {
                bundle2.putInt("myAppointmentNumberOfResults", ((AdditionalProperty.NumberOfAppointments) additionalProperty).f66404a);
            } else if (additionalProperty instanceof AdditionalProperty.StoreId) {
                bundle2.putString("store_id", ((AdditionalProperty.StoreId) additionalProperty).f66436a);
            } else if (additionalProperty instanceof AdditionalProperty.AppointmentDate) {
                bundle2.putString("my_appointment_date", ((AdditionalProperty.AppointmentDate) additionalProperty).f66373a);
            } else if (additionalProperty instanceof AdditionalProperty.AppointmentId) {
                bundle2.putString("appointment_id", ((AdditionalProperty.AppointmentId) additionalProperty).f66374a);
            } else if (additionalProperty instanceof AdditionalProperty.AppointmentSearch) {
                bundle2.putString("my_appointment_search", ((AdditionalProperty.AppointmentSearch) additionalProperty).f66375a);
            } else if (additionalProperty instanceof AdditionalProperty.ExperienceId) {
                int i6 = 0;
                for (Object obj3 : ((AdditionalProperty.ExperienceId) additionalProperty).f66395a) {
                    int i7 = i6 + 1;
                    if (i6 < 0) {
                        CollectionsKt.t0();
                        throw r2;
                    }
                    bundle2.putString("experience_id" + (i6 > 0 ? Integer.valueOf(i6) : ""), (String) obj3);
                    i6 = i7;
                }
            } else if (additionalProperty instanceof AdditionalProperty.PrebookAppointmentDate) {
                bundle2.putString("my_prebook_appointment_date", ((AdditionalProperty.PrebookAppointmentDate) additionalProperty).f66425a);
            } else if (additionalProperty instanceof AdditionalProperty.PrebookAppointmentType) {
                bundle2.putString("my_prebook_appointment_type", ((AdditionalProperty.PrebookAppointmentType) additionalProperty).f66426a);
            } else if (additionalProperty instanceof AdditionalProperty.TotalDigitalOrders) {
                bundle2.putInt("totalDigitalOrders", ((AdditionalProperty.TotalDigitalOrders) additionalProperty).f66440a);
            } else if (additionalProperty instanceof AdditionalProperty.TotalRetailOrders) {
                bundle2.putInt("totalRetailOrders", ((AdditionalProperty.TotalRetailOrders) additionalProperty).f66441a);
            } else if (additionalProperty instanceof AdditionalProperty.DigitalPurchaseId) {
                bundle2.putString("digitalPurchaseId", ((AdditionalProperty.DigitalPurchaseId) additionalProperty).f66391a);
            } else if (additionalProperty instanceof AdditionalProperty.RetailPurchaseId) {
                bundle2.putString("retailPurchaseId", ((AdditionalProperty.RetailPurchaseId) additionalProperty).f66432a);
            } else if (additionalProperty instanceof AdditionalProperty.StoreModeArticle) {
                bundle2.putString("article_id", ((AdditionalProperty.StoreModeArticle) additionalProperty).f66439a);
            } else if (additionalProperty instanceof AdditionalProperty.OrderReturnReasons) {
                bundle2.putString("reason_key", CollectionsKt.K(((AdditionalProperty.OrderReturnReasons) additionalProperty).f66423a, ",", null, null, null, 62));
            } else if (additionalProperty instanceof AdditionalProperty.NumberOfTypedCharacters) {
                bundle2.putInt("number_characters_typed", ((AdditionalProperty.NumberOfTypedCharacters) additionalProperty).f66406a);
            } else if (additionalProperty instanceof AdditionalProperty.CollectionId) {
                bundle2.putString("collection_id", ((AdditionalProperty.CollectionId) additionalProperty).f66382a);
            } else if (additionalProperty instanceof AdditionalProperty.Origin) {
                bundle2.putString("origin", ((AdditionalProperty.Origin) additionalProperty).f66424a);
            } else if (additionalProperty instanceof AdditionalProperty.VirtualStudio) {
                bundle2.putString("virtual_studio", String.valueOf(((AdditionalProperty.VirtualStudio) additionalProperty).f66442a));
            } else if (additionalProperty instanceof AdditionalProperty.CategoryId) {
                bundle2.putString("category_id", ((AdditionalProperty.CategoryId) additionalProperty).f66378a);
            } else {
                if (additionalProperty instanceof AdditionalProperty.ChannelId) {
                    bundle2.putString("channel_id", ((AdditionalProperty.ChannelId) additionalProperty).f66381a);
                } else {
                    r24 = r2;
                    if (additionalProperty instanceof AdditionalProperty.OrderItem) {
                        AdditionalProperty.OrderItem orderItem = (AdditionalProperty.OrderItem) additionalProperty;
                        bundle2.putString("transaction_id", orderItem.f66417a);
                        bundle2.putString("shipping_method", orderItem.f66418b);
                        bundle2.putString("status_id", orderItem.f66419c);
                        bundle2.putString("total_amount", orderItem.d);
                        bundle2.putString("price", orderItem.f66420e);
                        bundle2.putString("SKU", orderItem.f66421f);
                        bundle2.putInt("quantity", orderItem.g);
                        bundle2.putString("shipping_address_status", orderItem.f66422h);
                    } else if (additionalProperty instanceof AdditionalProperty.CategoryWithImage) {
                        bundle2.putString("category_with_image", String.valueOf(((AdditionalProperty.CategoryWithImage) additionalProperty).f66379a));
                    } else if (additionalProperty instanceof AdditionalProperty.SearchContext) {
                        bundle2.putString("search_context", ((AdditionalProperty.SearchContext) additionalProperty).f66433a);
                    } else if (additionalProperty instanceof AdditionalProperty.Index) {
                        bundle2.putInt("index", ((AdditionalProperty.Index) additionalProperty).f66397a);
                    } else if (additionalProperty instanceof AdditionalProperty.NativeShare) {
                        bundle2.putString("native_share", ((AdditionalProperty.NativeShare) additionalProperty).f66403a);
                    } else if (additionalProperty instanceof AdditionalProperty.MarketingChannelType) {
                        bundle2.putString("marketing_channel_type", ((AdditionalProperty.MarketingChannelType) additionalProperty).f66401a);
                    } else if (additionalProperty instanceof AdditionalProperty.EntryPoint) {
                        bundle2.putString("entry_point", ((AdditionalProperty.EntryPoint) additionalProperty).f66392a);
                    } else if (additionalProperty instanceof AdditionalProperty.ErrorId) {
                        bundle2.putString("error_id", ((AdditionalProperty.ErrorId) additionalProperty).f66393a);
                    } else if (additionalProperty instanceof AdditionalProperty.Context) {
                        bundle2.putString(MvelScriptManager.VAR_CONTEXT, ((AdditionalProperty.Context) additionalProperty).f66385a);
                    } else {
                        if (!(additionalProperty instanceof AdditionalProperty.OrderConfirmation)) {
                            v40.g();
                            return r24;
                        }
                        AdditionalProperty.OrderConfirmation orderConfirmation = (AdditionalProperty.OrderConfirmation) additionalProperty;
                        int i8 = 0;
                        for (Object obj4 : CollectionsKt.s(orderConfirmation.f66408a, 10)) {
                            int i9 = i8 + 1;
                            if (i8 < 0) {
                                CollectionsKt.t0();
                                throw r24;
                            }
                            bundle2.putString(cj.i(i8 > 0 ? Integer.valueOf(i8) : "", "productSku"), CollectionsKt.K((List) obj4, ",", null, null, FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$4$1.f43547b, 30));
                            i8 = i9;
                        }
                        int i10 = 0;
                        for (Object obj5 : CollectionsKt.s(orderConfirmation.f66409b, 10)) {
                            int i11 = i10 + 1;
                            if (i10 < 0) {
                                CollectionsKt.t0();
                                throw r24;
                            }
                            bundle2.putString(cj.i(i10 > 0 ? Integer.valueOf(i10) : "", "price"), CollectionsKt.K((List) obj5, ",", null, null, null, 62));
                            i10 = i11;
                        }
                        int i12 = 0;
                        for (Object obj6 : CollectionsKt.s(orderConfirmation.f66411e, 10)) {
                            int i13 = i12 + 1;
                            if (i12 < 0) {
                                CollectionsKt.t0();
                                throw r24;
                            }
                            bundle2.putString(cj.i(i12 > 0 ? Integer.valueOf(i12) : "", "quantity"), CollectionsKt.K((List) obj6, ",", null, null, null, 62));
                            i12 = i13;
                        }
                        bundle2.putDouble("total_amount", orderConfirmation.f66410c);
                        bundle2.putString("currency", orderConfirmation.d);
                        bundle2.putString("shipping_method", orderConfirmation.f66412f);
                        bundle2.putString("shipping_country", orderConfirmation.g);
                        bundle2.putString("shipping_state", orderConfirmation.f66413h);
                        bundle2.putInt("shipping_cost", orderConfirmation.f66414i);
                        bundle2.putString("contentId", orderConfirmation.f66415j);
                        bundle2.putString("transaction_id", orderConfirmation.f66416k);
                        bundle2.putString("cart_id", orderConfirmation.l);
                    }
                }
                r2 = r24;
            }
            r24 = r2;
            r2 = r24;
        }
        bundle.putAll(bundle2);
        return bundle;
    }
}
