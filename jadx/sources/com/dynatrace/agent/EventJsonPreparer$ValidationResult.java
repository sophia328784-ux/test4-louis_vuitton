package com.dynatrace.agent;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"com/dynatrace/agent/EventJsonPreparer$ValidationResult", "", "Valid", "Invalid", "Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;", "Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class EventJsonPreparer$ValidationResult {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;", "Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Invalid extends EventJsonPreparer$ValidationResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26426a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Invalid(String str) {
            super(null);
            str.getClass();
            this.f26426a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Invalid) && Intrinsics.c(this.f26426a, ((Invalid) obj).f26426a);
        }

        public final int hashCode() {
            return this.f26426a.hashCode();
        }

        public final String toString() {
            return fc.l(new StringBuilder("Invalid(errorMessage="), this.f26426a, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;", "Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult;", "", "recordTimestamp", "<init>", "(J)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Valid extends EventJsonPreparer$ValidationResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f26427a;

        public Valid(long j2) {
            super(null);
            this.f26427a = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Valid) && this.f26427a == ((Valid) obj).f26427a;
        }

        public final int hashCode() {
            return Long.hashCode(this.f26427a);
        }

        public final String toString() {
            return fc.k(new StringBuilder("Valid(recordTimestamp="), this.f26427a, ')');
        }
    }

    public EventJsonPreparer$ValidationResult(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
