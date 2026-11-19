package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleItemAnimator extends RecyclerView.ItemAnimator {
    public final boolean g = true;

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i2;
        int i3;
        if (itemHolderInfo != null && ((i2 = itemHolderInfo.f19267a) != (i3 = itemHolderInfo2.f19267a) || itemHolderInfo.f19268b != itemHolderInfo2.f19268b)) {
            return o(viewHolder, i2, itemHolderInfo.f19268b, i3, itemHolderInfo2.f19268b);
        }
        m(viewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean b(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i2;
        int i3 = itemHolderInfo.f19267a;
        int i4 = itemHolderInfo.f19268b;
        if (viewHolder2.shouldIgnore()) {
            i2 = itemHolderInfo.f19267a;
        } else {
            i2 = itemHolderInfo2.f19267a;
            itemHolderInfo = itemHolderInfo2;
        }
        return n(viewHolder, viewHolder2, i3, i4, i2, itemHolderInfo.f19268b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean c(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i2 = itemHolderInfo.f19267a;
        int i3 = itemHolderInfo.f19268b;
        View view = viewHolder.itemView;
        int left = itemHolderInfo2 == null ? view.getLeft() : itemHolderInfo2.f19267a;
        int top = itemHolderInfo2 == null ? view.getTop() : itemHolderInfo2.f19268b;
        if (viewHolder.isRemoved() || (i2 == left && i3 == top)) {
            p(viewHolder);
            return true;
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return o(viewHolder, i2, i3, left, top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean d(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i2 = itemHolderInfo.f19267a;
        int i3 = itemHolderInfo2.f19267a;
        if (i2 != i3 || itemHolderInfo.f19268b != itemHolderInfo2.f19268b) {
            return o(viewHolder, i2, itemHolderInfo.f19268b, i3, itemHolderInfo2.f19268b);
        }
        h(viewHolder);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean f(RecyclerView.ViewHolder viewHolder) {
        return !this.g || viewHolder.isInvalid();
    }

    public abstract void m(RecyclerView.ViewHolder viewHolder);

    public abstract boolean n(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4, int i5);

    public abstract boolean o(RecyclerView.ViewHolder viewHolder, int i2, int i3, int i4, int i5);

    public abstract void p(RecyclerView.ViewHolder viewHolder);
}
