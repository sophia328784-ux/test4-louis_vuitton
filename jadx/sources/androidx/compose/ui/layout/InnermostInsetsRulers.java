package androidx.compose.ui.layout;

import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/layout/InnermostInsetsRulers;", "Landroidx/compose/ui/layout/WindowInsetsRulers;", "", "name", "", "rulers", "<init>", "(Ljava/lang/String;[Landroidx/compose/ui/layout/WindowInsetsRulers;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class InnermostInsetsRulers implements WindowInsetsRulers {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WindowInsetsRulers[] f9466c;
    public final RectRulers d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectRulers f9467e;

    public InnermostInsetsRulers(String str, WindowInsetsRulers[] windowInsetsRulersArr) {
        this.f9465b = str;
        this.f9466c = windowInsetsRulersArr;
        ArrayList arrayList = new ArrayList(windowInsetsRulersArr.length);
        for (WindowInsetsRulers windowInsetsRulers : windowInsetsRulersArr) {
            arrayList.add(windowInsetsRulers.getD());
        }
        RectRulers[] rectRulersArr = (RectRulers[]) arrayList.toArray(new RectRulers[0]);
        this.d = new InnerRectRulers((RectRulers[]) Arrays.copyOf(rectRulersArr, rectRulersArr.length));
        WindowInsetsRulers[] windowInsetsRulersArr2 = this.f9466c;
        ArrayList arrayList2 = new ArrayList(windowInsetsRulersArr2.length);
        for (WindowInsetsRulers windowInsetsRulers2 : windowInsetsRulersArr2) {
            arrayList2.add(windowInsetsRulers2.getF9467e());
        }
        RectRulers[] rectRulersArr2 = (RectRulers[]) arrayList2.toArray(new RectRulers[0]);
        this.f9467e = new InnerRectRulers((RectRulers[]) Arrays.copyOf(rectRulersArr2, rectRulersArr2.length));
    }

    @Override // androidx.compose.ui.layout.WindowInsetsRulers
    /* JADX INFO: renamed from: a, reason: from getter */
    public final RectRulers getF9467e() {
        return this.f9467e;
    }

    @Override // androidx.compose.ui.layout.WindowInsetsRulers
    /* JADX INFO: renamed from: b, reason: from getter */
    public final RectRulers getD() {
        return this.d;
    }

    public final String toString() {
        String str = this.f9465b;
        return str == null ? ArraysKt.H(this.f9466c, null, "innermostOf(", ")", null, 57) : str;
    }
}
