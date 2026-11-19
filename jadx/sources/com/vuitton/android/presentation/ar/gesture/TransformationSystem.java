package com.vuitton.android.presentation.ar.gesture;

import android.util.DisplayMetrics;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;", "", "Landroid/util/DisplayMetrics;", "displayMetrics", "<init>", "(Landroid/util/DisplayMetrics;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TransformationSystem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f50607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DragGestureRecognizer f50608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PinchGestureRecognizer f50609c;
    public final TwistGestureRecognizer d;

    public TransformationSystem(DisplayMetrics displayMetrics) {
        displayMetrics.getClass();
        GesturePointersUtility gesturePointersUtility = new GesturePointersUtility(displayMetrics);
        ArrayList arrayList = new ArrayList();
        this.f50607a = arrayList;
        DragGestureRecognizer dragGestureRecognizer = new DragGestureRecognizer(gesturePointersUtility);
        arrayList.add(dragGestureRecognizer);
        this.f50608b = dragGestureRecognizer;
        PinchGestureRecognizer pinchGestureRecognizer = new PinchGestureRecognizer(gesturePointersUtility);
        arrayList.add(pinchGestureRecognizer);
        this.f50609c = pinchGestureRecognizer;
        TwistGestureRecognizer twistGestureRecognizer = new TwistGestureRecognizer(gesturePointersUtility);
        arrayList.add(twistGestureRecognizer);
        this.d = twistGestureRecognizer;
    }
}
