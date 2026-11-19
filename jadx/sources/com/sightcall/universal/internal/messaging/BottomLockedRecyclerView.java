package com.sightcall.universal.internal.messaging;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class BottomLockedRecyclerView extends RecyclerView {
    public BottomLockedRecyclerView(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        int itemCount;
        super.onSizeChanged(i2, i3, i4, i5);
        if (i4 > 0 || i5 > 0) {
            RecyclerView.Adapter adapter = getAdapter();
            RecyclerView.LayoutManager layoutManager = getLayoutManager();
            if (adapter == null || !(layoutManager instanceof LinearLayoutManager) || (itemCount = adapter.getItemCount()) <= 0 || i3 == i5) {
                return;
            }
            boolean z = i3 < i5;
            int iW0 = ((LinearLayoutManager) layoutManager).W0();
            if (z || iW0 == itemCount - 1) {
                scrollToPosition(adapter.getItemCount() - 1);
            }
        }
    }

    public BottomLockedRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BottomLockedRecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
