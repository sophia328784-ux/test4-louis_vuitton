package com.sightcall.universal.internal.model;

import com.sightcall.common.DataChannelAction;
import com.sightcall.universal.internal.view.ViewUtils;
import com.sightcall.universal.scenario.steps.CallStep;
import defpackage.fc;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.VideoModule;

/* JADX INFO: loaded from: classes3.dex */
public class RemoteState implements CallStep.Delegate {
    private VideoModule.CameraSource cameraSource;
    private float cameraZoom;
    private GpsRequest gpsRequest;
    private boolean isCameraEnabled;
    private boolean isCameraPaused;
    private boolean isFlashAvailable;
    private boolean isFlashEnabled;
    private boolean isMuted;
    private boolean isPlayerEnabled;
    private boolean isPlayerPaused;
    private boolean isStarted = false;
    private String lastShareAction;

    /* JADX INFO: renamed from: com.sightcall.universal.internal.model.RemoteState$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$common$DataChannelAction;

        static {
            int[] iArr = new int[DataChannelAction.values().length];
            $SwitchMap$com$sightcall$common$DataChannelAction = iArr;
            try {
                iArr[DataChannelAction.STARTED_MUTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOPPED_MUTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STARTED_LIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOPPED_LIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.TORCH_AVAILABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.TORCH_UNAVAILABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STARTED_CAMERA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOPPED_CAMERA.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STARTED_HOLD.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOPPED_HOLD.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STARTED_PLAYER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOPPED_PLAYER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.PAUSED_PLAYER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.RESUMED_PLAYER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SETTED_CAMERA_FRONT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SETTED_CAMERA_REAR.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.ZOOMED_CAMERA.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STARTED_SHARE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SELECTED_PICTURE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SELECTED_PHOTO.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STARTED_SCREENCAST.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    public VideoModule.CameraSource cameraSource() {
        return this.cameraSource;
    }

    public float cameraZoom() {
        return this.cameraZoom;
    }

    public GpsRequest gpsRequest() {
        if (this.gpsRequest == null) {
            this.gpsRequest = new GpsRequest();
        }
        return this.gpsRequest;
    }

    public boolean isCameraEnabled() {
        return this.isCameraEnabled;
    }

    public boolean isCameraPaused() {
        return this.isCameraPaused;
    }

    public boolean isFlashAvailable() {
        return this.isFlashAvailable;
    }

    public boolean isFlashEnabled() {
        return this.isFlashEnabled;
    }

    public boolean isMuted() {
        return this.isMuted;
    }

    public boolean isPlayerEnabled() {
        return this.isPlayerEnabled;
    }

    public boolean isPlayerPaused() {
        return this.isPlayerPaused;
    }

    public boolean isSharingPhoto() {
        return DataChannelAction.SELECTED_PHOTO.name().equals(this.lastShareAction);
    }

    public boolean isSharingPicture() {
        return DataChannelAction.SELECTED_PICTURE.name().equals(this.lastShareAction);
    }

    public boolean isSharingScreen() {
        return DataChannelAction.STARTED_SCREENCAST.name().equals(this.lastShareAction);
    }

    public boolean isSharingUrl() {
        return DataChannelAction.STARTED_SHARE.name().equals(this.lastShareAction);
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep.Delegate
    public void onForwardInbandDataChannel(DataChannelAction dataChannelAction, String str) {
        switch (AnonymousClass1.$SwitchMap$com$sightcall$common$DataChannelAction[dataChannelAction.ordinal()]) {
            case 1:
                this.isMuted = true;
                break;
            case 2:
                this.isMuted = false;
                break;
            case 3:
                this.isFlashAvailable = true;
                this.isFlashEnabled = true;
                break;
            case 4:
                this.isFlashEnabled = false;
                break;
            case 5:
                this.isFlashAvailable = true;
                break;
            case 6:
                this.isFlashAvailable = false;
                this.isFlashEnabled = false;
                break;
            case 7:
                this.isCameraEnabled = true;
                this.isCameraPaused = false;
                this.isPlayerEnabled = false;
                this.isPlayerPaused = false;
                break;
            case 8:
                this.isCameraEnabled = false;
                this.isCameraPaused = false;
                this.isFlashAvailable = false;
                this.isFlashEnabled = false;
                this.cameraZoom = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                break;
            case 9:
                this.isCameraPaused = true;
                break;
            case 10:
                this.isCameraPaused = false;
                break;
            case 11:
                this.isPlayerEnabled = true;
                this.isPlayerPaused = false;
                this.isCameraEnabled = false;
                this.isCameraPaused = false;
                break;
            case 12:
                this.isPlayerEnabled = false;
                this.isPlayerPaused = false;
                break;
            case 13:
                this.isPlayerPaused = true;
                break;
            case 14:
                this.isPlayerPaused = false;
                break;
            case 15:
                this.cameraSource = VideoModule.CameraSource.FRONT;
                break;
            case 16:
                this.cameraSource = VideoModule.CameraSource.BACK;
                break;
            case 17:
                if (str != null && str.length() == 4) {
                    this.cameraZoom = ViewUtils.intPercentToFloatPercent(Integer.valueOf(str, 16).intValue());
                    break;
                }
                break;
            case 18:
                this.lastShareAction = dataChannelAction.name();
                break;
            case 19:
                this.lastShareAction = dataChannelAction.name();
                break;
            case 20:
                this.lastShareAction = dataChannelAction.name();
                break;
            case 21:
                this.lastShareAction = dataChannelAction.name();
                break;
            default:
                if (GpsRequest.ACTIONS.contains(dataChannelAction)) {
                    if (this.gpsRequest == null) {
                        this.gpsRequest = new GpsRequest();
                    }
                    this.gpsRequest.handle(dataChannelAction, str);
                }
                break;
        }
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep.Delegate
    public void onRefreshCallButtons() {
    }

    public void prepareForSnapshot() {
        this.lastShareAction = DataChannelAction.SELECTED_PHOTO.name();
    }

    public void start(CallStep callStep) {
        if (this.isStarted) {
            return;
        }
        this.isStarted = true;
        callStep.register(this);
    }

    public void stop(CallStep callStep) {
        if (this.isStarted) {
            this.isStarted = false;
            callStep.unregister(this);
            GpsRequest gpsRequest = this.gpsRequest;
            if (gpsRequest != null) {
                gpsRequest.onStop();
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RemoteState{isMuted=");
        sb.append(this.isMuted);
        sb.append(", isFlashAvailable=");
        sb.append(this.isFlashAvailable);
        sb.append(", isFlashEnabled=");
        sb.append(this.isFlashEnabled);
        sb.append(", isCameraEnabled=");
        sb.append(this.isCameraEnabled);
        sb.append(", isCameraPaused=");
        sb.append(this.isCameraPaused);
        sb.append(", isPlayerEnabled=");
        sb.append(this.isPlayerEnabled);
        sb.append(", isPlayerPaused=");
        sb.append(this.isPlayerPaused);
        sb.append(", cameraSource=");
        sb.append(this.cameraSource);
        sb.append(", lastShareAction=");
        return fc.l(sb, this.lastShareAction, '}');
    }

    public void cameraSource(VideoModule.CameraSource cameraSource) {
        this.cameraSource = cameraSource;
    }
}
