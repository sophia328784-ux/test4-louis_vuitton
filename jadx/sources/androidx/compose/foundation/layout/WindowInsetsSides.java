package androidx.compose.foundation.layout;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/layout/WindowInsetsSides;", "", "Companion", "value", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class WindowInsetsSides {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f5130a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f5131b = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f5132c = 4;
    public static final int d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f5133e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f5134f = 8 | 1;
    public static final int g = 4 | 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f5135h = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f5136i = 32;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f5137j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f5138k;
    public static final int l;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        int i2 = 8 | 2;
        f5137j = i2;
        int i3 = 4 | 1;
        f5138k = i3;
        l = i2 | i3;
    }

    public static final void a(String str, StringBuilder sb) {
        if (sb.length() > 0) {
            sb.append('+');
        }
        sb.append(str);
    }
}
