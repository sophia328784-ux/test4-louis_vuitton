package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.session.Reference;
import com.sightcall.session.ReferenceUpdate;
import com.sightcall.universal.api.FallbackEnumField;
import com.sightcall.universal.api.FallbackOnNull;
import com.sightcall.universal.api.JsonApi;
import com.sightcall.universal.api.Transient;
import com.sightcall.universal.internal.view.CallButton;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import com.squareup.moshi.FromJson;
import com.squareup.moshi.Json;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonQualifier;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.ToJson;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Usecase implements JsonApi.Included {
    private static final CallButton[] EMPTY_BAR = new CallButton[0];
    public static final String TYPE = "usecases";
    public int acdRequestTimeout;

    @Json(name = l.f24145h)
    Attributes attributes;
    public Reference.Customization customizations;

    @Json(name = b.a.f24015b)
    final String id;
    public Integer languageId;
    public Integer locationId;
    public Integer productId;
    public Reference.UseCase.PropositionTemplate propositionTemplate;
    public boolean useAdvancedAnnotations;

    @Json(name = "type")
    private final String type = TYPE;
    public Reference.UseCase.LiveTranslation liveTranslation = null;

    @Transient
    private Map<Bar.Role, CallButton[]> bars = new HashMap();
    public boolean takeUhdSnapshot = false;

    /* JADX INFO: renamed from: com.sightcall.universal.agent.Usecase$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Code$Media;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$DefaultMedia;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$Survey$Mode;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$model$Session$Role;

        static {
            int[] iArr = new int[Survey.Mode.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$Survey$Mode = iArr;
            try {
                iArr[Survey.Mode.MANUAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$Survey$Mode[Survey.Mode.AUTO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[DefaultMedia.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$DefaultMedia = iArr2;
            try {
                iArr2[DefaultMedia.SMS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$DefaultMedia[DefaultMedia.EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$DefaultMedia[DefaultMedia.URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[Code.Media.values().length];
            $SwitchMap$com$sightcall$universal$agent$Code$Media = iArr3;
            try {
                iArr3[Code.Media.SMS.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Code$Media[Code.Media.EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Code$Media[Code.Media.URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr4 = new int[Session.Role.values().length];
            $SwitchMap$com$sightcall$universal$model$Session$Role = iArr4;
            try {
                iArr4[Session.Role.HOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Session.Role.GUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Session.Role.ATTENDEE.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum ActiveSpeaker {
        HOST,
        GUEST
    }

    public static class Agent extends User {

        @Transient
        @Json(name = "_chat")
        private Chat chat;

        @Json(name = "chat")
        boolean chatAsBoolean;

        @Json(name = "guest-take-picture-menu")
        boolean guestTakePictureMenu;

        @Json(name = "pickup-mode")
        PickupMode pickupMode;

        @Override // com.sightcall.universal.agent.Usecase.User
        public Chat chat() {
            if (!this.chatAsBoolean) {
                return null;
            }
            if (this.chat == null) {
                Chat chat = new Chat();
                this.chat = chat;
                chat.quickbar = true;
                chat.messageOverlayTimeout = 10;
            }
            return this.chat;
        }
    }

    public static class Attendee extends User {
        @Override // com.sightcall.universal.agent.Usecase.User
        public Chat chat() {
            return null;
        }
    }

    public static class Attributes {

        @Json(name = "active-speaker")
        @FallbackEnumField("")
        ActiveSpeaker activeSpeaker;

        @Json(name = "agent")
        Agent agent;

        @Json(name = "appointment")
        boolean appointment;

        @Json(name = "bars")
        Bar[] bars;

        @Json(name = "call-distribution")
        CallDistribution callDistribution;

        @Json(name = "media-default")
        DefaultMedia defaultMedia;

        @Json(name = "mode-default")
        DefaultMode defaultMode;

        @Json(name = "guest")
        Guest guest;

        @Json(name = "guest-gps-on-startup")
        Boolean guestGpsOnStartup;

        @Json(name = "hash-value")
        String hashValue;

        @Json(name = "is-default")
        boolean isDefault;

        @Json(name = "multiparty")
        @MultipartyBoolean
        Multiparty multiparty;

        @Json(name = "name")
        String name;

        @Json(name = "ocr-collimator-ratio")
        Double ocrCollimatorRatio;

        @Json(name = "ocr-safe-area")
        Double ocrSafeArea;

        @Json(name = "pincode-deleted-auto")
        boolean pincodeDeletedAuto;

        @Json(name = "recording")
        Recording recording;

        @Json(name = "reference-autofill")
        boolean referenceAutofill;

        @Json(name = "reference-required")
        boolean referenceRequired;

        @Json(name = "save-picture")
        SavePicture savePicture;

        @Json(name = "send-email")
        boolean sendEmail;

        @Json(name = "send-pincode")
        boolean sendPincode;

        @Json(name = "send-sms")
        boolean sendSms;

        @Json(name = "show-url")
        boolean showUrl;

        @Json(name = "sms-country-default")
        String smsCountryDefault;
    }

    public enum CallDistribution {
        DIRECT,
        CODE,
        ACD
    }

    public static class Chat {

        @Json(name = "message-overlay-timeout")
        int messageOverlayTimeout;

        @Json(name = "quickbar")
        boolean quickbar;

        public int messageOverlayTimeout() {
            return this.messageOverlayTimeout;
        }

        public boolean quickbar() {
            return this.quickbar;
        }
    }

    public enum DefaultMedia {
        CODE,
        SMS,
        EMAIL,
        URL
    }

    public enum DefaultMode {
        CODE,
        APPOINTMENT
    }

    public static class Guest extends User {

        @Transient
        boolean allowUsbCamera = true;
        public boolean alwaysVisible;

        @Json(name = "chat")
        Chat chat;
        boolean guestVideoWhileTakePicture;

        @Override // com.sightcall.universal.agent.Usecase.User
        public Chat chat() {
            return this.chat;
        }
    }

    public static class Multiparty {

        @Json(name = "attendee")
        Attendee attendee;
    }

    @Retention(RetentionPolicy.RUNTIME)
    @JsonQualifier
    public @interface MultipartyBoolean {
    }

    public static final class MultipleFormatsMultipartyAdapter {
        @MultipartyBoolean
        @FromJson
        public Multiparty fromJson(JsonReader jsonReader, JsonAdapter<Multiparty> jsonAdapter) throws IOException {
            if (jsonReader.z() == JsonReader.Token.BOOLEAN) {
                return null;
            }
            return jsonAdapter.fromJson(jsonReader);
        }

        @ToJson
        public void toJson(JsonWriter jsonWriter, @MultipartyBoolean Multiparty multiparty, JsonAdapter<Multiparty> jsonAdapter) throws IOException {
            jsonAdapter.toJson(jsonWriter, multiparty);
        }
    }

    public enum PickupMode {
        AUTO,
        CONFIRM
    }

    public static class Recording {

        @Json(name = "autostart")
        final boolean autoStart;

        @Json(name = "media")
        final Media media;

        @Json(name = "name")
        final String name;

        public enum Media {
            AUDIO,
            AUDIO_AND_VIDEO
        }

        private Recording(String str, boolean z, Media media) {
            this.name = str;
            this.autoStart = z;
            this.media = media;
        }

        public boolean autoStart() {
            return this.autoStart;
        }

        public Media media() {
            return this.media;
        }
    }

    public static class SavePicture {

        @Json(name = "media")
        public Media media;

        @Json(name = "mode")
        public Mode mode;

        @Json(name = "name")
        public String name;

        @Json(name = "type")
        @FallbackEnumField("")
        public Type type;

        public enum Media {
            CLOUD,
            LOCAL
        }

        public enum Mode {
            AUTO,
            PREVIEW
        }

        public enum Type {
            PNG,
            JPG
        }

        public Media media() {
            return this.media;
        }

        public Type type() {
            return this.type;
        }
    }

    public static class Survey {

        @Json(name = "button-label")
        String button;

        @Json(name = "mode")
        @FallbackEnumField("NONE")
        Mode mode;

        @Json(name = "popup-label")
        String title;

        @Json(name = ConfigurationName.DOWNLOAD_PLUGIN_URL)
        String url;

        public enum Mode {
            MANUAL,
            AUTO,
            NONE
        }

        @Deprecated
        public static Survey backport(Reference.UseCase.Survey survey) {
            if (survey == null) {
                return null;
            }
            Survey survey2 = new Survey();
            survey2.mode = survey.immediate ? Mode.AUTO : Mode.MANUAL;
            survey2.button = survey.button;
            survey2.title = survey.title;
            survey2.url = survey.raw;
            return survey2;
        }

        public static com.sightcall.universal.internal.model.Survey with(Survey survey) {
            Mode mode;
            if (survey == null || (mode = survey.mode()) == null) {
                return null;
            }
            int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Usecase$Survey$Mode[mode.ordinal()];
            if (i2 == 1) {
                return new com.sightcall.universal.internal.model.Survey(survey.title(), survey.button(), survey.url());
            }
            if (i2 != 2) {
                return null;
            }
            return new com.sightcall.universal.internal.model.Survey(survey.url());
        }

        public String button() {
            return this.button;
        }

        public Mode mode() {
            return this.mode;
        }

        public String title() {
            return this.title;
        }

        public String url() {
            return this.url;
        }
    }

    public static abstract class User {

        @Json(name = "camera")
        public boolean camera;

        @Transient
        public Reference.UseCase.Consent consent;

        @Json(name = "muted")
        public boolean muted;

        @Json(name = "pointer")
        boolean pointer;

        @Json(name = "survey")
        Survey survey;

        @Json(name = "video-capture")
        @FallbackEnumField("")
        public VideoCapture videoCapture;

        @Json(name = "video-profile")
        @FallbackEnumField("")
        public VideoProfile videoProfile;

        public abstract Chat chat();

        public Survey survey() {
            return this.survey;
        }
    }

    public enum VideoCapture {
        FRONT,
        REAR
    }

    public enum VideoProfile {
        MD,
        SD
    }

    public Usecase(String str) {
        this.id = str;
    }

    private static Bar createBar(CallButton[] callButtonArr, Bar.Role role) {
        Bar bar = new Bar();
        bar.role = role;
        if (callButtonArr != null) {
            bar.buttons = new Bar.Button[callButtonArr.length];
            int i2 = 0;
            while (true) {
                Bar.Button[] buttonArr = bar.buttons;
                if (i2 >= buttonArr.length) {
                    break;
                }
                int i3 = i2 + 1;
                buttonArr[i2] = new Bar.Button(callButtonArr[i2].key, i3);
                i2 = i3;
            }
        }
        return bar;
    }

    public static Usecase from(Reference reference, Config config, boolean z) {
        Attributes attributes = new Attributes();
        Usecase usecase = new Usecase(String.valueOf(reference.useCase.id));
        usecase.attributes = attributes;
        attributes.hashValue = reference.id;
        config.acdMask(reference.acdMask);
        config.acdValue(reference.acdValue);
        Reference.Provider provider = reference.provider;
        config.appId(provider.appId);
        config.hap(provider.path);
        config.reportChatContent(provider.reportChatContent);
        config.deadPartyTimeout(provider.deadPartyTimeout);
        usecase.productId = reference.productId;
        usecase.locationId = reference.locationId;
        usecase.languageId = reference.languageId;
        usecase.takeUhdSnapshot = Boolean.TRUE.equals(reference.takeUhdPicture);
        Reference.UseCase useCase = reference.useCase;
        usecase.propositionTemplate = useCase.propositionTemplate;
        usecase.acdRequestTimeout = useCase.acdRequestTimeout;
        attributes.ocrCollimatorRatio = useCase.ocrRatio;
        attributes.ocrSafeArea = useCase.ocrSafeArea;
        attributes.name = useCase.name;
        usecase.useAdvancedAnnotations = useCase.advancedAnnotations;
        Reference.CallDistribution callDistribution = useCase.mode;
        if (callDistribution == Reference.CallDistribution.Acd.INSTANCE) {
            attributes.callDistribution = CallDistribution.ACD;
        } else if (callDistribution == Reference.CallDistribution.Code.INSTANCE) {
            attributes.callDistribution = CallDistribution.CODE;
        } else {
            attributes.callDistribution = CallDistribution.DIRECT;
        }
        attributes.agent = new Agent();
        attributes.guest = new Guest();
        Multiparty multiparty = new Multiparty();
        attributes.multiparty = multiparty;
        multiparty.attendee = new Attendee();
        Reference.UserRole userRole = reference.useCase.userRole;
        if (userRole == Reference.UserRole.Guest.INSTANCE) {
            setGuest(attributes, reference);
        } else if (userRole == Reference.UserRole.Attendee.INSTANCE) {
            setAttendee(attributes, reference);
        }
        attributes.bars = new Bar[]{createBar(CallButton.valuesOf(reference.useCase.buttonsLocal, z), Bar.Role.MOBILE), createBar(CallButton.valuesOf(reference.useCase.buttonsLocal, z), Bar.Role.ATTENDEE)};
        usecase.customizations = reference.customization;
        Reference.UseCase useCase2 = reference.useCase;
        usecase.liveTranslation = useCase2.liveTranslation;
        config.displayNameMode(useCase2.displayNameMode);
        config.displayName(reference.useCase.displayName);
        config.ignoreConsent(reference.useCase.ignoreConsent);
        config.reference(reference.useCase.reference);
        config.caseReportId(reference.useCase.caseReportId);
        return usecase;
    }

    private List<CallButton> parseBar(Bar bar) {
        List listAsList = Arrays.asList(bar.buttons);
        Collections.sort(listAsList);
        ArrayList arrayList = new ArrayList(listAsList.size());
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add(CallButton.parse(((Bar.Button) it.next()).role));
        }
        return arrayList;
    }

    private List<CallButton> parseBars(Bar.Role role) {
        Bar[] barArrBars = bars();
        if (barArrBars == null || barArrBars.length == 0) {
            return Collections.EMPTY_LIST;
        }
        for (Bar bar : barArrBars) {
            if (bar != null && bar.role == role) {
                return parseBar(bar);
            }
        }
        return Collections.EMPTY_LIST;
    }

    private static void setAttendee(Attributes attributes, Reference reference) {
        Multiparty multiparty = new Multiparty();
        attributes.multiparty = multiparty;
        Attendee attendee = new Attendee();
        multiparty.attendee = attendee;
        attendee.videoProfile = toVideoProfile(reference.useCase.videoProfile);
        attendee.videoCapture = toVideoCapture(reference.useCase.videoOut);
        Reference.UseCase useCase = reference.useCase;
        attendee.camera = useCase.videoOutStartup;
        attendee.muted = useCase.mute;
        Guest guest = attributes.guest;
        guest.consent = useCase.guestConsent;
        guest.alwaysVisible = useCase.alwaysVisible;
    }

    private static void setGuest(Attributes attributes, Reference reference) {
        Guest guest = new Guest();
        attributes.guest = guest;
        Reference.UseCase useCase = reference.useCase;
        guest.consent = useCase.guestConsent;
        guest.videoProfile = toVideoProfile(useCase.videoProfile);
        guest.videoCapture = toVideoCapture(reference.useCase.videoOut);
        Reference.UseCase useCase2 = reference.useCase;
        guest.camera = useCase2.videoOutStartup;
        guest.pointer = useCase2.videoPointerOut;
        guest.muted = useCase2.mute;
        Chat chat = new Chat();
        guest.chat = chat;
        Reference.UseCase useCase3 = reference.useCase;
        chat.messageOverlayTimeout = useCase3.chatMessageOverlayTimeout;
        chat.quickbar = useCase3.chatQuickActions;
        guest.allowUsbCamera = useCase3.allowUsbCamera;
        guest.alwaysVisible = useCase3.alwaysVisible;
        Reference.UseCase.Survey survey = useCase3.survey;
        if (survey != null) {
            guest.survey = Survey.backport(survey);
        }
        guest.guestVideoWhileTakePicture = reference.useCase.videoOutWhilePicture;
    }

    private static VideoCapture toVideoCapture(Reference.CameraSide cameraSide) {
        if (cameraSide instanceof Reference.CameraSide.Front) {
            return VideoCapture.FRONT;
        }
        if (cameraSide instanceof Reference.CameraSide.Back) {
            return VideoCapture.REAR;
        }
        return null;
    }

    private static VideoProfile toVideoProfile(Reference.VideoProfile videoProfile) {
        if (videoProfile instanceof Reference.VideoProfile.Sd) {
            return VideoProfile.SD;
        }
        if (videoProfile instanceof Reference.VideoProfile.Md) {
            return VideoProfile.MD;
        }
        return null;
    }

    private static void updateAttendee(Attributes attributes, ReferenceUpdate referenceUpdate) {
        Attendee attendee = attributes.multiparty.attendee;
        attendee.videoProfile = toVideoProfile(referenceUpdate.useCase.videoProfile);
        attendee.videoCapture = toVideoCapture(referenceUpdate.useCase.videoOut);
        ReferenceUpdate.UseCase useCase = referenceUpdate.useCase;
        attendee.camera = useCase.videoOutStartup;
        attendee.muted = useCase.mute;
        attributes.guest.alwaysVisible = useCase.alwaysVisible;
    }

    private static void updateGuest(Attributes attributes, ReferenceUpdate referenceUpdate) {
        Guest guest = attributes.guest;
        guest.videoProfile = toVideoProfile(referenceUpdate.useCase.videoProfile);
        guest.videoCapture = toVideoCapture(referenceUpdate.useCase.videoOut);
        ReferenceUpdate.UseCase useCase = referenceUpdate.useCase;
        guest.camera = useCase.videoOutStartup;
        guest.pointer = useCase.videoPointerOut;
        guest.muted = useCase.mute;
        Chat chat = new Chat();
        guest.chat = chat;
        ReferenceUpdate.UseCase useCase2 = referenceUpdate.useCase;
        chat.messageOverlayTimeout = useCase2.chatMessageOverlayTimeout;
        chat.quickbar = useCase2.chatQuickBar;
        guest.allowUsbCamera = useCase2.allowUsbCamera;
        guest.alwaysVisible = useCase2.alwaysVisible;
        guest.guestVideoWhileTakePicture = useCase2.videoOutWhilePicture;
    }

    public ActiveSpeaker activeSpeaker() {
        return this.attributes.activeSpeaker;
    }

    public Agent agent() {
        return this.attributes.agent;
    }

    public Bar[] bars() {
        return this.attributes.bars;
    }

    public CallButton[] buttons(Bar.Role role) {
        if (this.bars == null) {
            this.bars = new HashMap();
        }
        if (this.bars.containsKey(role)) {
            return this.bars.get(role);
        }
        List<CallButton> bars = parseBars(role);
        if (role == Bar.Role.LOCAL && this.attributes.agent.chatAsBoolean) {
            bars.add(0, CallButton.MESSAGES);
        }
        CallButton[] callButtonArr = (CallButton[]) bars.toArray(EMPTY_BAR);
        this.bars.put(role, callButtonArr);
        return callButtonArr;
    }

    public CallDistribution callDistribution() {
        return this.attributes.callDistribution;
    }

    public Code.Media defaultMedia() {
        DefaultMedia defaultMedia = this.attributes.defaultMedia;
        if (defaultMedia == null) {
            return null;
        }
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Usecase$DefaultMedia[defaultMedia.ordinal()];
        if (i2 == 1) {
            return Code.Media.SMS;
        }
        if (i2 == 2) {
            return Code.Media.EMAIL;
        }
        if (i2 != 3) {
            return null;
        }
        return Code.Media.URL;
    }

    public com.sightcall.universal.internal.model.Survey getSurvey(Config config) {
        Session.Role role = config.role();
        return (role == Session.Role.GUEST || role == Session.Role.ATTENDEE) ? Survey.with(this.attributes.guest.survey) : Survey.with(this.attributes.agent.survey);
    }

    public Guest guest() {
        return this.attributes.guest;
    }

    public Boolean guestGpsOnStartup() {
        return this.attributes.guestGpsOnStartup;
    }

    public String hash() {
        return this.attributes.hashValue;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String id() {
        return this.id;
    }

    public int idInt() {
        try {
            return Integer.valueOf(id()).intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    public boolean isAllowed(Code.Media media) {
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Code$Media[media.ordinal()];
        if (i2 == 1) {
            return this.attributes.sendSms;
        }
        if (i2 == 2) {
            return this.attributes.sendEmail;
        }
        if (i2 != 3) {
            return false;
        }
        return this.attributes.showUrl;
    }

    public boolean isReferenceAutifill() {
        return this.attributes.referenceAutofill;
    }

    public boolean isReferenceRequired() {
        return this.attributes.referenceRequired;
    }

    public boolean isUsbCameraAllowed(Config config) {
        if (AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Session$Role[config.role().ordinal()] != 2) {
            return true;
        }
        return this.attributes.guest.allowUsbCamera;
    }

    public boolean localUdp() {
        Reference.Customization customization = this.customizations;
        if (customization == null) {
            return false;
        }
        return customization.rtccLocalUdpDisabled;
    }

    public String name() {
        return this.attributes.name;
    }

    public Float ocrRatio() {
        Double d = this.attributes.ocrCollimatorRatio;
        if (d != null) {
            return Float.valueOf(d.floatValue());
        }
        return null;
    }

    public Float ocrSafeArea() {
        Double d = this.attributes.ocrSafeArea;
        if (d != null) {
            return Float.valueOf(d.floatValue());
        }
        return null;
    }

    public String partner() {
        Reference.Customization customization = this.customizations;
        if (customization == null) {
            return null;
        }
        return customization.acdExternal;
    }

    public boolean pincodeAutoDelete() {
        return this.attributes.pincodeDeletedAuto;
    }

    public Recording recording() {
        return this.attributes.recording;
    }

    public SavePicture savePicture() {
        return this.attributes.savePicture;
    }

    public boolean sslPlugin() {
        Reference.Customization customization = this.customizations;
        if (customization == null) {
            return false;
        }
        return customization.sslPlugin;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String type() {
        return TYPE;
    }

    public void updateRole(ReferenceUpdate referenceUpdate) {
        Reference.UserRole userRole = referenceUpdate.useCase.userRole;
        if (userRole == Reference.UserRole.Guest.INSTANCE) {
            updateGuest(this.attributes, referenceUpdate);
        } else if (userRole == Reference.UserRole.Attendee.INSTANCE) {
            updateAttendee(this.attributes, referenceUpdate);
        }
    }

    public boolean usapTurn() {
        Reference.Customization customization = this.customizations;
        if (customization == null) {
            return false;
        }
        return customization.rtccUsapTurnDisabled;
    }

    public User user(Config config) {
        Multiparty multiparty;
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Session$Role[config.role().ordinal()];
        if (i2 == 1) {
            return this.attributes.agent;
        }
        if (i2 == 2) {
            return this.attributes.guest;
        }
        if (i2 == 3 && (multiparty = this.attributes.multiparty) != null) {
            return multiparty.attendee;
        }
        return null;
    }

    public boolean videoOutPointer(Config config) {
        return user(config).pointer;
    }

    public boolean videoOutWhilePicture(Config config) {
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Session$Role[config.role().ordinal()];
        if (i2 == 1) {
            return false;
        }
        if (i2 == 2 || i2 == 3) {
            return this.attributes.guest.guestVideoWhileTakePicture;
        }
        return true;
    }

    public static class Bar {

        @Json(name = "always-visible")
        public Boolean alwaysvisible;

        @Json(name = "buttons")
        public Button[] buttons;

        @Json(name = "role")
        public Role role;

        public enum Role {
            GUEST,
            MOBILE,
            LOCAL,
            REMOTE,
            ATTENDEE
        }

        public static class Button implements Comparable<Button> {

            @FallbackOnNull
            @Json(name = "position")
            public final int position;

            @Json(name = "role")
            public final String role;

            public Button(String str) {
                this.role = str;
                this.position = 0;
            }

            private static int intCompare(int i2, int i3) {
                if (i2 < i3) {
                    return -1;
                }
                return i2 == i3 ? 0 : 1;
            }

            @Override // java.lang.Comparable
            public int compareTo(Button button) {
                return intCompare(this.position, button.position);
            }

            public Button(String str, int i2) {
                this.role = str;
                this.position = i2;
            }
        }
    }
}
