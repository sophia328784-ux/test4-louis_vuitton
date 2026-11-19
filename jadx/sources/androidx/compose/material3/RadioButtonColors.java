package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/RadioButtonColors;", "", "Landroidx/compose/ui/graphics/Color;", "selectedColor", "unselectedColor", "disabledSelectedColor", "disabledUnselectedColor", "<init>", "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RadioButtonColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7157c;
    public final long d;

    public RadioButtonColors(long j2, long j3, long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7155a = j2;
        this.f7156b = j3;
        this.f7157c = j4;
        this.d = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RadioButtonColors)) {
            return false;
        }
        RadioButtonColors radioButtonColors = (RadioButtonColors) obj;
        return Color.c(this.f7155a, radioButtonColors.f7155a) && Color.c(this.f7156b, radioButtonColors.f7156b) && Color.c(this.f7157c, radioButtonColors.f7157c) && Color.c(this.d, radioButtonColors.d);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.d) + fc.a(fc.a(Long.hashCode(this.f7155a) * 31, 31, this.f7156b), 31, this.f7157c);
    }
}
