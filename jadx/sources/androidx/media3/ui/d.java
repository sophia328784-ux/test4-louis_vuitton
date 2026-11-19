package androidx.media3.ui;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.vuitton.android.R;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlayerControlViewLayoutManager f18084c;

    public /* synthetic */ d(PlayerControlViewLayoutManager playerControlViewLayoutManager, int i2) {
        this.f18083b = i2;
        this.f18084c = playerControlViewLayoutManager;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5 A[LOOP:3: B:37:0x00af->B:39:0x00b5, LOOP_END] */
    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f18083b;
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f18084c;
        switch (i2) {
            case 0:
                playerControlViewLayoutManager.k();
                break;
            case 1:
                View view = playerControlViewLayoutManager.f18016k;
                ViewGroup viewGroup = playerControlViewLayoutManager.f18012f;
                if (viewGroup != null) {
                    viewGroup.setVisibility(playerControlViewLayoutManager.B ? 0 : 4);
                }
                if (view != null) {
                    int dimensionPixelSize = playerControlViewLayoutManager.f18008a.getResources().getDimensionPixelSize(R.dimen.exo_styled_progress_margin_bottom);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    if (marginLayoutParams != null) {
                        if (playerControlViewLayoutManager.B) {
                            dimensionPixelSize = 0;
                        }
                        marginLayoutParams.bottomMargin = dimensionPixelSize;
                        view.setLayoutParams(marginLayoutParams);
                    }
                    if (view instanceof DefaultTimeBar) {
                        DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                        Rect rect = defaultTimeBar.f17970b;
                        ValueAnimator valueAnimator = defaultTimeBar.F;
                        if (playerControlViewLayoutManager.B) {
                            if (valueAnimator.isStarted()) {
                                valueAnimator.cancel();
                            }
                            defaultTimeBar.H = true;
                            defaultTimeBar.G = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            defaultTimeBar.invalidate(rect);
                        } else {
                            int i3 = playerControlViewLayoutManager.A;
                            if (i3 == 1) {
                                if (valueAnimator.isStarted()) {
                                    valueAnimator.cancel();
                                }
                                defaultTimeBar.H = false;
                                defaultTimeBar.G = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                defaultTimeBar.invalidate(rect);
                            } else if (i3 != 3) {
                                if (valueAnimator.isStarted()) {
                                    valueAnimator.cancel();
                                }
                                defaultTimeBar.H = false;
                                defaultTimeBar.G = 1.0f;
                                defaultTimeBar.invalidate(rect);
                            }
                        }
                    }
                }
                for (View view2 : playerControlViewLayoutManager.z) {
                    view2.setVisibility((playerControlViewLayoutManager.B && PlayerControlViewLayoutManager.j(view2)) ? 4 : 0);
                }
                break;
            case 2:
                ValueAnimator valueAnimator2 = playerControlViewLayoutManager.s;
                View view3 = playerControlViewLayoutManager.l;
                PlayerControlView playerControlView = playerControlViewLayoutManager.f18008a;
                ViewGroup viewGroup2 = playerControlViewLayoutManager.f18013h;
                ViewGroup viewGroup3 = playerControlViewLayoutManager.g;
                if (viewGroup3 != null && viewGroup2 != null) {
                    int width = (playerControlView.getWidth() - playerControlView.getPaddingLeft()) - playerControlView.getPaddingRight();
                    while (viewGroup2.getChildCount() > 1) {
                        int childCount = viewGroup2.getChildCount() - 2;
                        View childAt = viewGroup2.getChildAt(childCount);
                        viewGroup2.removeViewAt(childCount);
                        viewGroup3.addView(childAt, 0);
                    }
                    if (view3 != null) {
                        view3.setVisibility(8);
                    }
                    int iC = PlayerControlViewLayoutManager.c(playerControlViewLayoutManager.f18015j);
                    int childCount2 = viewGroup3.getChildCount() - 1;
                    for (int i4 = 0; i4 < childCount2; i4++) {
                        iC += PlayerControlViewLayoutManager.c(viewGroup3.getChildAt(i4));
                    }
                    if (iC > width) {
                        if (view3 != null) {
                            view3.setVisibility(0);
                            iC += PlayerControlViewLayoutManager.c(view3);
                        }
                        ArrayList arrayList = new ArrayList();
                        for (int i5 = 0; i5 < childCount2; i5++) {
                            View childAt2 = viewGroup3.getChildAt(i5);
                            iC -= PlayerControlViewLayoutManager.c(childAt2);
                            arrayList.add(childAt2);
                            if (iC <= width) {
                                if (!arrayList.isEmpty()) {
                                    viewGroup3.removeViews(0, arrayList.size());
                                    for (int i6 = 0; i6 < arrayList.size(); i6++) {
                                        viewGroup2.addView((View) arrayList.get(i6), viewGroup2.getChildCount() - 1);
                                    }
                                }
                            }
                            break;
                        }
                        if (!arrayList.isEmpty()) {
                            viewGroup3.removeViews(0, arrayList.size());
                            while (i6 < arrayList.size()) {
                                viewGroup2.addView((View) arrayList.get(i6), viewGroup2.getChildCount() - 1);
                            }
                        }
                        break;
                    } else {
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f18014i;
                        if (viewGroup4 != null && viewGroup4.getVisibility() == 0 && !valueAnimator2.isStarted()) {
                            playerControlViewLayoutManager.r.cancel();
                            valueAnimator2.start();
                            break;
                        }
                    }
                }
                break;
            case 3:
                playerControlViewLayoutManager.o.start();
                break;
            case 4:
                playerControlViewLayoutManager.n.start();
                break;
            case 5:
                playerControlViewLayoutManager.m.start();
                playerControlViewLayoutManager.e(2000L, playerControlViewLayoutManager.v);
                break;
            default:
                playerControlViewLayoutManager.i(2);
                break;
        }
    }
}
