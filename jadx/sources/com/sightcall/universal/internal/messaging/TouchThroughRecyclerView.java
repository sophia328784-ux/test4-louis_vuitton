package com.sightcall.universal.internal.messaging;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class TouchThroughRecyclerView extends RecyclerView {
    public TouchThroughRecyclerView(Context context) {
        super(context);
    }

    private boolean shouldIgnoreTouchEvents() {
        return getVisibility() != 0 || getAdapter() == null || getAdapter().getItemCount() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && (shouldIgnoreTouchEvents() || findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null)) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean isHit(MotionEvent motionEvent) {
        return (shouldIgnoreTouchEvents() || findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null) ? false : true;
    }

    public TouchThroughRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TouchThroughRecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
