package com.google.firebase.sessions.api;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcom/google/firebase/sessions/api/SessionSubscriber;", "", "Name", "SessionDetails", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SessionSubscriber {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/firebase/sessions/api/SessionSubscriber$Name;", "", "CRASHLYTICS", "PERFORMANCE", "MATT_SAYS_HI", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Name {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Name[] $VALUES;
        public static final Name CRASHLYTICS;
        public static final Name MATT_SAYS_HI;
        public static final Name PERFORMANCE;

        static {
            Name name = new Name("CRASHLYTICS", 0);
            CRASHLYTICS = name;
            Name name2 = new Name("PERFORMANCE", 1);
            PERFORMANCE = name2;
            Name name3 = new Name("MATT_SAYS_HI", 2);
            MATT_SAYS_HI = name3;
            Name[] nameArr = {name, name2, name3};
            $VALUES = nameArr;
            $ENTRIES = EnumEntriesKt.a(nameArr);
        }

        public static Name valueOf(String str) {
            return (Name) Enum.valueOf(Name.class, str);
        }

        public static Name[] values() {
            return (Name[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/firebase/sessions/api/SessionSubscriber$SessionDetails;", "", "", "sessionId", "<init>", "(Ljava/lang/String;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class SessionDetails {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f35554a;

        public SessionDetails(String str) {
            str.getClass();
            this.f35554a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SessionDetails) && Intrinsics.c(this.f35554a, ((SessionDetails) obj).f35554a);
        }

        public final int hashCode() {
            return this.f35554a.hashCode();
        }

        public final String toString() {
            return fc.l(new StringBuilder("SessionDetails(sessionId="), this.f35554a, ')');
        }
    }

    boolean a();

    Name b();

    void c(SessionDetails sessionDetails);
}
