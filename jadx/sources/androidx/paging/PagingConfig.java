package androidx.paging;

import defpackage.fc;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001\fBC\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0003\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/paging/PagingConfig;", "", "", "pageSize", "prefetchDistance", "", "enablePlaceholders", "initialLoadSize", "maxSize", "jumpThreshold", "<init>", "(IIZIII)V", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PagingConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f18839c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f18841f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/PagingConfig$Companion;", "", "", "DEFAULT_INITIAL_PAGE_MULTIPLIER", "I", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public PagingConfig(int i2, int i3, boolean z, int i4, int i5, int i6) {
        this.f18837a = i2;
        this.f18838b = i3;
        this.f18839c = z;
        this.d = i4;
        this.f18840e = i5;
        this.f18841f = i6;
        if (!z && i3 == 0) {
            md.n("Placeholders and prefetch are the only ways to trigger loading of more data in PagingData, so either placeholders must be enabled, or prefetch distance must be > 0.");
            throw null;
        }
        if (i5 != Integer.MAX_VALUE && i5 < (i3 * 2) + i2) {
            StringBuilder sbP = fc.p(i2, i3, "Maximum size must be at least pageSize + 2*prefetchDist, pageSize=", ", prefetchDist=", ", maxSize=");
            sbP.append(i5);
            throw new IllegalArgumentException(sbP.toString());
        }
        if (i6 == Integer.MIN_VALUE || i6 > 0) {
            return;
        }
        md.n("jumpThreshold must be positive to enable jumps or COUNT_UNDEFINED to disable jumping.");
        throw null;
    }

    public PagingConfig(int i2, int i3) {
        this(i2, i3, false, 0, 0, 0, 60, null);
    }

    public PagingConfig(int i2, int i3, boolean z) {
        this(i2, i3, z, 0, 0, 0, 56, null);
    }

    public PagingConfig(int i2, int i3, boolean z, int i4) {
        this(i2, i3, z, i4, 0, 0, 48, null);
    }

    public PagingConfig(int i2, int i3, boolean z, int i4, int i5) {
        this(i2, i3, z, i4, i5, 0, 32, null);
    }

    public PagingConfig(int i2) {
        this(i2, 0, false, 0, 0, 0, 62, null);
    }

    public /* synthetic */ PagingConfig(int i2, int i3, boolean z, int i4, int i5, int i6, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i7 & 2) != 0 ? i2 : i3, (i7 & 4) != 0 ? true : z, (i7 & 8) != 0 ? i2 * 3 : i4, (i7 & 16) != 0 ? Integer.MAX_VALUE : i5, (i7 & 32) != 0 ? Integer.MIN_VALUE : i6);
    }
}
