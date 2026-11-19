package com.vuitton.android.presentation.screen.connectivity.section;

import android.content.Context;
import android.widget.LinearLayout;
import com.vuitton.android.R;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.screen.connectivity.DiscoverConnectivityView;
import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.hp;
import defpackage.ip;
import defpackage.jp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ConnectivitySectionDetailFragment$initWatchV3Section$1$4 extends FunctionReferenceImpl implements Function1<Result<? extends Pair<? extends VideoUiModel, ? extends List<? extends SkuIdUiModel>>>, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        VideoUiModel videoUiModel;
        List list;
        Object obj2 = ((Result) obj).f71708b;
        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = (ConnectivitySectionDetailFragment) this.receiver;
        ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
        connectivitySectionDetailFragment.getClass();
        Result.Companion companion2 = Result.INSTANCE;
        boolean z = obj2 instanceof Result.Failure;
        if (!z) {
            Pair pair = (Pair) (z ? null : obj2);
            if (pair != null && (videoUiModel = (VideoUiModel) pair.f71705b) != null) {
                if (z) {
                    obj2 = null;
                }
                Pair pair2 = (Pair) obj2;
                if (pair2 != null && (list = (List) pair2.f71706c) != null) {
                    VideoUiModel videoUiModel2 = StringExtKt.a(videoUiModel.f55968b) ? videoUiModel : null;
                    LinearLayout linearLayout = connectivitySectionDetailFragment.Q().g;
                    int i2 = 1;
                    if (videoUiModel2 != null) {
                        Context contextRequireContext = connectivitySectionDetailFragment.requireContext();
                        contextRequireContext.getClass();
                        DiscoverConnectivityView discoverConnectivityView = new DiscoverConnectivityView(contextRequireContext);
                        String string = connectivitySectionDetailFragment.getString(R.string.p12_dispatch_mywatch);
                        string.getClass();
                        String string2 = connectivitySectionDetailFragment.getString(R.string.discover_our_video);
                        string2.getClass();
                        discoverConnectivityView.a(2131231362, string, string2, null, true);
                        discoverConnectivityView.setOnDiscoverButtonClickListener(new ip(connectivitySectionDetailFragment, videoUiModel2, i2));
                        linearLayout.addView(discoverConnectivityView);
                    }
                    if (!list.isEmpty()) {
                        Context contextRequireContext2 = connectivitySectionDetailFragment.requireContext();
                        contextRequireContext2.getClass();
                        DiscoverConnectivityView discoverConnectivityView2 = new DiscoverConnectivityView(contextRequireContext2);
                        String string3 = connectivitySectionDetailFragment.getString(R.string.ld_discover_button);
                        string3.getClass();
                        String string4 = connectivitySectionDetailFragment.getString(R.string.visit_our_catalog);
                        string4.getClass();
                        DiscoverConnectivityView.b(discoverConnectivityView2, 2131231360, string3, string4, connectivitySectionDetailFragment.getString(R.string.content_description_discover_watch_collection), 16);
                        discoverConnectivityView2.setOnDiscoverButtonClickListener(new jp(connectivitySectionDetailFragment, list, 3));
                        linearLayout.addView(discoverConnectivityView2);
                    }
                    Context contextRequireContext3 = connectivitySectionDetailFragment.requireContext();
                    contextRequireContext3.getClass();
                    DiscoverConnectivityView discoverConnectivityView3 = new DiscoverConnectivityView(contextRequireContext3);
                    String string5 = connectivitySectionDetailFragment.getString(R.string.p12_tutorial_title);
                    string5.getClass();
                    String string6 = connectivitySectionDetailFragment.getString(R.string.visit_tutorial);
                    string6.getClass();
                    DiscoverConnectivityView.b(discoverConnectivityView3, 2131231361, string5, string6, null, 24);
                    discoverConnectivityView3.setOnDiscoverButtonClickListener(new hp(connectivitySectionDetailFragment, i2));
                    linearLayout.addView(discoverConnectivityView3);
                }
            }
        }
        return Unit.f71739a;
    }
}
