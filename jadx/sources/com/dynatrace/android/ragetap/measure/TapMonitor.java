package com.dynatrace.android.ragetap.measure;

import android.view.MotionEvent;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.ragetap.detection.RageTapDetector;
import com.dynatrace.android.ragetap.detection.RageTapRules;
import com.dynatrace.android.ragetap.detection.TapData;
import com.dynatrace.android.ragetap.detection.TapEventData;
import com.dynatrace.android.window.OnTouchEventListener;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class TapMonitor implements OnTouchEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RageTapDetector f27715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MotionEventConverter f27716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimeLineProvider f27717c;
    public State d = State.NO_TAP;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TapEventData f27718e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ State[] $VALUES;
        public static final State INVALID_TAP_STATE;
        public static final State NO_TAP;
        public static final State TAP_DOWN;

        static {
            State state = new State("NO_TAP", 0);
            NO_TAP = state;
            State state2 = new State("TAP_DOWN", 1);
            TAP_DOWN = state2;
            State state3 = new State("INVALID_TAP_STATE", 2);
            INVALID_TAP_STATE = state3;
            $VALUES = new State[]{state, state2, state3};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    static {
        boolean z = Global.f27307a;
    }

    public TapMonitor(RageTapDetector rageTapDetector, MotionEventConverter motionEventConverter, TimeLineProvider timeLineProvider) {
        this.f27715a = rageTapDetector;
        this.f27716b = motionEventConverter;
        this.f27717c = timeLineProvider;
    }

    @Override // com.dynatrace.android.window.OnTouchEventListener
    public final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            long jA = this.f27717c.a();
            MotionEventConverter motionEventConverter = this.f27716b;
            motionEventConverter.getClass();
            int actionIndex = motionEvent.getActionIndex();
            float x = motionEvent.getX(actionIndex);
            float f2 = motionEventConverter.f27714a;
            this.f27718e = new TapEventData(x * f2, motionEvent.getY(actionIndex) * f2, jA, motionEvent.getEventTime());
            this.d = State.TAP_DOWN;
            return;
        }
        boolean z = true;
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 5 && actionMasked != 6) {
                    if (Global.f27307a) {
                        Utility.n("unexpected event type detected: " + motionEvent.toString());
                        return;
                    }
                    return;
                }
                if (this.d == State.TAP_DOWN) {
                    if (Global.f27307a) {
                        Utility.n("multi-touch tap detected");
                    }
                    this.f27715a.a();
                }
                this.d = State.INVALID_TAP_STATE;
                this.f27718e = null;
                return;
            }
            return;
        }
        if (this.d == State.TAP_DOWN) {
            long jA2 = this.f27717c.a();
            MotionEventConverter motionEventConverter2 = this.f27716b;
            motionEventConverter2.getClass();
            int actionIndex2 = motionEvent.getActionIndex();
            float x2 = motionEvent.getX(actionIndex2);
            float f3 = motionEventConverter2.f27714a;
            TapEventData tapEventData = new TapEventData(x2 * f3, motionEvent.getY(actionIndex2) * f3, jA2, motionEvent.getEventTime());
            RageTapDetector rageTapDetector = this.f27715a;
            TapData tapData = new TapData(this.f27718e, tapEventData);
            synchronized (rageTapDetector) {
                try {
                    if (rageTapDetector.l) {
                        if (Global.f27307a) {
                            int i2 = RageTapDetector.m;
                            Utility.n("register tap: " + tapData);
                        }
                        RageTapRules rageTapRules = rageTapDetector.f27703f;
                        rageTapRules.getClass();
                        if (tapData.f27710b.f27713c - tapData.f27709a.f27713c > rageTapRules.f27708a.f27386a) {
                            if (Global.f27307a) {
                                int i3 = RageTapDetector.m;
                                Utility.n("tap exceeds click duration");
                            }
                            rageTapDetector.a();
                        } else if (rageTapDetector.g == null) {
                            rageTapDetector.c(tapData);
                        } else {
                            RageTapRules rageTapRules2 = rageTapDetector.f27703f;
                            TapData tapData2 = rageTapDetector.f27704h;
                            rageTapRules2.getClass();
                            if (tapData.f27709a.f27713c - tapData2.f27710b.f27713c > ((long) rageTapRules2.f27708a.f27388c)) {
                                if (Global.f27307a) {
                                    int i4 = RageTapDetector.m;
                                    Utility.n("tap exceeds timespan difference");
                                }
                                rageTapDetector.a();
                                rageTapDetector.c(tapData);
                            } else {
                                RageTapRules rageTapRules3 = rageTapDetector.f27703f;
                                TapData tapData3 = rageTapDetector.f27704h;
                                rageTapRules3.getClass();
                                TapEventData tapEventData2 = tapData.f27709a;
                                float f4 = tapEventData2.f27711a;
                                TapEventData tapEventData3 = tapData3.f27709a;
                                float f5 = f4 - tapEventData3.f27711a;
                                float f6 = tapEventData2.f27712b - tapEventData3.f27712b;
                                float f7 = (f6 * f6) + (f5 * f5);
                                int i5 = rageTapRules3.f27708a.f27387b;
                                if (f7 > i5 * i5) {
                                    if (Global.f27307a) {
                                        int i6 = RageTapDetector.m;
                                        Utility.n("tap exceeds dispersion radius");
                                    }
                                    rageTapDetector.a();
                                    rageTapDetector.c(tapData);
                                } else {
                                    rageTapDetector.f27704h = tapData;
                                    int i7 = rageTapDetector.f27705i + 1;
                                    rageTapDetector.f27705i = i7;
                                    if (i7 < rageTapDetector.f27703f.f27708a.d) {
                                        z = false;
                                    }
                                    if (z) {
                                        ScheduledFuture scheduledFuture = rageTapDetector.f27706j;
                                        if (scheduledFuture != null) {
                                            scheduledFuture.cancel(false);
                                        }
                                        rageTapDetector.f27706j = rageTapDetector.f27700b.schedule(rageTapDetector.f27701c, rageTapDetector.f27707k, TimeUnit.MILLISECONDS);
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.d = State.NO_TAP;
        this.f27718e = null;
    }
}
