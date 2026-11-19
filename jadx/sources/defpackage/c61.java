package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTag;
import androidx.work.impl.model.WorkTagDao_Impl;
import androidx.work.impl.model.WorkTypeConverters;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.TrunkSpeakerRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.a;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkConfigHelper;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoryUi;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail.WatchTutorialAdapter;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail.WatchTutorialDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail.WatchTutorialUi;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchFacePresentationUiModel;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfaceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.video.VideoActivity;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.utils.TrackingFrom;
import com.vuitton.android.presentation.utils.WatchUtilsKt;
import com.vuitton.foundation.model.domain.model.connectivity.Watch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c61 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21082c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c61(Object obj, Object obj2, int i2) {
        this.f21081b = i2;
        this.f21082c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        String str;
        int i2 = this.f21081b;
        Object obj2 = this.d;
        Object obj3 = this.f21082c;
        switch (i2) {
            case 0:
                WatchSettingsFragment watchSettingsFragment = (WatchSettingsFragment) obj3;
                WatchUiModel watchUiModel = (WatchUiModel) obj2;
                Profile profile = (Profile) obj;
                WatchSettingsFragment.Companion companion = WatchSettingsFragment.J;
                String str2 = watchUiModel.f56702b;
                String str3 = watchUiModel.f56703c;
                String str4 = watchUiModel.d;
                String str5 = watchUiModel.f56704e;
                String str6 = watchUiModel.f56705f;
                String str7 = watchUiModel.g;
                if (str7 != null) {
                    SkuIdUiModel.f61763c.getClass();
                    SkuId.Companion companion2 = SkuId.INSTANCE;
                    str = str7;
                } else {
                    str = null;
                }
                Watch watch = new Watch(str2, str3, str4, str5, str6, str, watchUiModel.f56707i, watchUiModel.f56708j, null, null);
                if (profile != null) {
                    if (watch.f67305h >= 2) {
                        String str8 = (String) watchSettingsFragment.Q().f56770k.getValue();
                        watchSettingsFragment.P().d.setText(watchSettingsFragment.getString(R.string.my_travel_address));
                        TextView textView = watchSettingsFragment.P().f51370c;
                        Context contextRequireContext = watchSettingsFragment.requireContext();
                        contextRequireContext.getClass();
                        str8.getClass();
                        textView.setText(WatchUtilsKt.b(contextRequireContext, str8, profile));
                    } else {
                        TextView textView2 = watchSettingsFragment.P().f51370c;
                        Context contextRequireContext2 = watchSettingsFragment.requireContext();
                        contextRequireContext2.getClass();
                        textView2.setText(WatchUtilsKt.a(contextRequireContext2, watch.f67302c, profile));
                        watchSettingsFragment.P().d.setText(watchSettingsFragment.getString(R.string.my_flight_address));
                    }
                }
                return Unit.f71739a;
            case 1:
                int i3 = WatchTutorialAdapter.TutorialHolder.d;
                ((View) obj).getClass();
                ((WatchTutorialAdapter) obj3).f56803b.invoke((WatchTutorialUi) obj2);
                return Unit.f71739a;
            case 2:
                WatchTutorialCategoriesFragment watchTutorialCategoriesFragment = (WatchTutorialCategoriesFragment) obj3;
                WatchTutorialCategoryUi watchTutorialCategoryUi = (WatchTutorialCategoryUi) obj2;
                WatchTutorialCategoriesFragment.Companion companion3 = WatchTutorialCategoriesFragment.I;
                ((View) obj).getClass();
                if (watchTutorialCategoriesFragment.H == null) {
                    Intrinsics.h("watchTutorialRouter");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity = watchTutorialCategoriesFragment.requireActivity();
                fragmentActivityRequireActivity.getClass();
                FragmentTransaction fragmentTransactionD = fragmentActivityRequireActivity.getSupportFragmentManager().d();
                fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                WatchTutorialDetailsFragment.H.getClass();
                WatchTutorialDetailsFragment watchTutorialDetailsFragment = new WatchTutorialDetailsFragment();
                Bundle bundle = new Bundle();
                bundle.putParcelable("CATEGORY", watchTutorialCategoryUi);
                watchTutorialDetailsFragment.setArguments(bundle);
                String str9 = WatchTutorialDetailsFragment.J;
                fragmentTransactionD.m(R.id.fragment_container, watchTutorialDetailsFragment, str9);
                fragmentTransactionD.d(str9);
                fragmentTransactionD.e();
                return Unit.f71739a;
            case 3:
                WatchTutorialUi watchTutorialUi = (WatchTutorialUi) obj;
                WatchTutorialDetailsFragment.Companion companion4 = WatchTutorialDetailsFragment.H;
                watchTutorialUi.getClass();
                Context contextRequireContext3 = ((WatchTutorialDetailsFragment) obj3).requireContext();
                VideoActivity.Companion companion5 = VideoActivity.m;
                Context context = ((RecyclerView) obj2).getContext();
                context.getClass();
                TrackingFrom trackingFrom = new TrackingFrom("LVPass/IoT/Watches/Tutorial/Video", "IoT");
                String str10 = watchTutorialUi.f56809c;
                String str11 = watchTutorialUi.d;
                String str12 = watchTutorialUi.f56808b;
                companion5.getClass();
                contextRequireContext3.startActivity(VideoActivity.Companion.b(context, trackingFrom, str10, str11, str12));
                return Unit.f71739a;
            case 4:
                WatchfaceListAdapter watchfaceListAdapter = (WatchfaceListAdapter) obj3;
                int i4 = WatchfaceListAdapter.ViewHolder.d;
                ((View) obj).getClass();
                Function1 function1 = watchfaceListAdapter.f56820b;
                Object obj4 = watchfaceListAdapter.f56821c.get(((WatchfaceListAdapter.ViewHolder) obj2).getBindingAdapterPosition());
                obj4.getClass();
                function1.invoke(obj4);
                return Unit.f71739a;
            case 5:
                WatchfacePresentationFragment.Companion companion6 = WatchfacePresentationFragment.L;
                ((View) obj).getClass();
                ((WatchfacePresentationFragment) obj3).P(((WatchFacePresentationUiModel) obj2).f56814h);
                return Unit.f71739a;
            case 6:
                WifiDeviceDetailFragment wifiDeviceDetailFragment = (WifiDeviceDetailFragment) obj2;
                LPDevice lPDevice = (LPDevice) obj;
                WifiDeviceDetailFragment.Companion companion7 = WifiDeviceDetailFragment.N;
                lPDevice.getClass();
                int i5 = 0;
                TrunkConfigHelper.b(lPDevice, (String) obj3, new a(wifiDeviceDetailFragment, i5), new v61(wifiDeviceDetailFragment, i5));
                return Unit.f71739a;
            case 7:
                int i6 = WifiDeviceListAdapter.SpeakerRoomCard.d;
                ((View) obj).getClass();
                ((WifiDeviceListAdapter.SpeakerRoomCard) obj3).f56533c.m((WifiTrunkDevice.RoomSpeaker) obj2);
                return Unit.f71739a;
            case 8:
                int i7 = WifiDeviceListAdapter.SpeakerSimpleCard.d;
                ((View) obj).getClass();
                ((WifiDeviceListAdapter.SpeakerSimpleCard) obj3).f56535c.m((WifiTrunkDevice.SimpleSpeaker) obj2);
                return Unit.f71739a;
            case 9:
                WifiDeviceListFragment wifiDeviceListFragment = (WifiDeviceListFragment) obj3;
                WifiTrunkDevice wifiTrunkDevice = (WifiTrunkDevice) obj2;
                WifiDeviceListFragment.Companion companion8 = WifiDeviceListFragment.L;
                ((LPDevice) obj).getClass();
                if (wifiDeviceListFragment.I == null) {
                    Intrinsics.h("trunkSpeakerRouter");
                    throw null;
                }
                FragmentActivity activity = wifiDeviceListFragment.getActivity();
                String upnpUUID = ((WifiTrunkDevice.SimpleSpeaker) wifiTrunkDevice).f56557b.getUpnpUUID();
                upnpUUID.getClass();
                TrunkSpeakerRouter.a(activity, upnpUUID);
                return Unit.f71739a;
            case 10:
                final WindowInsetsHolder windowInsetsHolder = (WindowInsetsHolder) obj3;
                final View view = (View) obj2;
                windowInsetsHolder.a(view);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.layout.WindowInsetsHolder$Companion$current$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        WindowInsetsHolder windowInsetsHolder2 = windowInsetsHolder;
                        int i8 = windowInsetsHolder2.w - 1;
                        windowInsetsHolder2.w = i8;
                        if (i8 == 0) {
                            View view2 = view;
                            ViewCompat.x(view2, null);
                            ViewCompat.A(view2, null);
                            view2.removeOnAttachStateChangeListener(windowInsetsHolder2.x);
                        }
                    }
                };
            case 11:
                WishlistItemUiModel wishlistItemUiModel = (WishlistItemUiModel) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, CollectionsKt.K(CollectionsKt.P(wishlistItemUiModel.f65741c, wishlistItemUiModel.f65742e, (String) obj2), null, null, null, null, 63));
                return Unit.f71739a;
            case 12:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                WorkNameDao_Impl.Companion companion9 = WorkNameDao_Impl.f20503c;
                sQLiteConnection.getClass();
                ((WorkNameDao_Impl) obj3).f20505b.c(sQLiteConnection, (WorkName) obj2);
                return Unit.f71739a;
            case 13:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion10 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection2.getClass();
                ((WorkSpecDao_Impl) obj3).f20532b.c(sQLiteConnection2, (WorkSpec) obj2);
                return Unit.f71739a;
            case 14:
                Data data = (Data) obj3;
                String str13 = (String) obj2;
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion11 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection3.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection3.T1("UPDATE workspec SET output=? WHERE id=?");
                try {
                    Data.f20243b.getClass();
                    sQLiteStatementT1.b(1, Data.Companion.c(data));
                    sQLiteStatementT1.A(2, str13);
                    sQLiteStatementT1.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT1.close();
                }
            case 15:
                WorkInfo.State state = (WorkInfo.State) obj3;
                String str14 = (String) obj2;
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion12 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection4.getClass();
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection4.T1("UPDATE workspec SET state=? WHERE id=?");
                try {
                    sQLiteStatementT2.a(1, WorkTypeConverters.f(state));
                    sQLiteStatementT2.A(2, str14);
                    sQLiteStatementT2.Q1();
                    return Integer.valueOf(SQLiteConnectionUtil.a(sQLiteConnection4));
                } finally {
                    sQLiteStatementT2.close();
                }
            case 16:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                WorkTagDao_Impl.Companion companion13 = WorkTagDao_Impl.f20535c;
                sQLiteConnection5.getClass();
                ((WorkTagDao_Impl) obj3).f20537b.c(sQLiteConnection5, (WorkTag) obj2);
                return Unit.f71739a;
            default:
                return AFLogger.registerClient((LogTag) obj3, (String) obj2, (AFLoggerBase) obj);
        }
    }
}
