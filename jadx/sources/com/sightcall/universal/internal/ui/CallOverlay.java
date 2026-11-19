package com.sightcall.universal.internal.ui;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Application;
import android.content.Context;
import android.os.SystemClock;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.widget.Toast;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.internal.view.CallButton;
import com.sightcall.universal.internal.view.CallOverlayConsumerView;
import com.sightcall.universal.internal.view.ViewUtils;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.util.Feature;
import com.sightcall.universal.util.UiUtils;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Participant;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.AudioEvent;
import net.rtccloud.sdk.event.call.ParticipantEvent;
import net.rtccloud.sdk.event.call.ParticipantsEvent;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.event.call.VideoEvent;

/* JADX INFO: loaded from: classes3.dex */
public class CallOverlay implements View.OnClickListener {
    private static final long HANGUP_TAP_TIMEOUT = LiveTranslationEntity.DefaultSentenceTimeOut;
    private static volatile CallOverlay singleton;
    private ViewGroup callView;
    private CallOverlayConsumerView consumerView;
    private final Context context;
    private Coordinates coordinates;
    private final LayoutInflater inflater;
    private long lastHangupTry;
    private View rootView;
    private final WindowManager windowManager;
    private boolean isShown = false;
    private boolean isEnable = true;

    public class Coordinates {
        private final boolean margin;
        private final float percentX;
        private final float percentY;

        public Coordinates(float f2, float f3, boolean z) {
            this.percentX = f2;
            this.percentY = f3;
            this.margin = z;
        }
    }

    public static class LocationEvent {
        private final float x;
        private final float y;

        public LocationEvent(float f2, float f3) {
            this.x = f2;
            this.y = f3;
        }
    }

