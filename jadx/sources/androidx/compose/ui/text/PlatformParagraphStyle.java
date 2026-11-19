package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0013\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006B\u001d\b\u0016\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\tB\u0013\b\u0016\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/PlatformParagraphStyle;", "", "", "includeFontPadding", "<init>", "(Z)V", "()V", "Landroidx/compose/ui/text/EmojiSupportMatch;", "emojiSupportMatch", "(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlatformParagraphStyle {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f10497c = new Companion(null);
    public static final PlatformParagraphStyle d = new PlatformParagraphStyle();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f10498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10499b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PlatformParagraphStyle(int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i3 & 1) != 0) {
            EmojiSupportMatch.f10450b.getClass();
            i2 = 0;
        }
        this(i2, (i3 & 2) != 0 ? false : z, (DefaultConstructorMarker) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlatformParagraphStyle)) {
            return false;
        }
        PlatformParagraphStyle platformParagraphStyle = (PlatformParagraphStyle) obj;
        if (this.f10498a != platformParagraphStyle.f10498a) {
            return false;
        }
        int i2 = platformParagraphStyle.f10499b;
        EmojiSupportMatch.Companion companion = EmojiSupportMatch.f10450b;
        return this.f10499b == i2;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f10498a) * 31;
        EmojiSupportMatch.Companion companion = EmojiSupportMatch.f10450b;
        return Integer.hashCode(this.f10499b) + iHashCode;
    }

    public final String toString() {
        return "PlatformParagraphStyle(includeFontPadding=" + this.f10498a + ", emojiSupportMatch=" + ((Object) EmojiSupportMatch.a(this.f10499b)) + ')';
    }

    public /* synthetic */ PlatformParagraphStyle(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z);
    }

    public PlatformParagraphStyle(boolean z) {
        this.f10498a = z;
        EmojiSupportMatch.f10450b.getClass();
        this.f10499b = 0;
    }

    public PlatformParagraphStyle(int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10498a = z;
        this.f10499b = i2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PlatformParagraphStyle(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i3 & 1) != 0) {
            EmojiSupportMatch.f10450b.getClass();
            i2 = 0;
        }
        this(i2, null);
    }

    public PlatformParagraphStyle(int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10498a = false;
        this.f10499b = i2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PlatformParagraphStyle() {
        this(0, false, (DefaultConstructorMarker) null);
        EmojiSupportMatch.f10450b.getClass();
    }
}
