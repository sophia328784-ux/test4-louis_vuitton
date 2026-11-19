package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.dynatrace.android.callback.Callback;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.vuitton.android.R;
import defpackage.lo0;
import java.util.Formatter;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class PlayerControlView extends FrameLayout {
    public static final /* synthetic */ int T = 0;
    public final float A;
    public final String B;
    public final String C;
    public Player D;
    public ProgressUpdateListener E;
    public boolean F;
    public boolean G;
    public boolean H;
    public int I;
    public int J;
    public int K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public long Q;
    public long R;
    public long S;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f28380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f28381c;
    public final View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f28382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f28383f;
    public final View g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f28384h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImageView f28385i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f28386j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f28387k;
    public final TextView l;
    public final TimeBar m;
    public final StringBuilder n;
    public final Formatter o;
    public final lo0 p;
    public final lo0 q;
    public final Drawable r;
    public final Drawable s;
    public final Drawable t;
    public final String u;
    public final String v;
    public final String w;
    public final Drawable x;
    public final Drawable y;
    public final float z;

    public static final class Api21 {
        public static boolean a(View view) {
            return view.isAccessibilityFocused();
        }
    }

    public final class ComponentListener implements Player.Listener, TimeBar.OnScrubListener, View.OnClickListener {
        public ComponentListener() {
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public final void e(long j2) {
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.H = true;
            TextView textView = playerControlView.l;
            if (textView != null) {
                textView.setText(Util.c(playerControlView.n, playerControlView.o, j2));
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i2;
            PlayerControlView playerControlView = PlayerControlView.this;
            Callback.n(view);
            try {
                Player player = playerControlView.D;
                if (player == null) {
                    return;
                }
                if (playerControlView.d == view) {
                    player.q();
                } else if (playerControlView.f28381c == view) {
                    player.l();
                } else if (playerControlView.g == view) {
                    if (player.h() != 4) {
                        player.y();
                    }
                } else if (playerControlView.f28384h == view) {
                    player.z();
                } else if (playerControlView.f28382e == view) {
                    Util.d(player);
                } else if (playerControlView.f28383f == view) {
                    int i3 = Util.f28451a;
                    if (player.d()) {
                        player.pause();
                    }
                } else if (playerControlView.f28385i == view) {
                    int i4 = player.i();
                    int i5 = playerControlView.K;
                    for (int i6 = 1; i6 <= 2 && (i2 = (i4 + i6) % 3) != 0; i6++) {
                        if (i2 != 1) {
                            if (i2 == 2 && (i5 & 2) != 0) {
                                break;
                            }
                        } else {
                            if ((i5 & 1) != 0) {
                                break;
                            }
                        }
                    }
                    player.E();
                } else if (playerControlView.f28386j == view) {
                    player.w();
                    player.g();
                }
            } finally {
                Callback.o();
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public final void x(long j2) {
            PlayerControlView playerControlView = PlayerControlView.this;
            TextView textView = playerControlView.l;
            if (textView != null) {
                textView.setText(Util.c(playerControlView.n, playerControlView.o, j2));
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public final void z(long j2, boolean z) {
            Player player;
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.H = false;
            if (z || (player = playerControlView.D) == null) {
                return;
            }
            player.p();
            player.v();
            player.B();
            playerControlView.h();
        }
    }

    public interface ProgressUpdateListener {
        void a();
    }

    public interface VisibilityListener {
        void a();
    }

    static {
        ExoPlayerLibraryInfo.a("goog.exo.ui");
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [lo0] */
    /* JADX WARN: Type inference failed for: r4v2, types: [lo0] */
    public PlayerControlView(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2) {
        super(context, attributeSet, i2);
        this.I = 5000;
        final int i3 = 0;
        this.K = 0;
        this.J = 200;
        this.Q = -9223372036854775807L;
        final int i4 = 1;
        this.L = true;
        this.M = true;
        this.N = true;
        this.O = true;
        this.P = false;
        int resourceId = R.layout.exo_player_control_view;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.f28400c, i2, 0);
            try {
                this.I = typedArrayObtainStyledAttributes.getInt(32, this.I);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(6, R.layout.exo_player_control_view);
                this.K = typedArrayObtainStyledAttributes.getInt(19, this.K);
                this.L = typedArrayObtainStyledAttributes.getBoolean(29, this.L);
                this.M = typedArrayObtainStyledAttributes.getBoolean(26, this.M);
                this.N = typedArrayObtainStyledAttributes.getBoolean(28, this.N);
                this.O = typedArrayObtainStyledAttributes.getBoolean(27, this.O);
                this.P = typedArrayObtainStyledAttributes.getBoolean(30, this.P);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(38, this.J));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.f28380b = new CopyOnWriteArrayList();
        new Timeline.Period();
        new Timeline.Window();
        StringBuilder sb = new StringBuilder();
        this.n = sb;
        this.o = new Formatter(sb, Locale.getDefault());
        ComponentListener componentListener = new ComponentListener();
        this.p = new Runnable(this) { // from class: lo0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PlayerControlView f76066c;

            {
                this.f76066c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i5 = i3;
                PlayerControlView playerControlView = this.f76066c;
                switch (i5) {
                    case 0:
                        int i6 = PlayerControlView.T;
                        playerControlView.h();
                        break;
                    default:
                        playerControlView.b();
                        break;
                }
            }
        };
        this.q = new Runnable(this) { // from class: lo0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PlayerControlView f76066c;

            {
                this.f76066c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i5 = i4;
                PlayerControlView playerControlView = this.f76066c;
                switch (i5) {
                    case 0:
                        int i6 = PlayerControlView.T;
                        playerControlView.h();
                        break;
                    default:
                        playerControlView.b();
                        break;
                }
            }
        };
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        TimeBar timeBar = (TimeBar) findViewById(R.id.exo_progress);
        View viewFindViewById = findViewById(R.id.exo_progress_placeholder);
        if (timeBar != null) {
            this.m = timeBar;
        } else if (viewFindViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(R.id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.m = defaultTimeBar;
        } else {
            this.m = null;
        }
        this.l = (TextView) findViewById(R.id.exo_position);
        TimeBar timeBar2 = this.m;
        if (timeBar2 != null) {
            timeBar2.a(componentListener);
        }
        View viewFindViewById2 = findViewById(R.id.exo_play);
        this.f28382e = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(componentListener);
        }
        View viewFindViewById3 = findViewById(R.id.exo_pause);
        this.f28383f = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(componentListener);
        }
        View viewFindViewById4 = findViewById(R.id.exo_prev);
        this.f28381c = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(componentListener);
        }
        View viewFindViewById5 = findViewById(R.id.exo_next);
        this.d = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(componentListener);
        }
        View viewFindViewById6 = findViewById(R.id.exo_rew);
        this.f28384h = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(componentListener);
        }
        View viewFindViewById7 = findViewById(R.id.exo_ffwd);
        this.g = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(componentListener);
        }
        ImageView imageView = (ImageView) findViewById(R.id.exo_repeat_toggle);
        this.f28385i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(componentListener);
        }
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_shuffle);
        this.f28386j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(componentListener);
        }
        View viewFindViewById8 = findViewById(R.id.exo_vr);
        this.f28387k = viewFindViewById8;
        setShowVrButton(false);
        f(viewFindViewById8, false, false);
        Resources resources = context.getResources();
        this.z = resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.A = resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.r = Util.b(context, resources, R.drawable.exo_controls_repeat_off);
        this.s = Util.b(context, resources, R.drawable.exo_controls_repeat_one);
        this.t = Util.b(context, resources, R.drawable.exo_controls_repeat_all);
        this.x = Util.b(context, resources, R.drawable.exo_controls_shuffle_on);
        this.y = Util.b(context, resources, R.drawable.exo_controls_shuffle_off);
        this.u = resources.getString(R.string.exo_controls_repeat_off_description);
        this.v = resources.getString(R.string.exo_controls_repeat_one_description);
        this.w = resources.getString(R.string.exo_controls_repeat_all_description);
        this.B = resources.getString(R.string.exo_controls_shuffle_on_description);
        this.C = resources.getString(R.string.exo_controls_shuffle_off_description);
        this.R = -9223372036854775807L;
        this.S = -9223372036854775807L;
    }

    public final boolean a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        Player player = this.D;
        if (player == null) {
            return false;
        }
        if (keyCode != 90 && keyCode != 89 && keyCode != 85 && keyCode != 79 && keyCode != 126 && keyCode != 127 && keyCode != 87 && keyCode != 88) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (player.h() == 4) {
                return true;
            }
            player.y();
            return true;
        }
        if (keyCode == 89) {
            player.z();
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            if (Util.f(player)) {
                Util.d(player);
                return true;
            }
            if (!player.d()) {
                return true;
            }
            player.pause();
            return true;
        }
        if (keyCode == 87) {
            player.q();
            return true;
        }
        if (keyCode == 88) {
            player.l();
            return true;
        }
        if (keyCode == 126) {
            Util.d(player);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        int i2 = Util.f28451a;
        if (!player.d()) {
            return true;
        }
        player.pause();
        return true;
    }

    public final void b() {
        if (d()) {
            setVisibility(8);
            for (VisibilityListener visibilityListener : this.f28380b) {
                getVisibility();
                visibilityListener.a();
            }
            removeCallbacks(this.p);
            removeCallbacks(this.q);
            this.Q = -9223372036854775807L;
        }
    }

    public final void c() {
        lo0 lo0Var = this.q;
        removeCallbacks(lo0Var);
        if (this.I <= 0) {
            this.Q = -9223372036854775807L;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j2 = this.I;
        this.Q = jUptimeMillis + j2;
        if (this.F) {
            postDelayed(lo0Var, j2);
        }
    }

    public final boolean d() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.q);
        } else if (motionEvent.getAction() == 1) {
            c();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e() {
        boolean z;
        boolean z2;
        if (d() && this.F) {
            boolean zF = Util.f(this.D);
            View view = this.f28382e;
            boolean z3 = true;
            if (view != null) {
                z = !zF && view.isFocused();
                if (Util.f28451a < 21) {
                    z2 = z;
                } else {
                    z2 = !zF && Api21.a(view);
                }
                view.setVisibility(zF ? 0 : 8);
            } else {
                z = false;
                z2 = false;
            }
            View view2 = this.f28383f;
            if (view2 != null) {
                z |= zF && view2.isFocused();
                if (Util.f28451a < 21) {
                    z3 = z;
                } else if (!zF || !Api21.a(view2)) {
                    z3 = false;
                }
                z2 |= z3;
                view2.setVisibility(zF ? 8 : 0);
            }
            if (z) {
                boolean zF2 = Util.f(this.D);
                if (zF2 && view != null) {
                    view.requestFocus();
                } else if (!zF2 && view2 != null) {
                    view2.requestFocus();
                }
            }
            if (z2) {
                boolean zF3 = Util.f(this.D);
                if (zF3 && view != null) {
                    view.sendAccessibilityEvent(8);
                } else if (!zF3 && view2 != null) {
                    view2.sendAccessibilityEvent(8);
                }
            }
        }
        g();
        i();
        j();
        Player player = this.D;
        if (player == null) {
            return;
        }
        if (this.G) {
            player.p();
            throw null;
        }
        player.p();
        throw null;
    }

    public final void f(View view, boolean z, boolean z2) {
        if (view == null) {
            return;
        }
        view.setEnabled(z2);
        view.setAlpha(z2 ? this.z : this.A);
        view.setVisibility(z ? 0 : 8);
    }

    public final void g() {
        boolean zD;
        boolean zD2;
        boolean zD3;
        boolean zD4;
        boolean zD5;
        if (d() && this.F) {
            Player player = this.D;
            if (player != null) {
                zD = player.d();
                zD3 = player.d();
                zD4 = player.d();
                zD5 = player.d();
                zD2 = player.d();
            } else {
                zD = false;
                zD2 = false;
                zD3 = false;
                zD4 = false;
                zD5 = false;
            }
            f(this.f28381c, this.N, zD3);
            f(this.f28384h, this.L, zD4);
            f(this.g, this.M, zD5);
            f(this.d, this.O, zD2);
            TimeBar timeBar = this.m;
            if (timeBar != null) {
                timeBar.setEnabled(zD);
            }
        }
    }

    public Player getPlayer() {
        return this.D;
    }

    public int getRepeatToggleModes() {
        return this.K;
    }

    public boolean getShowShuffleButton() {
        return this.P;
    }

    public int getShowTimeoutMs() {
        return this.I;
    }

    public boolean getShowVrButton() {
        View view = this.f28387k;
        return view != null && view.getVisibility() == 0;
    }

    public final void h() {
        long jU;
        long jX;
        if (d() && this.F) {
            Player player = this.D;
            if (player != null) {
                jU = player.u();
                jX = player.x();
            } else {
                jU = 0;
                jX = 0;
            }
            boolean z = jU != this.R;
            boolean z2 = jX != this.S;
            this.R = jU;
            this.S = jX;
            TextView textView = this.l;
            if (textView != null && !this.H && z) {
                textView.setText(Util.c(this.n, this.o, jU));
            }
            TimeBar timeBar = this.m;
            if (timeBar != null) {
                timeBar.setPosition(jU);
                timeBar.setBufferedPosition(jX);
            }
            ProgressUpdateListener progressUpdateListener = this.E;
            if (progressUpdateListener != null && (z || z2)) {
                progressUpdateListener.a();
            }
            lo0 lo0Var = this.p;
            removeCallbacks(lo0Var);
            int iH = player == null ? 1 : player.h();
            if (player != null && player.isPlaying()) {
                long jMin = Math.min(timeBar != null ? timeBar.getPreferredUpdateDelay() : 1000L, 1000 - (jU % 1000));
                float f2 = player.a().f28187b;
                postDelayed(lo0Var, Math.max(this.J, Math.min(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? (long) (jMin / f2) : 1000L, 1000L)));
            } else {
                if (iH == 4 || iH == 1) {
                    return;
                }
                postDelayed(lo0Var, 1000L);
            }
        }
    }

    public final void i() {
        ImageView imageView;
        if (d() && this.F && (imageView = this.f28385i) != null) {
            if (this.K == 0) {
                f(imageView, false, false);
                return;
            }
            Player player = this.D;
            String str = this.u;
            Drawable drawable = this.r;
            if (player == null) {
                f(imageView, true, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            f(imageView, true, true);
            int i2 = player.i();
            if (i2 == 0) {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            } else if (i2 == 1) {
                imageView.setImageDrawable(this.s);
                imageView.setContentDescription(this.v);
            } else if (i2 == 2) {
                imageView.setImageDrawable(this.t);
                imageView.setContentDescription(this.w);
            }
            imageView.setVisibility(0);
        }
    }

    public final void j() {
        ImageView imageView;
        if (d() && this.F && (imageView = this.f28386j) != null) {
            Player player = this.D;
            if (!this.P) {
                f(imageView, false, false);
                return;
            }
            String str = this.C;
            Drawable drawable = this.y;
            if (player == null) {
                f(imageView, true, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            f(imageView, true, true);
            if (player.w()) {
                drawable = this.x;
            }
            imageView.setImageDrawable(drawable);
            if (player.w()) {
                str = this.B;
            }
            imageView.setContentDescription(str);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.F = true;
        long j2 = this.Q;
        if (j2 != -9223372036854775807L) {
            long jUptimeMillis = j2 - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                b();
            } else {
                postDelayed(this.q, jUptimeMillis);
            }
        } else if (d()) {
            c();
        }
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.F = false;
        removeCallbacks(this.p);
        removeCallbacks(this.q);
    }

    public void setPlayer(Player player) {
        Assertions.b(Looper.myLooper() == Looper.getMainLooper());
        Assertions.a(player == null || player.a0() == Looper.getMainLooper());
        Player player2 = this.D;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.m();
        }
        this.D = player;
        if (player != null) {
            player.D();
        }
        e();
    }

    public void setProgressUpdateListener(ProgressUpdateListener progressUpdateListener) {
        this.E = progressUpdateListener;
    }

    public void setRepeatToggleModes(int i2) {
        this.K = i2;
        Player player = this.D;
        if (player != null) {
            int i3 = player.i();
            if (i2 == 0 && i3 != 0) {
                this.D.E();
            } else if (i2 == 1 && i3 == 2) {
                this.D.E();
            } else if (i2 == 2 && i3 == 1) {
                this.D.E();
            }
        }
        i();
    }

    public void setShowFastForwardButton(boolean z) {
        this.M = z;
        g();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.G = z;
        Player player = this.D;
        if (player == null) {
            return;
        }
        if (z) {
            player.p();
            throw null;
        }
        player.p();
        throw null;
    }

    public void setShowNextButton(boolean z) {
        this.O = z;
        g();
    }

    public void setShowPreviousButton(boolean z) {
        this.N = z;
        g();
    }

    public void setShowRewindButton(boolean z) {
        this.L = z;
        g();
    }

    public void setShowShuffleButton(boolean z) {
        this.P = z;
        j();
    }

    public void setShowTimeoutMs(int i2) {
        this.I = i2;
        if (d()) {
            c();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.f28387k;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i2) {
        int i3 = Util.f28451a;
        this.J = Math.max(16, Math.min(i2, 1000));
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.f28387k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            f(view, getShowVrButton(), onClickListener != null);
        }
    }

    public PlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, attributeSet);
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }
}
