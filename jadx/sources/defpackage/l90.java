package defpackage;

import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.TextView;
import com.google.android.filament.utils.Float3;
import com.google.android.filament.utils.Mat4;
import com.google.android.filament.utils.MatrixKt;
import com.google.android.filament.utils.Quaternion;
import com.sightcall.mediacapture.databinding.FragmentPreviewBinding;
import com.sightcall.mediacapture.presenter.views.preview.PreviewFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.LetterListAdapter;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper;
import java.util.concurrent.Executors;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l90 implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f75981c;
    public final /* synthetic */ Object d;

    public /* synthetic */ l90(Object obj, Object obj2, int i2) {
        this.f75980b = i2;
        this.f75981c = obj;
        this.d = obj2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i2 = this.f75980b;
        Object obj = this.d;
        Object obj2 = this.f75981c;
        switch (i2) {
            case 0:
                final LetterListAdapter letterListAdapter = (LetterListAdapter) obj;
                TextView textView = ((LetterListAdapter.LetterViewHolder) obj2).f56391b;
                final char cCharAt = textView.getText().toString().charAt(0);
                Character ch = letterListAdapter.f56389e;
                if (ch == null || cCharAt != ch.charValue()) {
                    textView.post(new Runnable() { // from class: m90
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i3 = LetterListAdapter.LetterViewHolder.f56390c;
                            char c2 = cCharAt;
                            Character chValueOf = Character.valueOf(c2);
                            LetterListAdapter letterListAdapter2 = letterListAdapter;
                            letterListAdapter2.f56389e = chValueOf;
                            letterListAdapter2.notifyDataSetChanged();
                            letterListAdapter2.f56388c.e(c2);
                        }
                    });
                }
                return true;
            case 1:
                Lv3dViewerHelper lv3dViewerHelper = (Lv3dViewerHelper) obj2;
                SurfaceView surfaceView = (SurfaceView) obj;
                if (lv3dViewerHelper.Z) {
                    int actionMasked = motionEvent.getActionMasked();
                    int i3 = 2;
                    if (actionMasked == 0) {
                        lv3dViewerHelper.r.f58521i.b((int) motionEvent.getX(), surfaceView.getHeight() - ((int) motionEvent.getY()), Executors.newSingleThreadExecutor(), new y81(lv3dViewerHelper, surfaceView, motionEvent, 11));
                    } else if (actionMasked != 2) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6 && motionEvent.getPointerCount() == 2) {
                                lv3dViewerHelper.N = motionEvent.getX(motionEvent.getActionIndex() == 0 ? 1 : 0);
                                lv3dViewerHelper.O = motionEvent.getY(motionEvent.getActionIndex() == 0 ? 1 : 0);
                                lv3dViewerHelper.Q = lv3dViewerHelper.R;
                            }
                        } else if (motionEvent.getPointerCount() == 2) {
                            lv3dViewerHelper.S = Lv3dViewerHelper.f(motionEvent);
                            lv3dViewerHelper.U = lv3dViewerHelper.T;
                        }
                    } else if (motionEvent.getPointerCount() == 1 && lv3dViewerHelper.a0) {
                        if (!lv3dViewerHelper.j0) {
                            lv3dViewerHelper.j0 = true;
                            lv3dViewerHelper.A.mo47invoke();
                        }
                        float x = motionEvent.getX() - lv3dViewerHelper.N;
                        float f2 = (-(motionEvent.getY() - lv3dViewerHelper.O)) * 0.16f;
                        Float3 float3 = lv3dViewerHelper.Q;
                        lv3dViewerHelper.R = new Float3(float3.f28639a + f2, float3.f28640b + ((-x) * 0.24f), float3.f28641c);
                    } else if (motionEvent.getPointerCount() == 2) {
                        if (!lv3dViewerHelper.i0) {
                            lv3dViewerHelper.i0 = true;
                            lv3dViewerHelper.B.mo47invoke();
                        }
                        if (!lv3dViewerHelper.a0) {
                            lv3dViewerHelper.Y = false;
                            lv3dViewerHelper.x.invoke(Boolean.TRUE);
                            lv3dViewerHelper.a0 = true;
                        }
                        float fC = RangesKt.c(lv3dViewerHelper.U * (Lv3dViewerHelper.f(motionEvent) / lv3dViewerHelper.S), lv3dViewerHelper.W, lv3dViewerHelper.X);
                        lv3dViewerHelper.T = fC;
                        if (lv3dViewerHelper.V != fC) {
                            lv3dViewerHelper.d(lv3dViewerHelper.E, MatrixKt.a(new Float3(fC, fC, fC)));
                            lv3dViewerHelper.V = lv3dViewerHelper.T;
                        }
                    }
                    if (CollectionsKt.P(1, 3).contains(Integer.valueOf(motionEvent.getActionMasked()))) {
                        lv3dViewerHelper.N = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        lv3dViewerHelper.O = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        lv3dViewerHelper.Q = lv3dViewerHelper.R;
                        lv3dViewerHelper.S = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        lv3dViewerHelper.Y = true;
                        lv3dViewerHelper.a0 = false;
                        if (!lv3dViewerHelper.L.isRunning()) {
                            lv3dViewerHelper.h(true);
                        }
                        if (lv3dViewerHelper.i()) {
                            lv3dViewerHelper.h(true);
                            Mat4 mat4B = lv3dViewerHelper.b(lv3dViewerHelper.C);
                            ValueAnimator valueAnimator = lv3dViewerHelper.K;
                            valueAnimator.setDuration(500L);
                            valueAnimator.setInterpolator(new LinearInterpolator());
                            Quaternion quaternionA = mat4B.a();
                            valueAnimator.setObjectValues(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), Float.valueOf(1.0f));
                            valueAnimator.addUpdateListener(new b7(lv3dViewerHelper, quaternionA, i3));
                            valueAnimator.start();
                            lv3dViewerHelper.J.start();
                        }
                    }
                }
                return true;
            default:
                return PreviewFragment.prepareForVideo$lambda$0$0((PreviewFragment) obj2, (FragmentPreviewBinding) obj, view, motionEvent);
        }
    }
}
