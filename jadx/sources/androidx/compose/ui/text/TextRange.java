package androidx.compose.ui.text;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/TextRange;", "", "Companion", "packedValue", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class TextRange {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10564b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f10565c = TextRangeKt.a(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10566a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/TextRange$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static boolean a(long j2, Object obj) {
        return (obj instanceof TextRange) && j2 == ((TextRange) obj).f10566a;
    }

    public static final boolean b(long j2, long j3) {
        return j2 == j3;
    }

    public static final boolean c(long j2) {
        return ((int) (j2 >> 32)) == ((int) (j2 & BodyPartID.bodyIdMax));
    }

    public static final int d(long j2) {
        return e(j2) - f(j2);
    }

    public static final int e(long j2) {
        return Math.max((int) (j2 >> 32), (int) (j2 & BodyPartID.bodyIdMax));
    }

    public static final int f(long j2) {
        return Math.min((int) (j2 >> 32), (int) (j2 & BodyPartID.bodyIdMax));
    }

    public static final boolean g(long j2) {
        return ((int) (j2 >> 32)) > ((int) (j2 & BodyPartID.bodyIdMax));
    }

    public static String h(long j2) {
        StringBuilder sb = new StringBuilder("TextRange(");
        sb.append((int) (j2 >> 32));
        sb.append(", ");
        return tr.k(sb, (int) (j2 & BodyPartID.bodyIdMax), ')');
    }

    public final boolean equals(Object obj) {
        return a(this.f10566a, obj);
    }

    public final int hashCode() {
        return Long.hashCode(this.f10566a);
    }

    public final String toString() {
        return h(this.f10566a);
    }
}
