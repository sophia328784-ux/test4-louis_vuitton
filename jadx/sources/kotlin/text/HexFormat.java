package kotlin.text;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.d21;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 \n2\u00020\u0001:\u0003\u000b\f\rB!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lkotlin/text/HexFormat;", "", "", "upperCase", "Lkotlin/text/HexFormat$BytesHexFormat;", "bytes", "Lkotlin/text/HexFormat$NumberHexFormat;", "number", "<init>", "(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V", NBSSpanMetricUnit.Day, "BytesHexFormat", "NumberHexFormat", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class HexFormat {

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HexFormat f74524e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f74525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BytesHexFormat f74526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NumberHexFormat f74527c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 \f2\u00020\u0001:\u0001\rB9\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat;", "", "", "bytesPerLine", "bytesPerGroup", "", "groupSeparator", "byteSeparator", "bytePrefix", "byteSuffix", "<init>", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "g", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class BytesHexFormat {

        /* JADX INFO: renamed from: g, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final BytesHexFormat f74528h = new BytesHexFormat(Integer.MAX_VALUE, Integer.MAX_VALUE, "  ", "", "", "");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f74529a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f74530b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f74531c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f74532e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f74533f;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public BytesHexFormat(int i2, int i3, String str, String str2, String str3, String str4) {
            d21.y(str, str2, str3, str4);
            this.f74529a = i2;
            this.f74530b = i3;
            this.f74531c = str;
            this.d = str2;
            this.f74532e = str3;
            this.f74533f = str4;
            if (str3.length() == 0 && str4.length() == 0) {
                str2.length();
            }
            if (HexFormatKt.a(str) || HexFormatKt.a(str2) || HexFormatKt.a(str3)) {
                return;
            }
            HexFormatKt.a(str4);
        }

        public final void a(String str, StringBuilder sb) {
            sb.append(str);
            sb.append("bytesPerLine = ");
            sb.append(this.f74529a);
            sb.append(",");
            sb.append('\n');
            sb.append(str);
            sb.append("bytesPerGroup = ");
            sb.append(this.f74530b);
            sb.append(",");
            sb.append('\n');
            sb.append(str);
            sb.append("groupSeparator = \"");
            sb.append(this.f74531c);
            sb.append("\",");
            sb.append('\n');
            sb.append(str);
            sb.append("byteSeparator = \"");
            sb.append(this.d);
            sb.append("\",");
            sb.append('\n');
            sb.append(str);
            sb.append("bytePrefix = \"");
            sb.append(this.f74532e);
            sb.append("\",");
            sb.append('\n');
            sb.append(str);
            sb.append("byteSuffix = \"");
            sb.append(this.f74533f);
            sb.append("\"");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("BytesHexFormat(\n");
            a("    ", sb);
            sb.append('\n');
            sb.append(")");
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/text/HexFormat$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u000b2\u00020\u0001:\u0001\fB)\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat;", "", "", "prefix", "suffix", "", "removeLeadingZeros", "", "minLength", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZI)V", "f", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class NumberHexFormat {

        /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public static final NumberHexFormat g = new NumberHexFormat("", "", false, 1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f74535a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f74536b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f74537c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f74538e;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0021  */
        public NumberHexFormat(String str, String str2, boolean z, int i2) {
            boolean z2;
            str.getClass();
            str2.getClass();
            this.f74535a = str;
            this.f74536b = str2;
            this.f74537c = z;
            this.d = i2;
            if (str.length() == 0 && str2.length() == 0) {
                z2 = i2 == 1;
            }
            this.f74538e = z2;
            if (HexFormatKt.a(str)) {
                return;
            }
            HexFormatKt.a(str2);
        }

        public final void a(String str, StringBuilder sb) {
            sb.append(str);
            sb.append("prefix = \"");
            sb.append(this.f74535a);
            sb.append("\",");
            sb.append('\n');
            sb.append(str);
            sb.append("suffix = \"");
            sb.append(this.f74536b);
            sb.append("\",");
            sb.append('\n');
            sb.append(str);
            sb.append("removeLeadingZeros = ");
            sb.append(this.f74537c);
            sb.append(',');
            sb.append('\n');
            sb.append(str);
            sb.append("minLength = ");
            sb.append(this.d);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("NumberHexFormat(\n");
            a("    ", sb);
            sb.append('\n');
            sb.append(")");
            return sb.toString();
        }
    }

    static {
        BytesHexFormat.Companion companion = BytesHexFormat.INSTANCE;
        companion.getClass();
        BytesHexFormat bytesHexFormat = BytesHexFormat.f74528h;
        NumberHexFormat.Companion companion2 = NumberHexFormat.INSTANCE;
        companion2.getClass();
        NumberHexFormat numberHexFormat = NumberHexFormat.g;
        f74524e = new HexFormat(false, bytesHexFormat, numberHexFormat);
        companion.getClass();
        companion2.getClass();
        new HexFormat(true, bytesHexFormat, numberHexFormat);
    }

    public HexFormat(boolean z, BytesHexFormat bytesHexFormat, NumberHexFormat numberHexFormat) {
        bytesHexFormat.getClass();
        numberHexFormat.getClass();
        this.f74525a = z;
        this.f74526b = bytesHexFormat;
        this.f74527c = numberHexFormat;
    }

    public final String toString() {
        StringBuilder sbT = n00.t("HexFormat(\n    upperCase = ");
        sbT.append(this.f74525a);
        sbT.append(",\n    bytes = BytesHexFormat(\n");
        this.f74526b.a("        ", sbT);
        sbT.append('\n');
        sbT.append("    ),");
        sbT.append('\n');
        sbT.append("    number = NumberHexFormat(");
        sbT.append('\n');
        this.f74527c.a("        ", sbT);
        sbT.append('\n');
        sbT.append("    )");
        sbT.append('\n');
        sbT.append(")");
        return sbT.toString();
    }
}
