package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.wifilist;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.lp.ble.manager.ApItem;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemListSelectableBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import defpackage.ag;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eBB\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/lp/ble/manager/ApItem;", "selectedWifi", "", "wifiList", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "", "onWifiClick", "<init>", "(Lcom/lp/ble/manager/ApItem;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "WifiViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WifiListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ApItem f56646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f56647c;
    public final Function1 d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListAdapter$WifiViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListAdapter;Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class WifiViewHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemListSelectableBinding f56648b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WifiListAdapter f56649c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WifiViewHolder(WifiListAdapter wifiListAdapter, ItemListSelectableBinding itemListSelectableBinding) {
            super(itemListSelectableBinding.f51423b);
            itemListSelectableBinding.getClass();
            this.f56649c = wifiListAdapter;
            this.f56648b = itemListSelectableBinding;
        }
    }

    public WifiListAdapter(ApItem apItem, List<? extends ApItem> list, Function1<? super ApItem, Unit> function1) {
        list.getClass();
        function1.getClass();
        this.f56646b = apItem;
        this.f56647c = list;
        this.d = function1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56647c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        viewHolder.getClass();
        WifiViewHolder wifiViewHolder = (WifiViewHolder) viewHolder;
        ApItem apItem = (ApItem) this.f56647c.get(i2);
        apItem.getClass();
        String ssid = apItem.getSsid();
        WifiListAdapter wifiListAdapter = wifiViewHolder.f56649c;
        ApItem apItem2 = wifiListAdapter.f56646b;
        boolean zC = Intrinsics.c(ssid, apItem2 != null ? apItem2.getSsid() : null);
        ItemListSelectableBinding itemListSelectableBinding = wifiViewHolder.f56648b;
        int i3 = zC ? R.drawable.ic_check_legacy : 0;
        TextView textView = itemListSelectableBinding.f51424c;
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, i3, 0);
        textView.setText(apItem.getDisplaySSID());
        ViewExtKt.d(textView, new ag(zC, wifiListAdapter, apItem, 10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        return new WifiViewHolder(this, ItemListSelectableBinding.a(LayoutInflater.from(viewGroup.getContext()), viewGroup));
    }
}
