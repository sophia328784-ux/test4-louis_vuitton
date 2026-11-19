package com.dynatrace.agent.useraction;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\bB%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/useraction/UserInteractionMemory;", "", "", "interactionType", "elementDetectedName", "elementNameOrigin", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class UserInteractionMemory {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27106c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/useraction/UserInteractionMemory$Companion;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public UserInteractionMemory(String str, String str2, String str3) {
        this.f27104a = str;
        this.f27105b = str2;
        this.f27106c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserInteractionMemory)) {
            return false;
        }
        UserInteractionMemory userInteractionMemory = (UserInteractionMemory) obj;
        return Intrinsics.c(this.f27104a, userInteractionMemory.f27104a) && Intrinsics.c(this.f27105b, userInteractionMemory.f27105b) && Intrinsics.c(this.f27106c, userInteractionMemory.f27106c);
    }

    public final int hashCode() {
        String str = this.f27104a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f27105b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f27106c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UserInteractionMemory(interactionType=");
        sb.append(this.f27104a);
        sb.append(", elementDetectedName=");
        sb.append(this.f27105b);
        sb.append(", elementNameOrigin=");
        return fc.l(sb, this.f27106c, ')');
    }
}
