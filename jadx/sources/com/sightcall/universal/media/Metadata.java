package com.sightcall.universal.media;

import android.text.TextUtils;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.model.Moshi;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.util.ReplacementUtils;
import com.squareup.moshi.Json;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class Metadata {
    private static final Pattern REPLACEMENT_PATTERN = Pattern.compile("\\$\\{([a-z_]+)\\}");

    @Json(name = "caseReportId")
    final String caseReportId;

    @Json(name = "cloudGroup")
    String cloudGroup;

    @Json(name = "environment")
    String environment;

    @Json(name = "extension")
    private final Extension extension;

    @Json(name = "filename")
    String filename;

    @Json(name = "lat")
    final double lat;

    @Json(name = "lng")
    final double lng;

    @Json(name = "localGroup")
    String localGroup;

    @Json(name = "number")
    int number;

    @Json(name = "origin")
    final Origin origin;

    @Json(name = "pathName")
    final String pathName;

    @Json(name = "reference")
    final String reference;

    @Json(name = "storage")
    private final Storage storage;

    @Json(name = "timecode")
    final long timecode;

    @Json(name = "timestamp")
    final long timestamp;

    @Json(name = "uploadToken")
    private String uploadToken;

    @Json(name = "uploadUrl")
    private String uploadUrl;

    @Json(name = "usecaseId")
    final int usecaseId;

    /* JADX INFO: renamed from: com.sightcall.universal.media.Metadata$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Media;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Type;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$media$Metadata$Origin;

        static {
            int[] iArr = new int[Usecase.SavePicture.Type.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Type = iArr;
            try {
                iArr[Usecase.SavePicture.Type.PNG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Type[Usecase.SavePicture.Type.JPG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Usecase.SavePicture.Media.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Media = iArr2;
            try {
                iArr2[Usecase.SavePicture.Media.CLOUD.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Media[Usecase.SavePicture.Media.LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[Origin.values().length];
            $SwitchMap$com$sightcall$universal$media$Metadata$Origin = iArr3;
            try {
                iArr3[Origin.PICTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Origin.URL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Origin.PHOTO.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Origin.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Origin.VIDEO.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Origin.CAMERA.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.sightcall.universal.media.Metadata$Extension, still in use, count: 1, list:
      (r0v0 com.sightcall.universal.media.Metadata$Extension) from 0x001a: SPUT (r0v0 com.sightcall.universal.media.Metadata$Extension) com.sightcall.universal.media.Metadata.Extension.DEFAULT com.sightcall.universal.media.Metadata$Extension
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Extension {
        PNG,
        JPG;

        static Extension DEFAULT = new Extension();

        static {
        }

        private Extension() {
            super(str, i);
        }

        public static Extension valueOf(String str) {
            return (Extension) Enum.valueOf(Extension.class, str);
        }

        public static Extension[] values() {
            return (Extension[]) $VALUES.clone();
        }
    }

    public enum Origin {
        UNKNOWN,
        CAMERA,
        PHOTO,
        VIDEO,
        PICTURE,
        URL
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.sightcall.universal.media.Metadata$Storage, still in use, count: 1, list:
      (r0v1 com.sightcall.universal.media.Metadata$Storage) from 0x001a: SPUT (r0v1 com.sightcall.universal.media.Metadata$Storage) com.sightcall.universal.media.Metadata.Storage.DEFAULT com.sightcall.universal.media.Metadata$Storage
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Storage {
        CLOUD,
        LOCAL;

        static Storage DEFAULT = new Storage();

        static {
        }

        private Storage() {
            super(str, i);
        }

        public static Storage valueOf(String str) {
            return (Storage) Enum.valueOf(Storage.class, str);
        }

        public static Storage[] values() {
            return (Storage[]) $VALUES.clone();
        }
    }

    private Metadata(int i2, String str, long j2, long j3, String str2, String str3, Origin origin, double d, double d2, String str4, String str5, String str6, Storage storage, Extension extension) {
        this.usecaseId = i2;
        this.timestamp = j2;
        this.timecode = j3;
        this.reference = str2;
        this.caseReportId = str3;
        this.origin = origin;
        this.lat = d;
        this.lng = d2;
        this.environment = str5;
        this.localGroup = str6;
        this.pathName = str4;
        this.storage = storage;
        this.extension = extension;
        this.filename = str;
    }

    public static Metadata create(Call call, Session session, String str, Origin origin, Usecase usecase, Usecase.SavePicture savePicture, double d, double d2) {
        increasePictureCount(call);
        return new Metadata(usecase.idInt(), System.currentTimeMillis(), call.activeDuration(), session.config.reference(), str, origin, d, d2, parsePathName(savePicture, call, session, origin), parseStorage(savePicture), parseExtension(savePicture));
    }

    private static ReplacementUtils.Replacement createReplacementFactory(final Call call, final Session session, final Origin origin) {
        return new ReplacementUtils.Replacement() { // from class: com.sightcall.universal.media.Metadata.1
            @Override // com.sightcall.universal.util.ReplacementUtils.Replacement
            public String replace(Matcher matcher) {
                Agent agent;
                byte b2 = 1;
                String strGroup = matcher.group(1);
                strGroup.getClass();
                switch (strGroup.hashCode()) {
                    case -1034364087:
                        b2 = !strGroup.equals("number") ? (byte) -1 : (byte) 0;
                        break;
                    case -925155509:
                        if (!strGroup.equals("reference")) {
                            b2 = -1;
                        }
                        break;
                    case -270288749:
                        b2 = !strGroup.equals("usecase_name") ? (byte) -1 : (byte) 2;
                        break;
                    case 3076014:
                        b2 = !strGroup.equals("date") ? (byte) -1 : (byte) 3;
                        break;
                    case 3560141:
                        b2 = !strGroup.equals("time") ? (byte) -1 : (byte) 4;
                        break;
                    case 3575610:
                        b2 = !strGroup.equals("type") ? (byte) -1 : (byte) 5;
                        break;
                    case 36162591:
                        b2 = !strGroup.equals("time_code") ? (byte) -1 : (byte) 6;
                        break;
                    case 55126294:
                        b2 = !strGroup.equals("timestamp") ? (byte) -1 : (byte) 7;
                        break;
                    case 554887306:
                        b2 = !strGroup.equals("case_id") ? (byte) -1 : (byte) 8;
                        break;
                    case 1988787631:
                        b2 = !strGroup.equals("agent_login") ? (byte) -1 : (byte) 9;
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                switch (b2) {
                    case 0:
                        return String.valueOf(Metadata.getPictureCount(call));
                    case 1:
                        return session.reference();
                    case 2:
                        return session.usecase.name();
                    case 3:
                        return new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date());
                    case 4:
                        return new SimpleDateFormat("HH'h'MM:ss", Locale.US).format(new Date());
                    case 5:
                        switch (AnonymousClass2.$SwitchMap$com$sightcall$universal$media$Metadata$Origin[origin.ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                                return "share";
                            case 4:
                            case 5:
                            case 6:
                                return "video";
                            default:
                                return null;
                        }
                    case 6:
                        return String.format(Locale.ROOT, "%06d", Long.valueOf(call.activeDuration() / 1000));
                    case 7:
                        return String.valueOf(System.currentTimeMillis() / 1000);
                    case 8:
                        return session.caseReportId();
                    case 9:
                        if (session.config().role() != Session.Role.HOST || (agent = Universal.agent().get()) == null) {
                            return null;
                        }
                        return agent.login();
                    default:
                        return null;
                }
            }
        };
    }

    public static Metadata fromJson(String str) {
        return (Metadata) Moshi.fromJson(Metadata.class, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPictureCount(Call call) {
        return call.parameters().extras().getInt("saved_picture_count", 0);
    }

    private static void increasePictureCount(Call call) {
        call.parameters().extras().putInt("saved_picture_count", getPictureCount(call) + 1);
    }

    private static Extension parseExtension(Usecase.SavePicture savePicture) {
        Usecase.SavePicture.Type type = savePicture.type();
        if (type == null) {
            return Extension.DEFAULT;
        }
        int i2 = AnonymousClass2.$SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Type[type.ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? Extension.DEFAULT : Extension.JPG;
        }
        return Extension.PNG;
    }

    private static String parsePathName(Usecase.SavePicture savePicture, Call call, Session session, Origin origin) {
        if (TextUtils.isEmpty(savePicture.name)) {
            return null;
        }
        return ReplacementUtils.replace(savePicture.name, REPLACEMENT_PATTERN, createReplacementFactory(call, session, origin));
    }

    private static Storage parseStorage(Usecase.SavePicture savePicture) {
        int i2 = AnonymousClass2.$SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Media[savePicture.media().ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? Storage.DEFAULT : Storage.LOCAL;
        }
        return Storage.CLOUD;
    }

    public String caseReportId() {
        return this.caseReportId;
    }

    public String cloudGroup() {
        return this.cloudGroup;
    }

    public String environment() {
        return this.environment;
    }

    public Extension extension() {
        Extension extension = this.extension;
        return extension != null ? extension : Extension.DEFAULT;
    }

    public String filename() {
        return this.filename;
    }

    public double latitude() {
        return this.lat;
    }

    public String localGroup() {
        return this.localGroup;
    }

    public double longitude() {
        return this.lng;
    }

    public int number() {
        return this.number;
    }

    public Origin origin() {
        return this.origin;
    }

    public String pathName() {
        return this.pathName;
    }

    public String reference() {
        return this.reference;
    }

    public void setCloudGroup(String str) {
        this.cloudGroup = str;
    }

    public void setNumber(int i2) {
        this.number = i2;
    }

    public void setUploadToken(String str) {
        this.uploadToken = str;
    }

    public void setUploadUrl(String str) {
        this.uploadUrl = str;
    }

    public Storage storage() {
        Storage storage = this.storage;
        return storage != null ? storage : Storage.DEFAULT;
    }

    public long timecode() {
        return this.timecode;
    }

    public long timestamp() {
        return this.timestamp;
    }

    public String toJson() {
        return Moshi.toJson(Metadata.class, this);
    }

    public String uploadToken() {
        return this.uploadToken;
    }

    public String uploadUrl() {
        return this.uploadUrl;
    }

    public int usecaseId() {
        return this.usecaseId;
    }

    private Metadata(int i2, long j2, long j3, String str, String str2, Origin origin, double d, double d2, String str3, Storage storage, Extension extension) {
        this.usecaseId = i2;
        this.timestamp = j2;
        this.timecode = j3;
        this.reference = str;
        this.caseReportId = str2;
        this.origin = origin;
        this.lat = d;
        this.lng = d2;
        this.pathName = str3;
        this.storage = storage;
        this.extension = extension;
    }
}
