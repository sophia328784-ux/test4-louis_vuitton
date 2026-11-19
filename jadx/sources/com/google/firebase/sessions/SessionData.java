package com.google.firebase.sessions;

import defpackage.zu0;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\u000bBE\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/google/firebase/sessions/SessionData;", "", "Lcom/google/firebase/sessions/SessionDetails;", "sessionDetails", "Lcom/google/firebase/sessions/Time;", "backgroundTime", "", "", "Lcom/google/firebase/sessions/ProcessData;", "processDataMap", "<init>", "(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class SessionData {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new zu0(8))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionDetails f35460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Time f35461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f35462c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/firebase/sessions/SessionData$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/google/firebase/sessions/SessionData;", "serializer", "()Lkotlinx/serialization/KSerializer;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SessionData> serializer() {
            return SessionData$$serializer.f35463a;
        }
    }

    public /* synthetic */ SessionData(int i2, SessionDetails sessionDetails, Time time, Map map, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, SessionData$$serializer.f35463a.getF19838b());
            throw null;
        }
        this.f35460a = sessionDetails;
        if ((i2 & 2) == 0) {
            this.f35461b = null;
        } else {
            this.f35461b = time;
        }
        if ((i2 & 4) == 0) {
            this.f35462c = null;
        } else {
            this.f35462c = map;
        }
    }

    public static SessionData a(SessionData sessionData, SessionDetails sessionDetails, Time time, Map map, int i2) {
        if ((i2 & 1) != 0) {
            sessionDetails = sessionData.f35460a;
        }
        if ((i2 & 2) != 0) {
            time = sessionData.f35461b;
        }
        if ((i2 & 4) != 0) {
            map = sessionData.f35462c;
        }
        sessionData.getClass();
        sessionDetails.getClass();
        return new SessionData(sessionDetails, time, map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionData)) {
            return false;
        }
        SessionData sessionData = (SessionData) obj;
        return Intrinsics.c(this.f35460a, sessionData.f35460a) && Intrinsics.c(this.f35461b, sessionData.f35461b) && Intrinsics.c(this.f35462c, sessionData.f35462c);
    }

    public final int hashCode() {
        int iHashCode = this.f35460a.hashCode() * 31;
        Time time = this.f35461b;
        int iHashCode2 = (iHashCode + (time == null ? 0 : Long.hashCode(time.f35537a))) * 31;
        Map map = this.f35462c;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        return "SessionData(sessionDetails=" + this.f35460a + ", backgroundTime=" + this.f35461b + ", processDataMap=" + this.f35462c + ')';
    }

    public SessionData(SessionDetails sessionDetails, Time time, Map<String, ProcessData> map) {
        sessionDetails.getClass();
        this.f35460a = sessionDetails;
        this.f35461b = time;
        this.f35462c = map;
    }

    public /* synthetic */ SessionData(SessionDetails sessionDetails, Time time, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(sessionDetails, (i2 & 2) != 0 ? null : time, (i2 & 4) != 0 ? null : map);
    }
}
