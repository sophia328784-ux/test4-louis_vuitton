package com.dynatrace.agent.compose.userinteraction.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/model/Label;", "", "", "value", "Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;", "origin", "<init>", "(Ljava/lang/String;Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;)V", "Origin", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class Label {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Origin f26695b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;", "", "TEXT", "MASKED", "COMPONENT", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Origin {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Origin[] $VALUES;
        public static final Origin COMPONENT;
        public static final Origin MASKED;
        public static final Origin TEXT;

        static {
            Origin origin = new Origin("TEXT", 0);
            TEXT = origin;
            Origin origin2 = new Origin("MASKED", 1);
            MASKED = origin2;
            Origin origin3 = new Origin("COMPONENT", 2);
            COMPONENT = origin3;
            Origin[] originArr = {origin, origin2, origin3};
            $VALUES = originArr;
            $ENTRIES = EnumEntriesKt.a(originArr);
        }

        public static Origin valueOf(String str) {
            return (Origin) Enum.valueOf(Origin.class, str);
        }

        public static Origin[] values() {
            return (Origin[]) $VALUES.clone();
        }
    }

    public Label(String str, Origin origin) {
        str.getClass();
        origin.getClass();
        this.f26694a = str;
        this.f26695b = origin;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Label)) {
            return false;
        }
        Label label = (Label) obj;
        return Intrinsics.c(this.f26694a, label.f26694a) && this.f26695b == label.f26695b;
    }

    public final int hashCode() {
        return this.f26695b.hashCode() + (this.f26694a.hashCode() * 31);
    }

    public final String toString() {
        return "Label(value=" + this.f26694a + ", origin=" + this.f26695b + ')';
    }
}
