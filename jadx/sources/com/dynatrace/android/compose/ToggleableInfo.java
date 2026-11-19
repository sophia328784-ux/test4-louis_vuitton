package com.dynatrace.android.compose;

import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/android/compose/ToggleableInfo;", "", "Landroidx/compose/ui/state/ToggleableState;", "state", "Landroidx/compose/ui/semantics/Role;", "role", "", "sourceName", "<init>", "(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "agent.instrumentorAPI.compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ToggleableInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ToggleableState f27637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Role f27638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27639c;

    public ToggleableInfo(ToggleableState toggleableState, Role role, String str, DefaultConstructorMarker defaultConstructorMarker) {
        toggleableState.getClass();
        str.getClass();
        this.f27637a = toggleableState;
        this.f27638b = role;
        this.f27639c = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ToggleableInfo(state=");
        sb.append(this.f27637a);
        sb.append(", role=");
        sb.append(this.f27638b);
        sb.append(", sourceName='");
        return n00.r(this.f27639c, "')", sb);
    }
}
