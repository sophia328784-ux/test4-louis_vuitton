package androidx.compose.ui.text.input;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/input/GapBuffer;", "", "", "initBuffer", "", "initGapStart", "initGapEnd", "<init>", "([CII)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class GapBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f10782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public char[] f10783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10784c;
    public int d;

    public GapBuffer(char[] cArr, int i2, int i3) {
        this.f10782a = cArr.length;
        this.f10783b = cArr;
        this.f10784c = i2;
        this.d = i3;
    }

    public final int a() {
        return this.d - this.f10784c;
    }

    public final String toString() {
        return "";
    }
}
