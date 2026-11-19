package com.vuitton.android.presentation.screen.orders.models.mappers;

import android.os.Parcelable;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.CategoryTypeUiModel;
import com.vuitton.android.presentation.screen.orders.models.ChannelUiModel;
import com.vuitton.android.presentation.screen.orders.models.DeliveryStateTitle;
import com.vuitton.android.presentation.screen.orders.models.DeliveryStateUiModel;
import com.vuitton.android.presentation.screen.orders.models.DeliveryUiModel;
import com.vuitton.android.presentation.screen.orders.models.PriceItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.models.PurchaseUiModel;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.ShippingTypeUiModel;
import com.vuitton.android.presentation.screen.orders.models.StateUiModel;
import com.vuitton.android.presentation.screen.orders.models.TimelineUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemCustomization;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ValidationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.account.orders.CategoryOption;
import com.vuitton.foundation.model.domain.model.account.orders.CategoryType;
import com.vuitton.foundation.model.domain.model.account.orders.Channel;
import com.vuitton.foundation.model.domain.model.account.orders.Customization;
import com.vuitton.foundation.model.domain.model.account.orders.Delivery;
import com.vuitton.foundation.model.domain.model.account.orders.DeliveryState;
import com.vuitton.foundation.model.domain.model.account.orders.OrderList;
import com.vuitton.foundation.model.domain.model.account.orders.OrderOrigin;
import com.vuitton.foundation.model.domain.model.account.orders.Price;
import com.vuitton.foundation.model.domain.model.account.orders.ProductExchangeCategory;
import com.vuitton.foundation.model.domain.model.account.orders.PurchasedOrder;
import com.vuitton.foundation.model.domain.model.account.orders.ReturnValidation;
import com.vuitton.foundation.model.domain.model.account.orders.ShippingType;
import com.vuitton.foundation.model.domain.model.account.orders.State;
import com.vuitton.foundation.model.domain.model.account.orders.Timeline;
import com.vuitton.foundation.model.domain.model.account.orders.Transaction;
import com.vuitton.foundation.model.domain.model.account.orders.TransactionItem;
import com.vuitton.foundation.model.domain.model.account.orders.Validation;
import com.vuitton.foundation.model.domain.model.common.StringResource;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.v40;
import java.time.LocalDateTime;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60432a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f60433b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f60434c;
        public static final /* synthetic */ int[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ int[] f60435e;

        static {
            int[] iArr = new int[Channel.values().length];
            try {
                iArr[Channel.RETAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Channel.WEB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Channel.CONTACT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f60432a = iArr;
            int[] iArr2 = new int[OrderOrigin.values().length];
            try {
                iArr2[OrderOrigin.CLASSIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[OrderOrigin.X_STORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[ShippingType.values().length];
            try {
                iArr3[ShippingType.STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[ShippingType.CLICK_COLLECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            f60433b = iArr3;
            int[] iArr4 = new int[Validation.values().length];
            try {
                iArr4[Validation.VALIDATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr4[Validation.PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr4[Validation.CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            f60434c = iArr4;
            int[] iArr5 = new int[State.values().length];
            try {
                iArr5[State.PAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr5[State.CURRENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr5[State.FUTURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            d = iArr5;
            int[] iArr6 = new int[ReturnValidation.values().length];
            try {
                iArr6[ReturnValidation.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr6[ReturnValidation.FINALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr6[ReturnValidation.CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr7 = new int[CategoryType.values().length];
            try {
                iArr7[CategoryType.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr7[CategoryType.IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            f60435e = iArr7;
        }
    }

    public static final ProductExchangeCategoryUiModel a(ProductExchangeCategory productExchangeCategory) {
        CategoryTypeUiModel categoryTypeUiModel;
        productExchangeCategory.getClass();
        String str = productExchangeCategory.f66329a;
        String str2 = productExchangeCategory.f66330b;
        int i2 = WhenMappings.f60435e[productExchangeCategory.f66331c.ordinal()];
        if (i2 == 1) {
            categoryTypeUiModel = CategoryTypeUiModel.TEXT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            categoryTypeUiModel = CategoryTypeUiModel.IMAGE;
        }
        CategoryTypeUiModel categoryTypeUiModel2 = categoryTypeUiModel;
        boolean z = productExchangeCategory.d;
        String str3 = productExchangeCategory.f66332e;
        List<CategoryOption> list = productExchangeCategory.f66333f;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (CategoryOption categoryOption : list) {
            String str4 = categoryOption.f66297a;
            String str5 = categoryOption.f66298b;
            String str6 = categoryOption.f66299c;
            boolean z2 = categoryOption.d;
            ProductExchangeCategory productExchangeCategory2 = categoryOption.f66300e;
            arrayList.add(new CategoryOptionUiModel(str4, str5, str6, z2, productExchangeCategory2 != null ? a(productExchangeCategory2) : null));
        }
        return new ProductExchangeCategoryUiModel(str, str2, categoryTypeUiModel2, z, str3, arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
    public static final PurchaseUiModel b(OrderList orderList, InAppDispatch inAppDispatch, boolean z) {
        ?? arrayList;
        List list;
        inAppDispatch.getClass();
        if (orderList == null || (list = orderList.f66314a) == null) {
            arrayList = EmptyList.f71768b;
        } else {
            if (z) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : list) {
                    if (!((PurchasedOrder) obj).f66336c.isEmpty()) {
                        arrayList2.add(obj);
                    }
                }
                list = arrayList2;
            }
            List<PurchasedOrder> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (PurchasedOrder purchasedOrder : list2) {
                purchasedOrder.getClass();
                String strC = DateTimeUtils.c(inAppDispatch, purchasedOrder.f66334a, FormatStyle.LONG);
                LocalDateTime localDateTime = purchasedOrder.f66334a;
                String str = purchasedOrder.f66335b;
                List list3 = purchasedOrder.f66336c;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    arrayList3.add(e((Transaction) it.next(), purchasedOrder.f66338f));
                }
                String str2 = purchasedOrder.d;
                Channel channel = purchasedOrder.f66337e;
                ChannelUiModel channelUiModel = null;
                if (channel != null) {
                    int i2 = WhenMappings.f60432a[channel.ordinal()];
                    if (i2 == 1) {
                        channelUiModel = ChannelUiModel.RETAIL;
                    } else if (i2 == 2) {
                        channelUiModel = ChannelUiModel.WEB;
                    } else if (i2 == 3) {
                        channelUiModel = ChannelUiModel.CONTACT_CENTER;
                    }
                }
                arrayList.add(new PurchasedOrderUiModel(strC, localDateTime, str, arrayList3, str2, channelUiModel, purchasedOrder.f66338f, purchasedOrder.f66339h, purchasedOrder.g));
            }
        }
        return new PurchaseUiModel(arrayList, orderList != null ? orderList.f66315b : 0);
    }

    public static final TimelineUiModel c(Timeline timeline) {
        ValidationUiModel validationUiModel;
        StateUiModel stateUiModel;
        timeline.getClass();
        Validation validation = timeline.f66340a;
        validation.getClass();
        int i2 = WhenMappings.f60434c[validation.ordinal()];
        if (i2 == 1) {
            validationUiModel = ValidationUiModel.VALIDATED;
        } else if (i2 == 2) {
            validationUiModel = ValidationUiModel.PENDING;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            validationUiModel = ValidationUiModel.CANCELLED;
        }
        List list = timeline.f66341b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        int i3 = 0;
        for (Object obj : list) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            DeliveryState deliveryState = (DeliveryState) obj;
            deliveryState.getClass();
            String str = deliveryState.f66309a;
            DeliveryStateTitle deliveryStateTitle = new DeliveryStateTitle(null, deliveryState.f66310b, 1, null);
            boolean z = deliveryState.f66311c;
            State state = deliveryState.d;
            state.getClass();
            int i5 = WhenMappings.d[state.ordinal()];
            if (i5 == 1) {
                stateUiModel = StateUiModel.PAST;
            } else if (i5 == 2) {
                stateUiModel = StateUiModel.CURRENT;
            } else {
                if (i5 != 3) {
                    v40.g();
                    return null;
                }
                stateUiModel = StateUiModel.FUTURE;
            }
            arrayList.add(new DeliveryStateUiModel(str, i3, null, deliveryStateTitle, z, stateUiModel, 4, null));
            i3 = i4;
        }
        return new TimelineUiModel(validationUiModel, arrayList);
    }

    public static final TransactionItemUiModel d(TransactionItem transactionItem) {
        ArrayList arrayList;
        Parcelable text;
        transactionItem.getClass();
        String str = transactionItem.f66348a;
        String str2 = transactionItem.f66351e;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str3 = transactionItem.f66352f;
        companion.getClass();
        SkuIdUiModel.Companion.c(str3);
        String str4 = transactionItem.f66355j;
        String str5 = transactionItem.f66356k;
        List list = transactionItem.g;
        Price price = transactionItem.f66353h;
        PriceItemUiModel priceItemUiModel = new PriceItemUiModel(price.f66326a, price.f66327b, price.f66328c);
        int i2 = transactionItem.f66354i;
        Price price2 = transactionItem.f66350c;
        PriceItemUiModel priceItemUiModel2 = new PriceItemUiModel(price2.f66326a, price2.f66327b, price2.f66328c);
        boolean z = transactionItem.m;
        boolean z2 = transactionItem.l;
        boolean z3 = transactionItem.d;
        List list2 = transactionItem.o;
        if (list2 != null) {
            arrayList = new ArrayList();
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                Customization customization = (Customization) it.next();
                customization.getClass();
                String str6 = str;
                String str7 = customization.f66303c;
                Iterator it2 = it;
                String str8 = customization.f66302b;
                String str9 = customization.f66301a;
                if (str7 != null) {
                    text = new TransactionItemCustomization.Color(str9, str7);
                } else {
                    text = str8 != null ? new TransactionItemCustomization.Text(str9, str8) : null;
                }
                if (text != null) {
                    arrayList.add(text);
                }
                str = str6;
                it = it2;
            }
        } else {
            arrayList = null;
        }
        String str10 = str;
        StringResource stringResource = transactionItem.n;
        StringResourceUiModel stringResourceUiModelC = stringResource != null ? StringResourceUiModelKt.c(stringResource) : null;
        Timeline timeline = transactionItem.f66349b;
        return new TransactionItemUiModel(str10, timeline != null ? c(timeline) : null, priceItemUiModel2, z3, str2, str3, list, null, priceItemUiModel, i2, str4, str5, z2, z, stringResourceUiModelC, arrayList, false, null, null, 458880, null);
    }

    public static final TransactionUiModel e(Transaction transaction, boolean z) {
        ShippingTypeUiModel shippingTypeUiModel;
        transaction.getClass();
        String str = transaction.f66342a;
        List list = transaction.f66345e;
        String str2 = transaction.f66343b;
        ShippingType shippingType = transaction.f66344c;
        shippingType.getClass();
        int i2 = WhenMappings.f60433b[shippingType.ordinal()];
        boolean z2 = true;
        if (i2 == 1) {
            shippingTypeUiModel = ShippingTypeUiModel.STANDARD;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            shippingTypeUiModel = ShippingTypeUiModel.CLICK_COLLECT;
        }
        String str3 = transaction.d;
        List list2 = list;
        DeliveryUiModel deliveryUiModel = null;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(d((TransactionItem) it.next()));
        }
        String str4 = transaction.f66346f;
        Delivery delivery = transaction.g;
        if (delivery != null) {
            deliveryUiModel = new DeliveryUiModel(delivery.f66304a, delivery.f66305b, delivery.f66306c, delivery.d, delivery.f66307e, delivery.f66308f);
        }
        String str5 = transaction.f66347h;
        if (!z || ((list2 instanceof Collection) && list2.isEmpty())) {
            z2 = false;
        } else {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (((TransactionItem) it2.next()).m) {
                }
            }
            z2 = false;
        }
        return new TransactionUiModel(str, str2, shippingTypeUiModel, str3, arrayList, str4, deliveryUiModel, str5, z2);
    }
}
