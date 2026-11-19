package androidx.compose.ui.layout;

import defpackage.d21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/WindowInsetsRulersImpl;", "Landroidx/compose/ui/layout/WindowInsetsRulers;", "", "name", "<init>", "(Ljava/lang/String;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class WindowInsetsRulersImpl implements WindowInsetsRulers {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RectRulers f9599c;
    public final RectRulers d;

    public WindowInsetsRulersImpl(String str) {
        this.f9598b = str;
        this.f9599c = new RectRulersImpl(str);
        this.d = new RectRulersImpl(d21.j(str, " maximum"));
    }

    @Override // androidx.compose.ui.layout.WindowInsetsRulers
    /* JADX INFO: renamed from: a, reason: from getter */
    public final RectRulers getD() {
        return this.d;
    }

    @Override // androidx.compose.ui.layout.WindowInsetsRulers
    /* JADX INFO: renamed from: b, reason: from getter */
    public final RectRulers getF9599c() {
        return this.f9599c;
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF9598b() {
        return this.f9598b;
    }
}
