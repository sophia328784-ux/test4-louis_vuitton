package com.airbnb.lottie;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements LottieDrawable.LazyCompositionTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LottieDrawable f21792b;

    public /* synthetic */ a(LottieDrawable lottieDrawable, int i2) {
        this.f21791a = i2;
        this.f21792b = lottieDrawable;
    }

    @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
    public final void run() {
        int i2 = this.f21791a;
        LottieDrawable lottieDrawable = this.f21792b;
        switch (i2) {
            case 0:
                List list = LottieDrawable.O;
                lottieDrawable.m();
                break;
            default:
                List list2 = LottieDrawable.O;
                lottieDrawable.k();
                break;
        }
    }
}
