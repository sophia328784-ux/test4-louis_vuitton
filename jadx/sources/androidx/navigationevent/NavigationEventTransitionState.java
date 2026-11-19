package androidx.navigationevent;

import defpackage.tr;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Landroidx/navigationevent/NavigationEventTransitionState;", "", "Idle", "InProgress", "Direction", "Companion", "Landroidx/navigationevent/NavigationEventTransitionState$Idle;", "Landroidx/navigationevent/NavigationEventTransitionState$InProgress;", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class NavigationEventTransitionState {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/navigationevent/NavigationEventTransitionState$Companion;", "", "", "TRANSITIONING_UNKNOWN", "I", "TRANSITIONING_FORWARD", "TRANSITIONING_BACK", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Target({ElementType.METHOD, ElementType.PARAMETER})
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/navigationevent/NavigationEventTransitionState$Direction;", "", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @kotlin.annotation.Target
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention
    public @interface Direction {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/navigationevent/NavigationEventTransitionState$Idle;", "Landroidx/navigationevent/NavigationEventTransitionState;", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Idle extends NavigationEventTransitionState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Idle f18485a = new Idle(null);

        public final String toString() {
            return "Idle()";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/navigationevent/NavigationEventTransitionState$InProgress;", "Landroidx/navigationevent/NavigationEventTransitionState;", "Landroidx/navigationevent/NavigationEvent;", "latestEvent", "", "direction", "<init>", "(Landroidx/navigationevent/NavigationEvent;I)V", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class InProgress extends NavigationEventTransitionState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NavigationEvent f18486a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18487b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InProgress(NavigationEvent navigationEvent, int i2) {
            super(null);
            navigationEvent.getClass();
            this.f18486a = navigationEvent;
            this.f18487b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || InProgress.class != obj.getClass()) {
                return false;
            }
            InProgress inProgress = (InProgress) obj;
            return this.f18487b == inProgress.f18487b && Intrinsics.c(this.f18486a, inProgress.f18486a);
        }

        public final int hashCode() {
            return this.f18486a.hashCode() + (this.f18487b * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("InProgress(latestEvent=");
            sb.append(this.f18486a);
            sb.append(", direction=");
            return tr.k(sb, this.f18487b, ')');
        }
    }

    static {
        new Companion(null);
    }

    public NavigationEventTransitionState(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
