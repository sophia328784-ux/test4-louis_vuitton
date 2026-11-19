package com.vuitton.android.presentation.screen.feed.components;

import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.FeedHeaderKt$FeedHeader$5$1", f = "FeedHeader.kt", l = {}, m = "invokeSuspend", v = 2)
final class FeedHeaderKt$FeedHeader$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FeedTab f57830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SegmentedControlState f57831c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57832a;

        static {
            int[] iArr = new int[FeedTab.values().length];
            try {
                iArr[FeedTab.DISCOVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeedTab.FOR_YOU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57832a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedHeaderKt$FeedHeader$5$1(FeedTab feedTab, SegmentedControlState segmentedControlState, Continuation continuation) {
        super(2, continuation);
        this.f57830b = feedTab;
        this.f57831c = segmentedControlState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedHeaderKt$FeedHeader$5$1(this.f57830b, this.f57831c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedHeaderKt$FeedHeader$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        FeedTab feedTab = this.f57830b;
        int i2 = feedTab == null ? -1 : WhenMappings.f57832a[feedTab.ordinal()];
        if (i2 == -1) {
            return Unit.f71739a;
        }
        int i3 = 1;
        if (i2 == 1) {
            i3 = 0;
        } else if (i2 != 2) {
            v40.g();
            return null;
        }
        SegmentedControlState segmentedControlState = this.f57831c;
        if (segmentedControlState.a() != i3) {
            segmentedControlState.b(i3);
        }
        return Unit.f71739a;
    }
}
