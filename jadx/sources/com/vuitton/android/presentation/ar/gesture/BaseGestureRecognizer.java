package com.vuitton.android.presentation.ar.gesture;

import android.view.MotionEvent;
import com.vuitton.android.presentation.ar.gesture.BaseGesture;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0003:\u0001\bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;", "T", "", "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;", "gesturePointersUtility", "<init>", "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V", "OnGestureStartedListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BaseGestureRecognizer<T extends BaseGesture<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GesturePointersUtility f50594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f50595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f50596c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\u000e\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00010\u00012\u00020\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer$OnGestureStartedListener;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;", "T", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnGestureStartedListener<T extends BaseGesture<T>> {
        void a(BaseGesture baseGesture);
    }

    public BaseGestureRecognizer(GesturePointersUtility gesturePointersUtility) {
        gesturePointersUtility.getClass();
        this.f50594a = gesturePointersUtility;
        this.f50595b = new ArrayList();
        this.f50596c = new ArrayList();
    }

    public abstract void a(MotionEvent motionEvent);
}
