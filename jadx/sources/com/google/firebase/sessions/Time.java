package com.google.firebase.sessions;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B3\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0004\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/google/firebase/sessions/Time;", "", "", NBSSpanMetricUnit.Millisecond, "<init>", "(J)V", "", "seen0", "us", "seconds", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IJJJLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class Time {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f35537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f35538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f35539c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/firebase/sessions/Time$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/google/firebase/sessions/Time;", "serializer", "()Lkotlinx/serialization/KSerializer;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Time> serializer() {
            return Time$$serializer.f35540a;
        }
    }

    public /* synthetic */ Time(int i2, long j2, long j3, long j4, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, Time$$serializer.f35540a.a());
            throw null;
        }
        this.f35537a = j2;
        this.f35538b = (i2 & 2) == 0 ? j2 * 1000 : j3;
        if ((i2 & 4) == 0) {
            this.f35539c = j2 / 1000;
        } else {
            this.f35539c = j4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Time) && this.f35537a == ((Time) obj).f35537a;
    }

    public final int hashCode() {
        return Long.hashCode(this.f35537a);
    }

    public final String toString() {
        return fc.k(new StringBuilder("Time(ms="), this.f35537a, ')');
    }

    public Time(long j2) {
        this.f35537a = j2;
        this.f35538b = j2 * 1000;
        this.f35539c = j2 / 1000;
    }
}
