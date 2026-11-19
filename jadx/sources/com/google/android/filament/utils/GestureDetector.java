package com.google.android.filament.utils;

import android.view.MotionEvent;
import android.view.View;
import com.batch.android.s.b;
import defpackage.a;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\b\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/google/android/filament/utils/GestureDetector;", "", "Landroid/view/View;", "view", "Lcom/google/android/filament/utils/Manipulator;", "manipulator", "<init>", "(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V", "Gesture", "TouchPair", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GestureDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f28646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Manipulator f28647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Gesture f28648c;
    public TouchPair d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f28649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f28650f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f28651h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f28652i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f28653j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f28654k;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/filament/utils/GestureDetector$Gesture;", "", "NONE", "ORBIT", "PAN", "ZOOM", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Gesture {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Gesture[] $VALUES;
        public static final Gesture NONE;
        public static final Gesture ORBIT;
        public static final Gesture PAN;
        public static final Gesture ZOOM;

        static {
            Gesture gesture = new Gesture("NONE", 0);
            NONE = gesture;
            Gesture gesture2 = new Gesture("ORBIT", 1);
            ORBIT = gesture2;
            Gesture gesture3 = new Gesture("PAN", 2);
            PAN = gesture3;
            Gesture gesture4 = new Gesture("ZOOM", 3);
            ZOOM = gesture4;
            Gesture[] gestureArr = {gesture, gesture2, gesture3, gesture4};
            $VALUES = gestureArr;
            $ENTRIES = EnumEntriesKt.a(gestureArr);
        }

        public static Gesture valueOf(String str) {
            return (Gesture) Enum.valueOf(Gesture.class, str);
        }

        public static Gesture[] values() {
            return (Gesture[]) $VALUES.clone();
        }
    }

    public GestureDetector(View view, Manipulator manipulator) {
        view.getClass();
        manipulator.getClass();
        this.f28646a = view;
        this.f28647b = manipulator;
        this.f28648c = Gesture.NONE;
        this.d = new TouchPair();
        this.f28649e = new ArrayList();
        this.f28650f = new ArrayList();
        this.g = new ArrayList();
        this.f28651h = 2;
        this.f28652i = 4;
        this.f28653j = 10;
        this.f28654k = 0.1f;
    }

    public final void a(MotionEvent motionEvent) {
        motionEvent.getClass();
        TouchPair touchPair = new TouchPair(motionEvent, this.f28646a.getHeight());
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.g;
        ArrayList arrayList2 = this.f28649e;
        ArrayList arrayList3 = this.f28650f;
        Manipulator manipulator = this.f28647b;
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if ((motionEvent.getPointerCount() != 1 && this.f28648c == Gesture.ORBIT) || ((motionEvent.getPointerCount() != 2 && this.f28648c == Gesture.PAN) || (motionEvent.getPointerCount() != 2 && this.f28648c == Gesture.ZOOM))) {
                    arrayList2.clear();
                    arrayList3.clear();
                    arrayList.clear();
                    this.f28648c = Gesture.NONE;
                    manipulator.i();
                    return;
                }
                Gesture gesture = this.f28648c;
                Gesture gesture2 = Gesture.ZOOM;
                if (gesture == gesture2) {
                    manipulator.k((int) touchPair.a().f28637a, (int) touchPair.a().f28638b, (this.d.b() - touchPair.b()) * this.f28654k);
                    this.d = touchPair;
                    return;
                }
                if (gesture != Gesture.NONE) {
                    manipulator.j((int) touchPair.a().f28637a, (int) touchPair.a().f28638b);
                    return;
                }
                if (motionEvent.getPointerCount() == 1) {
                    arrayList3.add(touchPair);
                }
                if (motionEvent.getPointerCount() == 2) {
                    arrayList2.add(touchPair);
                    arrayList.add(touchPair);
                }
                int size = arrayList3.size();
                int i2 = this.f28651h;
                if (size > i2) {
                    manipulator.h((int) touchPair.a().f28637a, (int) touchPair.a().f28638b, false);
                    this.f28648c = Gesture.ORBIT;
                    return;
                }
                if (arrayList.size() > i2) {
                    if (Math.abs(((TouchPair) CollectionsKt.M(arrayList)).b() - ((TouchPair) CollectionsKt.B(arrayList)).b()) > this.f28653j) {
                        this.f28648c = gesture2;
                        this.d = touchPair;
                        return;
                    }
                }
                if (arrayList2.size() <= i2) {
                    return;
                }
                Float2 float2A = ((TouchPair) CollectionsKt.B(arrayList2)).a();
                Float2 float2A2 = ((TouchPair) CollectionsKt.M(arrayList2)).a();
                Float2 float2 = new Float2(float2A.f28637a - float2A2.f28637a, float2A.f28638b - float2A2.f28638b);
                float f2 = float2.f28637a;
                float f3 = float2.f28638b;
                if (((float) Math.sqrt((f3 * f3) + (f2 * f2))) > this.f28652i) {
                    manipulator.h((int) touchPair.a().f28637a, (int) touchPair.a().f28638b, true);
                    this.f28648c = Gesture.PAN;
                    return;
                }
                return;
            }
            if (actionMasked != 3) {
                return;
            }
        }
        arrayList2.clear();
        arrayList3.clear();
        arrayList.clear();
        this.f28648c = Gesture.NONE;
        manipulator.i();
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB\t\b\u0016¢\u0006\u0004\b\u0007\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/google/android/filament/utils/GestureDetector$TouchPair;", "", "Lcom/google/android/filament/utils/Float2;", "pt0", "pt1", "", b.a.f24018f, "<init>", "(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)V", "()V", "Landroid/view/MotionEvent;", "me", "height", "(Landroid/view/MotionEvent;I)V", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TouchPair {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Float2 f28655a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Float2 f28656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f28657c;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public TouchPair(MotionEvent motionEvent, int i2) {
            this();
            motionEvent.getClass();
            if (motionEvent.getPointerCount() >= 1) {
                Float2 float2 = new Float2(motionEvent.getX(0), i2 - motionEvent.getY(0));
                this.f28655a = float2;
                this.f28656b = float2;
                this.f28657c++;
            }
            if (motionEvent.getPointerCount() >= 2) {
                this.f28656b = new Float2(motionEvent.getX(1), i2 - motionEvent.getY(1));
                this.f28657c++;
            }
        }

        public final Float2 a() {
            Float2 float2 = this.f28655a;
            float f2 = float2.f28637a;
            Float2 float3 = this.f28656b;
            float f3 = float3.f28637a * 0.5f;
            float f4 = float2.f28638b;
            return new Float2(f3 + (f2 * 0.5f), (float3.f28638b * 0.5f) + (f4 * 0.5f));
        }

        public final float b() {
            Float2 float2 = this.f28655a;
            float f2 = float2.f28637a;
            Float2 float3 = this.f28656b;
            Float2 float4 = new Float2(f2 - float3.f28637a, float2.f28638b - float3.f28638b);
            float f3 = float4.f28637a;
            float f4 = float4.f28638b;
            return (float) Math.sqrt((f4 * f4) + (f3 * f3));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TouchPair)) {
                return false;
            }
            TouchPair touchPair = (TouchPair) obj;
            return Intrinsics.c(this.f28655a, touchPair.f28655a) && Intrinsics.c(this.f28656b, touchPair.f28656b) && this.f28657c == touchPair.f28657c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f28657c) + ((this.f28656b.hashCode() + (this.f28655a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("TouchPair(pt0=");
            sb.append(this.f28655a);
            sb.append(", pt1=");
            sb.append(this.f28656b);
            sb.append(", count=");
            return a.i(this.f28657c, ")", sb);
        }

        public TouchPair() {
            this(new Float2(Call.Parameters.DEFAULT_CAMERA_ZOOM), new Float2(Call.Parameters.DEFAULT_CAMERA_ZOOM), 0);
        }

        public TouchPair(Float2 float2, Float2 float3, int i2) {
            float2.getClass();
            float3.getClass();
            this.f28655a = float2;
            this.f28656b = float3;
            this.f28657c = i2;
        }
    }
}
