package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import kotlin.DeprecationLevel;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;

/* JADX INFO: loaded from: classes4.dex */
public final class VersionRequirement {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f73590f = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Version f73591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProtoBuf$VersionRequirement.VersionKind f73592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DeprecationLevel f73593c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f73594e;

    public static final class Companion {

        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f73595a;

            static {
                int[] iArr = new int[ProtoBuf$VersionRequirement.Level.values().length];
                try {
                    iArr[ProtoBuf$VersionRequirement.Level.WARNING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ProtoBuf$VersionRequirement.Level.ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ProtoBuf$VersionRequirement.Level.HIDDEN.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f73595a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final class Version {
        public static final Companion d = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Version f73596e = new Version(256, 256, 256);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f73597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f73598b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f73599c;

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public Version(int i2, int i3, int i4) {
            this.f73597a = i2;
            this.f73598b = i3;
            this.f73599c = i4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Version)) {
                return false;
            }
            Version version = (Version) obj;
            return this.f73597a == version.f73597a && this.f73598b == version.f73598b && this.f73599c == version.f73599c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f73599c) + tr.b(this.f73598b, Integer.hashCode(this.f73597a) * 31, 31);
        }

        public final String toString() {
            int i2 = this.f73598b;
            int i3 = this.f73599c;
            int i4 = this.f73597a;
            if (i3 == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(i4);
                sb.append(JwtParser.SEPARATOR_CHAR);
                sb.append(i2);
                return sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i4);
            sb2.append(JwtParser.SEPARATOR_CHAR);
            sb2.append(i2);
            sb2.append(JwtParser.SEPARATOR_CHAR);
            sb2.append(i3);
            return sb2.toString();
        }
    }

    public VersionRequirement(Version version, ProtoBuf$VersionRequirement.VersionKind versionKind, DeprecationLevel deprecationLevel, Integer num, String str) {
        version.getClass();
        versionKind.getClass();
        deprecationLevel.getClass();
        this.f73591a = version;
        this.f73592b = versionKind;
        this.f73593c = deprecationLevel;
        this.d = num;
        this.f73594e = str;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("since ");
        sb.append(this.f73591a);
        sb.append(' ');
        sb.append(this.f73593c);
        String str2 = "";
        Integer num = this.d;
        if (num != null) {
            str = " error " + num.intValue();
        } else {
            str = "";
        }
        sb.append(str);
        String str3 = this.f73594e;
        if (str3 != null) {
            str2 = ": " + str3;
        }
        sb.append(str2);
        return sb.toString();
    }
}
