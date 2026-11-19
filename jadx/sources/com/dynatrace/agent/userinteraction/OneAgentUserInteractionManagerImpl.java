package com.dynatrace.agent.userinteraction;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.dynatrace.agent.compose.userinteraction.model.ComposeElementInfo;
import com.dynatrace.agent.compose.userinteraction.model.ComposeTouchEvent;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.userinteraction.handler.FingerInteractionCoordinator;
import com.dynatrace.agent.userinteraction.handler.GestureUserInteractionHandler;
import com.dynatrace.agent.userinteraction.handler.RotationUserInteractionHandler;
import com.dynatrace.agent.userinteraction.handler.TouchUserInteractionHandler;
import com.dynatrace.agent.userinteraction.model.GestureIntention;
import com.dynatrace.agent.userinteraction.model.GestureIntentionClassifier;
import com.dynatrace.agent.userinteraction.model.GestureInteractionDetector;
import com.dynatrace.agent.userinteraction.model.GesturePosition;
import com.dynatrace.agent.userinteraction.model.GestureUserInteraction;
import com.dynatrace.agent.userinteraction.model.SequenceState;
import com.dynatrace.agent.userinteraction.model.TouchEvent;
import com.dynatrace.agent.userinteraction.util.UptimeToEpochConverter;
import com.dynatrace.agent.userinteraction.util.UserInteractionTracker;
import com.dynatrace.agent.userinteraction.util.UserInteractionUtilKt;
import com.dynatrace.android.agent.util.Utility;
import defpackage.ss;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.Job;
import net.rtccloud.sdk.Call;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;", "Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;", "Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;", "fingerCoordinator", "Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;", "rotationHandler", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "<init>", "(Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;Lcom/dynatrace/agent/di/SessionInformationProvider;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentUserInteractionManagerImpl implements OneAgentUserInteractionManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FingerInteractionCoordinator f27111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RotationUserInteractionHandler f27112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionInformationProvider f27113c;

    public OneAgentUserInteractionManagerImpl(FingerInteractionCoordinator fingerInteractionCoordinator, RotationUserInteractionHandler rotationUserInteractionHandler, SessionInformationProvider sessionInformationProvider) {
        fingerInteractionCoordinator.getClass();
        rotationUserInteractionHandler.getClass();
        sessionInformationProvider.getClass();
        this.f27111a = fingerInteractionCoordinator;
        this.f27112b = rotationUserInteractionHandler;
        this.f27113c = sessionInformationProvider;
    }

    /* JADX WARN: Code duplicated, block: B:83:0x016e  */
    @Override // com.dynatrace.agent.userinteraction.OneAgentUserInteractionManager
    public final void a(View view, MotionEvent motionEvent) throws JSONException {
        ComposeTouchEvent composeTouchEvent;
        SequenceState touch;
        ArrayList arrayList;
        Pair pair;
        GestureIntention gestureIntention;
        float fMax;
        float fMin;
        float f2;
        view.getClass();
        motionEvent.getClass();
        if (this.f27113c.a().f26885c) {
            FingerInteractionCoordinator fingerInteractionCoordinator = this.f27111a;
            UptimeToEpochConverter uptimeToEpochConverter = fingerInteractionCoordinator.d;
            TouchUserInteractionHandler touchUserInteractionHandler = fingerInteractionCoordinator.f27114b;
            NativeGestureCoordinator nativeGestureCoordinator = fingerInteractionCoordinator.f27116e;
            GestureUserInteractionHandler gestureUserInteractionHandler = fingerInteractionCoordinator.f27115c;
            if (view instanceof ViewGroup) {
                int actionMasked = motionEvent.getActionMasked();
                SequenceState.Idle idle = SequenceState.Idle.f27166a;
                if (actionMasked == 0) {
                    Job job = fingerInteractionCoordinator.f27118h;
                    if (job != null) {
                        job.cancel(null);
                    }
                    SequenceState sequenceState = fingerInteractionCoordinator.g;
                    sequenceState.getClass();
                    SequenceState.Pending pending = sequenceState instanceof SequenceState.Pending ? (SequenceState.Pending) sequenceState : null;
                    if (pending != null) {
                        fingerInteractionCoordinator.g = idle;
                        fingerInteractionCoordinator.b(pending);
                    }
                    fingerInteractionCoordinator.g = new SequenceState.Tracking((ViewGroup) view, uptimeToEpochConverter.a(motionEvent.getEventTime()));
                    nativeGestureCoordinator.a();
                    gestureUserInteractionHandler.a(motionEvent);
                    touchUserInteractionHandler.b(motionEvent);
                    return;
                }
                if (actionMasked != 1) {
                    if (actionMasked == 2) {
                        gestureUserInteractionHandler.a(motionEvent);
                        touchUserInteractionHandler.b(motionEvent);
                        return;
                    }
                    if (actionMasked != 3) {
                        if (actionMasked == 5 || actionMasked == 6) {
                            gestureUserInteractionHandler.a(motionEvent);
                            return;
                        }
                        return;
                    }
                    Job job2 = fingerInteractionCoordinator.f27118h;
                    if (job2 != null) {
                        job2.cancel(null);
                    }
                    fingerInteractionCoordinator.g = idle;
                    GestureInteractionDetector gestureInteractionDetector = gestureUserInteractionHandler.d;
                    gestureInteractionDetector.f27147a.clear();
                    gestureInteractionDetector.d = false;
                    nativeGestureCoordinator.b(false);
                    return;
                }
                touchUserInteractionHandler.b(motionEvent);
                SequenceState sequenceState2 = fingerInteractionCoordinator.g;
                sequenceState2.getClass();
                SequenceState.Tracking tracking = sequenceState2 instanceof SequenceState.Tracking ? (SequenceState.Tracking) sequenceState2 : null;
                if (tracking == null) {
                    GestureInteractionDetector gestureInteractionDetector2 = gestureUserInteractionHandler.d;
                    gestureInteractionDetector2.f27147a.clear();
                    gestureInteractionDetector2.d = false;
                    return;
                }
                TouchEvent touchEvent = new TouchEvent(UserInteractionUtilKt.b(motionEvent), motionEvent.getX(0), motionEvent.getY(0));
                gestureUserInteractionHandler.getClass();
                GestureInteractionDetector gestureInteractionDetector3 = gestureUserInteractionHandler.d;
                long jG = gestureInteractionDetector3.g(motionEvent, motionEvent.getEventTime());
                ComposeTouchEvent composeTouchEvent2 = fingerInteractionCoordinator.f27119i;
                fingerInteractionCoordinator.f27119i = null;
                if (composeTouchEvent2 != null) {
                    ComposeElementInfo composeElementInfo = composeTouchEvent2.f26691a;
                    ComposeElementInfo composeElementInfo2 = (composeElementInfo.d && fingerInteractionCoordinator.f27117f.a(composeElementInfo.f26687a, Float.valueOf(touchEvent.f27179b), Float.valueOf(touchEvent.f27180c))) ? composeElementInfo : null;
                    if (composeElementInfo2 != null) {
                        List list = composeTouchEvent2.f26692b;
                        list.getClass();
                        composeTouchEvent2 = new ComposeTouchEvent(composeElementInfo, list, composeElementInfo2);
                    }
                    composeTouchEvent = composeTouchEvent2;
                } else {
                    composeTouchEvent = null;
                }
                long jA = uptimeToEpochConverter.a(motionEvent.getEventTime());
                if ((composeTouchEvent != null ? composeTouchEvent.f26693c : null) != null) {
                    gestureInteractionDetector3.f27147a.clear();
                    gestureInteractionDetector3.d = false;
                    fingerInteractionCoordinator.g = idle;
                    nativeGestureCoordinator.b(false);
                    fingerInteractionCoordinator.f27114b.a(touchEvent, tracking.f27176a, null, composeTouchEvent, jA);
                    return;
                }
                if (gestureInteractionDetector3.b()) {
                    ArrayList arrayListA = gestureInteractionDetector3.a();
                    GestureIntentionClassifier gestureIntentionClassifier = gestureInteractionDetector3.f27148b;
                    if (gestureIntentionClassifier.f27142e <= 0 || gestureIntentionClassifier.f27143f <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        arrayList = arrayListA;
                        pair = new Pair(GestureIntention.COMPLEX, null);
                    } else {
                        float f3 = gestureIntentionClassifier.f27141c - gestureIntentionClassifier.f27139a;
                        float f4 = gestureIntentionClassifier.d - gestureIntentionClassifier.f27140b;
                        arrayList = arrayListA;
                        float fHypot = (float) Math.hypot(f3, f4);
                        if (fHypot == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            pair = new Pair(GestureIntention.COMPLEX, 100);
                        } else {
                            boolean z = Math.abs(f3) >= Math.abs(f4);
                            float f5 = fHypot / gestureIntentionClassifier.f27143f;
                            if (z && f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                gestureIntention = GestureIntention.RIGHT;
                            } else if (z) {
                                gestureIntention = GestureIntention.LEFT;
                            } else {
                                gestureIntention = f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? GestureIntention.DOWN : GestureIntention.UP;
                            }
                            if (z) {
                                float f6 = gestureIntentionClassifier.g;
                                float f7 = gestureIntentionClassifier.f27144h;
                                fMax = Math.max(f6, f7);
                                if (fMax <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f2 = 0.0f;
                                } else {
                                    fMin = Math.min(f6, f7);
                                    f2 = fMin / fMax;
                                }
                            } else {
                                float f8 = gestureIntentionClassifier.f27145i;
                                float f9 = gestureIntentionClassifier.f27146j;
                                fMax = Math.max(f8, f9);
                                if (fMax <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f2 = 0.0f;
                                } else {
                                    fMin = Math.min(f8, f9);
                                    f2 = fMin / fMax;
                                }
                            }
                            if (f2 >= 0.25f) {
                                pair = new Pair(GestureIntention.COMPLEX, Integer.valueOf((int) (RangesKt.c(Math.max(f5 < 0.65f ? (0.65f - f5) / 0.65f : 0.0f, f2), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) * 100.0f)));
                            } else {
                                pair = new Pair(gestureIntention, Integer.valueOf((int) (RangesKt.c(f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) * 100.0f)));
                            }
                        }
                    }
                    GestureIntention gestureIntention2 = (GestureIntention) pair.f71705b;
                    Integer num = (Integer) pair.f71706c;
                    ArrayList arrayList2 = arrayList;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(Integer.valueOf(((GesturePosition) it.next()).f27160c));
                    }
                    touch = new SequenceState.Pending.Gesture(new GestureUserInteraction(arrayList2, gestureIntention2, num, jG, CollectionsKt.y0(CollectionsKt.A0(arrayList3)).size()), jG, tracking.f27177b, jA, touchEvent, tracking.f27176a, composeTouchEvent);
                } else {
                    touch = new SequenceState.Pending.Touch(tracking.f27177b, jA, touchEvent, tracking.f27176a, composeTouchEvent);
                }
                gestureInteractionDetector3.f27147a.clear();
                gestureInteractionDetector3.d = false;
                fingerInteractionCoordinator.g = touch;
                fingerInteractionCoordinator.f27118h = fingerInteractionCoordinator.a(new ss(fingerInteractionCoordinator, 13));
            }
        }
    }

    @Override // com.dynatrace.agent.userinteraction.OneAgentUserInteractionManager
    public final void b(View view) throws JSONException {
        view.getClass();
        if (this.f27113c.a().f26885c) {
            FingerInteractionCoordinator fingerInteractionCoordinator = this.f27111a;
            fingerInteractionCoordinator.getClass();
            SequenceState sequenceState = fingerInteractionCoordinator.g;
            sequenceState.getClass();
            SequenceState.Pending pending = sequenceState instanceof SequenceState.Pending ? (SequenceState.Pending) sequenceState : null;
            if (pending == null) {
                return;
            }
            View rootView = view.getRootView();
            ViewGroup viewGroup = rootView instanceof ViewGroup ? (ViewGroup) rootView : null;
            if (viewGroup == null) {
                return;
            }
            Job job = fingerInteractionCoordinator.f27118h;
            if (job != null) {
                job.cancel(null);
            }
            fingerInteractionCoordinator.g = SequenceState.Idle.f27166a;
            fingerInteractionCoordinator.f27116e.b(false);
            fingerInteractionCoordinator.f27114b.a(pending.getF27174c(), viewGroup, view, pending.getF27175e(), pending.getF27173b());
        }
    }

    @Override // com.dynatrace.agent.userinteraction.OneAgentUserInteractionManager
    public final void c() throws JSONException {
        if (this.f27113c.a().f26885c) {
            RotationUserInteractionHandler rotationUserInteractionHandler = this.f27112b;
            if (!rotationUserInteractionHandler.d) {
                rotationUserInteractionHandler.d = true;
                return;
            }
            boolean zContains = rotationUserInteractionHandler.f27125c.getF27010b().f27046e.contains("all");
            boolean z = !zContains;
            if (zContains) {
                rotationUserInteractionHandler.f27123a.getClass();
                Utility.b("Received Screen Rotation User Interaction");
            } else {
                Utility.b("Rotation User Interaction suppressed, userInteractions config disabled for rotation");
            }
            UserInteractionTracker userInteractionTracker = rotationUserInteractionHandler.f27124b;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("characteristics.has_user_interaction", true);
            jSONObject.put("interaction.type", "rotation");
            userInteractionTracker.getClass();
            userInteractionTracker.a(jSONObject, 0L, userInteractionTracker.f27196b.a(), z);
        }
    }
}
