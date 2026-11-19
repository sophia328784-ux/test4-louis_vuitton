package com.airbnb.lottie.value;

/* JADX INFO: loaded from: classes.dex */
public class LottieValueCallback<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LottieFrameInfo f22330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f22331b;

    public LottieValueCallback() {
        this.f22330a = new LottieFrameInfo();
        this.f22331b = null;
    }

    public Object a(LottieFrameInfo lottieFrameInfo) {
        return this.f22331b;
    }

    public final Object b(float f2, float f3, Object obj, Object obj2, float f4, float f5, float f6) {
        LottieFrameInfo lottieFrameInfo = this.f22330a;
        lottieFrameInfo.f22325a = f2;
        lottieFrameInfo.f22326b = f3;
        lottieFrameInfo.f22327c = obj;
        lottieFrameInfo.d = obj2;
        lottieFrameInfo.f22328e = f4;
        lottieFrameInfo.f22329f = f5;
        lottieFrameInfo.g = f6;
        return a(lottieFrameInfo);
    }

    public LottieValueCallback(T t) {
        this.f22330a = new LottieFrameInfo();
        this.f22331b = t;
    }
}
