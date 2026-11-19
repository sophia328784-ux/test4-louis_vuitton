package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nB1\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/material3/TopAppBarColors;", "", "Landroidx/compose/ui/graphics/Color;", "containerColor", "scrolledContainerColor", "navigationIconContentColor", "titleContentColor", "actionIconContentColor", "subtitleContentColor", "<init>", "(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TopAppBarColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7430c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7432f;

    @Deprecated
    public TopAppBarColors(long j2, long j3, long j4, long j5, long j6, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, j4, j5, j6, j5, null);
    }

    public final TopAppBarColors a(long j2, long j3, long j4, long j5, long j6, long j7) {
        return new TopAppBarColors(j2 != 16 ? j2 : this.f7428a, j3 != 16 ? j3 : this.f7429b, j4 != 16 ? j4 : this.f7430c, j5 != 16 ? j5 : this.d, j6 != 16 ? j6 : this.f7431e, j7 != 16 ? j7 : this.f7432f, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof TopAppBarColors)) {
            return false;
        }
        TopAppBarColors topAppBarColors = (TopAppBarColors) obj;
        return Color.c(this.f7428a, topAppBarColors.f7428a) && Color.c(this.f7429b, topAppBarColors.f7429b) && Color.c(this.f7430c, topAppBarColors.f7430c) && Color.c(this.d, topAppBarColors.d) && Color.c(this.f7431e, topAppBarColors.f7431e) && Color.c(this.f7432f, topAppBarColors.f7432f);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f7432f) + fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f7428a) * 31, 31, this.f7429b), 31, this.f7430c), 31, this.d), 31, this.f7431e);
    }

    public TopAppBarColors(long j2, long j3, long j4, long j5, long j6, long j7, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7428a = j2;
        this.f7429b = j3;
        this.f7430c = j4;
        this.d = j5;
        this.f7431e = j6;
        this.f7432f = j7;
    }
}
