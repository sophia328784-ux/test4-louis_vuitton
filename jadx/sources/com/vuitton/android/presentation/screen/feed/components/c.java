package com.vuitton.android.presentation.screen.feed.components;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f57868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModel f57869c;
    public final /* synthetic */ Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f57870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ManagedActivityResultLauncher f57871f;

    public /* synthetic */ c(FeedViewModel feedViewModel, Context context, Ref$ObjectRef ref$ObjectRef, ManagedActivityResultLauncher managedActivityResultLauncher, int i2) {
        this.f57868b = i2;
        this.f57869c = feedViewModel;
        this.d = context;
        this.f57870e = ref$ObjectRef;
        this.f57871f = managedActivityResultLauncher;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f57868b;
        ManagedActivityResultLauncher managedActivityResultLauncher = this.f57871f;
        Ref$ObjectRef ref$ObjectRef = this.f57870e;
        Context context = this.d;
        switch (i2) {
            case 0:
                FeedComposableKt.c(context, ref$ObjectRef, managedActivityResultLauncher, new FeedComposableKt$FeedComposable$1$28$1$1(0, this.f57869c, FeedViewModel.class, "addEventToCalendar", "addEventToCalendar()V", 0));
                break;
            default:
                FeedComposableKt.c(context, ref$ObjectRef, managedActivityResultLauncher, new FeedComposableKt$FeedComposable$1$28$2$1(0, this.f57869c, FeedViewModel.class, "removeEventFromCalendar", "removeEventFromCalendar()V", 0));
                break;
        }
        return Unit.f71739a;
    }
}
