package net.rtccloud.sdk;

import android.os.Bundle;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import com.sightcall.advancedannotations.domain.parser.PositionParser;
import com.sightcall.advancedannotations.domain.parser.ResourceParser;
import com.sightcall.advancedannotations.domain.parser.ScaleParser;
import com.sightcall.advancedannotations.domain.parser.TextParser;
import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import java.security.SecureRandom;
import net.rtccloud.sdk.event.presence.RegistrationEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.util.Input;
import net.rtccloud.sdk.util.OldLogger;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes4.dex */
public abstract class User {
    public static final OldLogger log = OldLogger.get(OldLogger.Internal.USER);
    private boolean advancedAnnotations;
    private final String appid;
    private boolean attendeeSslPlugin;
    private String displayName;
    private final String hap;
    private String ip;
    private String liveTranslationLanguage;
    private boolean localUdpDisabled;
    private final Native nativeInterface;
    private Rtcc rtcc;
    private boolean usapTurnDisabled;
    private final Bundle extras = new Bundle();
    private Status status = Status.NOT_REGISTERED;
    private int environment = 0;

    public static class External extends User {
        private final String suffix;
        private final String uid;

        public External(Native r1, String str, String str2, String str3, String str4) {
            super(r1, str, str2);
            this.uid = str3;
            this.suffix = str4;
        }

        public String suffix() {
            return this.suffix;
        }

        @Override // net.rtccloud.sdk.User
        public String toString() {
            StringBuilder sb = new StringBuilder("External{uid='");
            sb.append(this.uid);
            sb.append("', suffix='");
            return n00.r(this.suffix, "'}", sb);
        }

        public String uid() {
            return this.uid;
        }

        public static class Builder extends Builder<External, Builder> {
            protected String suffix;
            protected final String uid;

            public Builder(String str, String str2) {
                super(str);
                this.suffix = User.generateRandomSuffix();
                this.uid = str2;
            }

            public final String suffix() {
                return this.suffix;
            }

            @Override // net.rtccloud.sdk.User.Builder
            public String toString() {
                return "Builder-External{appid='" + this.appid + "', uid='" + this.uid + "', suffix='" + this.suffix + "', displayName='" + this.displayName + "', extras=" + this.extras + '}';
            }

            public final String uid() {
                return this.uid;
            }

            public final Builder suffix(String str) {
                this.suffix = str;
                return this;
            }
        }
    }

    public static class Internal extends User {
        private final String token;

        public static class Builder extends Builder<Internal, Builder> {
            protected final String token;

            public Builder(String str, String str2) {
                super(str);
                this.token = str2;
            }

            @Override // net.rtccloud.sdk.User.Builder
            public String toString() {
                return "Builder-Internal{appid='" + this.appid + "', token='" + this.token + "', displayName='" + this.displayName + "', extras=" + this.extras + '}';
            }

            public final String token() {
                return this.token;
            }
        }

        public Internal(Native r1, String str, String str2, String str3) {
            super(r1, str, str2);
            this.token = str3;
        }

        @Override // net.rtccloud.sdk.User
        public String toString() {
            return n00.r(this.token, "'}", new StringBuilder("Internal{token='"));
        }

        public String token() {
            return this.token;
        }
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.User.Native.1
            @Override // net.rtccloud.sdk.User.Native
            public String getSid() {
                return Jni.nGetSid();
            }

            @Override // net.rtccloud.sdk.User.Native
            public String getUid() {
                return Jni.nGetUid();
            }

            @Override // net.rtccloud.sdk.User.Native
            public void setDisplayName(String str) {
                Jni.nSetDisplayName(str);
            }
        };

        String getSid();

        String getUid();

