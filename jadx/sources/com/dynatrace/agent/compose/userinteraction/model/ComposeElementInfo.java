package com.dynatrace.agent.compose.userinteraction.model;

import android.graphics.Rect;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\rB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;", "", "Landroid/graphics/Rect;", "area", "", "path", "Lcom/dynatrace/agent/compose/userinteraction/model/Label;", "label", "", "isClickable", "clazz", "<init>", "(Landroid/graphics/Rect;Ljava/lang/String;Lcom/dynatrace/agent/compose/userinteraction/model/Label;ZLjava/lang/String;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ComposeElementInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f26687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Label f26689c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f26690e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo$Companion;", "", "", "NO_INFO", "Ljava/lang/String;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ComposeElementInfo(Rect rect, String str, Label label, boolean z, String str2) {
        rect.getClass();
        str.getClass();
        label.getClass();
        str2.getClass();
        this.f26687a = rect;
        this.f26688b = str;
        this.f26689c = label;
        this.d = z;
        this.f26690e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComposeElementInfo)) {
            return false;
        }
        ComposeElementInfo composeElementInfo = (ComposeElementInfo) obj;
        return Intrinsics.c(this.f26687a, composeElementInfo.f26687a) && Intrinsics.c(this.f26688b, composeElementInfo.f26688b) && Intrinsics.c(this.f26689c, composeElementInfo.f26689c) && this.d == composeElementInfo.d && Intrinsics.c(this.f26690e, composeElementInfo.f26690e);
    }

    public final int hashCode() {
        return this.f26690e.hashCode() + o60.b((this.f26689c.hashCode() + fc.b(this.f26687a.hashCode() * 31, 31, this.f26688b)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ComposeElementInfo(area=");
        sb.append(this.f26687a);
        sb.append(", path=");
        sb.append(this.f26688b);
        sb.append(", label=");
        sb.append(this.f26689c);
        sb.append(", isClickable=");
        sb.append(this.d);
        sb.append(", clazz=");
        return fc.l(sb, this.f26690e, ')');
    }
}
