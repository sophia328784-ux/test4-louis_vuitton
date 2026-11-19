package com.sightcall.universal.internal.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.hardware.Camera;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import com.sightcall.session.Reference;
import com.sightcall.universal.R;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.function.IntFunction;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public class CallButton {
    public final String[] alternativeKeys;
    public final int drawable;
    public final String key;
    public final int[] voiceCommands;
    public static final CallButton MICRO = new CallButton("MICRO", 0, R.drawable.universal_icon_call_micro, new int[]{R.string.universal_microphone_on, R.string.universal_microphone_off}, "local-sound", "remote-sound");
    public static final CallButton VIDEO = new CallButton("VIDEO", 1, R.drawable.universal_icon_call_video, new int[]{R.string.universal_start_video, R.string.universal_stop_video}, "local-video", "remote-video");
    public static final CallButton VIDEO_SOURCE = new AnonymousClass1(R.drawable.universal_icon_call_video_source, new String[]{"local-layout", "remote-layout"}, new int[]{R.string.universal_video_source});
    public static final CallButton AUDIO_SOURCE = new CallButton("AUDIO_SOURCE", 3, R.drawable.universal_icon_call_audio_source, new int[0], "toggle-speaker", "local-speaker");
    public static final CallButton VIDEO_PAUSE_RESUME = new CallButton("VIDEO_PAUSE_RESUME", 4, R.drawable.universal_icon_call_pause_resume, new int[]{R.string.universal_pause_video, R.string.universal_resume_video}, "remote-pause", "local-pause");
    public static final CallButton SHARE_MEDIA = new CallButton("SHARE_MEDIA", 5, R.drawable.universal_icon_call_share, new int[]{R.string.universal_share_media}, "remote-picker", "local-share");
    public static final CallButton FLASH = new CallButton("FLASH", 6, R.drawable.universal_icon_call_flash, new int[]{R.string.universal_flash_on, R.string.universal_flash_off}, "remote-light", "local-light");
    public static final CallButton ERASE = new CallButton("ERASE", 7, R.drawable.universal_icon_call_erase, new int[]{R.string.universal_erase}, "local-erase", "remote-erase");
    public static final CallButton SHARE_STOP = new CallButton("SHARE_STOP", 8, R.drawable.universal_icon_call_share, new int[]{R.string.universal_share_stop}, "local-stop-share", new String[0]);
    public static final CallButton RECORDING_PAUSE_RESUME = new CallButton("RECORDING_PAUSE_RESUME", 9, R.drawable.universal_icon_call_recording_pause_resume, new int[0], "local-record", new String[0]);
    public static final CallButton SHARE_PHOTO = new CallButton("SHARE_PHOTO", 10, R.drawable.universal_icon_call_share_photo, new int[0], "remote-photo", new String[0]);
    public static final CallButton SHARE_PICTURE = new CallButton("SHARE_PICTURE", 11, R.drawable.universal_icon_call_share_picture, new int[0], "remote-gallery-picture", new String[0]);
    public static final CallButton GEOLOCATION = new CallButton("GEOLOCATION", 12, R.drawable.universal_icon_call_geolocation, new int[0], "mobile-geoloc", new String[0]);
    public static final CallButton SAVE_MEDIA = new CallButton("SAVE_MEDIA", 13, R.drawable.universal_icon_call_save_media, new int[0], "remote-save", new String[0]);
    public static final CallButton SNAPSHOT = new CallButton("SNAPSHOT", 14, R.drawable.universal_icon_call_share_photo, new int[0], "remote-snapshot", new String[0]);
    public static final CallButton SCREENCAST = new CallButton("SCREENCAST", 15, R.drawable.universal_icon_call_screencast, new int[]{R.string.universal_screencast}, "remote-screencast", new String[0]);
    public static final CallButton MESSAGES = new CallButton("MESSAGES", 16, R.drawable.universal_icon_call_messaging, new int[]{R.string.universal_message}, "open-chat", new String[0]);
    public static final CallButton HANGUP = new AnonymousClass2(R.drawable.universal_icon_call_hangup, new String[0], new int[]{R.string.universal_hangup});
    private static final /* synthetic */ CallButton[] $VALUES = $values();
    public static String SEPARATOR = ",";
    private static final SparseArray<CallButton> REVERSE_LUT = new SparseArray<CallButton>() { // from class: com.sightcall.universal.internal.view.CallButton.3
        {
            for (CallButton callButton : CallButton.values()) {
                put(callButton.ordinal(), callButton);
            }
        }
    };

    private static /* synthetic */ CallButton[] $values() {
        return new CallButton[]{MICRO, VIDEO, VIDEO_SOURCE, AUDIO_SOURCE, VIDEO_PAUSE_RESUME, SHARE_MEDIA, FLASH, ERASE, SHARE_STOP, RECORDING_PAUSE_RESUME, SHARE_PHOTO, SHARE_PICTURE, GEOLOCATION, SAVE_MEDIA, SNAPSHOT, SCREENCAST, MESSAGES, HANGUP};
    }

    private CallButton(String str, int i2, int i3, int[] iArr, String str2, String... strArr) {
        super(str, i2);
        this.drawable = i3;
        this.voiceCommands = iArr;
        this.key = str2;
        this.alternativeKeys = strArr;
    }

    private String createContentDescription(final Context context, int[] iArr) {
        IntStream intStreamStream = Arrays.stream(iArr);
        Objects.requireNonNull(context);
        return (String) intStreamStream.mapToObj(new IntFunction() { // from class: ji
            @Override // java.util.function.IntFunction
            public final Object apply(int i2) {
                return context.getString(i2);
            }
        }).collect(Collectors.joining(SEPARATOR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getNumberOfCameras() {
        try {
            return Camera.getNumberOfCameras();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static CallButton parse(String str) {
        for (CallButton callButton : values()) {
            if (callButton.key.equals(str)) {
                return callButton;
            }
        }
        for (CallButton callButton2 : values()) {
            String[] strArr = callButton2.alternativeKeys;
            if (strArr != null && strArr.length != 0) {
                for (String str2 : strArr) {
                    if (str2.equals(str)) {
                        return callButton2;
                    }
                }
            }
        }
        return null;
    }

    public static CallButton valueOf(String str) {
        return (CallButton) Enum.valueOf(CallButton.class, str);
    }

    public static CallButton[] values() {
        return (CallButton[]) $VALUES.clone();
    }

    public static CallButton[] valuesOf(List<Reference.Button> list, boolean z) {
        if (list == null) {
            return new CallButton[0];
        }
        LinkedList linkedList = new LinkedList();
        for (Reference.Button button : list) {
            if (button == Reference.Button.EraseDrawing.INSTANCE) {
                linkedList.add(ERASE);
            } else if (button == Reference.Button.HangupCall.INSTANCE) {
                linkedList.add(HANGUP);
            } else if (button == Reference.Button.OpenChat.INSTANCE) {
                linkedList.add(MESSAGES);
            } else if (button == Reference.Button.PauseCamera.INSTANCE) {
                linkedList.add(VIDEO_PAUSE_RESUME);
            } else if (button == Reference.Button.ShareMedia.INSTANCE) {
                linkedList.add(SHARE_MEDIA);
            } else if (button == Reference.Button.StartCamera.INSTANCE) {
                linkedList.add(VIDEO);
            } else if (button == Reference.Button.StartMicro.INSTANCE) {
                linkedList.add(MICRO);
            } else if (button == Reference.Button.StartScreencast.INSTANCE) {
                linkedList.add(SCREENCAST);
            } else if (button == Reference.Button.StartTorch.INSTANCE) {
                linkedList.add(FLASH);
            } else if (button == Reference.Button.SwitchCamera.INSTANCE) {
                linkedList.add(VIDEO_SOURCE);
            } else if (button == Reference.Button.SwitchSpeaker.INSTANCE) {
                linkedList.add(AUDIO_SOURCE);
            }
        }
        if (z && !list.contains(Reference.Button.SwitchSpeaker.INSTANCE)) {
            linkedList.add(0, AUDIO_SOURCE);
        }
        return (CallButton[]) linkedList.toArray(new CallButton[0]);
    }

    public CallButtonImageView inflate(Context context, CallButtonBar callButtonBar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, R.style.universal_Theme);
        CallButtonImageView callButtonImageView = (CallButtonImageView) LayoutInflater.from(contextThemeWrapper).inflate(R.layout.universal_view_call_button, (ViewGroup) callButtonBar, false);
        ColorStateList colorStateList = ContextCompat.getColorStateList(contextThemeWrapper, com.sightcall.graphik.R.color.universal_colorCallButtonTint);
        callButtonImageView.setType(this);
        callButtonImageView.setColorFilter(colorStateList);
        callButtonImageView.setOnClickListener(callButtonBar);
        callButtonImageView.setLongClickable(false);
        callButtonImageView.setContentDescription(createContentDescription(contextThemeWrapper, this.voiceCommands));
        return callButtonImageView;
    }

    /* JADX INFO: renamed from: com.sightcall.universal.internal.view.CallButton$1, reason: invalid class name */
    public final enum AnonymousClass1 extends CallButton {
        public /* synthetic */ AnonymousClass1(int i2, String[] strArr, int[] iArr) {
            this("VIDEO_SOURCE", 2, i2, iArr, "toggle-camera", strArr);
        }

        @Override // com.sightcall.universal.internal.view.CallButton
        public CallButtonImageView inflate(Context context, CallButtonBar callButtonBar) {
            if (this != CallButton.VIDEO_SOURCE || callButtonBar.isRemote() || CallButton.getNumberOfCameras() >= 2) {
                return super.inflate(context, callButtonBar);
            }
            return null;
        }

        private AnonymousClass1(String str, int i2, int i3, int[] iArr, String str2, String... strArr) {
            super(str, i2, i3, iArr, str2, strArr, 0);
        }
    }

    public /* synthetic */ CallButton(String str, int i2, int i3, int[] iArr, String str2, String[] strArr, int i4) {
        this(str, i2, i3, iArr, str2, strArr);
    }

    /* JADX INFO: renamed from: com.sightcall.universal.internal.view.CallButton$2, reason: invalid class name */
    public final enum AnonymousClass2 extends CallButton {
        public /* synthetic */ AnonymousClass2(int i2, String[] strArr, int[] iArr) {
            this("HANGUP", 17, i2, iArr, "local-hangup", strArr);
        }

        @Override // com.sightcall.universal.internal.view.CallButton
        public CallButtonImageView inflate(Context context, CallButtonBar callButtonBar) {
            CallButtonImageView callButtonImageViewInflate = super.inflate(context, callButtonBar);
            if (callButtonImageViewInflate != null) {
                callButtonImageViewInflate.setColorFilter((ColorStateList) null);
            }
            return callButtonImageViewInflate;
        }

        private AnonymousClass2(String str, int i2, int i3, int[] iArr, String str2, String... strArr) {
            super(str, i2, i3, iArr, str2, strArr, 0);
        }
    }
}
