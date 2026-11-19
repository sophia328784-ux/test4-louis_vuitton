package androidx.compose.ui.text.android.selection;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/android/selection/WordSegmentFinder;", "Landroidx/compose/ui/text/android/selection/SegmentFinder;", "", "text", "Landroidx/compose/ui/text/android/selection/WordIterator;", "wordIterator", "<init>", "(Ljava/lang/CharSequence;Landroidx/compose/ui/text/android/selection/WordIterator;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WordSegmentFinder implements SegmentFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f10627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WordIterator f10628b;

    public WordSegmentFinder(CharSequence charSequence, WordIterator wordIterator) {
        this.f10627a = charSequence;
        this.f10628b = wordIterator;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public final int a(int i2) {
        CharSequence charSequence;
        do {
            i2 = this.f10628b.h(i2);
            if (i2 != -1) {
                charSequence = this.f10627a;
                if (i2 == charSequence.length()) {
                }
            }
            return -1;
        } while (Character.isWhitespace(charSequence.charAt(i2)));
        return i2;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public final int b(int i2) {
        do {
            i2 = this.f10628b.i(i2);
            if (i2 == -1) {
                return -1;
            }
        } while (Character.isWhitespace(this.f10627a.charAt(i2)));
        return i2;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public final int c(int i2) {
        do {
            i2 = this.f10628b.h(i2);
            if (i2 == -1) {
                return -1;
            }
        } while (Character.isWhitespace(this.f10627a.charAt(i2 - 1)));
        return i2;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public final int d(int i2) {
        do {
            i2 = this.f10628b.i(i2);
            if (i2 == -1 || i2 == 0) {
                return -1;
            }
        } while (Character.isWhitespace(this.f10627a.charAt(i2 - 1)));
        return i2;
    }
}
