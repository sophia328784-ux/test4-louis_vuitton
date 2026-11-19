package com.vuitton.android.presentation.ar.gesture;

import android.view.MotionEvent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;", "Lcom/vuitton/android/presentation/ar/gesture/DragGesture;", "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;", "gesturePointersUtility", "<init>", "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V", "OnGestureStartedListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DragGestureRecognizer extends BaseGestureRecognizer<DragGesture> {

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer$OnGestureStartedListener;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer$OnGestureStartedListener;", "Lcom/vuitton/android/presentation/ar/gesture/DragGesture;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnGestureStartedListener extends BaseGestureRecognizer.OnGestureStartedListener<DragGesture> {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureRecognizer(GesturePointersUtility gesturePointersUtility) {
        super(gesturePointersUtility);
        gesturePointersUtility.getClass();
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGestureRecognizer
    public final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        if (actionMasked == 0 || actionMasked == 5) {
            GesturePointersUtility gesturePointersUtility = this.f50594a;
            if (gesturePointersUtility.a(pointerId)) {
                return;
            }
            this.f50595b.add(new DragGesture(gesturePointersUtility, motionEvent));
        }
    }
}
