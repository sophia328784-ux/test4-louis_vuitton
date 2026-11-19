package com.sightcall.universal.internal.messaging;

import android.graphics.Canvas;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class MessagesOverlayTouchHelper extends ItemTouchHelper.SimpleCallback {
    private final MessagesOverlayAdapter adapter;

    private MessagesOverlayTouchHelper(MessagesOverlayAdapter messagesOverlayAdapter) {
        super(0, 12);
        this.adapter = messagesOverlayAdapter;
    }

    public static void attachToRecyclerView(RecyclerView recyclerView, MessagesOverlayAdapter messagesOverlayAdapter) {
        new ItemTouchHelper(new MessagesOverlayTouchHelper(messagesOverlayAdapter)).f(recyclerView);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    public int getSwipeDirs(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof MessagesOverlayAdapter.MessageViewHolder) {
            return super.getSwipeDirs(recyclerView, viewHolder);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f2, float f3, int i2, boolean z) {
        if (i2 == 1) {
            viewHolder.itemView.setAlpha(1.0f - (Math.abs(f2) / viewHolder.itemView.getWidth()));
        }
        super.onChildDraw(canvas, recyclerView, viewHolder, f2, f3, i2, z);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i2) {
        if (i2 == 0) {
            this.adapter.resetUnreadTimeout();
        } else {
            if (i2 != 1) {
                return;
            }
            this.adapter.clearUnreadTimeout();
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder instanceof MessagesOverlayAdapter.MessageViewHolder) {
            this.adapter.onMessageDismissed((MessagesOverlayAdapter.MessageViewHolder) viewHolder);
        }
    }
}
