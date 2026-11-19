package com.dynatrace.agent.userinteraction.model;

import android.view.ViewGroup;
import com.dynatrace.agent.compose.userinteraction.model.ComposeTouchEvent;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bp\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/SequenceState;", "", "Idle", "Tracking", "Pending", "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;", "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;", "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SequenceState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;", "Lcom/dynatrace/agent/userinteraction/model/SequenceState;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Idle implements SequenceState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Idle f27166a = new Idle();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Idle);
        }

        public final int hashCode() {
            return -2131770139;
        }

        public final String toString() {
            return "Idle";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;", "Lcom/dynatrace/agent/userinteraction/model/SequenceState;", "Touch", "Gesture", "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;", "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Pending extends SequenceState {

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;", "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;", "Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;", "interaction", "", "durationMs", "downTimestamp", "upTimestamp", "Lcom/dynatrace/agent/userinteraction/model/TouchEvent;", "upEvent", "Landroid/view/ViewGroup;", "rootView", "Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;", "composeEvent", "<init>", "(Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;JJJLcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Gesture implements Pending {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final GestureUserInteraction f27167a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final long f27168b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final long f27169c;
            public final long d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final TouchEvent f27170e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final ViewGroup f27171f;
            public final ComposeTouchEvent g;

            public Gesture(GestureUserInteraction gestureUserInteraction, long j2, long j3, long j4, TouchEvent touchEvent, ViewGroup viewGroup, ComposeTouchEvent composeTouchEvent) {
                gestureUserInteraction.getClass();
                touchEvent.getClass();
                viewGroup.getClass();
                this.f27167a = gestureUserInteraction;
                this.f27168b = j2;
                this.f27169c = j3;
                this.d = j4;
                this.f27170e = touchEvent;
                this.f27171f = viewGroup;
                this.g = composeTouchEvent;
            }

            @Override // com.dynatrace.agent.userinteraction.model.SequenceState.Pending
            /* JADX INFO: renamed from: a, reason: from getter */
            public final TouchEvent getF27174c() {
                return this.f27170e;
            }

            @Override // com.dynatrace.agent.userinteraction.model.SequenceState.Pending
            /* JADX INFO: renamed from: b, reason: from getter */
            public final ComposeTouchEvent getF27175e() {
                return this.g;
            }

            @Override // com.dynatrace.agent.userinteraction.model.SequenceState.Pending
            /* JADX INFO: renamed from: c, reason: from getter */
            public final long getF27173b() {
                return this.d;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Gesture)) {
                    return false;
                }
                Gesture gesture = (Gesture) obj;
                return Intrinsics.c(this.f27167a, gesture.f27167a) && this.f27168b == gesture.f27168b && this.f27169c == gesture.f27169c && this.d == gesture.d && Intrinsics.c(this.f27170e, gesture.f27170e) && Intrinsics.c(this.f27171f, gesture.f27171f) && Intrinsics.c(this.g, gesture.g);
            }

            public final int hashCode() {
                int iHashCode = (this.f27171f.hashCode() + ((this.f27170e.hashCode() + fc.a(fc.a(fc.a(this.f27167a.hashCode() * 31, 31, this.f27168b), 31, this.f27169c), 31, this.d)) * 31)) * 31;
                ComposeTouchEvent composeTouchEvent = this.g;
                return iHashCode + (composeTouchEvent == null ? 0 : composeTouchEvent.hashCode());
            }

            public final String toString() {
                return "Gesture(interaction=" + this.f27167a + ", durationMs=" + this.f27168b + ", downTimestamp=" + this.f27169c + ", upTimestamp=" + this.d + ", upEvent=" + this.f27170e + ", rootView=" + this.f27171f + ", composeEvent=" + this.g + ')';
            }
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;", "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;", "", "downTimestamp", "upTimestamp", "Lcom/dynatrace/agent/userinteraction/model/TouchEvent;", "upEvent", "Landroid/view/ViewGroup;", "rootView", "Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;", "composeEvent", "<init>", "(JJLcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Touch implements Pending {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f27172a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final long f27173b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final TouchEvent f27174c;
            public final ViewGroup d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final ComposeTouchEvent f27175e;

            public Touch(long j2, long j3, TouchEvent touchEvent, ViewGroup viewGroup, ComposeTouchEvent composeTouchEvent) {
                touchEvent.getClass();
                viewGroup.getClass();
                this.f27172a = j2;
                this.f27173b = j3;
                this.f27174c = touchEvent;
                this.d = viewGroup;
                this.f27175e = composeTouchEvent;
            }

            @Override // com.dynatrace.agent.userinteraction.model.SequenceState.Pending
            /* JADX INFO: renamed from: a, reason: from getter */
            public final TouchEvent getF27174c() {
                return this.f27174c;
            }

            @Override // com.dynatrace.agent.userinteraction.model.SequenceState.Pending
            /* JADX INFO: renamed from: b, reason: from getter */
            public final ComposeTouchEvent getF27175e() {
                return this.f27175e;
            }

            @Override // com.dynatrace.agent.userinteraction.model.SequenceState.Pending
            /* JADX INFO: renamed from: c, reason: from getter */
            public final long getF27173b() {
                return this.f27173b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Touch)) {
                    return false;
                }
                Touch touch = (Touch) obj;
                return this.f27172a == touch.f27172a && this.f27173b == touch.f27173b && Intrinsics.c(this.f27174c, touch.f27174c) && Intrinsics.c(this.d, touch.d) && Intrinsics.c(this.f27175e, touch.f27175e);
            }

            public final int hashCode() {
                int iHashCode = (this.d.hashCode() + ((this.f27174c.hashCode() + fc.a(Long.hashCode(this.f27172a) * 31, 31, this.f27173b)) * 31)) * 31;
                ComposeTouchEvent composeTouchEvent = this.f27175e;
                return iHashCode + (composeTouchEvent == null ? 0 : composeTouchEvent.hashCode());
            }

            public final String toString() {
                return "Touch(downTimestamp=" + this.f27172a + ", upTimestamp=" + this.f27173b + ", upEvent=" + this.f27174c + ", rootView=" + this.d + ", composeEvent=" + this.f27175e + ')';
            }
        }

        /* JADX INFO: renamed from: a */
        TouchEvent getF27174c();

        /* JADX INFO: renamed from: b */
        ComposeTouchEvent getF27175e();

        /* JADX INFO: renamed from: c */
        long getF27173b();
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;", "Lcom/dynatrace/agent/userinteraction/model/SequenceState;", "Landroid/view/ViewGroup;", "rootView", "", "downTimestamp", "<init>", "(Landroid/view/ViewGroup;J)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Tracking implements SequenceState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ViewGroup f27176a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f27177b;

        public Tracking(ViewGroup viewGroup, long j2) {
            viewGroup.getClass();
            this.f27176a = viewGroup;
            this.f27177b = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Tracking)) {
                return false;
            }
            Tracking tracking = (Tracking) obj;
            return Intrinsics.c(this.f27176a, tracking.f27176a) && this.f27177b == tracking.f27177b;
        }

        public final int hashCode() {
            return Long.hashCode(this.f27177b) + (this.f27176a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Tracking(rootView=");
            sb.append(this.f27176a);
            sb.append(", downTimestamp=");
            return fc.k(sb, this.f27177b, ')');
        }
    }
}
