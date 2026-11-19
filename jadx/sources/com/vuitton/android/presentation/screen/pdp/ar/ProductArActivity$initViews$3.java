package com.vuitton.android.presentation.screen.pdp.ar;

import android.util.TypedValue;
import com.vuitton.android.presentation.ar.gesture.BaseGesture;
import com.vuitton.android.presentation.ar.gesture.PinchGesture;
import com.vuitton.android.presentation.ar.gesture.PinchGestureRecognizer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3", "Lcom/vuitton/android/presentation/ar/gesture/PinchGestureRecognizer$OnGestureStartedListener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductArActivity$initViews$3 implements PinchGestureRecognizer.OnGestureStartedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ProductArActivity f61312a;

    public ProductArActivity$initViews$3(ProductArActivity productArActivity) {
        this.f61312a = productArActivity;
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGestureRecognizer.OnGestureStartedListener
    public final void a(BaseGesture baseGesture) {
        PinchGesture pinchGesture = (PinchGesture) baseGesture;
        b(pinchGesture);
        pinchGesture.f50593e = new PinchGesture.OnGestureEventListener() { // from class: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$initViews$3$onGestureStarted$1
            @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture.OnGestureEventListener
            public final void a(BaseGesture baseGesture2) {
                PinchGesture pinchGesture2 = (PinchGesture) baseGesture2;
                pinchGesture2.getClass();
                this.f61313a.b(pinchGesture2);
            }

            @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture.OnGestureEventListener
            public final void b(BaseGesture baseGesture2) {
                PinchGesture pinchGesture2 = (PinchGesture) baseGesture2;
                pinchGesture2.getClass();
                this.f61313a.b(pinchGesture2);
            }
        };
    }

    public final void b(PinchGesture pinchGesture) {
        pinchGesture.getClass();
        this.f61312a.v.a(Float.valueOf((pinchGesture.m / TypedValue.applyDimension(4, 1.0f, pinchGesture.f50590a.f50600a)) + 1.0f));
    }
}
