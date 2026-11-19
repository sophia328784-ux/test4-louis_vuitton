package androidx.compose.ui.text.style;

import androidx.compose.ui.util.ListUtilsKt;
import com.android.wiimu.model.WiimuPendingMask;
import defpackage.fc;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/style/TextDecoration;", "", "", WiimuPendingMask.Mask, "<init>", "(I)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextDecoration {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10965b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TextDecoration f10966c = new TextDecoration(0);
    public static final TextDecoration d = new TextDecoration(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TextDecoration f10967e = new TextDecoration(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10968a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/TextDecoration$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TextDecoration(int i2) {
        this.f10968a = i2;
    }

    public final boolean a(TextDecoration textDecoration) {
        int i2 = textDecoration.f10968a;
        int i3 = this.f10968a;
        return (i2 | i3) == i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextDecoration) {
            return this.f10968a == ((TextDecoration) obj).f10968a;
        }
        return false;
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public final int getF10968a() {
        return this.f10968a;
    }

    public final String toString() {
        int i2 = this.f10968a;
        if (i2 == 0) {
            return "TextDecoration.None";
        }
        ArrayList arrayList = new ArrayList();
        if ((d.f10968a & i2) != 0) {
            arrayList.add("Underline");
        }
        if ((i2 & f10967e.f10968a) != 0) {
            arrayList.add("LineThrough");
        }
        if (arrayList.size() != 1) {
            return fc.l(new StringBuilder("TextDecoration["), ListUtilsKt.a(arrayList, ", ", null, 62), ']');
        }
        return "TextDecoration." + ((String) arrayList.get(0));
    }
}
