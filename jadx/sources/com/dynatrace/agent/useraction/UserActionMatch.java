package com.dynatrace.agent.useraction;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionMatch;", "", "Active", "Retired", "SelfRetired", "Graveyard", "Lcom/dynatrace/agent/useraction/UserActionMatch$Active;", "Lcom/dynatrace/agent/useraction/UserActionMatch$Graveyard;", "Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;", "Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class UserActionMatch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27091a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionMatch$Active;", "Lcom/dynatrace/agent/useraction/UserActionMatch;", "Lcom/dynatrace/agent/useraction/ActiveUserAction;", "userAction", "<init>", "(Lcom/dynatrace/agent/useraction/ActiveUserAction;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Active extends UserActionMatch {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ActiveUserAction f27092b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Active(ActiveUserAction activeUserAction) {
            super(activeUserAction.f27052a, null);
            activeUserAction.getClass();
            this.f27092b = activeUserAction;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Active) && Intrinsics.c(this.f27092b, ((Active) obj).f27092b);
        }

        public final int hashCode() {
            return this.f27092b.hashCode();
        }

        public final String toString() {
            return "Active(userAction=" + this.f27092b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionMatch$Graveyard;", "Lcom/dynatrace/agent/useraction/UserActionMatch;", "Lcom/dynatrace/agent/useraction/GraveyardEntry;", "entry", "<init>", "(Lcom/dynatrace/agent/useraction/GraveyardEntry;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Graveyard extends UserActionMatch {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final GraveyardEntry f27093b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Graveyard(GraveyardEntry graveyardEntry) {
            super(graveyardEntry.f27061a, null);
            graveyardEntry.getClass();
            this.f27093b = graveyardEntry;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Graveyard) && Intrinsics.c(this.f27093b, ((Graveyard) obj).f27093b);
        }

        public final int hashCode() {
            return this.f27093b.hashCode();
        }

        public final String toString() {
            return "Graveyard(entry=" + this.f27093b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;", "Lcom/dynatrace/agent/useraction/UserActionMatch;", "Lcom/dynatrace/agent/useraction/RetiredUserAction;", "retired", "<init>", "(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Retired extends UserActionMatch {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final RetiredUserAction f27094b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Retired(RetiredUserAction retiredUserAction) {
            super(retiredUserAction.f27067a.f27052a, null);
            retiredUserAction.getClass();
            this.f27094b = retiredUserAction;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Retired) && Intrinsics.c(this.f27094b, ((Retired) obj).f27094b);
        }

        public final int hashCode() {
            return this.f27094b.hashCode();
        }

        public final String toString() {
            return "Retired(retired=" + this.f27094b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;", "Lcom/dynatrace/agent/useraction/UserActionMatch;", "Lcom/dynatrace/agent/useraction/RetiredUserAction;", "retired", "<init>", "(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class SelfRetired extends UserActionMatch {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final RetiredUserAction f27095b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SelfRetired(RetiredUserAction retiredUserAction) {
            super(retiredUserAction.f27067a.f27052a, null);
            retiredUserAction.getClass();
            this.f27095b = retiredUserAction;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SelfRetired) && Intrinsics.c(this.f27095b, ((SelfRetired) obj).f27095b);
        }

        public final int hashCode() {
            return this.f27095b.hashCode();
        }

        public final String toString() {
            return "SelfRetired(retired=" + this.f27095b + ')';
        }
    }

    public UserActionMatch(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f27091a = str;
    }
}
