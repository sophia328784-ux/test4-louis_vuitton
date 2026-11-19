package androidx.media3.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class PlayerControlViewLayoutManager {
    public boolean B;
    public boolean C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlayerControlView f18008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f18009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewGroup f18010c;
    public final ViewGroup d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ViewGroup f18011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ViewGroup f18012f;
    public final ViewGroup g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ViewGroup f18013h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ViewGroup f18014i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ViewGroup f18015j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f18016k;
    public final View l;
    public final AnimatorSet m;
    public final AnimatorSet n;
    public final AnimatorSet o;
    public final AnimatorSet p;
    public final AnimatorSet q;
    public final ValueAnimator r;
    public final ValueAnimator s;
    public final d t;
    public final d u;
    public final d v = new d(this, 4);
    public final d w = new d(this, 5);
    public final d x = new d(this, 6);
    public final f y = new View.OnLayoutChangeListener() { // from class: androidx.media3.ui.f
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            int paddingRight;
            int height;
            int paddingBottom;
            int height2;
            PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f18087b;
            PlayerControlView playerControlView = playerControlViewLayoutManager.f18008a;
            int width = (playerControlView.getWidth() - playerControlView.getPaddingLeft()) - playerControlView.getPaddingRight();
            int height3 = (playerControlView.getHeight() - playerControlView.getPaddingBottom()) - playerControlView.getPaddingTop();
            ViewGroup viewGroup = playerControlViewLayoutManager.d;
            int iC = PlayerControlViewLayoutManager.c(viewGroup);
            if (viewGroup != null) {
                paddingRight = viewGroup.getPaddingRight() + viewGroup.getPaddingLeft();
            } else {
                paddingRight = 0;
            }
            int i10 = iC - paddingRight;
            if (viewGroup == null) {
                height = 0;
            } else {
                height = viewGroup.getHeight();
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    height += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                }
            }
            if (viewGroup != null) {
                paddingBottom = viewGroup.getPaddingBottom() + viewGroup.getPaddingTop();
            } else {
                paddingBottom = 0;
            }
            int i11 = height - paddingBottom;
            int iMax = Math.max(i10, PlayerControlViewLayoutManager.c(playerControlViewLayoutManager.f18015j) + PlayerControlViewLayoutManager.c(playerControlViewLayoutManager.l));
            ViewGroup viewGroup2 = playerControlViewLayoutManager.f18011e;
            if (viewGroup2 == null) {
                height2 = 0;
            } else {
                height2 = viewGroup2.getHeight();
                ViewGroup.LayoutParams layoutParams2 = viewGroup2.getLayoutParams();
                if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                    height2 += marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                }
            }
            int i12 = 2;
            int i13 = (height2 * 2) + i11;
            int i14 = 1;
            boolean z = width <= iMax || height3 <= i13;
            if (playerControlViewLayoutManager.B != z) {
                playerControlViewLayoutManager.B = z;
                view.post(new d(playerControlViewLayoutManager, i14));
            }
            boolean z2 = i4 - i2 != i8 - i6;
            if (playerControlViewLayoutManager.B || !z2) {
                return;
            }
            view.post(new d(playerControlViewLayoutManager, i12));
        }
    };
    public boolean D = true;
    public int A = 0;
    public final ArrayList z = new ArrayList();

    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.media3.ui.f] */
    public PlayerControlViewLayoutManager(final PlayerControlView playerControlView) {
        this.f18008a = playerControlView;
        final int i2 = 0;
        this.t = new d(this, i2);
        final int i3 = 3;
        this.u = new d(this, i3);
        final int i4 = 1;
        this.f18010c = (ViewGroup) playerControlView.findViewById(R.id.exo_top_controls);
        this.f18009b = playerControlView.findViewById(R.id.exo_controls_background);
        this.d = (ViewGroup) playerControlView.findViewById(R.id.exo_center_controls);
        this.f18012f = (ViewGroup) playerControlView.findViewById(R.id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) playerControlView.findViewById(R.id.exo_bottom_bar);
        this.f18011e = viewGroup;
        this.f18015j = (ViewGroup) playerControlView.findViewById(R.id.exo_time);
        View viewFindViewById = playerControlView.findViewById(R.id.exo_progress);
        this.f18016k = viewFindViewById;
        this.g = (ViewGroup) playerControlView.findViewById(R.id.exo_basic_controls);
        this.f18013h = (ViewGroup) playerControlView.findViewById(R.id.exo_extra_controls);
        this.f18014i = (ViewGroup) playerControlView.findViewById(R.id.exo_extra_controls_scroll_view);
        View viewFindViewById2 = playerControlView.findViewById(R.id.exo_overflow_show);
        this.l = viewFindViewById2;
        View viewFindViewById3 = playerControlView.findViewById(R.id.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener(this) { // from class: androidx.media3.ui.g

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PlayerControlViewLayoutManager f18089c;

                {
                    this.f18089c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i5 = i2;
                    PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f18089c;
                    switch (i5) {
                        case 0:
                            Callback.n(view);
                            try {
                                playerControlViewLayoutManager.g();
                                if (view.getId() == R.id.exo_overflow_show) {
                                    playerControlViewLayoutManager.r.start();
                                } else if (view.getId() == R.id.exo_overflow_hide) {
                                    playerControlViewLayoutManager.s.start();
                                }
                                return;
                            } finally {
                                Callback.o();
                            }
                        default:
                            Callback.n(view);
                            try {
                                playerControlViewLayoutManager.g();
                                if (view.getId() == R.id.exo_overflow_show) {
                                    playerControlViewLayoutManager.r.start();
                                } else if (view.getId() == R.id.exo_overflow_hide) {
                                    playerControlViewLayoutManager.s.start();
                                }
                                return;
                            } finally {
                                Callback.o();
                            }
                    }
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener(this) { // from class: androidx.media3.ui.g

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PlayerControlViewLayoutManager f18089c;

                {
                    this.f18089c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i5 = i4;
                    PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f18089c;
                    switch (i5) {
                        case 0:
                            Callback.n(view);
                            try {
                                playerControlViewLayoutManager.g();
                                if (view.getId() == R.id.exo_overflow_show) {
                                    playerControlViewLayoutManager.r.start();
                                } else if (view.getId() == R.id.exo_overflow_hide) {
                                    playerControlViewLayoutManager.s.start();
                                }
                                return;
                            } finally {
                                Callback.o();
                            }
                        default:
                            Callback.n(view);
                            try {
                                playerControlViewLayoutManager.g();
                                if (view.getId() == R.id.exo_overflow_show) {
                                    playerControlViewLayoutManager.r.start();
                                } else if (view.getId() == R.id.exo_overflow_hide) {
                                    playerControlViewLayoutManager.s.start();
                                }
                                return;
                            } finally {
                                Callback.o();
                            }
                    }
                }
            });
        }
        final int i5 = 2;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.media3.ui.e

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayerControlViewLayoutManager f18086b;

            {
                this.f18086b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i6 = i2;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f18086b;
                switch (i6) {
                    case 0:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = playerControlViewLayoutManager.f18009b;
                        if (view != null) {
                            view.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup2 = playerControlViewLayoutManager.f18010c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f18012f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                        }
                        break;
                    case 1:
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = playerControlViewLayoutManager.f18009b;
                        if (view2 != null) {
                            view2.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup5 = playerControlViewLayoutManager.f18010c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = playerControlViewLayoutManager.d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup7 = playerControlViewLayoutManager.f18012f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(fFloatValue2);
                        }
                        break;
                    case 2:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                }
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                View view = playerControlViewLayoutManager.f18009b;
                if (view != null) {
                    view.setVisibility(4);
                }
                ViewGroup viewGroup2 = playerControlViewLayoutManager.f18010c;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                }
                ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(4);
                }
                ViewGroup viewGroup4 = playerControlViewLayoutManager.f18012f;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                View view = playerControlViewLayoutManager.f18016k;
                if (!(view instanceof DefaultTimeBar) || playerControlViewLayoutManager.B) {
                    return;
                }
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                ValueAnimator valueAnimator = defaultTimeBar.F;
                if (valueAnimator.isStarted()) {
                    valueAnimator.cancel();
                }
                valueAnimator.setFloatValues(defaultTimeBar.G, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                valueAnimator.setDuration(250L);
                valueAnimator.start();
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.media3.ui.e

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayerControlViewLayoutManager f18086b;

            {
                this.f18086b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i6 = i4;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f18086b;
                switch (i6) {
                    case 0:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = playerControlViewLayoutManager.f18009b;
                        if (view != null) {
                            view.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup2 = playerControlViewLayoutManager.f18010c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f18012f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                        }
                        break;
                    case 1:
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = playerControlViewLayoutManager.f18009b;
                        if (view2 != null) {
                            view2.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup5 = playerControlViewLayoutManager.f18010c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = playerControlViewLayoutManager.d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup7 = playerControlViewLayoutManager.f18012f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(fFloatValue2);
                        }
                        break;
                    case 2:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                }
            }
        });
        valueAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                View view = playerControlViewLayoutManager.f18009b;
                if (view != null) {
                    view.setVisibility(0);
                }
                ViewGroup viewGroup2 = playerControlViewLayoutManager.f18010c;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(0);
                }
                ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(0);
                }
                ViewGroup viewGroup4 = playerControlViewLayoutManager.f18012f;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(playerControlViewLayoutManager.B ? 0 : 4);
                }
                View view2 = playerControlViewLayoutManager.f18016k;
                if (!(view2 instanceof DefaultTimeBar) || playerControlViewLayoutManager.B) {
                    return;
                }
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view2;
                ValueAnimator valueAnimator = defaultTimeBar.F;
                if (valueAnimator.isStarted()) {
                    valueAnimator.cancel();
                }
                defaultTimeBar.H = false;
                valueAnimator.setFloatValues(defaultTimeBar.G, 1.0f);
                valueAnimator.setDuration(250L);
                valueAnimator.start();
            }
        });
        Resources resources = playerControlView.getResources();
        float dimension = resources.getDimension(R.dimen.exo_styled_bottom_bar_height) - resources.getDimension(R.dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(R.dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.m = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                playerControlViewLayoutManager.i(1);
                if (playerControlViewLayoutManager.C) {
                    playerControlView.post(playerControlViewLayoutManager.t);
                    playerControlViewLayoutManager.C = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(3);
            }
        });
        animatorSet.play(valueAnimatorOfFloat).with(d(viewFindViewById, Call.Parameters.DEFAULT_CAMERA_ZOOM, dimension)).with(d(viewGroup, Call.Parameters.DEFAULT_CAMERA_ZOOM, dimension));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.n = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                playerControlViewLayoutManager.i(2);
                if (playerControlViewLayoutManager.C) {
                    playerControlView.post(playerControlViewLayoutManager.t);
                    playerControlViewLayoutManager.C = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(3);
            }
        });
        animatorSet2.play(d(viewFindViewById, dimension, dimension2)).with(d(viewGroup, dimension, dimension2));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.o = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                playerControlViewLayoutManager.i(2);
                if (playerControlViewLayoutManager.C) {
                    playerControlView.post(playerControlViewLayoutManager.t);
                    playerControlViewLayoutManager.C = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(3);
            }
        });
        animatorSet3.play(valueAnimatorOfFloat).with(d(viewFindViewById, Call.Parameters.DEFAULT_CAMERA_ZOOM, dimension2)).with(d(viewGroup, Call.Parameters.DEFAULT_CAMERA_ZOOM, dimension2));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.p = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager.this.i(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(4);
            }
        });
        animatorSet4.play(valueAnimatorOfFloat2).with(d(viewFindViewById, dimension, Call.Parameters.DEFAULT_CAMERA_ZOOM)).with(d(viewGroup, dimension, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.q = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager.this.i(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(4);
            }
        });
        animatorSet5.play(valueAnimatorOfFloat2).with(d(viewFindViewById, dimension2, Call.Parameters.DEFAULT_CAMERA_ZOOM)).with(d(viewGroup, dimension2, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        this.r = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.media3.ui.e

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayerControlViewLayoutManager f18086b;

            {
                this.f18086b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i6 = i5;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f18086b;
                switch (i6) {
                    case 0:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = playerControlViewLayoutManager.f18009b;
                        if (view != null) {
                            view.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup2 = playerControlViewLayoutManager.f18010c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f18012f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                        }
                        break;
                    case 1:
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = playerControlViewLayoutManager.f18009b;
                        if (view2 != null) {
                            view2.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup5 = playerControlViewLayoutManager.f18010c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = playerControlViewLayoutManager.d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup7 = playerControlViewLayoutManager.f18012f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(fFloatValue2);
                        }
                        break;
                    case 2:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                }
            }
        });
        valueAnimatorOfFloat3.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ViewGroup viewGroup2 = PlayerControlViewLayoutManager.this.g;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                ViewGroup viewGroup2 = PlayerControlViewLayoutManager.this.f18014i;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(0);
                    viewGroup2.setTranslationX(viewGroup2.getWidth());
                    viewGroup2.scrollTo(viewGroup2.getWidth(), 0);
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.s = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.media3.ui.e

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayerControlViewLayoutManager f18086b;

            {
                this.f18086b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i6 = i3;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f18086b;
                switch (i6) {
                    case 0:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = playerControlViewLayoutManager.f18009b;
                        if (view != null) {
                            view.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup2 = playerControlViewLayoutManager.f18010c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f18012f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                        }
                        break;
                    case 1:
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = playerControlViewLayoutManager.f18009b;
                        if (view2 != null) {
                            view2.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup5 = playerControlViewLayoutManager.f18010c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = playerControlViewLayoutManager.d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup7 = playerControlViewLayoutManager.f18012f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(fFloatValue2);
                        }
                        break;
                    case 2:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                }
            }
        });
        valueAnimatorOfFloat4.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ViewGroup viewGroup2 = PlayerControlViewLayoutManager.this.f18014i;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                ViewGroup viewGroup2 = PlayerControlViewLayoutManager.this.g;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(0);
                }
            }
        });
    }

    public static int c(View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return width;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + width;
    }

    public static ObjectAnimator d(View view, float f2, float f3) {
        return ObjectAnimator.ofFloat(view, "translationY", f2, f3);
    }

    public static boolean j(View view) {
        int id = view.getId();
        return id == R.id.exo_bottom_bar || id == R.id.exo_media_route_button_placeholder || id == R.id.exo_prev || id == R.id.exo_next || id == R.id.exo_rew || id == R.id.exo_rew_with_amount || id == R.id.exo_ffwd || id == R.id.exo_ffwd_with_amount;
    }

    public final void a(float f2) {
        ViewGroup viewGroup = this.f18014i;
        if (viewGroup != null) {
            viewGroup.setTranslationX((int) ((1.0f - f2) * viewGroup.getWidth()));
        }
        ViewGroup viewGroup2 = this.f18015j;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f2);
        }
        ViewGroup viewGroup3 = this.g;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f2);
        }
    }

    public final boolean b(View view) {
        return view != null && this.z.contains(view);
    }

    public final void e(long j2, Runnable runnable) {
        if (j2 >= 0) {
            this.f18008a.postDelayed(runnable, j2);
        }
    }

    public final void f() {
        d dVar = this.x;
        PlayerControlView playerControlView = this.f18008a;
        playerControlView.removeCallbacks(dVar);
        playerControlView.removeCallbacks(this.u);
        playerControlView.removeCallbacks(this.w);
        playerControlView.removeCallbacks(this.v);
    }

    public final void g() {
        if (this.A == 3) {
            return;
        }
        f();
        int showTimeoutMs = this.f18008a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.D) {
                e(showTimeoutMs, this.x);
            } else if (this.A == 1) {
                e(2000L, this.v);
            } else {
                e(showTimeoutMs, this.w);
            }
        }
    }

    public final void h(View view, boolean z) {
        if (view == null) {
            return;
        }
        ArrayList arrayList = this.z;
        if (!z) {
            view.setVisibility(8);
            arrayList.remove(view);
            return;
        }
        if (this.B && j(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        arrayList.add(view);
    }

    public final void i(int i2) {
        int i3 = this.A;
        this.A = i2;
        PlayerControlView playerControlView = this.f18008a;
        if (i2 == 2) {
            playerControlView.setVisibility(8);
        } else if (i3 == 2) {
            playerControlView.setVisibility(0);
        }
        if (i3 != i2) {
            Iterator it = playerControlView.l.iterator();
            while (it.hasNext()) {
                ((PlayerControlView.VisibilityListener) it.next()).e(playerControlView.getVisibility());
            }
        }
    }

    public final void k() {
        if (!this.D) {
            i(0);
            g();
            return;
        }
        int i2 = this.A;
        if (i2 == 1) {
            this.p.start();
        } else if (i2 == 2) {
            this.q.start();
        } else if (i2 == 3) {
            this.C = true;
        } else if (i2 == 4) {
            return;
        }
        g();
    }
}
