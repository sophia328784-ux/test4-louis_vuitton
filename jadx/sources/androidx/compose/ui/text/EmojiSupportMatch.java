package androidx.compose.ui.text;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/EmojiSupportMatch;", "", "Companion", "value", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class EmojiSupportMatch {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10450b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f10451c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10452a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/EmojiSupportMatch$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == 0) {
            return "EmojiSupportMatch.Default";
        }
        if (i2 == f10451c) {
            return "EmojiSupportMatch.None";
        }
        return i2 == d ? "EmojiSupportMatch.All" : n00.q("Invalid(value=", i2, ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof EmojiSupportMatch) {
            return this.f10452a == ((EmojiSupportMatch) obj).f10452a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10452a);
    }

    public final String toString() {
        return a(this.f10452a);
    }
}
