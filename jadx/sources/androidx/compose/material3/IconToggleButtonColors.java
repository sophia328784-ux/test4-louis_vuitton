package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/material3/IconToggleButtonColors;", "", "Landroidx/compose/ui/graphics/Color;", "containerColor", "contentColor", "disabledContainerColor", "disabledContentColor", "checkedContainerColor", "checkedContentColor", "<init>", "(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IconToggleButtonColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7005c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7006e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7007f;

    public IconToggleButtonColors(long j2, long j3, long j4, long j5, long j6, long j7, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7003a = j2;
        this.f7004b = j3;
        this.f7005c = j4;
        this.d = j5;
        this.f7006e = j6;
        this.f7007f = j7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IconToggleButtonColors)) {
            return false;
        }
        IconToggleButtonColors iconToggleButtonColors = (IconToggleButtonColors) obj;
        return Color.c(this.f7003a, iconToggleButtonColors.f7003a) && Color.c(this.f7004b, iconToggleButtonColors.f7004b) && Color.c(this.f7005c, iconToggleButtonColors.f7005c) && Color.c(this.d, iconToggleButtonColors.d) && Color.c(this.f7006e, iconToggleButtonColors.f7006e) && Color.c(this.f7007f, iconToggleButtonColors.f7007f);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f7007f) + fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f7003a) * 31, 31, this.f7004b), 31, this.f7005c), 31, this.d), 31, this.f7006e);
    }
}
