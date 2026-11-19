package androidx.compose.ui.text;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/BulletSpanWithLevel;", "", "Landroidx/compose/ui/text/Bullet;", "bullet", "", "indentationLevel", "start", "<init>", "(Landroidx/compose/ui/text/Bullet;II)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BulletSpanWithLevel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bullet f10445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10447c;

    public BulletSpanWithLevel(Bullet bullet, int i2, int i3) {
        this.f10445a = bullet;
        this.f10446b = i2;
        this.f10447c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BulletSpanWithLevel)) {
            return false;
        }
        BulletSpanWithLevel bulletSpanWithLevel = (BulletSpanWithLevel) obj;
        return Intrinsics.c(this.f10445a, bulletSpanWithLevel.f10445a) && this.f10446b == bulletSpanWithLevel.f10446b && this.f10447c == bulletSpanWithLevel.f10447c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10447c) + tr.b(this.f10446b, this.f10445a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BulletSpanWithLevel(bullet=");
        sb.append(this.f10445a);
        sb.append(", indentationLevel=");
        sb.append(this.f10446b);
        sb.append(", start=");
        return tr.k(sb, this.f10447c, ')');
    }
}
