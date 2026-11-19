package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/material3/MenuItemColors;", "", "Landroidx/compose/ui/graphics/Color;", "textColor", "leadingIconColor", "trailingIconColor", "disabledTextColor", "disabledLeadingIconColor", "disabledTrailingIconColor", "<init>", "(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MenuItemColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7024c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7025e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7026f;

    public MenuItemColors(long j2, long j3, long j4, long j5, long j6, long j7, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7022a = j2;
        this.f7023b = j3;
        this.f7024c = j4;
        this.d = j5;
        this.f7025e = j6;
        this.f7026f = j7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof MenuItemColors)) {
            return false;
        }
        MenuItemColors menuItemColors = (MenuItemColors) obj;
        return Color.c(this.f7022a, menuItemColors.f7022a) && Color.c(this.f7023b, menuItemColors.f7023b) && Color.c(this.f7024c, menuItemColors.f7024c) && Color.c(this.d, menuItemColors.d) && Color.c(this.f7025e, menuItemColors.f7025e) && Color.c(this.f7026f, menuItemColors.f7026f);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f7026f) + fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f7022a) * 31, 31, this.f7023b), 31, this.f7024c), 31, this.d), 31, this.f7025e);
    }
}
