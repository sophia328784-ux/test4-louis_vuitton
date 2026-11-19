package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.dynatrace.android.callback.Callback;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ErrorMessageProvider;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import com.vuitton.android.R;
import defpackage.az;
import defpackage.md;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class PlayerView extends FrameLayout implements AdViewProvider {
    public static final /* synthetic */ int B = 0;
    public int A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComponentListener f28389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AspectRatioFrameLayout f28390c;
    public final View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f28391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f28392f;
    public final ImageView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SubtitleView f28393h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f28394i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f28395j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PlayerControlView f28396k;
    public final FrameLayout l;
    public final FrameLayout m;
    public Player n;
    public boolean o;
    public PlayerControlView.VisibilityListener p;
    public boolean q;
    public Drawable r;
    public int s;
    public boolean t;
    public ErrorMessageProvider u;
    public CharSequence v;
    public int w;
    public boolean x;
    public boolean y;
    public boolean z;

    public final class ComponentListener implements Player.Listener, View.OnLayoutChangeListener, View.OnClickListener, PlayerControlView.VisibilityListener {
        public ComponentListener() {
            new Timeline.Period();
        }

        @Override // com.google.android.exoplayer2.ui.PlayerControlView.VisibilityListener
        public final void a() {
            int i2 = PlayerView.B;
            PlayerView.this.g();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Callback.n(view);
            try {
                PlayerView playerView = PlayerView.this;
                int i2 = PlayerView.B;
                playerView.e();
            } finally {
                Callback.o();
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            PlayerView.a((TextureView) view, PlayerView.this.A);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ShowBuffering {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, AttributeSet attributeSet, int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        boolean z2;
        int color;
        boolean z3;
        int resourceId;
        boolean z4;
        boolean z5;
        int i7;
        boolean z6;
        boolean z7;
        int i8;
        super(context, attributeSet, i2);
        ComponentListener componentListener = new ComponentListener();
        this.f28389b = componentListener;
        if (isInEditMode()) {
            this.f28390c = null;
            this.d = null;
            this.f28391e = null;
            this.f28392f = false;
            this.g = null;
            this.f28393h = null;
            this.f28394i = null;
            this.f28395j = null;
            this.f28396k = null;
            this.l = null;
            this.m = null;
            ImageView imageView = new ImageView(context);
            if (Util.f28451a >= 23) {
                Resources resources = getResources();
                imageView.setImageDrawable(Util.b(context, resources, 2131230955));
                imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
            } else {
                Resources resources2 = getResources();
                imageView.setImageDrawable(Util.b(context, resources2, 2131230955));
                imageView.setBackgroundColor(resources2.getColor(R.color.exo_edit_mode_background_color));
            }
            addView(imageView);
            return;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.d, i2, 0);
            try {
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(42);
                color = typedArrayObtainStyledAttributes.getColor(42, 0);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(22, R.layout.exo_player_view);
                z3 = typedArrayObtainStyledAttributes.getBoolean(50, true);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(9, 0);
                z4 = typedArrayObtainStyledAttributes.getBoolean(51, true);
                i5 = typedArrayObtainStyledAttributes.getInt(45, 1);
                int i9 = typedArrayObtainStyledAttributes.getInt(28, 0);
                int i10 = typedArrayObtainStyledAttributes.getInt(38, 5000);
                z = typedArrayObtainStyledAttributes.getBoolean(14, true);
                boolean z8 = typedArrayObtainStyledAttributes.getBoolean(4, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(35, 0);
                this.t = typedArrayObtainStyledAttributes.getBoolean(16, this.t);
                boolean z9 = typedArrayObtainStyledAttributes.getBoolean(13, true);
                typedArrayObtainStyledAttributes.recycle();
                i4 = i9;
                i3 = i10;
                i7 = resourceId2;
                z6 = z9;
                z2 = z8;
                i6 = integer;
                z5 = zHasValue;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i3 = 5000;
            i4 = 0;
            z = true;
            i5 = 1;
            i6 = 0;
            z2 = true;
            color = 0;
            z3 = true;
            resourceId = 0;
            z4 = true;
            z5 = false;
            i7 = R.layout.exo_player_view;
            z6 = true;
        }
        LayoutInflater.from(context).inflate(i7, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        this.f28390c = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i4);
        }
        View viewFindViewById = findViewById(R.id.exo_shutter);
        this.d = viewFindViewById;
        if (viewFindViewById != null && z5) {
            viewFindViewById.setBackgroundColor(color);
        }
        if (aspectRatioFrameLayout == null || i5 == 0) {
            this.f28391e = null;
            z7 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i5 != 2) {
                if (i5 == 3) {
                    try {
                        int i11 = SphericalGLSurfaceView.m;
                        this.f28391e = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                        z7 = true;
                    } catch (Exception e2) {
                        az.s("spherical_gl_surface_view requires an ExoPlayer dependency", e2);
                        throw r6;
                    }
                } else if (i5 != 4) {
                    this.f28391e = new SurfaceView(context);
                } else {
                    try {
                        int i12 = VideoDecoderGLSurfaceView.f28454c;
                        this.f28391e = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    } catch (Exception e3) {
                        az.s("video_decoder_gl_surface_view requires an ExoPlayer dependency", e3);
                        throw r6;
                    }
                }
                this.f28391e.setLayoutParams(layoutParams);
                this.f28391e.setOnClickListener(componentListener);
                this.f28391e.setClickable(false);
                aspectRatioFrameLayout.addView(this.f28391e, 0);
            } else {
                this.f28391e = new TextureView(context);
            }
            z7 = false;
            this.f28391e.setLayoutParams(layoutParams);
            this.f28391e.setOnClickListener(componentListener);
            this.f28391e.setClickable(false);
            aspectRatioFrameLayout.addView(this.f28391e, 0);
        }
        this.f28392f = z7;
        this.l = (FrameLayout) findViewById(R.id.exo_ad_overlay);
        this.m = (FrameLayout) findViewById(R.id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_artwork);
        this.g = imageView2;
        this.q = z3 && imageView2 != null;
        if (resourceId != 0) {
            this.r = ContextCompat.getDrawable(getContext(), resourceId);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        this.f28393h = subtitleView;
        if (subtitleView != null) {
            subtitleView.a();
            subtitleView.b();
        }
        View viewFindViewById2 = findViewById(R.id.exo_buffering);
        this.f28394i = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.s = i6;
        TextView textView = (TextView) findViewById(R.id.exo_error_message);
        this.f28395j = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(R.id.exo_controller);
        View viewFindViewById3 = findViewById(R.id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f28396k = playerControlView;
            i8 = 0;
        } else if (viewFindViewById3 != null) {
            i8 = 0;
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f28396k = playerControlView2;
            playerControlView2.setId(R.id.exo_controller);
            playerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(playerControlView2, iIndexOfChild);
        } else {
            i8 = 0;
            this.f28396k = null;
        }
        PlayerControlView playerControlView3 = this.f28396k;
        this.w = playerControlView3 != null ? i3 : i8;
        this.z = z;
        this.x = z2;
        this.y = z6;
        this.o = (!z4 || playerControlView3 == null) ? i8 : 1;
        if (playerControlView3 != null) {
            playerControlView3.b();
            this.f28396k.f28380b.add(componentListener);
        }
        if (z4) {
            setClickable(true);
        }
        g();
    }

    public static void a(TextureView textureView, int i2) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != Call.Parameters.DEFAULT_CAMERA_ZOOM && height != Call.Parameters.DEFAULT_CAMERA_ZOOM && i2 != 0) {
            float f2 = width / 2.0f;
            float f3 = height / 2.0f;
            matrix.postRotate(i2, f2, f3);
            RectF rectF = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f2, f3);
        }
        textureView.setTransform(matrix);
    }

    public final void b(boolean z) {
        Player player = this.n;
        if (!(player != null && player.j() && this.n.r() && this.y) && j()) {
            PlayerControlView playerControlView = this.f28396k;
            boolean z2 = playerControlView.d() && playerControlView.getShowTimeoutMs() <= 0;
            boolean zC = c();
            if (z || z2 || zC) {
                d(zC);
            }
        }
    }

    public final boolean c() {
        Player player = this.n;
        if (player == null) {
            return true;
        }
        int iH = player.h();
        if (this.x) {
            return iH == 1 || iH == 4 || !this.n.r();
        }
        return false;
    }

    public final void d(boolean z) {
        if (j()) {
            int i2 = z ? 0 : this.w;
            PlayerControlView playerControlView = this.f28396k;
            playerControlView.setShowTimeoutMs(i2);
            View view = playerControlView.f28383f;
            View view2 = playerControlView.f28382e;
            if (!playerControlView.d()) {
                playerControlView.setVisibility(0);
                for (PlayerControlView.VisibilityListener visibilityListener : playerControlView.f28380b) {
                    playerControlView.getVisibility();
                    visibilityListener.a();
                }
                playerControlView.e();
                boolean zF = Util.f(playerControlView.D);
                if (zF && view2 != null) {
                    view2.requestFocus();
                } else if (!zF && view != null) {
                    view.requestFocus();
                }
                boolean zF2 = Util.f(playerControlView.D);
                if (zF2 && view2 != null) {
                    view2.sendAccessibilityEvent(8);
                } else if (!zF2 && view != null) {
                    view.sendAccessibilityEvent(8);
                }
            }
            playerControlView.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Player player = this.n;
        if (player != null && player.j()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        PlayerControlView playerControlView = this.f28396k;
        if (z && j() && !playerControlView.d()) {
            b(true);
            return true;
        }
        if ((j() && playerControlView.a(keyEvent)) || super.dispatchKeyEvent(keyEvent)) {
            b(true);
            return true;
        }
        if (z && j()) {
            b(true);
        }
        return false;
    }

    public final void e() {
        if (!j() || this.n == null) {
            return;
        }
        PlayerControlView playerControlView = this.f28396k;
        if (!playerControlView.d()) {
            b(true);
        } else if (this.z) {
            playerControlView.b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    public final void f() {
        boolean z;
        View view = this.f28394i;
        if (view != null) {
            Player player = this.n;
            if (player == null || player.h() != 2) {
                z = false;
            } else {
                int i2 = this.s;
                z = true;
                if (i2 != 2 && (i2 != 1 || !this.n.r())) {
                    z = false;
                }
            }
            view.setVisibility(z ? 0 : 8);
        }
    }

    public final void g() {
        PlayerControlView playerControlView = this.f28396k;
        if (playerControlView == null || !this.o) {
            setContentDescription(null);
        } else if (playerControlView.getVisibility() == 0) {
            setContentDescription(this.z ? getResources().getString(R.string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R.string.exo_controls_show));
        }
    }

    public List<AdOverlayInfo> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.m;
        if (frameLayout != null) {
            arrayList.add(new AdOverlayInfo(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.f28396k;
        if (playerControlView != null) {
            arrayList.add(new AdOverlayInfo(playerControlView, 1));
        }
        return ImmutableList.t(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.l;
        if (frameLayout != null) {
            return frameLayout;
        }
        md.k("exo_ad_overlay must be present for ad playback");
        return null;
    }

    public boolean getControllerAutoShow() {
        return this.x;
    }

    public boolean getControllerHideOnTouch() {
        return this.z;
    }

    public int getControllerShowTimeoutMs() {
        return this.w;
    }

    public Drawable getDefaultArtwork() {
        return this.r;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.m;
    }

    public Player getPlayer() {
        return this.n;
    }

    public int getResizeMode() {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f28390c;
        Assertions.c(aspectRatioFrameLayout);
        return aspectRatioFrameLayout.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f28393h;
    }

    public boolean getUseArtwork() {
        return this.q;
    }

    public boolean getUseController() {
        return this.o;
    }

    public View getVideoSurfaceView() {
        return this.f28391e;
    }

    public final void h() {
        ErrorMessageProvider errorMessageProvider;
        TextView textView = this.f28395j;
        if (textView != null) {
            CharSequence charSequence = this.v;
            if (charSequence != null) {
                textView.setText(charSequence);
                textView.setVisibility(0);
                return;
            }
            Player player = this.n;
            if ((player != null ? player.b() : null) == null || (errorMessageProvider = this.u) == null) {
                textView.setVisibility(8);
            } else {
                textView.setText((CharSequence) errorMessageProvider.a().second);
                textView.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i(boolean z) {
        boolean z2;
        Player player = this.n;
        View view = this.d;
        ImageView imageView = this.g;
        if (player == null || !player.d() || player.n().f28193b.isEmpty()) {
            if (this.t) {
                return;
            }
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
            if (view != null) {
                view.setVisibility(0);
                return;
            }
            return;
        }
        if (z && !this.t && view != null) {
            view.setVisibility(0);
        }
        ImmutableList immutableList = player.n().f28193b;
        int i2 = 0;
        while (true) {
            if (i2 >= immutableList.size()) {
                z2 = false;
                break;
            }
            Tracks.Group group = (Tracks.Group) immutableList.get(i2);
            for (boolean z3 : group.f28196e) {
                z2 = true;
                if (z3) {
                    if (group.f28194b.d == 2) {
                        break;
                    } else {
                        break;
                    }
                }
            }
            i2++;
        }
        if (z2) {
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
                return;
            }
            return;
        }
        if (view != null) {
            view.setVisibility(0);
        }
        if (this.q) {
            Assertions.c(imageView);
            player.A().getClass();
            Drawable drawable = this.r;
            if (drawable != null) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                    float f2 = intrinsicWidth / intrinsicHeight;
                    AspectRatioFrameLayout aspectRatioFrameLayout = this.f28390c;
                    if (aspectRatioFrameLayout != null) {
                        aspectRatioFrameLayout.setAspectRatio(f2);
                    }
                    imageView.setImageDrawable(drawable);
                    imageView.setVisibility(0);
                    return;
                }
            }
        }
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
            imageView.setVisibility(4);
        }
    }

    public final boolean j() {
        if (!this.o) {
            return false;
        }
        Assertions.c(this.f28396k);
        return true;
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!j() || this.n == null) {
            return false;
        }
        b(true);
        return true;
    }

    @Override // android.view.View
    public final boolean performClick() {
        e();
        return super.performClick();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AspectRatioListener aspectRatioListener) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f28390c;
        Assertions.c(aspectRatioFrameLayout);
        aspectRatioFrameLayout.setAspectRatioListener(aspectRatioListener);
    }

    public void setControllerAutoShow(boolean z) {
        this.x = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.y = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        Assertions.c(this.f28396k);
        this.z = z;
        g();
    }

    public void setControllerShowTimeoutMs(int i2) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        this.w = i2;
        if (playerControlView.d()) {
            d(c());
        }
    }

    public void setControllerVisibilityListener(PlayerControlView.VisibilityListener visibilityListener) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        CopyOnWriteArrayList copyOnWriteArrayList = playerControlView.f28380b;
        PlayerControlView.VisibilityListener visibilityListener2 = this.p;
        if (visibilityListener2 == visibilityListener) {
            return;
        }
        if (visibilityListener2 != null) {
            copyOnWriteArrayList.remove(visibilityListener2);
        }
        this.p = visibilityListener;
        if (visibilityListener != null) {
            copyOnWriteArrayList.add(visibilityListener);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        Assertions.b(this.f28395j != null);
        this.v = charSequence;
        h();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.r != drawable) {
            this.r = drawable;
            i(false);
        }
    }

    public void setErrorMessageProvider(ErrorMessageProvider<? super PlaybackException> errorMessageProvider) {
        if (this.u != errorMessageProvider) {
            this.u = errorMessageProvider;
            h();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.t != z) {
            this.t = z;
            i(false);
        }
    }

    public void setPlayer(Player player) {
        Assertions.b(Looper.myLooper() == Looper.getMainLooper());
        Assertions.a(player == null || player.a0() == Looper.getMainLooper());
        Player player2 = this.n;
        if (player2 == player) {
            return;
        }
        View view = this.f28391e;
        if (player2 != null) {
            player2.m();
            if (player2.d()) {
                if (view instanceof TextureView) {
                    player2.G();
                } else if (view instanceof SurfaceView) {
                    player2.t();
                }
            }
        }
        SubtitleView subtitleView = this.f28393h;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.n = player;
        boolean zJ = j();
        PlayerControlView playerControlView = this.f28396k;
        if (zJ) {
            playerControlView.setPlayer(player);
        }
        f();
        h();
        i(true);
        if (player == null) {
            if (playerControlView != null) {
                playerControlView.b();
                return;
            }
            return;
        }
        if (player.d()) {
            boolean z = view instanceof TextureView;
            if (z) {
                player.F();
            } else if (view instanceof SurfaceView) {
                player.C();
            }
            Player player3 = this.n;
            VideoSize videoSizeS = player3 != null ? player3.s() : VideoSize.f28464f;
            int i2 = videoSizeS.f28465b;
            int i3 = videoSizeS.f28466c;
            int i4 = videoSizeS.d;
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float f3 = (i3 == 0 || i2 == 0) ? 0.0f : (i2 * videoSizeS.f28467e) / i3;
            if (z) {
                if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM && (i4 == 90 || i4 == 270)) {
                    f3 = 1.0f / f3;
                }
                int i5 = this.A;
                ComponentListener componentListener = this.f28389b;
                if (i5 != 0) {
                    view.removeOnLayoutChangeListener(componentListener);
                }
                this.A = i4;
                if (i4 != 0) {
                    view.addOnLayoutChangeListener(componentListener);
                }
                a((TextureView) view, this.A);
            }
            if (!this.f28392f) {
                f2 = f3;
            }
            AspectRatioFrameLayout aspectRatioFrameLayout = this.f28390c;
            if (aspectRatioFrameLayout != null) {
                aspectRatioFrameLayout.setAspectRatio(f2);
            }
        }
        if (subtitleView != null && player.d()) {
            subtitleView.setCues(player.o().f28353b);
        }
        player.D();
        b(false);
    }

    public void setRepeatToggleModes(int i2) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        playerControlView.setRepeatToggleModes(i2);
    }

    public void setResizeMode(int i2) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f28390c;
        Assertions.c(aspectRatioFrameLayout);
        aspectRatioFrameLayout.setResizeMode(i2);
    }

    public void setShowBuffering(int i2) {
        if (this.s != i2) {
            this.s = i2;
            f();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        playerControlView.setShowFastForwardButton(z);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        playerControlView.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        playerControlView.setShowNextButton(z);
    }

    public void setShowPreviousButton(boolean z) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        playerControlView.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        playerControlView.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        PlayerControlView playerControlView = this.f28396k;
        Assertions.c(playerControlView);
        playerControlView.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i2) {
        View view = this.d;
        if (view != null) {
            view.setBackgroundColor(i2);
        }
    }

    public void setUseArtwork(boolean z) {
        Assertions.b((z && this.g == null) ? false : true);
        if (this.q != z) {
            this.q = z;
            i(false);
        }
    }

    public void setUseController(boolean z) {
        boolean z2 = true;
        PlayerControlView playerControlView = this.f28396k;
        Assertions.b((z && playerControlView == null) ? false : true);
        if (!z && !hasOnClickListeners()) {
            z2 = false;
        }
        setClickable(z2);
        if (this.o == z) {
            return;
        }
        this.o = z;
        if (j()) {
            playerControlView.setPlayer(this.n);
        } else if (playerControlView != null) {
            playerControlView.b();
            playerControlView.setPlayer(null);
        }
        g();
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        View view = this.f28391e;
        if (view instanceof SurfaceView) {
            view.setVisibility(i2);
        }
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerView(Context context) {
        this(context, null);
    }
}
