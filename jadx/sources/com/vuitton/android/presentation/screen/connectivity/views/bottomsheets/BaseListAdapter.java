package com.vuitton.android.presentation.screen.connectivity.views.bottomsheets;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemListNonSelectableBinding;
import defpackage.r81;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "", "items", "<init>", "(Ljava/util/List;)V", "BaseListViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BaseListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f56683b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListAdapter$BaseListViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemListNonSelectableBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListAdapter;Lcom/vuitton/android/presentation/databinding/ItemListNonSelectableBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class BaseListViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemListNonSelectableBinding f56684b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseListViewHolder(BaseListAdapter baseListAdapter, ItemListNonSelectableBinding itemListNonSelectableBinding) {
            super(itemListNonSelectableBinding.f51421b);
            itemListNonSelectableBinding.getClass();
            this.f56684b = itemListNonSelectableBinding;
        }
    }

    public BaseListAdapter(List<String> list) {
        list.getClass();
        this.f56683b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56683b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        viewHolder.getClass();
        String str = (String) this.f56683b.get(i2);
        str.getClass();
        ((BaseListViewHolder) viewHolder).f56684b.f51422c.setText(str);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_list_non_selectable, viewGroup, false);
        if (viewInflate != null) {
            TextView textView = (TextView) viewInflate;
            return new BaseListViewHolder(this, new ItemListNonSelectableBinding(textView, textView));
        }
        r81.d("rootView");
        return null;
    }
}
