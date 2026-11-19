package com.vuitton.android.designkit.ui.common;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.ScrollState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.ui.common.ItemUtilsKt$centerItemOnRow$1", f = "ItemUtils.kt", l = {35}, m = "invokeSuspend", v = 2)
final class ItemUtilsKt$centerItemOnRow$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RowItemCenterPosition f48305c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ScrollState f48306e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ItemUtilsKt$centerItemOnRow$1(RowItemCenterPosition rowItemCenterPosition, int i2, ScrollState scrollState, Continuation continuation) {
        super(2, continuation);
        this.f48305c = rowItemCenterPosition;
        this.d = i2;
        this.f48306e = scrollState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ItemUtilsKt$centerItemOnRow$1(this.f48305c, this.d, this.f48306e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ItemUtilsKt$centerItemOnRow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48304b;
        if (i2 == 0) {
            ResultKt.b(obj);
            RowItemCenterPosition rowItemCenterPosition = this.f48305c;
            if (rowItemCenterPosition != null) {
                int i3 = rowItemCenterPosition.f48317a - (this.d / 2);
                if (i3 < 0) {
                    i3 = 0;
                }
                this.f48304b = 1;
                ScrollState.Companion companion = ScrollState.f4288j;
                if (this.f48306e.f(i3, new SpringSpec(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 7, null), this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
