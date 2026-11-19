package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/CardColors;", "", "Landroidx/compose/ui/graphics/Color;", "containerColor", "contentColor", "disabledContainerColor", "disabledContentColor", "<init>", "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CardColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6656c;
    public final long d;

    public CardColors(long j2, long j3, long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6654a = j2;
        this.f6655b = j3;
        this.f6656c = j4;
        this.d = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CardColors)) {
            return false;
        }
        CardColors cardColors = (CardColors) obj;
        return Color.c(this.f6654a, cardColors.f6654a) && Color.c(this.f6655b, cardColors.f6655b) && Color.c(this.f6656c, cardColors.f6656c) && Color.c(this.d, cardColors.d);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.d) + fc.a(fc.a(Long.hashCode(this.f6654a) * 31, 31, this.f6655b), 31, this.f6656c);
    }
}
