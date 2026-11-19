package com.vuitton.android.data.analytics.builder;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.AnalyticsConstants$Values;
import com.vuitton.foundation.model.domain.model.analytics.ECommerceValues;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.DispatchLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionGroup;
import com.vuitton.foundation.model.domain.model.environment.Environment;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u001b\u0012\u0017\u0012\u0015\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002¢\u0006\u0002\b\u00050\u0001B!\b\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;", "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;", "", "", "", "Lkotlin/jvm/JvmSuppressWildcards;", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SensorsDataAnalyticsHitBuilder implements AnalyticsHitBuilder<Map<String, Object>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserPreferencesRepository f43548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentProvider f43549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BuildConfigProvider f43550c;

    @Inject
    public SensorsDataAnalyticsHitBuilder(UserPreferencesRepository userPreferencesRepository, EnvironmentProvider environmentProvider, BuildConfigProvider buildConfigProvider) {
        userPreferencesRepository.getClass();
        environmentProvider.getClass();
        buildConfigProvider.getClass();
        this.f43548a = userPreferencesRepository;
        this.f43549b = environmentProvider;
        this.f43550c = buildConfigProvider;
    }

    @Override // com.vuitton.android.data.analytics.builder.AnalyticsHitBuilder
    public final Object a(InAppDispatch inAppDispatch, Hit hit) {
        inAppDispatch.getClass();
        hit.getClass();
        if (hit instanceof Hit.EventHit.AddToCartEventHit) {
            Hit.EventHit.AddToCartEventHit addToCartEventHit = (Hit.EventHit.AddToCartEventHit) hit;
            LinkedHashMap linkedHashMap = new LinkedHashMap(b(inAppDispatch, addToCartEventHit));
            linkedHashMap.put("item_id", new SkuId(addToCartEventHit.g));
            ECommerceValues eCommerceValues = addToCartEventHit.f66459f;
            linkedHashMap.put("item_name", eCommerceValues.f66445b);
            linkedHashMap.put("item_category", eCommerceValues.f66446c);
            Double d = eCommerceValues.d;
            if (d != null) {
                if (d.doubleValue() <= 0.0d) {
                    d = null;
                }
                if (d != null) {
                    double dDoubleValue = d.doubleValue();
                    linkedHashMap.put("price", Double.valueOf(dDoubleValue));
                    linkedHashMap.put("value", Double.valueOf(dDoubleValue));
                }
            }
            String str = eCommerceValues.f66447e;
            if (str != null) {
                if (StringsKt.w(str)) {
                    str = null;
                }
                if (str != null) {
                    linkedHashMap.put("currency", str);
                }
            }
            Double d2 = eCommerceValues.f66448f;
            if (d2 != null) {
                Double d3 = d2.doubleValue() > 0.0d ? d2 : null;
                if (d3 != null) {
                    linkedHashMap.put("quantity", Double.valueOf(d3.doubleValue()));
                }
            }
            return linkedHashMap;
        }
        if (hit instanceof Hit.EventHit.BeginCheckoutEventHit) {
            Hit.EventHit.BeginCheckoutEventHit beginCheckoutEventHit = (Hit.EventHit.BeginCheckoutEventHit) hit;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(b(inAppDispatch, beginCheckoutEventHit));
            linkedHashMap2.put("productSku", beginCheckoutEventHit.f66465f);
            linkedHashMap2.put("currency", beginCheckoutEventHit.g);
            linkedHashMap2.put("backOrderStatus", Intrinsics.c(beginCheckoutEventHit.f66468j, Boolean.TRUE) ? "backOrder_yes" : "backOrder_no");
            linkedHashMap2.put("quantity", beginCheckoutEventHit.f66466h);
            linkedHashMap2.put("price", beginCheckoutEventHit.f66467i);
            return linkedHashMap2;
        }
        if (!(hit instanceof Hit.WebViewHit)) {
            if (hit instanceof Hit.ScreenHit) {
                Hit.ScreenHit screenHit = (Hit.ScreenHit) hit;
                LinkedHashMap linkedHashMap3 = new LinkedHashMap(c(inAppDispatch, screenHit));
                linkedHashMap3.put("screen_name", screenHit.getF66494b());
                linkedHashMap3.put("page_name", screenHit.getF66495c());
                linkedHashMap3.put("language", inAppDispatch.l);
                linkedHashMap3.put("screenOrientation", "portrait");
                linkedHashMap3.put("page_type", screenHit.getD());
                List list = InAppDispatchExtKt.f67487a;
                DispatchLocale dispatchLocale = inAppDispatch.f67477b;
                if (dispatchLocale.d != RegionGroup.EURO_LAND && !InAppDispatchExtKt.g(inAppDispatch) && !dispatchLocale.f67494e) {
                    return linkedHashMap3;
                }
                String lowerCase = inAppDispatch.f67483j.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                linkedHashMap3.put("invoicingCountryForSite", lowerCase);
                return linkedHashMap3;
            }
            if (hit instanceof Hit.EventHit) {
                return b(inAppDispatch, (Hit.EventHit) hit);
            }
            if (!(hit instanceof Hit.AnomalyHit) && !(hit instanceof Hit.EventHit.SelectItemEventHit) && !(hit instanceof Hit.EventHit.ViewItemListEventHit) && !(hit instanceof Hit.ViewSearchResultHit) && !(hit instanceof Hit.ABTestHit)) {
                v40.g();
                return null;
            }
        }
        return null;
    }

    public final LinkedHashMap b(InAppDispatch inAppDispatch, Hit.EventHit eventHit) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(c(inAppDispatch, eventHit));
        linkedHashMap.put("event_category", eventHit.getD());
        linkedHashMap.put("event_label", eventHit.getF66486c());
        linkedHashMap.put("actionPosition", eventHit.getF66484a());
        linkedHashMap.put("event_action", eventHit.getF66487e());
        linkedHashMap.put("page_type", eventHit.getF66485b());
        return linkedHashMap;
    }

    public final LinkedHashMap c(InAppDispatch inAppDispatch, Hit hit) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("environmentId", "LVPassApp");
        this.f43550c.getClass();
        Intrinsics.c(this.f43549b.d(), Environment.Nrt.d);
        linkedHashMap.put("environmentType", "prd");
        linkedHashMap.put("environmentVersion", inAppDispatch.f67484k);
        String userId = this.f43548a.getUserId();
        if (userId == null || StringsKt.w(userId)) {
            userId = null;
        }
        linkedHashMap.put("user_log_status", userId != null ? "logged_user" : "not_logged_user");
        List<AdditionalProperty> f66501b = hit.getF66501b();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (AdditionalProperty additionalProperty : f66501b) {
            if (additionalProperty instanceof AdditionalProperty.ProductSku) {
                linkedHashMap2.put("productSku", ((AdditionalProperty.ProductSku) additionalProperty).f66429a);
            } else if (additionalProperty instanceof AdditionalProperty.VtoSkus) {
                linkedHashMap2.put("vtoSku", ((AdditionalProperty.VtoSkus) additionalProperty).f66443a);
            } else if (additionalProperty instanceof AdditionalProperty.LevelName) {
                linkedHashMap2.put("level_name", ((AdditionalProperty.LevelName) additionalProperty).f66399a);
            } else if (additionalProperty instanceof AdditionalProperty.NumberOfResults) {
                linkedHashMap2.put("numberOfResults", ((AdditionalProperty.NumberOfResults) additionalProperty).f66405a);
            } else if (additionalProperty instanceof AdditionalProperty.InternalSearchKeywords) {
                linkedHashMap2.put("internalSearchKeywords", ((AdditionalProperty.InternalSearchKeywords) additionalProperty).f66398a);
            } else if (additionalProperty instanceof AdditionalProperty.FilterId) {
                linkedHashMap2.put("filterId", ((AdditionalProperty.FilterId) additionalProperty).f66396a);
            } else if (additionalProperty instanceof AdditionalProperty.ContentId) {
                linkedHashMap2.put("contentId", ((AdditionalProperty.ContentId) additionalProperty).f66383a);
            } else if (additionalProperty instanceof AdditionalProperty.ContentType) {
                linkedHashMap2.put(CMSAttributeTableGenerator.CONTENT_TYPE, ((AdditionalProperty.ContentType) additionalProperty).f66384a);
            } else if (additionalProperty instanceof AdditionalProperty.ArticleId) {
                linkedHashMap2.put("article_id", ((AdditionalProperty.ArticleId) additionalProperty).f66376a);
            } else if (additionalProperty instanceof AdditionalProperty.ModuleId) {
                linkedHashMap2.put("module_id", ((AdditionalProperty.ModuleId) additionalProperty).f66402a);
            } else if (additionalProperty instanceof AdditionalProperty.LookId) {
                linkedHashMap2.put("look_id", ((AdditionalProperty.LookId) additionalProperty).f66400a);
            } else if (additionalProperty instanceof AdditionalProperty.OnlineSellable) {
                linkedHashMap2.put("onlineSellable", ((AdditionalProperty.OnlineSellable) additionalProperty).f66407a);
            } else if (additionalProperty instanceof AdditionalProperty.ProductStockStatus) {
                linkedHashMap2.put("productStockStatus", ((AdditionalProperty.ProductStockStatus) additionalProperty).f66430a);
            } else if (additionalProperty instanceof AdditionalProperty.ExclusiveSaleEligible) {
                linkedHashMap2.put("exclusiveSaleStatus", ((AdditionalProperty.ExclusiveSaleEligible) additionalProperty).f66394a);
            } else if (additionalProperty instanceof AdditionalProperty.CookieConsent) {
                AdditionalProperty.CookieConsent cookieConsent = (AdditionalProperty.CookieConsent) additionalProperty;
                linkedHashMap2.put("cookie_consent", AnalyticsConstants$Values.a(cookieConsent.f66386a, cookieConsent.f66387b, cookieConsent.f66388c, cookieConsent.d, cookieConsent.f66389e));
            } else if (additionalProperty instanceof AdditionalProperty.StoreMode) {
                AdditionalProperty.StoreMode storeMode = (AdditionalProperty.StoreMode) additionalProperty;
                linkedHashMap2.put("storeId", storeMode.f66437a);
                linkedHashMap2.put("store_mode", Boolean.valueOf(storeMode.f66438b));
            } else if (additionalProperty instanceof AdditionalProperty.Price) {
                linkedHashMap2.put("price", ((AdditionalProperty.Price) additionalProperty).f66427a);
            } else if (additionalProperty instanceof AdditionalProperty.Currency) {
                linkedHashMap2.put("currency", ((AdditionalProperty.Currency) additionalProperty).f66390a);
            } else if (additionalProperty instanceof AdditionalProperty.Sku) {
                linkedHashMap2.put("SKU", new SkuId(((AdditionalProperty.Sku) additionalProperty).f66434a));
            } else if (additionalProperty instanceof AdditionalProperty.StepId) {
                linkedHashMap2.put("step_id", ((AdditionalProperty.StepId) additionalProperty).f66435a);
            } else if (additionalProperty instanceof AdditionalProperty.ProductId) {
                String str = ((AdditionalProperty.ProductId) additionalProperty).f66428a;
                linkedHashMap2.put("productID", str != null ? new ProductId(str) : null);
            } else if (additionalProperty instanceof AdditionalProperty.CertificateId) {
                linkedHashMap2.put("certificate_id", ((AdditionalProperty.CertificateId) additionalProperty).f66380a);
            } else if (additionalProperty instanceof AdditionalProperty.BackOrderStatus) {
                linkedHashMap2.put("backOrderStatus", Intrinsics.c(((AdditionalProperty.BackOrderStatus) additionalProperty).f66377a, Boolean.TRUE) ? "backOrder_yes" : "backOrder_no");
            } else if (additionalProperty instanceof AdditionalProperty.Quantity) {
                linkedHashMap2.put("quantity", ((AdditionalProperty.Quantity) additionalProperty).f66431a);
            } else if (additionalProperty instanceof AdditionalProperty.NumberOfAppointments) {
                linkedHashMap2.put("myAppointmentNumberOfResults", Integer.valueOf(((AdditionalProperty.NumberOfAppointments) additionalProperty).f66404a));
            } else if (additionalProperty instanceof AdditionalProperty.StoreId) {
                linkedHashMap2.put("store_id", ((AdditionalProperty.StoreId) additionalProperty).f66436a);
            } else if (additionalProperty instanceof AdditionalProperty.AppointmentDate) {
                linkedHashMap2.put("my_appointment_date", ((AdditionalProperty.AppointmentDate) additionalProperty).f66373a);
            } else if (additionalProperty instanceof AdditionalProperty.AppointmentId) {
                linkedHashMap2.put("appointment_id", ((AdditionalProperty.AppointmentId) additionalProperty).f66374a);
            } else if (additionalProperty instanceof AdditionalProperty.AppointmentSearch) {
                linkedHashMap2.put("my_appointment_search", ((AdditionalProperty.AppointmentSearch) additionalProperty).f66375a);
            } else if (additionalProperty instanceof AdditionalProperty.ExperienceId) {
                linkedHashMap2.put("experience_id", ((AdditionalProperty.ExperienceId) additionalProperty).f66395a);
            } else if (additionalProperty instanceof AdditionalProperty.PrebookAppointmentDate) {
                linkedHashMap2.put("my_prebook_appointment_date", ((AdditionalProperty.PrebookAppointmentDate) additionalProperty).f66425a);
            } else if (additionalProperty instanceof AdditionalProperty.PrebookAppointmentType) {
                linkedHashMap2.put("my_prebook_appointment_type", ((AdditionalProperty.PrebookAppointmentType) additionalProperty).f66426a);
            } else if (additionalProperty instanceof AdditionalProperty.TotalDigitalOrders) {
                linkedHashMap2.put("totalDigitalOrders", Integer.valueOf(((AdditionalProperty.TotalDigitalOrders) additionalProperty).f66440a));
            } else if (additionalProperty instanceof AdditionalProperty.TotalRetailOrders) {
                linkedHashMap2.put("totalRetailOrders", Integer.valueOf(((AdditionalProperty.TotalRetailOrders) additionalProperty).f66441a));
            } else if (additionalProperty instanceof AdditionalProperty.DigitalPurchaseId) {
                linkedHashMap2.put("digitalPurchaseId", ((AdditionalProperty.DigitalPurchaseId) additionalProperty).f66391a);
            } else if (additionalProperty instanceof AdditionalProperty.RetailPurchaseId) {
                linkedHashMap2.put("retailPurchaseId", ((AdditionalProperty.RetailPurchaseId) additionalProperty).f66432a);
            } else if (additionalProperty instanceof AdditionalProperty.StoreModeArticle) {
                linkedHashMap2.put("article_id", ((AdditionalProperty.StoreModeArticle) additionalProperty).f66439a);
            } else if (additionalProperty instanceof AdditionalProperty.OrderReturnReasons) {
                linkedHashMap2.put("reason_key", ((AdditionalProperty.OrderReturnReasons) additionalProperty).f66423a);
            } else if (additionalProperty instanceof AdditionalProperty.NumberOfTypedCharacters) {
                linkedHashMap2.put("number_characters_typed", Integer.valueOf(((AdditionalProperty.NumberOfTypedCharacters) additionalProperty).f66406a));
            } else if (additionalProperty instanceof AdditionalProperty.CollectionId) {
                linkedHashMap2.put("collection_id", ((AdditionalProperty.CollectionId) additionalProperty).f66382a);
            } else if (additionalProperty instanceof AdditionalProperty.Origin) {
                linkedHashMap2.put("origin", ((AdditionalProperty.Origin) additionalProperty).f66424a);
            } else if (additionalProperty instanceof AdditionalProperty.VirtualStudio) {
                linkedHashMap2.put("virtual_studio", String.valueOf(((AdditionalProperty.VirtualStudio) additionalProperty).f66442a));
            } else if (additionalProperty instanceof AdditionalProperty.CategoryId) {
                linkedHashMap2.put("category_id", ((AdditionalProperty.CategoryId) additionalProperty).f66378a);
            } else if (additionalProperty instanceof AdditionalProperty.ChannelId) {
                linkedHashMap2.put("channel_id", ((AdditionalProperty.ChannelId) additionalProperty).f66381a);
            } else if (additionalProperty instanceof AdditionalProperty.OrderItem) {
                AdditionalProperty.OrderItem orderItem = (AdditionalProperty.OrderItem) additionalProperty;
                linkedHashMap2.put("transaction_id", orderItem.f66417a);
                linkedHashMap2.put("shipping_method", orderItem.f66418b);
                linkedHashMap2.put("status_id", orderItem.f66419c);
                linkedHashMap2.put("total_amount", orderItem.d);
                linkedHashMap2.put("price", orderItem.f66420e);
                linkedHashMap2.put("SKU", orderItem.f66421f);
                linkedHashMap2.put("quantity", Integer.valueOf(orderItem.g));
                linkedHashMap2.put("shipping_address_status", orderItem.f66422h);
            } else if (additionalProperty instanceof AdditionalProperty.CategoryWithImage) {
                linkedHashMap2.put("category_with_image", String.valueOf(((AdditionalProperty.CategoryWithImage) additionalProperty).f66379a));
            } else if (additionalProperty instanceof AdditionalProperty.SearchContext) {
                linkedHashMap2.put("search_context", ((AdditionalProperty.SearchContext) additionalProperty).f66433a);
            } else if (additionalProperty instanceof AdditionalProperty.Index) {
                linkedHashMap2.put("index", Integer.valueOf(((AdditionalProperty.Index) additionalProperty).f66397a));
            } else if (additionalProperty instanceof AdditionalProperty.NativeShare) {
                linkedHashMap2.put("native_share", ((AdditionalProperty.NativeShare) additionalProperty).f66403a);
            } else if (additionalProperty instanceof AdditionalProperty.MarketingChannelType) {
                linkedHashMap2.put("marketing_channel_type", ((AdditionalProperty.MarketingChannelType) additionalProperty).f66401a);
            } else if (additionalProperty instanceof AdditionalProperty.EntryPoint) {
                linkedHashMap2.put("entry_point", ((AdditionalProperty.EntryPoint) additionalProperty).f66392a);
            } else if (additionalProperty instanceof AdditionalProperty.ErrorId) {
                linkedHashMap2.put("error_id", ((AdditionalProperty.ErrorId) additionalProperty).f66393a);
            } else if (additionalProperty instanceof AdditionalProperty.Context) {
                linkedHashMap2.put(MvelScriptManager.VAR_CONTEXT, ((AdditionalProperty.Context) additionalProperty).f66385a);
            } else {
                if (!(additionalProperty instanceof AdditionalProperty.OrderConfirmation)) {
                    v40.g();
                    return null;
                }
                AdditionalProperty.OrderConfirmation orderConfirmation = (AdditionalProperty.OrderConfirmation) additionalProperty;
                linkedHashMap2.put("productSku", CollectionsKt.K(orderConfirmation.f66408a, ",", null, null, SensorsDataAnalyticsHitBuilder$buildAdditionalProperties$1$1$1.f43551b, 30));
                linkedHashMap2.put("price", CollectionsKt.K(orderConfirmation.f66409b, ",", null, null, null, 62));
                linkedHashMap2.put("total_amount", Double.valueOf(orderConfirmation.f66410c));
                linkedHashMap2.put("currency", orderConfirmation.d);
                linkedHashMap2.put("quantity", CollectionsKt.K(orderConfirmation.f66411e, ",", null, null, null, 62));
                linkedHashMap2.put("shipping_method", orderConfirmation.f66412f);
                linkedHashMap2.put("shipping_country", orderConfirmation.g);
                linkedHashMap2.put("shipping_state", orderConfirmation.f66413h);
                linkedHashMap2.put("shipping_cost", Integer.valueOf(orderConfirmation.f66414i));
                linkedHashMap2.put("contentId", orderConfirmation.f66415j);
                linkedHashMap2.put("transaction_id", orderConfirmation.f66416k);
                linkedHashMap2.put("cart_id", orderConfirmation.l);
            }
        }
        linkedHashMap.putAll(linkedHashMap2);
        return linkedHashMap;
    }
}
