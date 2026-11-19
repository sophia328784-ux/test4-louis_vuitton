package defpackage;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.search.SearchView;
import com.sightcall.mediacapture.presenter.views.camera.CameraFragment;
import com.vuitton.android.presentation.ar.arcore.ArModelsKt;
import com.vuitton.android.presentation.ar.arcore.TouchEvent;
import com.vuitton.android.presentation.ar.gesture.BaseGesture;
import com.vuitton.android.presentation.ar.gesture.BaseGestureRecognizer;
import com.vuitton.android.presentation.ar.gesture.TransformationSystem;
import com.vuitton.android.presentation.databinding.ActivityProductDetailArBinding;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment;
import com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d5 implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68440c;

    public /* synthetic */ d5(Object obj, int i2) {
        this.f68439b = i2;
        this.f68440c = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        BaseGesture.OnGestureEventListener onGestureEventListener;
        int i2 = this.f68439b;
        Object obj = this.f68440c;
        switch (i2) {
            case 0:
                RecyclerView recyclerView = (RecyclerView) obj;
                AirportListFragment.Companion companion = AirportListFragment.K;
                int childCount = recyclerView.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = recyclerView.getChildAt(i3);
                    Rect rect = new Rect();
                    childAt.getHitRect(rect);
                    if (rect.contains((int) (motionEvent.getX() + recyclerView.getScrollX()), (int) (motionEvent.getY() + recyclerView.getScrollY()))) {
                        childAt.dispatchTouchEvent(motionEvent);
                    }
                }
                return false;
            case 1:
                return CameraFragment.enableCameraZoom$lambda$0$0$0((ScaleGestureDetector) obj, view, motionEvent);
            case 2:
                ProductArActivity productArActivity = (ProductArActivity) obj;
                ProductArActivity.Companion companion2 = ProductArActivity.D;
                if (motionEvent.getAction() == 1 && motionEvent.getEventTime() - motionEvent.getDownTime() < 200) {
                    ActivityProductDetailArBinding activityProductDetailArBinding = productArActivity.A;
                    if (activityProductDetailArBinding == null) {
                        Intrinsics.h("binding");
                        throw null;
                    }
                    productArActivity.u.a(new Pair(ArModelsKt.a(activityProductDetailArBinding.d), new TouchEvent.Stop(motionEvent.getX(), motionEvent.getY())));
                }
                TransformationSystem transformationSystem = productArActivity.z;
                if (transformationSystem == null) {
                    Intrinsics.h("transformationSystem");
                    throw null;
                }
                for (BaseGestureRecognizer baseGestureRecognizer : transformationSystem.f50607a) {
                    baseGestureRecognizer.getClass();
                    baseGestureRecognizer.a(motionEvent);
                    ArrayList arrayList = baseGestureRecognizer.f50595b;
                    Iterator it = arrayList.iterator();
                    it.getClass();
                    while (it.hasNext()) {
                        Object next = it.next();
                        next.getClass();
                        BaseGesture baseGesture = (BaseGesture) next;
                        if (baseGesture.f50591b || !baseGesture.a(motionEvent)) {
                            baseGesture.f50592c = false;
                            if (baseGesture.f50591b && baseGesture.f(motionEvent) && (onGestureEventListener = baseGesture.f50593e) != null) {
                                onGestureEventListener.b(baseGesture.c());
                            }
                        } else {
                            baseGesture.f50591b = true;
                            baseGesture.f50592c = true;
                            baseGesture.e(motionEvent);
                        }
                        if (baseGesture.f50592c) {
                            Iterator it2 = baseGestureRecognizer.f50596c.iterator();
                            it2.getClass();
                            while (it2.hasNext()) {
                                Object next2 = it2.next();
                                next2.getClass();
                                ((BaseGestureRecognizer.OnGestureStartedListener) next2).a(baseGesture);
                            }
                        }
                    }
                    arrayList.removeIf(new b4(new u5(17), 4));
                }
                return true;
            default:
                SearchView searchView = (SearchView) obj;
                int i4 = SearchView.F;
                if (searchView.h()) {
                    searchView.f();
                }
                return false;
        }
    }
}
