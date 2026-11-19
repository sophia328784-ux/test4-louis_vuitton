package kotlin.io.encoding;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0017\u0018\u0000 \u00022\u00020\u0001:\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/encoding/Base64;", "", "f", "PaddingOption", "Default", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public class Base64 {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final byte[] g = {13, 10};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Base64 f71891h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f71892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f71893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f71894c;
    public final PaddingOption d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f71895e;

    /* JADX INFO: renamed from: kotlin.io.encoding.Base64$Default, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\t\u001a\u00020\b8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004¨\u0006\r"}, d2 = {"Lkotlin/io/encoding/Base64$Default;", "Lkotlin/io/encoding/Base64;", "", "bitsPerByte", "I", "bitsPerSymbol", "bytesPerGroup", "symbolsPerGroup", "", "padSymbol", NBSSpanMetricUnit.Byte, "lineLengthMime", "lineLengthPem", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion extends Base64 {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            super(false, false, -1, PaddingOption.PRESENT, null);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/encoding/Base64$PaddingOption;", "", "PRESENT", "ABSENT", "PRESENT_OPTIONAL", "ABSENT_OPTIONAL", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class PaddingOption {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PaddingOption[] $VALUES;
        public static final PaddingOption ABSENT;
        public static final PaddingOption ABSENT_OPTIONAL;
        public static final PaddingOption PRESENT;
        public static final PaddingOption PRESENT_OPTIONAL;

        static {
            PaddingOption paddingOption = new PaddingOption("PRESENT", 0);
            PRESENT = paddingOption;
            PaddingOption paddingOption2 = new PaddingOption("ABSENT", 1);
            ABSENT = paddingOption2;
            PaddingOption paddingOption3 = new PaddingOption("PRESENT_OPTIONAL", 2);
            PRESENT_OPTIONAL = paddingOption3;
            PaddingOption paddingOption4 = new PaddingOption("ABSENT_OPTIONAL", 3);
            ABSENT_OPTIONAL = paddingOption4;
            PaddingOption[] paddingOptionArr = {paddingOption, paddingOption2, paddingOption3, paddingOption4};
            $VALUES = paddingOptionArr;
            $ENTRIES = EnumEntriesKt.a(paddingOptionArr);
        }

        public static PaddingOption valueOf(String str) {
            return (PaddingOption) Enum.valueOf(PaddingOption.class, str);
        }

        public static PaddingOption[] values() {
            return (PaddingOption[]) $VALUES.clone();
        }
    }

    static {
        PaddingOption paddingOption = PaddingOption.PRESENT;
        f71891h = new Base64(true, false, -1, paddingOption);
        new Base64(false, true, 76, paddingOption);
        new Base64(false, true, 64, paddingOption);
    }

    public Base64(boolean z, boolean z2, int i2, PaddingOption paddingOption) {
        this.f71892a = z;
        this.f71893b = z2;
        this.f71894c = i2;
        this.d = paddingOption;
        if (z && z2) {
            md.n("Failed requirement.");
            throw null;
        }
        this.f71895e = i2 / 4;
    }

    public final int a(int i2) {
        int i3 = i2 / 3;
        int i4 = i2 % 3;
        int i5 = 4;
        int i6 = i3 * 4;
        if (i4 != 0) {
            PaddingOption paddingOption = PaddingOption.PRESENT;
            PaddingOption paddingOption2 = this.d;
            if (paddingOption2 != paddingOption && paddingOption2 != PaddingOption.PRESENT_OPTIONAL) {
                i5 = i4 + 1;
            }
            i6 += i5;
        }
        if (i6 < 0) {
            md.n("Input is too big");
            return 0;
        }
        if (this.f71893b) {
            i6 += ((i6 - 1) / this.f71894c) * 2;
        }
        if (i6 >= 0) {
            return i6;
        }
        md.n("Input is too big");
        return 0;
    }

    public /* synthetic */ Base64(boolean z, boolean z2, int i2, PaddingOption paddingOption, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, i2, paddingOption);
    }
}
