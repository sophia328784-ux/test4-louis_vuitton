package androidx.compose.ui.platform;

import java.text.BreakIterator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"androidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator", "Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class AccessibilityIterators$CharacterTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static AccessibilityIterators$CharacterTextSegmentIterator f9847e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BreakIterator f9848c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;", "", "Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;", "instance", "Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AccessibilityIterators$CharacterTextSegmentIterator(Locale locale, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9848c = BreakIterator.getCharacterInstance(locale);
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i2) {
        int length = d().length();
        if (length <= 0 || i2 >= length) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        do {
            BreakIterator breakIterator = this.f9848c;
            if (breakIterator == null) {
                Intrinsics.h("impl");
                throw null;
            }
            if (breakIterator.isBoundary(i2)) {
                if (breakIterator == null) {
                    Intrinsics.h("impl");
                    throw null;
                }
                int iFollowing = breakIterator.following(i2);
                if (iFollowing == -1) {
                    return null;
                }
                return c(i2, iFollowing);
            }
            if (breakIterator == null) {
                Intrinsics.h("impl");
                throw null;
            }
            i2 = breakIterator.following(i2);
        } while (i2 != -1);
        return null;
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] b(int i2) {
        int length = d().length();
        if (length <= 0 || i2 <= 0) {
            return null;
        }
        if (i2 > length) {
            i2 = length;
        }
        do {
            BreakIterator breakIterator = this.f9848c;
            if (breakIterator == null) {
                Intrinsics.h("impl");
                throw null;
            }
            if (breakIterator.isBoundary(i2)) {
                if (breakIterator == null) {
                    Intrinsics.h("impl");
                    throw null;
                }
                int iPreceding = breakIterator.preceding(i2);
                if (iPreceding == -1) {
                    return null;
                }
                return c(iPreceding, i2);
            }
            if (breakIterator == null) {
                Intrinsics.h("impl");
                throw null;
            }
            i2 = breakIterator.preceding(i2);
        } while (i2 != -1);
        return null;
    }
}
