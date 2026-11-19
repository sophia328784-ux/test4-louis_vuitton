package com.vuitton.android.presentation.screen.connectivity.watchface;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemWatchfaceImageBinding;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import defpackage.r81;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;", "<init>", "()V", "ViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchfaceImagePagerAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f56818b = new ArrayList();

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemWatchfaceImageBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;Lcom/vuitton/android/presentation/databinding/ItemWatchfaceImageBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemWatchfaceImageBinding f56819b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(WatchfaceImagePagerAdapter watchfaceImagePagerAdapter, ItemWatchfaceImageBinding itemWatchfaceImageBinding) {
            super(itemWatchfaceImageBinding.f51455b);
            itemWatchfaceImageBinding.getClass();
            this.f56819b = itemWatchfaceImageBinding;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56818b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder2.getClass();
        Object obj = this.f56818b.get(i2);
        obj.getClass();
        XmlUiKt.a(viewHolder2.f56819b.f51455b, (String) obj, 0, 0, 126);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_watchface_image, viewGroup, false);
        if (viewInflate != null) {
            return new ViewHolder(this, new ItemWatchfaceImageBinding((ImageView) viewInflate));
        }
        r81.d("rootView");
        return null;
    }
}
