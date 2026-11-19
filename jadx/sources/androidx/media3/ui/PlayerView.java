package androidx.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.AttachedSurfaceControl;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.SurfaceSyncGroup;
import androidx.core.content.ContextCompat;
import androidx.media3.common.AdOverlayInfo;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.ErrorMessageProvider;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.ViewProvider;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.video.VideoDecoderGLSurfaceView;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import com.dynatrace.android.callback.Callback;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.vuitton.android.R;
import defpackage.az;
import defpackage.e5;
import defpackage.hn0;
import defpackage.oo0;
import defpackage.x1;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class PlayerView extends FrameLayout implements AdViewProvider {
    public static final /* synthetic */ int K = 0;
    public Drawable A;
    public int B;
    public boolean C;
    public ErrorMessageProvider D;
    public CharSequence E;
    public int F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComponentListener f18029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AspectRatioFrameLayout f18030c;
    public final View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f18031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f18032f;
    public final SurfaceSyncGroupCompatV34 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f18033h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImageView f18034i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SubtitleView f18035j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f18036k;
    public final TextView l;
    public final PlayerControlView m;
    public final FrameLayout n;
    public final FrameLayout o;
    public final Handler p;
    public final Class q;
    public final Method r;
    public final Object s;
    public Player t;
    public boolean u;
    public ControllerVisibilityListener v;
    public PlayerControlView.VisibilityListener w;
    public FullscreenButtonClickListener x;
    public int y;
    public int z;

    public static class Api34 {
        public static void a(SurfaceView surfaceView) {
            surfaceView.setSurfaceLifecycle(2);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ArtworkDisplayMode {
    }

    public final class ComponentListener implements Player.Listener, View.OnClickListener, PlayerControlView.VisibilityListener, PlayerControlView.OnFullScreenModeChangedListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Timeline.Period f18037b = new Timeline.Period();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f18038c;

        public ComponentListener() {
        }

        @Override // androidx.media3.common.Player.Listener
        public final void B(CueGroup cueGroup) {
            SubtitleView subtitleView = PlayerView.this.f18035j;
            if (subtitleView != null) {
                subtitleView.setCues(cueGroup.f14114a);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void K(int i2) {
            int i3 = PlayerView.K;
            PlayerView playerView = PlayerView.this;
            playerView.k();
            playerView.m();
            if (!playerView.d() || !playerView.H) {
                playerView.e(false);
                return;
            }
            PlayerControlView playerControlView = playerView.m;
            if (playerControlView != null) {
                playerControlView.g();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void S() {
            PlayerView playerView = PlayerView.this;
            View view = playerView.d;
            if (view != null) {
                view.setVisibility(4);
                if (!playerView.b()) {
                    playerView.c();
                    return;
                }
                ImageView imageView = playerView.f18033h;
                if (imageView != null) {
                    imageView.setVisibility(4);
                }
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void X(int i2, int i3) {
            if (Build.VERSION.SDK_INT == 34) {
                PlayerView playerView = PlayerView.this;
                if ((playerView.f18031e instanceof SurfaceView) && playerView.J) {
                    final SurfaceSyncGroupCompatV34 surfaceSyncGroupCompatV34 = playerView.g;
                    surfaceSyncGroupCompatV34.getClass();
                    Handler handler = playerView.p;
                    final SurfaceView surfaceView = (SurfaceView) playerView.f18031e;
                    final hn0 hn0Var = new hn0(playerView, 6);
                    handler.post(new Runnable() { // from class: androidx.media3.ui.h
                        @Override // java.lang.Runnable
                        public final void run() throws Exception {
                            PlayerView.SurfaceSyncGroupCompatV34.a(surfaceSyncGroupCompatV34, surfaceView, hn0Var);
                        }
                    });
                }
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void b(VideoSize videoSize) {
            PlayerView playerView;
            Player player;
            if (videoSize.equals(VideoSize.d) || (player = (playerView = PlayerView.this).t) == null || player.h() == 1) {
                return;
            }
            playerView.j();
        }

        @Override // androidx.media3.common.Player.Listener
        public final void d0(int i2, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
            PlayerControlView playerControlView;
            int i3 = PlayerView.K;
            PlayerView playerView = PlayerView.this;
            if (playerView.d() && playerView.H && (playerControlView = playerView.m) != null) {
                playerControlView.g();
            }
        }

        @Override // androidx.media3.ui.PlayerControlView.VisibilityListener
        public final void e(int i2) {
            int i3 = PlayerView.K;
            PlayerView playerView = PlayerView.this;
            playerView.l();
            ControllerVisibilityListener controllerVisibilityListener = playerView.v;
            if (controllerVisibilityListener != null) {
                controllerVisibilityListener.a(i2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void g0(int i2, boolean z) {
            int i3 = PlayerView.K;
            PlayerView playerView = PlayerView.this;
            playerView.k();
            if (!playerView.d() || !playerView.H) {
                playerView.e(false);
                return;
            }
            PlayerControlView playerControlView = playerView.m;
            if (playerControlView != null) {
                playerControlView.g();
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Callback.n(view);
            try {
                PlayerView playerView = PlayerView.this;
                int i2 = PlayerView.K;
                playerView.i();
            } finally {
                Callback.o();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void q0(Tracks tracks) {
            PlayerView playerView = PlayerView.this;
            Player player = playerView.t;
            player.getClass();
            Timeline timelineP = player.R0(17) ? player.p() : Timeline.f13952a;
            if (timelineP.p()) {
                this.f18038c = null;
            } else {
                boolean zR0 = player.R0(30);
                Timeline.Period period = this.f18037b;
                if (!zR0 || player.n().f14012a.isEmpty()) {
                    Object obj = this.f18038c;
                    if (obj != null) {
                        int iB = timelineP.b(obj);
                        if (iB != -1) {
                            if (player.v() == timelineP.f(iB, period, false).f13961c) {
                                return;
                            }
                        }
                        this.f18038c = null;
                    }
                } else {
                    this.f18038c = timelineP.f(player.n0(), period, true).f13960b;
                }
            }
            playerView.n(false);
        }

        @Override // androidx.media3.ui.PlayerControlView.OnFullScreenModeChangedListener
        public final void x(boolean z) {
            FullscreenButtonClickListener fullscreenButtonClickListener = PlayerView.this.x;
            if (fullscreenButtonClickListener != null) {
                fullscreenButtonClickListener.a();
            }
        }
    }

    public interface ControllerVisibilityListener {
        void a(int i2);
    }

    public interface FullscreenButtonClickListener {
        void a();
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ImageDisplayMode {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ShowBuffering {
    }

    public static final class SurfaceSyncGroupCompatV34 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SurfaceSyncGroup f18039a;

        public static /* synthetic */ void a(SurfaceSyncGroupCompatV34 surfaceSyncGroupCompatV34, SurfaceView surfaceView, hn0 hn0Var) throws Exception {
            surfaceSyncGroupCompatV34.getClass();
            AttachedSurfaceControl rootSurfaceControl = surfaceView.getRootSurfaceControl();
            if (rootSurfaceControl == null) {
                return;
            }
            SurfaceSyncGroup surfaceSyncGroup = new SurfaceSyncGroup("exo-sync-b-334901521");
            surfaceSyncGroupCompatV34.f18039a = surfaceSyncGroup;
            Preconditions.q(surfaceSyncGroup.add(rootSurfaceControl, new e5(2)));
            hn0Var.run();
            rootSurfaceControl.applyTransactionOnDraw(new SurfaceControl.Transaction());
        }

        public final void b() {
            SurfaceSyncGroup surfaceSyncGroup = this.f18039a;
            if (surfaceSyncGroup != null) {
                surfaceSyncGroup.markSyncReady();
                this.f18039a = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, AttributeSet attributeSet, int i2) {
        int i3;
        int i4;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z5;
        boolean z6;
        int i11;
        boolean z7;
        Class<ExoPlayer> cls;
        Object objNewProxyInstance;
        Method method;
        int i12;
        super(context, attributeSet, i2);
        ComponentListener componentListener = new ComponentListener();
        this.f18029b = componentListener;
        this.p = new Handler(Looper.getMainLooper());
        if (isInEditMode()) {
            this.f18030c = null;
            this.d = null;
            this.f18031e = null;
            this.f18032f = false;
            this.g = null;
            this.f18033h = null;
            this.f18034i = null;
            this.f18035j = null;
            this.f18036k = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.q = null;
            this.r = null;
            this.s = null;
            ImageView imageView = new ImageView(context);
            Resources resources = getResources();
            String str = Util.f14242a;
            imageView.setImageDrawable(resources.getDrawable(2131230955, context.getTheme()));
            imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
            addView(imageView);
            return;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.d, i2, 0);
            try {
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(42);
                int color = typedArrayObtainStyledAttributes.getColor(42, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(22, R.layout.exo_player_view);
                boolean z8 = typedArrayObtainStyledAttributes.getBoolean(50, true);
                int i13 = typedArrayObtainStyledAttributes.getInt(3, 1);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(9, 0);
                int i14 = typedArrayObtainStyledAttributes.getInt(15, 0);
                boolean z9 = typedArrayObtainStyledAttributes.getBoolean(51, true);
                int i15 = typedArrayObtainStyledAttributes.getInt(45, 1);
                int i16 = typedArrayObtainStyledAttributes.getInt(28, 0);
                z = z9;
                i3 = typedArrayObtainStyledAttributes.getInt(38, 5000);
                boolean z10 = typedArrayObtainStyledAttributes.getBoolean(14, true);
                boolean z11 = typedArrayObtainStyledAttributes.getBoolean(4, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(35, 0);
                this.C = typedArrayObtainStyledAttributes.getBoolean(16, this.C);
                boolean z12 = typedArrayObtainStyledAttributes.getBoolean(13, true);
                typedArrayObtainStyledAttributes.recycle();
                z4 = z12;
                z2 = z10;
                z6 = z8;
                i10 = color;
                i4 = resourceId;
                i6 = resourceId2;
                i8 = i16;
                z3 = z11;
                i5 = integer;
                i11 = i13;
                z5 = zHasValue;
                i9 = i15;
                i7 = i14;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i3 = 5000;
            i4 = R.layout.exo_player_view;
            z = true;
            z2 = true;
            z3 = true;
            z4 = true;
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 1;
            i10 = 0;
            z5 = false;
            z6 = true;
            i11 = 1;
        }
        LayoutInflater.from(context).inflate(i4, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        this.f18030c = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i8);
        }
        View viewFindViewById = findViewById(R.id.exo_shutter);
        this.d = viewFindViewById;
        if (viewFindViewById != null && z5) {
            viewFindViewById.setBackgroundColor(i10);
        }
        if (aspectRatioFrameLayout == null || i9 == 0) {
            this.f18031e = null;
            z7 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i9 != 2) {
                if (i9 == 3) {
                    try {
                        int i17 = SphericalGLSurfaceView.m;
                        this.f18031e = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                        z7 = true;
                    } catch (Exception e2) {
                        az.s("spherical_gl_surface_view requires an ExoPlayer dependency", e2);
                        throw r6;
                    }
                } else if (i9 != 4) {
                    SurfaceView surfaceView = new SurfaceView(context);
                    if (Build.VERSION.SDK_INT >= 34) {
                        Api34.a(surfaceView);
                    }
                    this.f18031e = surfaceView;
                } else {
                    try {
                        int i18 = VideoDecoderGLSurfaceView.f15942c;
                        this.f18031e = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    } catch (Exception e3) {
                        az.s("video_decoder_gl_surface_view requires an ExoPlayer dependency", e3);
                        throw r6;
                    }
                }
                this.f18031e.setLayoutParams(layoutParams);
                this.f18031e.setOnClickListener(componentListener);
                this.f18031e.setClickable(false);
                aspectRatioFrameLayout.addView(this.f18031e, 0);
            } else {
                this.f18031e = new TextureView(context);
            }
            z7 = false;
            this.f18031e.setLayoutParams(layoutParams);
            this.f18031e.setOnClickListener(componentListener);
            this.f18031e.setClickable(false);
            aspectRatioFrameLayout.addView(this.f18031e, 0);
        }
        this.f18032f = z7;
        this.g = Build.VERSION.SDK_INT == 34 ? new SurfaceSyncGroupCompatV34() : null;
        this.n = (FrameLayout) findViewById(R.id.exo_ad_overlay);
        this.o = (FrameLayout) findViewById(R.id.exo_overlay);
        this.f18033h = (ImageView) findViewById(R.id.exo_image);
        this.z = i7;
        try {
            cls = ExoPlayer.class;
            method = cls.getMethod("setImageOutput", ImageOutput.class);
            objNewProxyInstance = Proxy.newProxyInstance(ImageOutput.class.getClassLoader(), new Class[]{ImageOutput.class}, new oo0(this, 0));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            objNewProxyInstance = null;
            method = null;
        }
        this.q = cls;
        this.r = method;
        this.s = objNewProxyInstance;
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_artwork);
        this.f18034i = imageView2;
        this.y = (!z6 || i11 == 0 || imageView2 == null) ? 0 : i11;
        if (i6 != 0) {
            this.A = ContextCompat.getDrawable(getContext(), i6);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        this.f18035j = subtitleView;
        if (subtitleView != null) {
            subtitleView.b();
            subtitleView.c();
        }
        View viewFindViewById2 = findViewById(R.id.exo_buffering);
        this.f18036k = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.B = i5;
        TextView textView = (TextView) findViewById(R.id.exo_error_message);
        this.l = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(R.id.exo_controller);
        View viewFindViewById3 = findViewById(R.id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.m = playerControlView;
            i12 = 0;
        } else if (viewFindViewById3 != null) {
            i12 = 0;
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.m = playerControlView2;
            playerControlView2.setId(R.id.exo_controller);
            playerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(playerControlView2, iIndexOfChild);
        } else {
            i12 = 0;
            this.m = null;
        }
        PlayerControlView playerControlView3 = this.m;
        this.F = playerControlView3 != null ? i3 : i12;
        this.I = z2;
        this.G = z3;
        this.H = z4;
        this.u = (!z || playerControlView3 == null) ? i12 : 1;
        if (playerControlView3 != null) {
            PlayerControlViewLayoutManager playerControlViewLayoutManager = playerControlView3.f17979b;
            int i19 = playerControlViewLayoutManager.A;
            if (i19 != 3 && i19 != 2) {
                playerControlViewLayoutManager.f();
                playerControlViewLayoutManager.i(2);
            }
            PlayerControlView playerControlView4 = this.m;
            ComponentListener componentListener2 = this.f18029b;
            playerControlView4.getClass();
            componentListener2.getClass();
            playerControlView4.l.add(componentListener2);
        }
        if (z) {
            setClickable(true);
        }
        l();
    }

    public static void a(PlayerView playerView, Bitmap bitmap) {
        playerView.setImage(new BitmapDrawable(playerView.getResources(), bitmap));
        Player player = playerView.t;
        if (player != null && player.R0(30) && player.n().a(2)) {
            return;
        }
        ImageView imageView = playerView.f18033h;
        if (imageView != null) {
            imageView.setVisibility(0);
            playerView.o();
        }
        View view = playerView.d;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private void setImage(Drawable drawable) {
        ImageView imageView = this.f18033h;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        o();
    }

    private void setImageOutput(Player player) {
        Class cls = this.q;
        if (cls == null || !cls.isAssignableFrom(player.getClass())) {
            return;
        }
        try {
            Method method = this.r;
            method.getClass();
            Object obj = this.s;
            obj.getClass();
            method.invoke(player, obj);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            x1.m(e2);
        }
    }

    public final boolean b() {
        Player player = this.t;
        return player != null && this.s != null && player.R0(30) && player.n().a(4);
    }

    public final void c() {
        ImageView imageView = this.f18033h;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
        }
    }

    public final boolean d() {
        Player player = this.t;
        return player != null && player.R0(16) && this.t.j() && this.t.r();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        SurfaceSyncGroupCompatV34 surfaceSyncGroupCompatV34;
        super.dispatchDraw(canvas);
        if (Build.VERSION.SDK_INT == 34 && (surfaceSyncGroupCompatV34 = this.g) != null && this.J) {
            surfaceSyncGroupCompatV34.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Player player = this.t;
        if (player != null && player.R0(16) && this.t.j()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        PlayerControlView playerControlView = this.m;
        if (z && p() && !playerControlView.j()) {
            e(true);
            return true;
        }
        if ((p() && playerControlView.d(keyEvent)) || super.dispatchKeyEvent(keyEvent)) {
            e(true);
            return true;
        }
        if (z && p()) {
            e(true);
        }
        return false;
    }

    public final void e(boolean z) {
        if (!(d() && this.H) && p()) {
            PlayerControlView playerControlView = this.m;
            boolean z2 = playerControlView.j() && playerControlView.getShowTimeoutMs() <= 0;
            boolean zG = g();
            if (z || z2 || zG) {
                h(zG);
            }
        }
    }

    public final boolean f(Drawable drawable) {
        ImageView imageView = this.f18034i;
        if (imageView != null && drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float width = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.y == 2) {
                    width = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                AspectRatioFrameLayout aspectRatioFrameLayout = this.f18030c;
                if (aspectRatioFrameLayout != null) {
                    aspectRatioFrameLayout.setAspectRatio(width);
                }
                imageView.setScaleType(scaleType);
                imageView.setImageDrawable(drawable);
                imageView.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    public final boolean g() {
        Player player = this.t;
        if (player != null) {
            int iH = player.h();
            if (!this.G) {
                return false;
            }
            if (this.t.R0(17) && this.t.p().p()) {
                return false;
            }
            if (iH != 1 && iH != 4) {
                Player player2 = this.t;
                player2.getClass();
                if (player2.r()) {
                    return false;
                }
            }
        }
        return true;
    }

    public List<AdOverlayInfo> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.o;
        if (frameLayout != null) {
            AdOverlayInfo.Builder builder = new AdOverlayInfo.Builder(frameLayout, 4);
            builder.f13665c = "Transparent overlay does not impact viewability";
            arrayList.add(new AdOverlayInfo(builder.f13663a, builder.f13664b, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.m;
        if (playerControlView != null) {
            AdOverlayInfo.Builder builder2 = new AdOverlayInfo.Builder(playerControlView, 1);
            arrayList.add(new AdOverlayInfo(builder2.f13663a, builder2.f13664b, builder2.f13665c));
        }
        return ImmutableList.t(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.n;
        Preconditions.m(frameLayout, "exo_ad_overlay must be present for ad playback");
        return frameLayout;
    }

    public int getArtworkDisplayMode() {
        return this.y;
    }

    public boolean getControllerAutoShow() {
        return this.G;
    }

    public boolean getControllerHideOnTouch() {
        return this.I;
    }

    public int getControllerShowTimeoutMs() {
        return this.F;
    }

    public Drawable getDefaultArtwork() {
        return this.A;
    }

    public int getImageDisplayMode() {
        return this.z;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.o;
    }

    public Player getPlayer() {
        return this.t;
    }

    public int getResizeMode() {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f18030c;
        aspectRatioFrameLayout.getClass();
        return aspectRatioFrameLayout.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f18035j;
    }

    @Deprecated
    public boolean getUseArtwork() {
        return this.y != 0;
    }

    public boolean getUseController() {
        return this.u;
    }

    public View getVideoSurfaceView() {
        return this.f18031e;
    }

    public final void h(boolean z) {
        if (p()) {
            int i2 = z ? 0 : this.F;
            PlayerControlView playerControlView = this.m;
            playerControlView.setShowTimeoutMs(i2);
            PlayerControlViewLayoutManager playerControlViewLayoutManager = playerControlView.f17979b;
            PlayerControlView playerControlView2 = playerControlViewLayoutManager.f18008a;
            if (!playerControlView2.l()) {
                playerControlView2.setVisibility(0);
                playerControlView2.m();
                ImageView imageView = playerControlView2.w;
                if (imageView != null) {
                    imageView.requestFocus();
                }
            }
            playerControlViewLayoutManager.k();
        }
    }

    public final void i() {
        if (!p() || this.t == null) {
            return;
        }
        PlayerControlView playerControlView = this.m;
        if (!playerControlView.j()) {
            e(true);
        } else if (this.I) {
            playerControlView.g();
        }
    }

    public final void j() {
        Player player = this.t;
        VideoSize videoSizeS = player != null ? player.s() : VideoSize.d;
        int i2 = videoSizeS.f14024a;
        int i3 = videoSizeS.f14025b;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f3 = (i3 == 0 || i2 == 0) ? 0.0f : (i2 * videoSizeS.f14026c) / i3;
        if (!this.f18032f) {
            f2 = f3;
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f18030c;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    public final void k() {
        boolean z;
        View view = this.f18036k;
        if (view != null) {
            Player player = this.t;
            if (player == null || player.h() != 2) {
                z = false;
            } else {
                int i2 = this.B;
                z = true;
                if (i2 != 2 && (i2 != 1 || !this.t.r())) {
                    z = false;
                }
            }
            view.setVisibility(z ? 0 : 8);
        }
    }

    public final void l() {
        PlayerControlView playerControlView = this.m;
        if (playerControlView == null || !this.u) {
            setContentDescription(null);
        } else if (playerControlView.j()) {
            setContentDescription(this.I ? getResources().getString(R.string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R.string.exo_controls_show));
        }
    }

    public final void m() {
        ErrorMessageProvider errorMessageProvider;
        TextView textView = this.l;
        if (textView != null) {
            CharSequence charSequence = this.E;
            if (charSequence != null) {
                textView.setText(charSequence);
                textView.setVisibility(0);
                return;
            }
            Player player = this.t;
            if ((player != null ? player.e() : null) == null || (errorMessageProvider = this.D) == null) {
                textView.setVisibility(8);
            } else {
                textView.setText((CharSequence) errorMessageProvider.a().second);
                textView.setVisibility(0);
            }
        }
    }

    public final void n(boolean z) {
        byte[] bArr;
        Drawable drawable;
        Player player = this.t;
        boolean zF = false;
        boolean z2 = (player == null || !player.R0(30) || player.n().f14012a.isEmpty()) ? false : true;
        boolean z3 = this.C;
        ImageView imageView = this.f18034i;
        View view = this.d;
        if (!z3 && (!z2 || z)) {
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
            if (view != null) {
                view.setVisibility(0);
            }
            c();
        }
        if (z2) {
            Player player2 = this.t;
            boolean z4 = player2 != null && player2.R0(30) && player2.n().a(2);
            boolean zB = b();
            if (!z4 && !zB) {
                if (view != null) {
                    view.setVisibility(0);
                }
                c();
            }
            ImageView imageView2 = this.f18033h;
            boolean z5 = (view == null || view.getVisibility() != 4 || imageView2 == null || (drawable = imageView2.getDrawable()) == null || drawable.getAlpha() == 0) ? false : true;
            if (zB && !z4 && z5) {
                if (view != null) {
                    view.setVisibility(0);
                }
                if (imageView2 != null) {
                    imageView2.setVisibility(0);
                    o();
                }
            } else if (z4 && !zB && z5) {
                c();
            }
            if (!z4 && !zB && this.y != 0) {
                imageView.getClass();
                if (player != null && player.R0(18) && (bArr = player.A().f13887k) != null) {
                    zF = f(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
                }
                if (zF || f(this.A)) {
                    return;
                }
            }
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
        }
    }

    public final void o() {
        Drawable drawable;
        AspectRatioFrameLayout aspectRatioFrameLayout;
        ImageView imageView = this.f18033h;
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return;
        }
        float width = intrinsicWidth / intrinsicHeight;
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        if (this.z == 1) {
            width = getWidth() / getHeight();
            scaleType = ImageView.ScaleType.CENTER_CROP;
        }
        if (imageView.getVisibility() == 0 && (aspectRatioFrameLayout = this.f18030c) != null) {
            aspectRatioFrameLayout.setAspectRatio(width);
        }
        imageView.setScaleType(scaleType);
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!p() || this.t == null) {
            return false;
        }
        e(true);
        return true;
    }

    public final boolean p() {
        if (!this.u) {
            return false;
        }
        this.m.getClass();
        return true;
    }

    @Override // android.view.View
    public final boolean performClick() {
        i();
        return super.performClick();
    }

    public void setArtworkDisplayMode(int i2) {
        Preconditions.q(i2 == 0 || this.f18034i != null);
        if (this.y != i2) {
            this.y = i2;
            n(false);
        }
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AspectRatioListener aspectRatioListener) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f18030c;
        aspectRatioFrameLayout.getClass();
        aspectRatioFrameLayout.setAspectRatioListener(aspectRatioListener);
    }

    public void setControllerAnimationEnabled(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setAnimationEnabled(z);
    }

    public void setControllerAutoShow(boolean z) {
        this.G = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.H = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        this.m.getClass();
        this.I = z;
        l();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(PlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        this.x = null;
        playerControlView.setOnFullScreenModeChangedListener(onFullScreenModeChangedListener);
    }

    public void setControllerShowTimeoutMs(int i2) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        this.F = i2;
        if (playerControlView.j()) {
            h(g());
        }
    }

    @Deprecated
    public void setControllerVisibilityListener(PlayerControlView.VisibilityListener visibilityListener) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        PlayerControlView.VisibilityListener visibilityListener2 = this.w;
        if (visibilityListener2 == visibilityListener) {
            return;
        }
        if (visibilityListener2 != null) {
            playerControlView.l.remove(visibilityListener2);
        }
        this.w = visibilityListener;
        if (visibilityListener != null) {
            playerControlView.getClass();
            playerControlView.l.add(visibilityListener);
            setControllerVisibilityListener((ControllerVisibilityListener) null);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        Preconditions.q(this.l != null);
        this.E = charSequence;
        m();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.A != drawable) {
            this.A = drawable;
            n(false);
        }
    }

    public void setEnableComposeSurfaceSyncWorkaround(boolean z) {
        this.J = z;
    }

    public void setErrorMessageProvider(ErrorMessageProvider<? super PlaybackException> errorMessageProvider) {
        if (this.D != errorMessageProvider) {
            this.D = errorMessageProvider;
            m();
        }
    }

    public void setFullscreenButtonClickListener(FullscreenButtonClickListener fullscreenButtonClickListener) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        this.x = fullscreenButtonClickListener;
        playerControlView.setOnFullScreenModeChangedListener(this.f18029b);
    }

    public void setFullscreenButtonState(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        String str = playerControlView.q1;
        Drawable drawable = playerControlView.o1;
        String str2 = playerControlView.p1;
        Drawable drawable2 = playerControlView.n1;
        if (playerControlView.u1 == z) {
            return;
        }
        playerControlView.u1 = z;
        ImageView imageView = playerControlView.F;
        if (imageView != null) {
            if (z) {
                imageView.setImageDrawable(drawable2);
                imageView.setContentDescription(str2);
            } else {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            }
        }
        ImageView imageView2 = playerControlView.G;
        if (imageView2 != null) {
            if (z) {
                imageView2.setImageDrawable(drawable2);
                imageView2.setContentDescription(str2);
            } else {
                imageView2.setImageDrawable(drawable);
                imageView2.setContentDescription(str);
            }
        }
        PlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener = playerControlView.t1;
        if (onFullScreenModeChangedListener != null) {
            onFullScreenModeChangedListener.x(z);
        }
    }

    public void setImageDisplayMode(int i2) {
        Preconditions.q(this.f18033h != null);
        if (this.z != i2) {
            this.z = i2;
            o();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.C != z) {
            this.C = z;
            n(false);
        }
    }

    public void setMediaRouteButtonViewProvider(ViewProvider viewProvider) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setMediaRouteButtonViewProvider(viewProvider);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x00e6  */
    /* JADX WARN: Multi-variable type inference failed */
    public void setPlayer(Player player) {
        boolean z = true;
        Preconditions.q(Looper.myLooper() == Looper.getMainLooper());
        Preconditions.g(player == null || player.a0() == Looper.getMainLooper());
        Player player2 = this.t;
        if (player2 == player) {
            return;
        }
        View view = this.f18031e;
        ComponentListener componentListener = this.f18029b;
        if (player2 != null) {
            player2.V(componentListener);
            if (player2.R0(27)) {
                if (view instanceof TextureView) {
                    player2.o0((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    player2.G0((SurfaceView) view);
                }
            }
            Class cls = this.q;
            if (cls != null && cls.isAssignableFrom(player2.getClass())) {
                try {
                    Method method = this.r;
                    method.getClass();
                    method.invoke(player2, null);
                } catch (IllegalAccessException | InvocationTargetException e2) {
                    x1.m(e2);
                    return;
                }
            }
        }
        SubtitleView subtitleView = this.f18035j;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.t = player;
        boolean zP = p();
        PlayerControlView playerControlView = this.m;
        if (zP) {
            playerControlView.setPlayer(player);
        }
        k();
        m();
        n(true);
        if (player == null) {
            if (playerControlView != null) {
                playerControlView.g();
                return;
            }
            return;
        }
        if (player.R0(27)) {
            if (view instanceof TextureView) {
                player.e0((TextureView) view);
            } else if (view instanceof SurfaceView) {
                player.J((SurfaceView) view);
            }
            if (player.R0(30)) {
                ImmutableList immutableList = player.n().f14012a;
                int i2 = 0;
                loop0: while (true) {
                    if (i2 >= immutableList.size()) {
                        z = false;
                        break;
                    }
                    if (((Tracks.Group) immutableList.get(i2)).f14017b.f13979c == 2) {
                        Tracks.Group group = (Tracks.Group) immutableList.get(i2);
                        int i3 = 0;
                        while (true) {
                            int[] iArr = group.d;
                            if (i3 >= iArr.length) {
                                break;
                            } else if (iArr[i3] == 4) {
                                break loop0;
                            } else {
                                i3++;
                            }
                        }
                    }
                    i2++;
                }
                if (z) {
                    j();
                }
            } else {
                j();
            }
        }
        if (subtitleView != null && player.R0(28)) {
            subtitleView.setCues(player.o().f14114a);
        }
        player.Y(componentListener);
        setImageOutput(player);
        e(false);
    }

    public void setRepeatToggleModes(int i2) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setRepeatToggleModes(i2);
    }

    public void setResizeMode(int i2) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f18030c;
        aspectRatioFrameLayout.getClass();
        aspectRatioFrameLayout.setResizeMode(i2);
    }

    public void setShowBuffering(int i2) {
        if (this.B != i2) {
            this.B = i2;
            k();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowFastForwardButton(z);
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowNextButton(z);
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowPlayButtonIfPlaybackIsSuppressed(z);
    }

    public void setShowPreviousButton(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowShuffleButton(z);
    }

    public void setShowSubtitleButton(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowSubtitleButton(z);
    }

    public void setShowVrButton(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setShowVrButton(z);
    }

    public void setShutterBackgroundColor(int i2) {
        View view = this.d;
        if (view != null) {
            view.setBackgroundColor(i2);
        }
    }

    public void setTimeBarScrubbingEnabled(boolean z) {
        PlayerControlView playerControlView = this.m;
        playerControlView.getClass();
        playerControlView.setTimeBarScrubbingEnabled(z);
    }

    @Deprecated
    public void setUseArtwork(boolean z) {
        setArtworkDisplayMode(!z ? 1 : 0);
    }

    public void setUseController(boolean z) {
        boolean z2 = true;
        PlayerControlView playerControlView = this.m;
        Preconditions.q((z && playerControlView == null) ? false : true);
        if (!z && !hasOnClickListeners()) {
            z2 = false;
        }
        setClickable(z2);
        if (this.u == z) {
            return;
        }
        this.u = z;
        if (p()) {
            playerControlView.setPlayer(this.t);
        } else if (playerControlView != null) {
            playerControlView.g();
            playerControlView.setPlayer(null);
        }
        l();
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        View view = this.f18031e;
        if (view instanceof SurfaceView) {
            view.setVisibility(i2);
        }
    }

    public void setControllerVisibilityListener(ControllerVisibilityListener controllerVisibilityListener) {
        this.v = controllerVisibilityListener;
        if (controllerVisibilityListener != null) {
            setControllerVisibilityListener((PlayerControlView.VisibilityListener) null);
        }
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerView(Context context) {
        this(context, null);
    }
}