    private CallOverlay(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.inflater = LayoutInflater.from(new ContextThemeWrapper(context, R.style.universal_Theme));
        this.windowManager = (WindowManager) context.getSystemService("window");
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new CallOverlayLifecycle());
        }
    }

    private void addCallView() {
        ViewGroup viewGroup = (ViewGroup) this.inflater.inflate(R.layout.universal_view_overlay_call, (ViewGroup) null);
        this.callView = viewGroup;
        viewGroup.findViewById(R.id.universal_overlay_fullscreen).setOnClickListener(this);
        this.callView.findViewById(R.id.universal_overlay_hangup).setOnClickListener(this);
        this.consumerView = (CallOverlayConsumerView) this.callView.findViewById(R.id.universal_overlay_video_consumer);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, getViewType(), 40, -2);
        if (Boolean.TRUE.equals(Universal.settings().secureScreen().get())) {
            layoutParams.flags |= 8192;
        }
        this.callView.setScaleX(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.callView.setScaleY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.callView.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        ViewUtils.addViewSilently(this.windowManager, this.callView, layoutParams);
        Coordinates coordinates = this.coordinates;
        if (coordinates != null) {
            moveCallViewTo(coordinates.percentX, this.coordinates.percentY, false, this.coordinates.margin);
        } else {
            moveCallViewTo(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, true);
        }
        this.callView.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setInterpolator(new AccelerateDecelerateInterpolator()).start();
        this.callView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sightcall.universal.internal.ui.CallOverlay.2
            private float initialTouchX;
            private float initialTouchY;
            private int initialX;
            private int initialY;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (CallOverlay.this.rootView == null || CallOverlay.this.callView == null || !CallOverlay.this.isShown) {
                    return false;
                }
                WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) view.getLayoutParams();
                int width = (CallOverlay.this.rootView.getWidth() - view.getWidth()) / 2;
                int i2 = -width;
                int height = (CallOverlay.this.rootView.getHeight() - view.getHeight()) / 2;
                int i3 = -height;
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    this.initialX = CallOverlay.minMax(i2, layoutParams2.x, width);
                    this.initialY = CallOverlay.minMax(i3, layoutParams2.y, height);
                    this.initialTouchX = motionEvent.getRawX();
                    this.initialTouchY = motionEvent.getRawY();
                    return true;
                }
                if (actionMasked != 1 && actionMasked != 2 && actionMasked != 3) {
                    return false;
                }
                int rawX = this.initialX + ((int) (motionEvent.getRawX() - this.initialTouchX));
                int rawY = this.initialY + ((int) (motionEvent.getRawY() - this.initialTouchY));
                layoutParams2.x = CallOverlay.minMax(i2, rawX, width);
                layoutParams2.y = CallOverlay.minMax(i3, rawY, height);
                CallOverlay.this.windowManager.updateViewLayout(view, layoutParams2);
                return true;
            }
        });
    }

    private void addRootView() {
        this.rootView = new View(this.context) { // from class: com.sightcall.universal.internal.ui.CallOverlay.1
            {
                setWillNotDraw(true);
            }
        };
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, getRootType(), 24, -2);
        layoutParams.alpha = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ViewUtils.addViewSilently(this.windowManager, this.rootView, layoutParams);
    }

    private void animateAndRemove(final View view, final WindowManager windowManager) {
        view.animate().scaleX(Call.Parameters.DEFAULT_CAMERA_ZOOM).scaleY(Call.Parameters.DEFAULT_CAMERA_ZOOM).alpha(Call.Parameters.DEFAULT_CAMERA_ZOOM).setInterpolator(new AccelerateInterpolator()).setListener(new Animator.AnimatorListener() { // from class: com.sightcall.universal.internal.ui.CallOverlay.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
                view.post(new Runnable() { // from class: com.sightcall.universal.internal.ui.CallOverlay.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        ViewUtils.removeViewSilently(windowManager, view, false);
                    }
                });
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void doHide() {
        Rtcc.instance().bus().unregister(this);
        removeCallView();
        removeRootView();
        this.isShown = false;
    }

    private void doShow(Coordinates coordinates) {
        Feature feature = Feature.CALL_OVERLAY;
        if (!feature.isEnabled(this.context) || !this.isEnable) {
            Universal.logger().w(feature.message(this.context));
            return;
        }
        if (!UiUtils.canDrawOverlays(this.context)) {
            Universal.logger().w("Manifest.permission.SYSTEM_ALERT_WINDOW not granted");
            UniversalNotification.OVERLAY_PERMISSION_REQUIRED.show(this.context, new Object[0]);
            return;
        }
        if (coordinates != null) {
            this.coordinates = coordinates;
        }
        UniversalNotification.OVERLAY_PERMISSION_REQUIRED.cancel(this.context);
        Rtcc.instance().bus().register(this);
        addRootView();
        addCallView();
        this.isShown = true;
        updateViews();
    }

    private static int getRootType() {
        return SdkUtilsKt.isAtLeastSdk26() ? 2038 : 2006;
    }

    private static int getViewType() {
        return SdkUtilsKt.isAtLeastSdk26() ? 2038 : 2002;
    }

    public static void hide(Context context) {
        if (singleton == null) {
            return;
        }
        CallOverlay callOverlayInstance = instance(context);
        if (callOverlayInstance.isShown) {
            callOverlayInstance.doHide();
        }
    }

    public static CallOverlay instance(Context context) {
        CallOverlay callOverlay;
        CallOverlay callOverlay2 = singleton;
        if (callOverlay2 != null) {
            return callOverlay2;
        }
        synchronized (ScreenCastOverlay.class) {
            try {
                callOverlay = singleton;
                if (callOverlay == null) {
                    callOverlay = new CallOverlay(context.getApplicationContext());
                    singleton = callOverlay;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return callOverlay;
    }

    public static boolean isShown() {
        CallOverlay callOverlay = singleton;
        return callOverlay != null && callOverlay.isShown;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int minMax(int i2, int i3, int i4) {
        return Math.min(Math.max(i2, i3), i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveCallViewTo(final float f2, final float f3, final boolean z, final boolean z2) {
        ViewGroup viewGroup = this.callView;
        if (viewGroup == null || this.rootView == null) {
            return;
        }
        if (viewGroup.getWidth() == 0 || this.callView.getHeight() == 0) {
            this.callView.post(new Runnable() { // from class: com.sightcall.universal.internal.ui.CallOverlay.4
                @Override // java.lang.Runnable
                public void run() {
                    CallOverlay.this.moveCallViewTo(f2, f3, z, z2);
                }
            });
            return;
        }
        final WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.callView.getLayoutParams();
        final int i2 = layoutParams.x;
        final int i3 = layoutParams.y;
        int width = (this.rootView.getWidth() - this.callView.getWidth()) / 2;
        int i4 = -width;
        int height = (this.rootView.getHeight() - this.callView.getHeight()) / 2;
        int i5 = -height;
        float fDp2px = z2 ? UiUtils.dp2px(8.0f, this.inflater.getContext().getResources()) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        final int iMinMax = minMax((int) (i4 + fDp2px), (int) ((f2 - 0.5f) * this.rootView.getWidth()), (int) (width - fDp2px));
        final int iMinMax2 = minMax((int) (i5 + fDp2px), (int) ((f3 - 0.5f) * this.rootView.getHeight()), (int) (height - fDp2px));
        if (!z) {
            layoutParams.x = iMinMax;
            layoutParams.y = iMinMax2;
            this.windowManager.updateViewLayout(this.callView, layoutParams);
        } else {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sightcall.universal.internal.ui.CallOverlay.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (CallOverlay.this.callView == null || !CallOverlay.this.isShown) {
                        valueAnimator.cancel();
                        return;
                    }
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    WindowManager.LayoutParams layoutParams2 = layoutParams;
                    float f4 = 1.0f - animatedFraction;
                    layoutParams2.x = (int) ((iMinMax * animatedFraction) + (i2 * f4));
                    layoutParams2.y = (int) ((iMinMax2 * animatedFraction) + (i3 * f4));
                    CallOverlay.this.windowManager.updateViewLayout(CallOverlay.this.callView, layoutParams);
                }
            });
            valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            valueAnimatorOfFloat.start();
        }
    }

    private void removeCallView() {
        CallOverlayConsumerView callOverlayConsumerView = this.consumerView;
        if (callOverlayConsumerView != null) {
            Participant participant = callOverlayConsumerView.participant();
            if (participant != null && participant.videoConsumer() == this.consumerView) {
                participant.releaseVideoConsumer();
            }
            this.consumerView = null;
        }
        ViewGroup viewGroup = this.callView;
        if (viewGroup != null) {
            if (this.rootView != null) {
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) viewGroup.getLayoutParams();
                this.coordinates = new Coordinates((layoutParams.x / this.rootView.getWidth()) + 0.5f, (layoutParams.y / this.rootView.getHeight()) + 0.5f, false);
                animateAndRemove(this.callView, this.windowManager);
            } else {
                ViewUtils.removeViewSilently(this.windowManager, viewGroup, false);
            }
            this.callView = null;
        }
    }

    private void removeRootView() {
        View view = this.rootView;
        if (view != null) {
            ViewUtils.removeViewSilently(this.windowManager, view, false);
            this.rootView = null;
        }
    }

    public static void show(Context context, Coordinates coordinates) {
        CallOverlay callOverlayInstance = instance(context);
        if (!callOverlayInstance.isShown) {
            callOverlayInstance.doShow(coordinates);
        } else if (coordinates != null) {
            callOverlayInstance.moveCallViewTo(coordinates.percentX, coordinates.percentY, true, coordinates.margin);
        }
    }

    public static void terminate(Context context) {
        CallOverlay callOverlay = singleton;
        if (callOverlay != null) {
            hide(context);
            callOverlay.coordinates = null;
        }
    }

    private void updateViews() {
        Participant participant;
        Call call = Rtcc.instance().call().get();
        if (call == null) {
            hide(this.context);
            return;
        }
        if (this.callView == null || this.consumerView == null || !this.isShown) {
            return;
        }
        boolean zIsReceiving = call.video().isReceiving();
        if (call.isConference()) {
            Participant[] participantArrParticipants = call.conference().participants();
            participant = participantArrParticipants.length > 0 ? participantArrParticipants[0] : null;
        } else {
            participant = call.participant();
        }
        if (!zIsReceiving || participant == null) {
            return;
        }
        participant.videoConsumer(this.consumerView);
    }

    public void disable() {
        this.isEnable = false;
    }

    @Event
    public void onAudioEvent(AudioEvent audioEvent) {
        updateViews();
    }

    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        if (statusEvent.status() == Call.Status.ENDED) {
            hide(this.context);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Callback.n(view);
        try {
            int id = view.getId();
            if (id == R.id.universal_overlay_fullscreen) {
                if (Rtcc.instance().call().get() != null) {
                    CallActivity.start(this.context);
                }
            } else if (id == R.id.universal_overlay_hangup) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.lastHangupTry > HANGUP_TAP_TIMEOUT) {
                    Toast.makeText(this.context, R.string.universal_call_hangup_again, 1).show();
                    this.lastHangupTry = jElapsedRealtime;
                } else {
                    Session session = Session.get();
                    Call call = Rtcc.instance().call().get();
                    if (session != null && call != null) {
                        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onUserAction(session, CallButton.HANGUP, false, call, session.remoteState);
                    }
                    Universal.scenario().interrupt();
                }
            }
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    @Event
    public void onLocationEvent(LocationEvent locationEvent) {
        moveCallViewTo(locationEvent.x, locationEvent.y, true, false);
    }

    @Event
    public void onParticipantEvent(ParticipantEvent participantEvent) {
        updateViews();
    }

    @Event
    public void onParticipantsEvent(ParticipantsEvent participantsEvent) {
        updateViews();
    }

    @Event
    public void onVideoEvent(VideoEvent videoEvent) {
        updateViews();
    }

    public static void show(Context context) {
        show(context, null);
    }
}
