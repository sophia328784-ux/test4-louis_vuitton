package com.vuitton.android.presentation.screen.orders;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderDestinationsKt {
    public static final Intent a(OrderDestinations orderDestinations, Context context) {
        if (orderDestinations.equals(OrderDestinations.ToCatalogPage.f60087a)) {
            return MainActivity.Companion.a(MainActivity.L, context, MainTopLevelDestination.CATALOG, null, null, null, 28);
        }
        if (!(orderDestinations instanceof OrderDestinations.ToImageViewerPage)) {
            if (orderDestinations instanceof OrderDestinations.ToWebViewPage) {
                return WebViewActivity.Companion.a(WebViewActivity.v, context, ((OrderDestinations.ToWebViewPage) orderDestinations).f60089a, false, false, null, null, null, false, false, null, 2044);
            }
            v40.g();
            return null;
        }
        ImageViewerActivity.Companion companion = ImageViewerActivity.t;
        List list = ((OrderDestinations.ToImageViewerPage) orderDestinations).f60088a;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        Bundle bundle = new Bundle();
        bundle.putString("TRACKING_SCREEN_NAME", "my_order_details");
        bundle.putString("TRACKING_EVENT_CATEGORY", "my_orders");
        return ImageViewerActivity.Companion.a(companion, context, arrayList, 0, bundle, ProductBackground.DEFAULT, 4);
    }
}
