package androidx.compose.ui.text.font;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/font/FontWeight;", "", "", "weight", "<init>", "(I)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FontWeight implements Comparable<FontWeight> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f10727c = new Companion(null);
    public static final FontWeight d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FontWeight f10728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FontWeight f10729f;
    public static final FontWeight g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final FontWeight f10730h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final FontWeight f10731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final FontWeight f10732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final FontWeight f10733k;
    public static final List l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10734b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/font/FontWeight$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        FontWeight fontWeight = new FontWeight(100);
        FontWeight fontWeight2 = new FontWeight(200);
        FontWeight fontWeight3 = new FontWeight(300);
        FontWeight fontWeight4 = new FontWeight(400);
        d = fontWeight4;
        FontWeight fontWeight5 = new FontWeight(500);
        f10728e = fontWeight5;
        FontWeight fontWeight6 = new FontWeight(600);
        f10729f = fontWeight6;
        FontWeight fontWeight7 = new FontWeight(700);
        FontWeight fontWeight8 = new FontWeight(ConfigurationName.BASE_X_POS);
        FontWeight fontWeight9 = new FontWeight(900);
        g = fontWeight3;
        f10730h = fontWeight4;
        f10731i = fontWeight5;
        f10732j = fontWeight6;
        f10733k = fontWeight7;
        l = CollectionsKt.P(fontWeight, fontWeight2, fontWeight3, fontWeight4, fontWeight5, fontWeight6, fontWeight7, fontWeight8, fontWeight9);
    }

    public FontWeight(int i2) {
        this.f10734b = i2;
        boolean z = false;
        if (1 <= i2 && i2 < 1001) {
            z = true;
        }
        if (z) {
            return;
        }
        InlineClassHelperKt.a("Font weight can be in range [1, 1000]. Current value: " + i2);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(FontWeight fontWeight) {
        return Intrinsics.d(this.f10734b, fontWeight.f10734b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FontWeight) {
            return this.f10734b == ((FontWeight) obj).f10734b;
        }
        return false;
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public final int getF10734b() {
        return this.f10734b;
    }

    public final String toString() {
        return tr.k(new StringBuilder("FontWeight(weight="), this.f10734b, ')');
    }
}
