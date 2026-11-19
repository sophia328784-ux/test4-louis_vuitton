package androidx.compose.ui.text.input;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/input/PartialGapBuffer;", "", "", "text", "<init>", "(Ljava/lang/String;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PartialGapBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f10822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GapBuffer f10823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10824c = -1;
    public int d = -1;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/input/PartialGapBuffer$Companion;", "", "", "BUF_SIZE", "I", "SURROUNDING_SIZE", "NOWHERE", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public PartialGapBuffer(String str) {
        this.f10822a = str;
    }

    public final int a() {
        GapBuffer gapBuffer = this.f10823b;
        String str = this.f10822a;
        if (gapBuffer == null) {
            return str.length();
        }
        return (gapBuffer.f10782a - gapBuffer.a()) + (str.length() - (this.d - this.f10824c));
    }

    public final void b(int i2, int i3, String str) {
        if (i2 > i3) {
            InlineClassHelperKt.a("start index must be less than or equal to end index: " + i2 + " > " + i3);
        }
        if (i2 < 0) {
            InlineClassHelperKt.a("start must be non-negative, but was " + i2);
        }
        GapBuffer gapBuffer = this.f10823b;
        if (gapBuffer == null) {
            int iMax = Math.max(255, str.length() + 128);
            char[] cArr = new char[iMax];
            int iMin = Math.min(i2, 64);
            int iMin2 = Math.min(this.f10822a.length() - i3, 64);
            String str2 = this.f10822a;
            int i4 = i2 - iMin;
            str2.getClass();
            str2.getChars(i4, i2, cArr, 0);
            String str3 = this.f10822a;
            int i5 = iMax - iMin2;
            int i6 = iMin2 + i3;
            str3.getClass();
            str3.getChars(i3, i6, cArr, i5);
            str.getChars(0, str.length(), cArr, iMin);
            this.f10823b = new GapBuffer(cArr, str.length() + iMin, i5);
            this.f10824c = i4;
            this.d = i6;
            return;
        }
        int i7 = this.f10824c;
        int i8 = i2 - i7;
        int i9 = i3 - i7;
        if (i8 < 0 || i9 > gapBuffer.f10782a - gapBuffer.a()) {
            this.f10822a = toString();
            this.f10823b = null;
            this.f10824c = -1;
            this.d = -1;
            b(i2, i3, str);
            return;
        }
        int length = str.length() - (i9 - i8);
        if (length > gapBuffer.a()) {
            int iA = length - gapBuffer.a();
            int i10 = gapBuffer.f10782a;
            do {
                i10 *= 2;
            } while (i10 - gapBuffer.f10782a < iA);
            char[] cArr2 = new char[i10];
            System.arraycopy(gapBuffer.f10783b, 0, cArr2, 0, gapBuffer.f10784c);
            int i11 = gapBuffer.f10782a;
            int i12 = gapBuffer.d;
            int i13 = i11 - i12;
            int i14 = i10 - i13;
            System.arraycopy(gapBuffer.f10783b, i12, cArr2, i14, (i13 + i12) - i12);
            gapBuffer.f10783b = cArr2;
            gapBuffer.f10782a = i10;
            gapBuffer.d = i14;
        }
        int i15 = gapBuffer.f10784c;
        if (i8 < i15 && i9 <= i15) {
            int i16 = i15 - i9;
            char[] cArr3 = gapBuffer.f10783b;
            System.arraycopy(cArr3, i9, cArr3, gapBuffer.d - i16, i16);
            gapBuffer.f10784c = i8;
            gapBuffer.d -= i16;
        } else if (i8 >= i15 || i9 < i15) {
            int iA2 = i8 + gapBuffer.a();
            int iA3 = i9 + gapBuffer.a();
            int i17 = gapBuffer.d;
            int i18 = iA2 - i17;
            char[] cArr4 = gapBuffer.f10783b;
            System.arraycopy(cArr4, i17, cArr4, gapBuffer.f10784c, i18);
            gapBuffer.f10784c += i18;
            gapBuffer.d = iA3;
        } else {
            gapBuffer.d = i9 + gapBuffer.a();
            gapBuffer.f10784c = i8;
        }
        str.getChars(0, str.length(), gapBuffer.f10783b, gapBuffer.f10784c);
        gapBuffer.f10784c = str.length() + gapBuffer.f10784c;
    }

    public final String toString() {
        GapBuffer gapBuffer = this.f10823b;
        String str = this.f10822a;
        if (gapBuffer == null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str, 0, this.f10824c);
        sb.append(gapBuffer.f10783b, 0, gapBuffer.f10784c);
        char[] cArr = gapBuffer.f10783b;
        int i2 = gapBuffer.d;
        sb.append(cArr, i2, gapBuffer.f10782a - i2);
        String str2 = this.f10822a;
        sb.append((CharSequence) str2, this.d, str2.length());
        return sb.toString();
    }
}
