package com.sightcall.universal.internal.view;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.common.MyVideoProducer;
import com.sightcall.universal.R;
import com.sightcall.universal.internal.model.GpsRequest;
import com.sightcall.universal.internal.model.RemoteState;
import com.sightcall.universal.internal.ui.videoplayer.VideoProducerExtensionsKt;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.util.UiUtils;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.LinkedHashSet;
import net.rtccloud.sdk.AudioModule;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.RecordingModule;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.VideoProducer;

/* JADX INFO: loaded from: classes3.dex */
public class CallButtonBar extends LinearLayout implements View.OnClickListener {
    public static final AccelerateInterpolator ACCELERATE_INTERPOLATOR = new AccelerateInterpolator(1.5f);
    public static final DecelerateInterpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator(1.5f);
    private boolean isRemote;
    private final TextPaint labelPaint;
    private Listener listener;
    private String localLabel;
    private String remoteLabel;
    private RemoteState remoteState;
    private Session session;

    /* JADX INFO: renamed from: com.sightcall.universal.internal.view.CallButtonBar$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$internal$view$CallButton;

        static {
            int[] iArr = new int[CallButton.values().length];
            $SwitchMap$com$sightcall$universal$internal$view$CallButton = iArr;
            try {
                iArr[CallButton.MICRO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.VIDEO_SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.AUDIO_SOURCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.VIDEO_PAUSE_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SHARE_MEDIA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.FLASH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.ERASE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SHARE_STOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.RECORDING_PAUSE_RESUME.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SHARE_PHOTO.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SHARE_PICTURE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.GEOLOCATION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SAVE_MEDIA.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SNAPSHOT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SCREENCAST.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.MESSAGES.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.HANGUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public interface Listener {
        void onCallButtonClick(CallButtonImageView callButtonImageView, CallButton callButton, boolean z);
    }

    public CallButtonBar(Context context) {
        super(context);
        this.labelPaint = new TextPaint(1);
        init();
    }

    private void init() {
        if (isInEditMode()) {
            inflate(CallButton.MICRO, CallButton.AUDIO_SOURCE, CallButton.VIDEO, CallButton.VIDEO_PAUSE_RESUME, CallButton.VIDEO_SOURCE, CallButton.FLASH, CallButton.SHARE_MEDIA, CallButton.HANGUP);
        }
        this.labelPaint.setColor(-1);
        this.labelPaint.setTextAlign(Paint.Align.CENTER);
        this.labelPaint.setTextSize(UiUtils.dp2px(14.0f, getResources()));
        this.localLabel = getContext().getString(R.string.universal_call_local_bar_label);
        this.remoteLabel = getContext().getString(R.string.universal_call_remote_bar_label);
    }

    public void build(Session session, boolean z) {
        this.session = session;
        this.remoteState = session.remoteState;
        this.isRemote = z;
        setWillNotDraw(!z);
        inflate(z ? session.buttonsRemote() : session.buttonsLocal());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        int width = canvas.getWidth() / 2;
        float fDescent = this.labelPaint.descent() - this.labelPaint.ascent();
        if (this.isRemote) {
            if (TextUtils.isEmpty(this.remoteLabel)) {
                return;
            }
            canvas.drawText(this.remoteLabel, width, canvas.getHeight() + fDescent, this.labelPaint);
        } else {
            if (TextUtils.isEmpty(this.localLabel)) {
                return;
            }
            canvas.drawText(this.localLabel, width, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.labelPaint);
        }
    }

    public CallButtonImageView find(CallButton callButton) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof CallButtonImageView) {
                CallButtonImageView callButtonImageView = (CallButtonImageView) childAt;
                if (callButtonImageView.getType() == callButton) {
                    return callButtonImageView;
                }
            }
        }
        return null;
    }

    public void hide() {
        animate().alpha(Call.Parameters.DEFAULT_CAMERA_ZOOM).setInterpolator(ACCELERATE_INTERPOLATOR).setListener(new Animator.AnimatorListener() { // from class: com.sightcall.universal.internal.view.CallButtonBar.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CallButtonBar.this.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    public void inflate(CallButton... callButtonArr) {
        removeAllViews();
        if (callButtonArr == null || callButtonArr.length == 0) {
            return;
        }
        Context context = getContext();
        EnumSet enumSetOf = EnumSet.of(CallButton.SHARE_MEDIA, CallButton.SHARE_PHOTO, CallButton.SHARE_PICTURE, CallButton.SCREENCAST, CallButton.SNAPSHOT);
        LinkedHashSet<CallButton> linkedHashSet = new LinkedHashSet(Arrays.asList(callButtonArr));
        boolean z = false;
        for (CallButton callButton : linkedHashSet) {
            if (callButton != null) {
                if (!z && enumSetOf.contains(callButton)) {
                    CallButton callButton2 = CallButton.SHARE_STOP;
                    if (!linkedHashSet.contains(callButton2)) {
                        addView(callButton2.inflate(context, this));
                        z = true;
                    }
                }
                CallButtonImageView callButtonImageViewInflate = callButton.inflate(context, this);
                if (callButtonImageViewInflate != null) {
                    addView(callButtonImageViewInflate);
                }
            }
        }
    }

    public boolean isRemote() {
        return this.isRemote;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Listener listener;
        Callback.n(view);
        try {
            if ((view instanceof CallButtonImageView) && (listener = this.listener) != null) {
                CallButtonImageView callButtonImageView = (CallButtonImageView) view;
                listener.onCallButtonClick(callButtonImageView, callButtonImageView.getType(), this.isRemote);
            }
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public void setOnCallButtonClickListener(Listener listener) {
        this.listener = listener;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void show() {
        animate().setListener(null).alpha(1.0f).setInterpolator(DECELERATE_INTERPOLATOR).start();
        setVisibility(0);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0138  */
    /* JADX WARN: Code duplicated, block: B:104:0x013d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0142  */
    /* JADX WARN: Code duplicated, block: B:106:0x0148  */
    /* JADX WARN: Code duplicated, block: B:110:0x0153  */
    /* JADX WARN: Code duplicated, block: B:112:0x0158 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:114:0x015e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x0160  */
    /* JADX WARN: Code duplicated, block: B:116:0x0162 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:119:0x0168  */
    /* JADX WARN: Code duplicated, block: B:121:0x016d  */
    /* JADX WARN: Code duplicated, block: B:122:0x016f  */
    /* JADX WARN: Code duplicated, block: B:127:0x017e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0183  */
    /* JADX WARN: Code duplicated, block: B:130:0x0187  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:140:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:141:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:143:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:144:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:145:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:164:0x0207  */
    /* JADX WARN: Code duplicated, block: B:166:0x020d  */
    /* JADX WARN: Code duplicated, block: B:168:0x0213  */
    /* JADX WARN: Code duplicated, block: B:172:0x021c  */
    /* JADX WARN: Code duplicated, block: B:174:0x0222  */
    /* JADX WARN: Code duplicated, block: B:180:0x0232  */
    /* JADX WARN: Code duplicated, block: B:186:0x0240  */
    /* JADX WARN: Code duplicated, block: B:188:0x0246  */
    /* JADX WARN: Code duplicated, block: B:190:0x0251  */
    /* JADX WARN: Code duplicated, block: B:191:0x0256  */
    /* JADX WARN: Code duplicated, block: B:192:0x025b  */
    /* JADX WARN: Code duplicated, block: B:194:0x0261  */
    /* JADX WARN: Code duplicated, block: B:195:0x0269  */
    /* JADX WARN: Code duplicated, block: B:199:0x0270  */
    /* JADX WARN: Code duplicated, block: B:206:0x0282  */
    /* JADX WARN: Code duplicated, block: B:211:0x028c  */
    /* JADX WARN: Code duplicated, block: B:213:0x0292  */
    /* JADX WARN: Code duplicated, block: B:215:0x029c  */
    /* JADX WARN: Code duplicated, block: B:216:0x029e  */
    /* JADX WARN: Code duplicated, block: B:218:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:220:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:221:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:224:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:226:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:228:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:229:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:231:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:232:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:238:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:240:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:242:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:243:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:245:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:90:0x0101  */
    /* JADX WARN: Code duplicated, block: B:94:0x010f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0119  */
    /* JADX WARN: Code duplicated, block: B:98:0x011e  */
    public void update(Call call) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i2;
        View childAt;
        CallButtonImageView callButtonImageView;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        int i3;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        if (call == null || call.status() != Call.Status.ACTIVE) {
            return;
        }
        AudioModule audioModuleAudio = call.audio();
        VideoModule videoModuleVideo = call.video();
        VideoProducer videoProducerProducer = videoModuleVideo.producer();
        boolean z23 = videoProducerProducer instanceof UvcProducer;
        boolean z24 = videoProducerProducer instanceof MyVideoProducerCameraView;
        MyVideoProducerCameraView myVideoProducerCameraView = z24 ? (MyVideoProducerCameraView) videoProducerProducer : null;
        ScreenshareModule screenshareModuleScreenshare = call.screenshare();
        RecordingModule recordingModuleRecording = call.conference().recording();
        call.isConference();
        boolean zIsSending = videoModuleVideo.isSending();
        boolean zIsRecording = recordingModuleRecording.isRecording();
        boolean z25 = screenshareModuleScreenshare.isSending() || ProgressivexImageView.isSending();
        boolean z26 = screenshareModuleScreenshare.isReceiving() || ProgressivexImageView.isReceiving();
        boolean zIsReceiving = videoModuleVideo.isReceiving();
        boolean zIsMyVideoProducerPlayerView = VideoProducerExtensionsKt.isMyVideoProducerPlayerView(videoProducerProducer);
        RemoteState remoteState = this.remoteState;
        boolean z27 = remoteState != null;
        boolean z28 = z27 && remoteState.isMuted();
        boolean z29 = z27 && this.remoteState.isCameraEnabled();
        boolean z30 = z27 && this.remoteState.isCameraPaused();
        boolean z31 = z27 && this.remoteState.isFlashAvailable();
        boolean z32 = z27 && this.remoteState.isPlayerEnabled();
        boolean z33 = z27 && this.remoteState.isPlayerPaused();
        if (z27) {
            z = z33;
            z2 = this.remoteState.isFlashEnabled();
            if (!z25 || (zIsSending && zIsMyVideoProducerPlayerView)) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z26 || (zIsReceiving && z32)) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (!z3 || z4) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (!zIsSending || zIsReceiving != 0 || z25 || z26) {
                z6 = true;
            } else {
                z6 = false;
            }
            MyVideoProducerCameraView myVideoProducerCameraView2 = myVideoProducerCameraView;
            i2 = 0;
            while (i2 < getChildCount()) {
                childAt = getChildAt(i2);
                int i4 = i2;
                if (!(childAt instanceof CallButtonImageView)) {
                    callButtonImageView = (CallButtonImageView) childAt;
                    switch (AnonymousClass2.$SwitchMap$com$sightcall$universal$internal$view$CallButton[callButtonImageView.getType().ordinal()]) {
                        case 1:
                            z6 = z6;
                            if (this.isRemote) {
                                z7 = true;
                                callButtonImageView.setActivated(!z28);
                            } else {
                                z7 = true;
                                if (audioModuleAudio.isStarted()) {
                                    callButtonImageView.setActivated(!audioModuleAudio.isRecorderMuted());
                                }
                            }
                            callButtonImageView.setEnabled(z7);
                            break;
                        case 2:
                            z6 = z6;
                            if (ProgressivexImageView.isRunning()) {
                                callButtonImageView.setEnabled(false);
                            } else {
                                if (this.isRemote) {
                                    z8 = z29;
                                } else {
                                    z8 = zIsSending;
                                }
                                callButtonImageView.setActivated(z8);
                                if (this.isRemote && zIsMyVideoProducerPlayerView) {
                                    z9 = false;
                                } else {
                                    z9 = true;
                                }
                                callButtonImageView.setEnabled(z9);
                            }
                            break;
                        case 3:
                            z6 = z6;
                            if (this.isRemote) {
                                z10 = z29;
                            } else if (zIsSending || z24 == 0) {
                                z10 = false;
                            } else {
                                z10 = true;
                            }
                            callButtonImageView.setEnabled(z10);
                            break;
                        case 4:
                            z6 = z6;
                            if (audioModuleAudio.route() == AudioModule.AudioRoute.HEADSET) {
                                i3 = 1;
                            } else {
                                i3 = 0;
                            }
                            callButtonImageView.setImageLevel(i3);
                            callButtonImageView.setEnabled(!this.isRemote);
                            break;
                        case 5:
                            z6 = z6;
                            if (this.isRemote) {
                                callButtonImageView.setActivated(z30);
                                callButtonImageView.setEnabled(z29);
                            } else {
                                if (z24 == 0 || z23) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (!z11 && (videoProducerProducer instanceof MyVideoProducer) && ((MyVideoProducer) videoProducerProducer).isPaused()) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                callButtonImageView.setActivated(z12);
                                if (z11 || !zIsSending) {
                                    z13 = false;
                                } else {
                                    z13 = true;
                                }
                                callButtonImageView.setEnabled(z13);
                            }
                            break;
                        case 6:
                            z6 = z6;
                            callButtonImageView.setEnabled(!z5);
                            if (this.isRemote) {
                                callButtonImageView.setActivated(z26);
                            } else {
                                callButtonImageView.setActivated(z25);
                            }
                            break;
                        case 7:
                            z6 = z6;
                            if (this.isRemote) {
                                callButtonImageView.setActivated(z2);
                                if (z31 || z30) {
                                    z16 = false;
                                } else {
                                    z16 = true;
                                }
                                callButtonImageView.setEnabled(z16);
                            } else {
                                if (z24 == 0 && myVideoProducerCameraView2.isFlashAvailable() && !myVideoProducerCameraView2.isPaused()) {
                                    z14 = true;
                                } else {
                                    z14 = false;
                                }
                                callButtonImageView.setEnabled(z14);
                                if (z24 || !myVideoProducerCameraView2.isFlashEnabled()) {
                                    z15 = false;
                                } else {
                                    z15 = true;
                                }
                                callButtonImageView.setActivated(z15);
                            }
                            break;
                        case 8:
                            z6 = z6;
                            if (!z25 || z26 || ((videoProducerProducer instanceof MyVideoProducer) && ((MyVideoProducer) videoProducerProducer).isPaused())) {
                                z17 = true;
                            } else {
                                Session session = this.session;
                                if ((session != null ? session.config.role() : null) == Session.Role.HOST && ((z29 && z30) || (z32 && z))) {
                                    z17 = true;
                                } else {
                                    z17 = false;
                                }
                            }
                            callButtonImageView.setEnabled(z17);
                            break;
                        case 9:
                            z6 = z6;
                            callButtonImageView.setActivated(true);
                            if (this.isRemote) {
                                callButtonImageView.setEnabled(z4);
                            } else {
                                callButtonImageView.setEnabled(z3);
                            }
                            break;
                        case 10:
                            callButtonImageView.setActivated(zIsRecording);
                            z18 = true;
                            callButtonImageView.setEnabled(true);
                            break;
                        case 11:
                            z6 = z6;
                            callButtonImageView.setEnabled(!z5);
                            break;
                        case 12:
                            z6 = z6;
                            callButtonImageView.setEnabled(!z5);
                            break;
                        case 13:
                            callButtonImageView.setEnabled(this.isRemote);
                            GpsRequest gpsRequest = this.remoteState.gpsRequest();
                            z6 = z6;
                            if (this.isRemote || gpsRequest == null || !gpsRequest.isRequesting()) {
                                z19 = false;
                            } else {
                                z19 = true;
                            }
                            callButtonImageView.setActivated(z19);
                            break;
                        case 14:
                            callButtonImageView.setEnabled(z6);
                            z6 = z6;
                            break;
                        case 15:
                            z20 = this.isRemote;
                            if (!z20 && z25) {
                                callButtonImageView.setEnabled(false);
                            } else if (z20 && z26) {
                                callButtonImageView.setEnabled(false);
                            } else if (z20) {
                                if (zIsReceiving != 0 || z30 || z) {
                                    z22 = false;
                                } else {
                                    z22 = true;
                                }
                                callButtonImageView.setEnabled(z22);
                            } else {
                                if (zIsSending || !(videoProducerProducer instanceof MyVideoProducer) || ((MyVideoProducer) videoProducerProducer).isPaused()) {
                                    z21 = false;
                                } else {
                                    z21 = true;
                                }
                                callButtonImageView.setEnabled(z21);
                            }
                            z6 = z6;
                            break;
                        case 16:
                            callButtonImageView.setEnabled(!z5);
                            z6 = z6;
                            break;
                        case 17:
                            z18 = true;
                            callButtonImageView.setEnabled(true);
                            break;
                        case 18:
                            z18 = true;
                            callButtonImageView.setEnabled(true);
                            break;
                        default:
                            z18 = true;
                            callButtonImageView.setEnabled(true);
                            break;
                    }
                } else {
                    z6 = z6;
                }
                i2 = i4 + 1;
                z6 = z6;
            }
        }
        z = z33;
        if (z25) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (z26) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (z3) {
            z5 = true;
        } else {
            z5 = true;
        }
        if (zIsSending) {
            z6 = true;
        } else {
            z6 = true;
        }
        MyVideoProducerCameraView myVideoProducerCameraView3 = myVideoProducerCameraView;
        i2 = 0;
        while (i2 < getChildCount()) {
            childAt = getChildAt(i2);
            int i5 = i2;
            if (!(childAt instanceof CallButtonImageView)) {
                callButtonImageView = (CallButtonImageView) childAt;
                switch (AnonymousClass2.$SwitchMap$com$sightcall$universal$internal$view$CallButton[callButtonImageView.getType().ordinal()]) {
                    case 1:
                        z6 = z6;
                        if (this.isRemote) {
                            z7 = true;
                            callButtonImageView.setActivated(!z28);
                        } else {
                            z7 = true;
                            if (audioModuleAudio.isStarted()) {
                                callButtonImageView.setActivated(!audioModuleAudio.isRecorderMuted());
                            }
                        }
                        callButtonImageView.setEnabled(z7);
                        break;
                    case 2:
                        z6 = z6;
                        if (ProgressivexImageView.isRunning()) {
                            callButtonImageView.setEnabled(false);
                        } else {
                            if (this.isRemote) {
                                z8 = z29;
                            } else {
                                z8 = zIsSending;
                            }
                            callButtonImageView.setActivated(z8);
                            if (this.isRemote) {
                                z9 = true;
                            } else {
                                z9 = true;
                            }
                            callButtonImageView.setEnabled(z9);
                        }
                        break;
                    case 3:
                        z6 = z6;
                        if (this.isRemote) {
                            z10 = z29;
                        } else if (zIsSending) {
                            z10 = false;
                        } else {
                            z10 = false;
                        }
                        callButtonImageView.setEnabled(z10);
                        break;
                    case 4:
                        z6 = z6;
                        if (audioModuleAudio.route() == AudioModule.AudioRoute.HEADSET) {
                            i3 = 1;
                        } else {
                            i3 = 0;
                        }
                        callButtonImageView.setImageLevel(i3);
                        callButtonImageView.setEnabled(!this.isRemote);
                        break;
                    case 5:
                        z6 = z6;
                        if (this.isRemote) {
                            callButtonImageView.setActivated(z30);
                            callButtonImageView.setEnabled(z29);
                        } else {
                            if (z24 == 0) {
                                z11 = true;
                            } else {
                                z11 = true;
                            }
                            if (!z11) {
                                z12 = false;
                            } else {
                                z12 = false;
                            }
                            callButtonImageView.setActivated(z12);
                            if (z11) {
                                z13 = false;
                            } else {
                                z13 = false;
                            }
                            callButtonImageView.setEnabled(z13);
                        }
                        break;
                    case 6:
                        z6 = z6;
                        callButtonImageView.setEnabled(!z5);
                        if (this.isRemote) {
                            callButtonImageView.setActivated(z26);
                        } else {
                            callButtonImageView.setActivated(z25);
                        }
                        break;
                    case 7:
                        z6 = z6;
                        if (this.isRemote) {
                            callButtonImageView.setActivated(z2);
                            if (z31) {
                                z16 = false;
                            } else {
                                z16 = false;
                            }
                            callButtonImageView.setEnabled(z16);
                        } else {
                            if (z24 == 0) {
                                z14 = false;
                            } else {
                                z14 = false;
                            }
                            callButtonImageView.setEnabled(z14);
                            if (z24) {
                                z15 = false;
                            } else {
                                z15 = false;
                            }
                            callButtonImageView.setActivated(z15);
                        }
                        break;
                    case 8:
                        z6 = z6;
                        if (z25) {
                            z17 = true;
                        } else {
                            z17 = true;
                        }
                        callButtonImageView.setEnabled(z17);
                        break;
                    case 9:
                        z6 = z6;
                        callButtonImageView.setActivated(true);
                        if (this.isRemote) {
                            callButtonImageView.setEnabled(z4);
                        } else {
                            callButtonImageView.setEnabled(z3);
                        }
                        break;
                    case 10:
                        callButtonImageView.setActivated(zIsRecording);
                        z18 = true;
                        callButtonImageView.setEnabled(true);
                        break;
                    case 11:
                        z6 = z6;
                        callButtonImageView.setEnabled(!z5);
                        break;
                    case 12:
                        z6 = z6;
                        callButtonImageView.setEnabled(!z5);
                        break;
                    case 13:
                        callButtonImageView.setEnabled(this.isRemote);
                        GpsRequest gpsRequest2 = this.remoteState.gpsRequest();
                        z6 = z6;
                        if (this.isRemote) {
                            z19 = false;
                        } else {
                            z19 = false;
                        }
                        callButtonImageView.setActivated(z19);
                        break;
                    case 14:
                        callButtonImageView.setEnabled(z6);
                        z6 = z6;
                        break;
                    case 15:
                        z20 = this.isRemote;
                        if (!z20) {
                            if (z20) {
                                if (z20) {
                                    if (zIsReceiving != 0) {
                                        z22 = false;
                                    } else {
                                        z22 = false;
                                    }
                                    callButtonImageView.setEnabled(z22);
                                } else {
                                    if (zIsSending) {
                                        z21 = false;
                                    } else {
                                        z21 = false;
                                    }
                                    callButtonImageView.setEnabled(z21);
                                }
                            } else if (z20) {
                                if (zIsReceiving != 0) {
                                    z22 = false;
                                } else {
                                    z22 = false;
                                }
                                callButtonImageView.setEnabled(z22);
                            } else {
                                if (zIsSending) {
                                    z21 = false;
                                } else {
                                    z21 = false;
                                }
                                callButtonImageView.setEnabled(z21);
                            }
                        } else if (z20) {
                            if (z20) {
                                if (zIsReceiving != 0) {
                                    z22 = false;
                                } else {
                                    z22 = false;
                                }
                                callButtonImageView.setEnabled(z22);
                            } else {
                                if (zIsSending) {
                                    z21 = false;
                                } else {
                                    z21 = false;
                                }
                                callButtonImageView.setEnabled(z21);
                            }
                        } else if (z20) {
                            if (zIsReceiving != 0) {
                                z22 = false;
                            } else {
                                z22 = false;
                            }
                            callButtonImageView.setEnabled(z22);
                        } else {
                            if (zIsSending) {
                                z21 = false;
                            } else {
                                z21 = false;
                            }
                            callButtonImageView.setEnabled(z21);
                        }
                        z6 = z6;
                        break;
                    case 16:
                        callButtonImageView.setEnabled(!z5);
                        z6 = z6;
                        break;
                    case 17:
                        z18 = true;
                        callButtonImageView.setEnabled(true);
                        break;
                    case 18:
                        z18 = true;
                        callButtonImageView.setEnabled(true);
                        break;
                    default:
                        z18 = true;
                        callButtonImageView.setEnabled(true);
                        break;
                }
            } else {
                z6 = z6;
            }
            i2 = i5 + 1;
            z6 = z6;
        }
    }

    public CallButtonBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.labelPaint = new TextPaint(1);
        init();
    }

    public CallButtonBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.labelPaint = new TextPaint(1);
        init();
    }
}
