package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist;

import android.bluetooth.BluetoothDevice;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.lp.ble.entity.LPBluetoothDevice;
import com.vuitton.android.presentation.databinding.ItemListSelectableBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import defpackage.gv;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\tB\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter$ViewHolder;", "Lkotlin/Function1;", "Lcom/lp/ble/entity/LPBluetoothDevice;", "", "onBLEDeviceClick", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "ViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVBluetoothDeviceAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f56642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f56643c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemListSelectableBinding f56644b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LVBluetoothDeviceAdapter f56645c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(LVBluetoothDeviceAdapter lVBluetoothDeviceAdapter, ItemListSelectableBinding itemListSelectableBinding) {
            super(itemListSelectableBinding.f51423b);
            itemListSelectableBinding.getClass();
            this.f56645c = lVBluetoothDeviceAdapter;
            this.f56644b = itemListSelectableBinding;
        }
    }

    public LVBluetoothDeviceAdapter(Function1<? super LPBluetoothDevice, Unit> function1) {
        function1.getClass();
        this.f56642b = function1;
        this.f56643c = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56643c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder2.getClass();
        Object obj = this.f56643c.get(i2);
        obj.getClass();
        LPBluetoothDevice lPBluetoothDevice = (LPBluetoothDevice) obj;
        TextView textView = viewHolder2.f56644b.f51424c;
        LVBluetoothDeviceAdapter lVBluetoothDeviceAdapter = viewHolder2.f56645c;
        BluetoothDevice bluetoothDevice = lPBluetoothDevice.f36359b;
        textView.setText(bluetoothDevice != null ? bluetoothDevice.getName() : null);
        ViewExtKt.d(textView, new gv(lVBluetoothDeviceAdapter, lPBluetoothDevice, 27));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        return new ViewHolder(this, ItemListSelectableBinding.a(LayoutInflater.from(viewGroup.getContext()), viewGroup));
    }
}
