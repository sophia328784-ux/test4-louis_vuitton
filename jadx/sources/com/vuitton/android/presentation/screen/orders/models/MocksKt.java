package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleState;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.fa0;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MocksKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f60268a = LazyKt.b(new fa0(18));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f60269b = LazyKt.b(new fa0(20));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f60270c = LazyKt.b(new fa0(21));
    public static final Lazy d = LazyKt.b(new fa0(22));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy f60271e = LazyKt.b(new fa0(23));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final PerfumeSampleUiModel f60272f;
    public static final Lazy g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy f60273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Lazy f60274i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Lazy f60275j;

    static {
        String string = UUID.randomUUID().toString();
        string.getClass();
        f60272f = new PerfumeSampleUiModel("sampleId", string, "Sample Name", "Sample Description", "", PerfumeSampleState.NORMAL);
        g = LazyKt.b(new fa0(24));
        f60273h = LazyKt.b(new fa0(25));
        f60274i = LazyKt.b(new fa0(26));
        f60275j = LazyKt.b(new fa0(27));
    }

    public static TransactionItemUiModel a() {
        String string = UUID.randomUUID().toString();
        string.getClass();
        TimelineUiModel timelineUiModel = (TimelineUiModel) g.getF71699b();
        PriceItemUiModel priceItemUiModel = new PriceItemUiModel(9000.0d, "900€", "€");
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return new TransactionItemUiModel(string, timelineUiModel, priceItemUiModel, false, "Sac Keepall", "M41414", CollectionsKt.O("natoque"), null, new PriceItemUiModel(1000.0d, "1000€", "€"), 1, "possit", "tristique", false, false, new StringResourceUiModel.Text("disclaimer"), CollectionsKt.P(new TransactionItemCustomization.Text("Type", "Hot stamping"), new TransactionItemCustomization.Color("Color", "#123456")), false, null, SetsKt.e(FieldIdentifier.Reason.f60267b), 128, null);
    }

    public static final OrderReturnOrExchangeItemUiModel b() {
        return new OrderReturnOrExchangeItemUiModel(TransactionItemUiModel.a(a(), EmptyList.f71768b), "locationId", "shippingGroupId", false, null, null, 56, null);
    }
}