        void setDisplayName(String str);
    }

    public static class SixDigits extends User {
        private final String pin;
        private final String suffix;

        public SixDigits(Native r1, String str, String str2, String str3, String str4) {
            super(r1, str, str2);
            this.pin = str3;
            this.suffix = str4;
        }

        public String pin() {
            return this.pin;
        }

        public String suffix() {
            return this.suffix;
        }

        @Override // net.rtccloud.sdk.User
        public String toString() {
            StringBuilder sb = new StringBuilder("SixDigits{pin='");
            sb.append(this.pin);
            sb.append("', suffix='");
            return n00.r(this.suffix, "'}", sb);
        }

        public static class Builder extends Builder<SixDigits, Builder> {
            protected final String pin;
            protected String suffix;

            public Builder(String str, String str2) {
                super(str);
                this.suffix = User.generateRandomSuffix();
                this.pin = str2;
            }

            public final String pin() {
                return this.pin;
            }

            public final String suffix() {
                return this.suffix;
            }

            @Override // net.rtccloud.sdk.User.Builder
            public String toString() {
                return "Builder-SixDigits{appid='" + this.appid + "', pin='" + this.pin + "', suffix='" + this.suffix + "', displayName='" + this.displayName + "', extras=" + this.extras + '}';
            }

            public final Builder suffix(String str) {
                this.suffix = str;
                return this;
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum Status {
        REGISTERED,
        NOT_REGISTERED
    }

    public User(Native r2, String str, String str2) {
        this.nativeInterface = r2;
        this.appid = str;
        this.hap = str2;
    }

    public static External.Builder external(String str, String str2) {
        return new External.Builder(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String generateRandomSuffix() {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'z', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'q', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'w', 'x', 'c', 'v', 'b', 'n', 'A', Matrix.MATRIX_TYPE_ZERO, 'E', 'R', TextParser.TextInstruction, 'Y', Matrix.MATRIX_TYPE_RANDOM_UT, 'I', 'O', PositionParser.PositionInstruction, 'Q', ScaleParser.ScaleInstruction, DeleteParser.DeleteInstruction, 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'W', 'X', ColorParser.ColorInstruction, 'V', 'B', ResourceParser.ResourceInstruction};
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder(16);
        for (int i2 = 0; i2 < 16; i2++) {
            sb.append(cArr[secureRandom.nextInt(62)]);
        }
        return sb.toString();
    }

    public static Internal.Builder internal(String str, String str2) {
        return new Internal.Builder(str, str2);
    }

    public static SixDigits.Builder sixDigits(String str, String str2) {
        return new SixDigits.Builder(str, str2);
    }

    public static <U extends User> U with(Builder<U, ?> builder) throws IllegalArgumentException {
        U sixDigits;
        U internal;
        if (builder == null) {
            md.n("[user] must not be null");
            return null;
        }
        String strAppid = builder.appid();
        Input input = Input.APP_ID;
        if (!input.isValid(strAppid)) {
            b21.o(input, "] but is [", strAppid, "]", "[appid] must be [");
            return null;
        }
        String strHap = builder.hap();
        if (builder instanceof Internal.Builder) {
            String str = ((Internal.Builder) builder).token();
            Input input2 = Input.TOKEN;
            if (!input2.isValid(str)) {
                b21.o(input2, "] but is [", str, "]", "[token] must be [");
                return null;
            }
            internal = new Internal(Native.JNI, strAppid, strHap, str);
        } else {
            if (builder instanceof External.Builder) {
                External.Builder builder2 = (External.Builder) builder;
                builder2.uid();
                String strSuffix = builder2.suffix();
                Input input3 = Input.SUFFIX;
                if (!input3.isValid(strSuffix)) {
                    b21.o(input3, "] but is [", strSuffix, "]", "[suffix] must be [");
                    return null;
                }
                sixDigits = new External(Native.JNI, strAppid, strHap, builder2.uid(), builder2.suffix());
            } else {
                if (!(builder instanceof SixDigits.Builder)) {
                    md.n(fc.h("[", builder.getClass().toString(), "] class is invalid for a user builder"));
                    return null;
                }
                SixDigits.Builder builder3 = (SixDigits.Builder) builder;
                builder3.pin();
                String strSuffix2 = builder3.suffix();
                Input input4 = Input.SUFFIX;
                if (!input4.isValid(strSuffix2)) {
                    b21.o(input4, "] but is [", strSuffix2, "]", "[suffix] must be [");
                    return null;
                }
                sixDigits = new SixDigits(Native.JNI, strAppid, strHap, builder3.pin(), builder3.suffix());
            }
            internal = sixDigits;
        }
        ((User) internal).displayName = builder.displayName();
        ((User) internal).extras.putAll(builder.extras());
        ((User) internal).usapTurnDisabled = builder.usapTurnDisabled();
        ((User) internal).localUdpDisabled = builder.localUdpDisabled();
        ((User) internal).attendeeSslPlugin = builder.attendeeSslPlugin();
        ((User) internal).advancedAnnotations = builder.advancedAnnotations();
        ((User) internal).liveTranslationLanguage = builder.liveTranslationLanguage();
        ((User) internal).environment = builder.environment();
        return internal;
    }

    public boolean advancedAnnotations() {
        return this.advancedAnnotations;
    }

    public String appid() {
        return this.appid;
    }

    public boolean attendeeSslPlugin() {
        return this.attendeeSslPlugin;
    }

    public void displayName(String str) {
        OldLogger oldLogger = log;
        oldLogger.d("displayName(%s)", str);
        Input input = Input.DISPLAY_NAME;
        if (!input.isValid(str)) {
            oldLogger.e("[displayName] must be [%s] but is [%s]", input, str);
        } else {
            this.displayName = str;
            updateDisplayName();
        }
    }

    public int environment() {
        return this.environment;
    }

    public Bundle extras() {
        return this.extras;
    }

    public void handleRegistration(int i2, int i3) {
        if (i2 == 0) {
            this.status = Status.NOT_REGISTERED;
        } else if (i2 == 1 || i2 == 2) {
            this.status = Status.REGISTERED;
        }
        Rtcc rtcc = this.rtcc;
        if (rtcc != null) {
            rtcc.bus.post(new RegistrationEvent(this.status, i3));
        }
    }

    public String hap() {
        return this.hap;
    }

    public String ip() {
        return this.ip;
    }

    public String liveTranslationLanguage() {
        return this.liveTranslationLanguage;
    }

    public boolean localUdpDisabled() {
        return this.localUdpDisabled;
    }

    public void onBind(Rtcc rtcc) {
        this.rtcc = rtcc;
    }

    public void onUnbind() {
        this.rtcc = null;
        this.status = Status.NOT_REGISTERED;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public String sid() {
        return this.nativeInterface.getSid();
    }

    public Status status() {
        return this.status;
    }

    public abstract String toString();

    public String uidLocal() {
        return this.nativeInterface.getUid();
    }

    public void updateDisplayName() {
        OldLogger oldLogger = log;
        if (Preconditions.enforceRtcc(oldLogger, this.rtcc) && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED)) {
            Native r0 = this.nativeInterface;
            String str = this.displayName;
            if (str == null) {
                str = "";
            }
            r0.setDisplayName(str);
        }
    }

    public boolean usapTurnDisabled() {
        return this.usapTurnDisabled;
    }

    public static abstract class Builder<U extends User, B extends Builder<U, B>> {
        protected boolean advancedAnnotations;
        protected final String appid;
        protected boolean attendeeSslPlugin;
        protected String displayName;
        protected int environment;
        protected final Bundle extras = new Bundle();
        protected String hap;
        protected String liveTranslationLanguage;
        protected boolean localUdpDisabled;
        protected boolean usapTurnDisabled;

        public Builder(String str) {
            this.appid = str;
        }

        public boolean advancedAnnotations() {
            return this.advancedAnnotations;
        }

        public final String appid() {
            return this.appid;
        }

        public boolean attendeeSslPlugin() {
            return this.attendeeSslPlugin;
        }

        public final String displayName() {
            return this.displayName;
        }

        public int environment() {
            return this.environment;
        }

        public final Bundle extras() {
            return this.extras;
        }

        public final String hap() {
            return this.hap;
        }

        public String liveTranslationLanguage() {
            return this.liveTranslationLanguage;
        }

        public boolean localUdpDisabled() {
            return this.localUdpDisabled;
        }

        public final B rtccAdvancedAnnotations(boolean z) {
            this.advancedAnnotations = z;
            return this;
        }

        public final B rtccAttendeeSslPlugin(boolean z) {
            this.attendeeSslPlugin = z;
            return this;
        }

        public final B rtccEnvironment(int i2) {
            this.environment = i2;
            return this;
        }

        public final B rtccLocalUdpDisabled(boolean z) {
            this.localUdpDisabled = z;
            return this;
        }

        public final B rtccUsapTurnDisabled(boolean z) {
            this.usapTurnDisabled = z;
            return this;
        }

        public String toString() {
            return "Builder{appid='" + this.appid + "', displayName='" + this.displayName + "', extras=" + this.extras + '}';
        }

        public boolean usapTurnDisabled() {
            return this.usapTurnDisabled;
        }

        public final B displayName(String str) {
            this.displayName = str;
            return this;
        }

        public final B hap(String str) {
            this.hap = str;
            return this;
        }

        public final B liveTranslationLanguage(String str) {
            this.liveTranslationLanguage = str;
            return this;
        }
    }

    public void ip(String str) {
        this.ip = str;
    }

    public String displayName() {
        return this.displayName;
    }
}
