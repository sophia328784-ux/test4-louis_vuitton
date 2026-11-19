package com.vuitton.android.core.type;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/core/type/SystemIcons;", "", "Companion", "darkIcons", "", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class SystemIcons {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f43533b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f43534c = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f43535a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/type/SystemIcons$Companion;", "", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(boolean z) {
        return tr.i("SystemIcons(darkIcons=", ")", z);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SystemIcons) {
            return this.f43535a == ((SystemIcons) obj).f43535a;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f43535a);
    }

    public final String toString() {
        return a(this.f43535a);
    }
}
