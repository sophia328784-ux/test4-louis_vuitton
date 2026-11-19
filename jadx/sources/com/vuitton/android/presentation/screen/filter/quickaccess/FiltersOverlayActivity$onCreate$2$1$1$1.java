package com.vuitton.android.presentation.screen.filter.quickaccess;

import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayActivity$onCreate$2$1$1$1", f = "FiltersOverlayActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class FiltersOverlayActivity$onCreate$2$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FiltersOverlayActivity f57996b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57997a;

        static {
            int[] iArr = new int[FiltersDropDownType.values().length];
            try {
                iArr[FiltersDropDownType.SORT_BY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FiltersDropDownType.MORES_FILTERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57997a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FiltersOverlayActivity$onCreate$2$1$1$1(FiltersOverlayActivity filtersOverlayActivity, Continuation continuation) {
        super(2, continuation);
        this.f57996b = filtersOverlayActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FiltersOverlayActivity$onCreate$2$1$1$1(this.f57996b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FiltersOverlayActivity$onCreate$2$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        FiltersOverlayActivity.Companion companion = FiltersOverlayActivity.s;
        FiltersOverlayActivity filtersOverlayActivity = this.f57996b;
        QafSource qafSourceI = filtersOverlayActivity.I();
        if (qafSourceI != null) {
            FiltersDropDownType filtersDropDownType = (FiltersDropDownType) filtersOverlayActivity.q.getF71699b();
            int i2 = filtersDropDownType == null ? -1 : WhenMappings.f57997a[filtersDropDownType.ordinal()];
            if (i2 == 1) {
                filtersOverlayActivity.H().l0(new QuickAccessFiltersTrackingUiModel.SortFiltersOverlayScreen(qafSourceI));
            } else if (i2 == 2) {
                filtersOverlayActivity.H().l0(new QuickAccessFiltersTrackingUiModel.BooleanFiltersOverlayScreen(qafSourceI));
            }
        }
        return Unit.f71739a;
    }
}
