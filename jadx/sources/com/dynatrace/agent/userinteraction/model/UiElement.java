package com.dynatrace.agent.userinteraction.model;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\nB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/UiElement;", "", "Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;", "name", "", "", "components", b.a.f24015b, "<init>", "(Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;Ljava/util/List;Ljava/lang/String;)V", "Name", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class UiElement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Name f27189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f27190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27191c;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;", "", "", "value", "Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;", "origin", "<init>", "(Ljava/lang/String;Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;)V", "Origin", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Name {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f27192a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Origin f27193b;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;", "", "TEXT", "MASKED", "COMPONENT", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
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

        public Name(String str, Origin origin) {
            str.getClass();
            origin.getClass();
            this.f27192a = str;
            this.f27193b = origin;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Name)) {
                return false;
            }
            Name name = (Name) obj;
            return Intrinsics.c(this.f27192a, name.f27192a) && this.f27193b == name.f27193b;
        }

        public final int hashCode() {
            return this.f27193b.hashCode() + (this.f27192a.hashCode() * 31);
        }

        public final String toString() {
            return "Name(value=" + this.f27192a + ", origin=" + this.f27193b + ')';
        }
    }

    public UiElement(Name name, List<String> list, String str) {
        name.getClass();
        list.getClass();
        str.getClass();
        this.f27189a = name;
        this.f27190b = list;
        this.f27191c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UiElement)) {
            return false;
        }
        UiElement uiElement = (UiElement) obj;
        return Intrinsics.c(this.f27189a, uiElement.f27189a) && Intrinsics.c(this.f27190b, uiElement.f27190b) && Intrinsics.c(this.f27191c, uiElement.f27191c);
    }

    public final int hashCode() {
        return this.f27191c.hashCode() + n00.a(this.f27189a.hashCode() * 31, 31, this.f27190b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UiElement(name=");
        sb.append(this.f27189a);
        sb.append(", components=");
        sb.append(this.f27190b);
        sb.append(", id=");
        return fc.l(sb, this.f27191c, ')');
    }
}
