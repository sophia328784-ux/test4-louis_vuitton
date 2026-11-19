package com.dynatrace.android.compose;

import androidx.compose.ui.semantics.Role;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/android/compose/ClickableInfo;", "", "", "interactionType", "Landroidx/compose/ui/semantics/Role;", "role", "Lkotlin/Function0;", "function", "<init>", "(Ljava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "agent.instrumentorAPI.compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ClickableInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Role f27629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f27630c;

    public ClickableInfo(String str, Role role, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        function0.getClass();
        this.f27628a = str;
        this.f27629b = role;
        this.f27630c = function0;
    }

    public final String toString() {
        return "ClickableInfo{interactionType='" + this.f27628a + "', role=" + this.f27629b + ", function=" + this.f27630c.getClass().getName() + '}';
    }
}
