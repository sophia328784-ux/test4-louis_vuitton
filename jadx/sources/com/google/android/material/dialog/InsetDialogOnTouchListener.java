package com.google.android.material.dialog;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public class InsetDialogOnTouchListener implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Dialog f32606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32607c;
    public final int d;

    public InsetDialogOnTouchListener(Dialog dialog, Rect rect) {
        this.f32606b = dialog;
        this.f32607c = rect.left;
        this.d = rect.top;
        ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = viewFindViewById.getLeft() + this.f32607c;
        int width = viewFindViewById.getWidth() + left;
        int top = viewFindViewById.getTop() + this.d;
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        view.performClick();
        return this.f32606b.onTouchEvent(motionEventObtain);
    }
}
