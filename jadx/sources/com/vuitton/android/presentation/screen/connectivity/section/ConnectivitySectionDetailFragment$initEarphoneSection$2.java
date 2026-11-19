package com.vuitton.android.presentation.screen.connectivity.section;

import android.content.Context;
import android.widget.LinearLayout;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.DiscoverConnectivityView;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import defpackage.hp;
import defpackage.jp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ConnectivitySectionDetailFragment$initEarphoneSection$2 extends FunctionReferenceImpl implements Function1<Result<? extends List<? extends SkuIdUiModel>>, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = ((Result) obj).f71708b;
        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = (ConnectivitySectionDetailFragment) this.receiver;
        ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
        connectivitySectionDetailFragment.getClass();
        Result.Companion companion2 = Result.INSTANCE;
        boolean z = obj2 instanceof Result.Failure;
        if (z) {
            connectivitySectionDetailFragment.P();
        } else {
            if (z) {
                obj2 = null;
            }
            List list = (List) obj2;
            LinearLayout linearLayout = connectivitySectionDetailFragment.Q().g;
            Context contextRequireContext = connectivitySectionDetailFragment.requireContext();
            contextRequireContext.getClass();
            DiscoverConnectivityView discoverConnectivityView = new DiscoverConnectivityView(contextRequireContext);
            String string = connectivitySectionDetailFragment.getString(R.string.connectivity_my_earphones_title);
            string.getClass();
            String string2 = connectivitySectionDetailFragment.getString(R.string.discover_our_video);
            string2.getClass();
            discoverConnectivityView.a(2131231356, string, string2, null, true);
            int i2 = 2;
            discoverConnectivityView.setOnDiscoverButtonClickListener(new a(connectivitySectionDetailFragment, i2));
            linearLayout.addView(discoverConnectivityView);
            if (list != null && CollectionExtKt.a(list)) {
                Context contextRequireContext2 = connectivitySectionDetailFragment.requireContext();
                contextRequireContext2.getClass();
                DiscoverConnectivityView discoverConnectivityView2 = new DiscoverConnectivityView(contextRequireContext2);
                String string3 = connectivitySectionDetailFragment.getString(R.string.connectivity_discover_collection_title);
                string3.getClass();
                String string4 = connectivitySectionDetailFragment.getString(R.string.visit_our_catalog);
                string4.getClass();
                discoverConnectivityView2.a(2131231353, string3, string4, connectivitySectionDetailFragment.getString(R.string.content_description_discover_earphone_collection), false);
                discoverConnectivityView2.setOnDiscoverButtonClickListener(new jp(connectivitySectionDetailFragment, list, i2));
                linearLayout.addView(discoverConnectivityView2);
            }
            Context contextRequireContext3 = connectivitySectionDetailFragment.requireContext();
            contextRequireContext3.getClass();
            DiscoverConnectivityView discoverConnectivityView3 = new DiscoverConnectivityView(contextRequireContext3);
            String string5 = connectivitySectionDetailFragment.getString(R.string.p12_tutorial_title);
            string5.getClass();
            String string6 = connectivitySectionDetailFragment.getString(R.string.visit_tutorial);
            string6.getClass();
            DiscoverConnectivityView.b(discoverConnectivityView3, 2131231355, string5, string6, null, 24);
            discoverConnectivityView3.setOnDiscoverButtonClickListener(new hp(connectivitySectionDetailFragment, 0));
            linearLayout.addView(discoverConnectivityView3);
        }
        return Unit.f71739a;
    }
}
