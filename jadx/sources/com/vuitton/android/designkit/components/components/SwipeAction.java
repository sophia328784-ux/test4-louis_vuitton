package com.vuitton.android.designkit.components.components;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/designkit/components/components/SwipeAction;", "", "", "icon", "", "label", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "Lkotlin/Function0;", "", "onClick", "<init>", "(ILjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "components"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SwipeAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f48289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f48290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48291c;
    public final Function0 d;

    public SwipeAction(int i2, String str, long j2, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        function0.getClass();
        this.f48289a = i2;
        this.f48290b = str;
        this.f48291c = j2;
        this.d = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwipeAction)) {
            return false;
        }
        SwipeAction swipeAction = (SwipeAction) obj;
        return this.f48289a == swipeAction.f48289a && this.f48290b.equals(swipeAction.f48290b) && Color.c(this.f48291c, swipeAction.f48291c) && this.d.equals(swipeAction.d);
    }

    public final int hashCode() {
        int iB = fc.b(Integer.hashCode(this.f48289a) * 31, 31, this.f48290b);
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.d.hashCode() + fc.a(iB, 31, this.f48291c);
    }

    public final String toString() {
        return "SwipeAction(icon=" + this.f48289a + ", label=" + this.f48290b + ", backgroundColor=" + Color.i(this.f48291c) + ", onClick=" + this.d + ")";
    }
}
