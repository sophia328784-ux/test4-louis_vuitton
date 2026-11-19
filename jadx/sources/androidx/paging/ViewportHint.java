package androidx.paging;

import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/ViewportHint;", "", "Access", "Initial", "Landroidx/paging/ViewportHint$Access;", "Landroidx/paging/ViewportHint$Initial;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class ViewportHint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18996c;
    public final int d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/ViewportHint$Access;", "Landroidx/paging/ViewportHint;", "", "pageOffset", "indexInPage", "presentedItemsBefore", "presentedItemsAfter", "originalPageOffsetFirst", "originalPageOffsetLast", "<init>", "(IIIIII)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Access extends ViewportHint {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f18997e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f18998f;

        public Access(int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i4, i5, i6, i7, null);
            this.f18997e = i2;
            this.f18998f = i3;
        }

        @Override // androidx.paging.ViewportHint
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Access)) {
                return false;
            }
            Access access = (Access) obj;
            return this.f18997e == access.f18997e && this.f18998f == access.f18998f && this.f18994a == access.f18994a && this.f18995b == access.f18995b && this.f18996c == access.f18996c && this.d == access.d;
        }

        @Override // androidx.paging.ViewportHint
        public final int hashCode() {
            return Integer.hashCode(this.f18998f) + Integer.hashCode(this.f18997e) + super.hashCode();
        }

        public final String toString() {
            return StringsKt.c0("ViewportHint.Access(\n            |    pageOffset=" + this.f18997e + ",\n            |    indexInPage=" + this.f18998f + ",\n            |    presentedItemsBefore=" + this.f18994a + ",\n            |    presentedItemsAfter=" + this.f18995b + ",\n            |    originalPageOffsetFirst=" + this.f18996c + ",\n            |    originalPageOffsetLast=" + this.d + ",\n            |)");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/paging/ViewportHint$Initial;", "Landroidx/paging/ViewportHint;", "", "presentedItemsBefore", "presentedItemsAfter", "originalPageOffsetFirst", "originalPageOffsetLast", "<init>", "(IIII)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Initial extends ViewportHint {
        public Initial(int i2, int i3, int i4, int i5) {
            super(i2, i3, i4, i5, null);
        }

        public final String toString() {
            return StringsKt.c0("ViewportHint.Initial(\n            |    presentedItemsBefore=" + this.f18994a + ",\n            |    presentedItemsAfter=" + this.f18995b + ",\n            |    originalPageOffsetFirst=" + this.f18996c + ",\n            |    originalPageOffsetLast=" + this.d + ",\n            |)");
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18999a;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f18999a = iArr;
        }
    }

    public ViewportHint(int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f18994a = i2;
        this.f18995b = i3;
        this.f18996c = i4;
        this.d = i5;
    }

    public final int a(LoadType loadType) {
        loadType.getClass();
        int i2 = WhenMappings.f18999a[loadType.ordinal()];
        if (i2 == 1) {
            md.n("Cannot get presentedItems for loadType: REFRESH");
            return 0;
        }
        if (i2 == 2) {
            return this.f18994a;
        }
        if (i2 == 3) {
            return this.f18995b;
        }
        v40.g();
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewportHint)) {
            return false;
        }
        ViewportHint viewportHint = (ViewportHint) obj;
        return this.f18994a == viewportHint.f18994a && this.f18995b == viewportHint.f18995b && this.f18996c == viewportHint.f18996c && this.d == viewportHint.d;
    }

    public int hashCode() {
        return Integer.hashCode(this.d) + Integer.hashCode(this.f18996c) + Integer.hashCode(this.f18995b) + Integer.hashCode(this.f18994a);
    }
}
