package com.dynatrace.agent.userinteraction.model;

import android.view.MotionEvent;
import com.batch.android.s.b;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;", "", "<init>", "()V", "TrackedPointer", "RawSample", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GestureInteractionDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f27147a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GestureIntentionClassifier f27148b = new GestureIntentionClassifier();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f27149c;
    public boolean d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$Companion;", "", "", "DISPLACEMENT_THRESHOLD_PX", "F", "SAMPLE_DISTANCE_PX", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;", "", "", "x", "y", "", "relativeTimeMs", "", "released", "<init>", "(FFJZ)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class RawSample {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f27150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f27151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f27152c;
        public final boolean d;

        public RawSample(float f2, float f3, long j2, boolean z) {
            this.f27150a = f2;
            this.f27151b = f3;
            this.f27152c = j2;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RawSample)) {
                return false;
            }
            RawSample rawSample = (RawSample) obj;
            return Float.compare(this.f27150a, rawSample.f27150a) == 0 && Float.compare(this.f27151b, rawSample.f27151b) == 0 && this.f27152c == rawSample.f27152c && this.d == rawSample.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + fc.a(pq0.b(Float.hashCode(this.f27150a) * 31, 31, this.f27151b), 31, this.f27152c);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RawSample(x=");
            sb.append(this.f27150a);
            sb.append(", y=");
            sb.append(this.f27151b);
            sb.append(", relativeTimeMs=");
            sb.append(this.f27152c);
            sb.append(", released=");
            return d21.q(sb, this.d, ')');
        }
    }

    static {
        new Companion(null);
    }

    public final ArrayList a() {
        Collection<TrackedPointer> collectionValues = this.f27147a.values();
        ArrayList arrayList = new ArrayList();
        for (TrackedPointer trackedPointer : collectionValues) {
            ArrayList<RawSample> arrayList2 = trackedPointer.g;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
            for (RawSample rawSample : arrayList2) {
                arrayList3.add(new GesturePosition(rawSample.f27150a, rawSample.f27151b, trackedPointer.f27153a, rawSample.f27152c, rawSample.d));
            }
            CollectionsKt.j(arrayList, arrayList3);
        }
        return arrayList;
    }

    public final boolean b() {
        Collection collectionValues = this.f27147a.values();
        if ((collectionValues instanceof Collection) && collectionValues.isEmpty()) {
            return false;
        }
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            if (((TrackedPointer) it.next()).d > 10.0f) {
                return true;
            }
        }
        return false;
    }

    public final void c(MotionEvent motionEvent, long j2) {
        motionEvent.getClass();
        LinkedHashMap linkedHashMap = this.f27147a;
        linkedHashMap.clear();
        this.d = false;
        this.f27149c = j2;
        int pointerId = motionEvent.getPointerId(0);
        float x = motionEvent.getX(0);
        float y = motionEvent.getY(0);
        linkedHashMap.put(Integer.valueOf(pointerId), new TrackedPointer(pointerId, x, y, 0L, 8, null));
        GestureIntentionClassifier gestureIntentionClassifier = this.f27148b;
        gestureIntentionClassifier.f27139a = x;
        gestureIntentionClassifier.f27140b = y;
        gestureIntentionClassifier.f27141c = x;
        gestureIntentionClassifier.d = y;
        gestureIntentionClassifier.f27142e = 0;
        gestureIntentionClassifier.f27143f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        gestureIntentionClassifier.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        gestureIntentionClassifier.f27144h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        gestureIntentionClassifier.f27145i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        gestureIntentionClassifier.f27146j = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.d = true;
    }

    public final void d(MotionEvent motionEvent, long j2) {
        MotionEvent motionEvent2 = motionEvent;
        motionEvent2.getClass();
        if (this.d) {
            long j3 = j2 - this.f27149c;
            int pointerCount = motionEvent2.getPointerCount();
            int i2 = 0;
            while (i2 < pointerCount) {
                int pointerId = motionEvent2.getPointerId(i2);
                float x = motionEvent2.getX(i2);
                float y = motionEvent2.getY(i2);
                Integer numValueOf = Integer.valueOf(pointerId);
                LinkedHashMap linkedHashMap = this.f27147a;
                Object trackedPointer = linkedHashMap.get(numValueOf);
                if (trackedPointer == null) {
                    trackedPointer = new TrackedPointer(pointerId, x, y, 0L, 8, null);
                    linkedHashMap.put(numValueOf, trackedPointer);
                }
                TrackedPointer trackedPointer2 = (TrackedPointer) trackedPointer;
                int i3 = pointerCount;
                float fHypot = (float) Math.hypot(x - trackedPointer2.f27154b, y - trackedPointer2.f27155c);
                if (fHypot > trackedPointer2.d) {
                    trackedPointer2.d = fHypot;
                }
                if (((float) Math.hypot(x - trackedPointer2.f27156e, y - trackedPointer2.f27157f)) >= 4.0f) {
                    trackedPointer2.g.add(new RawSample(x, y, j3, false));
                    trackedPointer2.f27156e = x;
                    trackedPointer2.f27157f = y;
                }
                if (i2 == 0) {
                    this.f27148b.a(x, y);
                }
                i2++;
                motionEvent2 = motionEvent;
                pointerCount = i3;
            }
        }
    }

    public final void e(MotionEvent motionEvent, long j2) {
        motionEvent.getClass();
        if (this.d) {
            int actionIndex = motionEvent.getActionIndex();
            int pointerId = motionEvent.getPointerId(actionIndex);
            float x = motionEvent.getX(actionIndex);
            float y = motionEvent.getY(actionIndex);
            long j3 = j2 - this.f27149c;
            Integer numValueOf = Integer.valueOf(pointerId);
            LinkedHashMap linkedHashMap = this.f27147a;
            if (linkedHashMap.get(numValueOf) == null) {
                linkedHashMap.put(numValueOf, new TrackedPointer(pointerId, x, y, j3));
            }
        }
    }

    public final void f(MotionEvent motionEvent, long j2) {
        ArrayList arrayList;
        motionEvent.getClass();
        if (this.d) {
            int actionIndex = motionEvent.getActionIndex();
            int pointerId = motionEvent.getPointerId(actionIndex);
            long j3 = j2 - this.f27149c;
            float x = motionEvent.getX(actionIndex);
            float y = motionEvent.getY(actionIndex);
            TrackedPointer trackedPointer = (TrackedPointer) this.f27147a.get(Integer.valueOf(pointerId));
            if (trackedPointer == null || (arrayList = trackedPointer.g) == null) {
                return;
            }
            arrayList.add(new RawSample(x, y, j3, true));
        }
    }

    public final long g(MotionEvent motionEvent, long j2) {
        ArrayList arrayList;
        motionEvent.getClass();
        if (!this.d) {
            return 0L;
        }
        int pointerId = motionEvent.getPointerId(0);
        long j3 = j2 - this.f27149c;
        float x = motionEvent.getX(0);
        float y = motionEvent.getY(0);
        this.f27148b.a(x, y);
        TrackedPointer trackedPointer = (TrackedPointer) this.f27147a.get(Integer.valueOf(pointerId));
        if (trackedPointer != null && (arrayList = trackedPointer.g) != null) {
            arrayList.add(new RawSample(x, y, j3, true));
        }
        return j3;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;", "", "", b.a.f24015b, "", "startX", "startY", "", "initialRelativeTimeMs", "<init>", "(IFFJ)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TrackedPointer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27153a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f27154b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f27155c;
        public float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f27156e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f27157f;
        public final ArrayList g;

        public TrackedPointer(int i2, float f2, float f3, long j2) {
            this.f27153a = i2;
            this.f27154b = f2;
            this.f27155c = f3;
            this.f27156e = f2;
            this.f27157f = f3;
            this.g = CollectionsKt.U(new RawSample(f2, f3, j2, false));
        }

        public /* synthetic */ TrackedPointer(int i2, float f2, float f3, long j2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, f2, f3, (i3 & 8) != 0 ? 0L : j2);
        }
    }
}
