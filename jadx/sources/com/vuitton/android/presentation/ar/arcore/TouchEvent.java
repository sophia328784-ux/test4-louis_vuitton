package com.vuitton.android.presentation.ar.arcore;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/TouchEvent;", "", "Move", "Stop", "Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Move;", "Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Stop;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TouchEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f50575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f50576b;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Move;", "Lcom/vuitton/android/presentation/ar/arcore/TouchEvent;", "x", "", "y", "<init>", "(FF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Move extends TouchEvent {
        public Move(float f2, float f3) {
            super(f2, f3, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Stop;", "Lcom/vuitton/android/presentation/ar/arcore/TouchEvent;", "x", "", "y", "<init>", "(FF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Stop extends TouchEvent {
        public Stop(float f2, float f3) {
            super(f2, f3, null);
        }
    }

    public TouchEvent(float f2, float f3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f50575a = f2;
        this.f50576b = f3;
    }
}
