package androidx.compose.ui.layout;

import defpackage.d21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/RectRulersImpl;", "Landroidx/compose/ui/layout/RectRulers;", "", "name", "<init>", "(Ljava/lang/String;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class RectRulersImpl implements RectRulers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VerticalRuler f9557b = new VerticalRuler();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HorizontalRuler f9558c = new HorizontalRuler();
    public final VerticalRuler d = new VerticalRuler();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HorizontalRuler f9559e = new HorizontalRuler();

    public RectRulersImpl(String str) {
        this.f9556a = str;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    /* JADX INFO: renamed from: a, reason: from getter */
    public final VerticalRuler getF9462b() {
        return this.f9557b;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    /* JADX INFO: renamed from: b, reason: from getter */
    public final HorizontalRuler getF9463c() {
        return this.f9558c;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    /* JADX INFO: renamed from: c, reason: from getter */
    public final HorizontalRuler getF9464e() {
        return this.f9559e;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    /* JADX INFO: renamed from: d, reason: from getter */
    public final VerticalRuler getD() {
        return this.d;
    }

    public final String toString() {
        String str = this.f9556a;
        return str != null ? d21.d(')', "RectRulers(", str) : super.toString();
    }
}
