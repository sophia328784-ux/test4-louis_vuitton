package com.vuitton.android.presentation.screen.connectivity.watch.detail;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.RecyclerView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.presentation.databinding.FragmentWatchDetailsBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListAdapter;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchFacePresentationUiModel;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfaceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment;
import com.vuitton.android.presentation.utils.WatchUtilsKt;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.f31;
import defpackage.hv0;
import defpackage.m21;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\f\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0003¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Companion", "ItemDecoration", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchDetailsFragment extends Hilt_WatchDetailsFragment {
    public final ViewModelLazy F;
    public final Lazy G;
    public boolean H;
    public WatchUiModel I;
    public final FragmentViewBindingDelegate J;
    public TravelListAdapter K;
    public WatchfaceListAdapter L;
    public WatchActivityRouter M;
    public LVEventSender N;
    public static final /* synthetic */ KProperty[] P = {Reflection.f71922a.h(new PropertyReference1Impl(WatchDetailsFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;", 0))};
    public static final Companion O = new Companion(null);
    public static final String Q = "WatchDetailsFragment";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;", "", "", "KEY_WATCH_ID", "Ljava/lang/String;", "", "REQUEST_UNPAIR_WATCH", "I", "VERSION_2", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$ItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "", "paintColor", "margin", "<init>", "(II)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ItemDecoration extends RecyclerView.ItemDecoration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f56709a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Paint f56710b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Rect f56711c;

        public ItemDecoration(int i2, int i3) {
            this.f56709a = i3;
            Paint paint = new Paint();
            paint.setColor(i2);
            this.f56710b = paint;
            this.f56711c = new Rect();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            rect.getClass();
            state.getClass();
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            int i2 = this.f56709a;
            rect.top = i2;
            rect.right = i2;
            rect.bottom = i2;
            if (childAdapterPosition == 0) {
                rect.left = i2;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            canvas.getClass();
            recyclerView.getClass();
            state.getClass();
            super.onDraw(canvas, recyclerView, state);
            int childCount = recyclerView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = recyclerView.getChildAt(i2);
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                Rect rect = this.f56711c;
                if (layoutManager != null) {
                    layoutManager.C(childAt, rect);
                }
                canvas.drawRect(rect, this.f56710b);
            }
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onActivityResult$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onActivityResult$1", f = "WatchDetailsFragment.kt", l = {287, 288}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f56713b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onActivityResult$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onActivityResult$1$1", f = "WatchDetailsFragment.kt", l = {}, m = "invokeSuspend", v = 2)
        final class C02811 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ WatchDetailsFragment f56715b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02811(WatchDetailsFragment watchDetailsFragment, Continuation continuation) {
                super(2, continuation);
                this.f56715b = watchDetailsFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02811(this.f56715b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02811) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                FragmentActivity activity = this.f56715b.getActivity();
                if (activity != null) {
                    activity.finish();
                }
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return WatchDetailsFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
        
            if (kotlinx.coroutines.BuildersKt.f(r7, r1, r6) == r0) goto L17;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r6.f56713b
                r2 = 0
                com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment r3 = com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment.this
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L1d
                if (r1 == r5) goto L19
                if (r1 != r4) goto L13
                kotlin.ResultKt.b(r7)
                goto L41
            L13:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r6)
                return r2
            L19:
                kotlin.ResultKt.b(r7)
                goto L2f
            L1d:
                kotlin.ResultKt.b(r7)
                com.vuitton.android.core.events.LVEventSender r7 = r3.N
                if (r7 == 0) goto L44
                r6.f56713b = r5
                com.vuitton.android.core.events.AppEvent$ConnectivityRefreshFromServerEvent r1 = com.vuitton.android.core.events.AppEvent.ConnectivityRefreshFromServerEvent.f43495a
                java.lang.Object r7 = r7.a(r1, r6)
                if (r7 != r0) goto L2f
                goto L40
            L2f:
                kotlinx.coroutines.scheduling.DefaultScheduler r7 = kotlinx.coroutines.Dispatchers.f74659a
                kotlinx.coroutines.MainCoroutineDispatcher r7 = kotlinx.coroutines.internal.MainDispatcherLoader.f75131a
                com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onActivityResult$1$1 r1 = new com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onActivityResult$1$1
                r1.<init>(r3, r2)
                r6.f56713b = r4
                java.lang.Object r6 = kotlinx.coroutines.BuildersKt.f(r7, r1, r6)
                if (r6 != r0) goto L41
            L40:
                return r0
            L41:
                kotlin.Unit r6 = kotlin.Unit.f71739a
                return r6
            L44:
                java.lang.String r6 = "eventSender"
                kotlin.jvm.internal.Intrinsics.h(r6)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onViewCreated$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class C04051 extends FunctionReferenceImpl implements Function1<WatchUiModel, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            WatchUiModel watchUiModel = (WatchUiModel) obj;
            watchUiModel.getClass();
            WatchDetailsFragment watchDetailsFragment = (WatchDetailsFragment) this.receiver;
            watchDetailsFragment.I = watchUiModel;
            if (!watchDetailsFragment.H) {
                watchDetailsFragment.H = true;
                watchDetailsFragment.P().D(new WatchTrackingUiModel.WatchDetailPageScreen(watchUiModel.f56702b, watchUiModel.d));
            }
            WatchDetailsViewModel watchDetailsViewModelP = watchDetailsFragment.P();
            int i2 = watchUiModel.f56708j;
            watchDetailsViewModelP.U9(Integer.valueOf(i2));
            if (i2 >= 2) {
                watchDetailsFragment.P().p0();
            } else {
                watchDetailsFragment.P().T9();
            }
            FragmentWatchDetailsBinding fragmentWatchDetailsBindingO = watchDetailsFragment.O();
            AppCompatTextView appCompatTextView = fragmentWatchDetailsBindingO.d.f51464c.f51466c;
            String str = watchUiModel.f56705f;
            if (str == null) {
                str = "";
            }
            appCompatTextView.setText(str);
            ImageView imageView = fragmentWatchDetailsBindingO.q;
            String str2 = watchUiModel.f56707i;
            int i3 = watchUiModel.f56706h;
            XmlUiKt.a(imageView, str2, i3, i3, 120);
            ViewExtKt.d(fragmentWatchDetailsBindingO.f51368k, new m21(watchDetailsFragment, watchUiModel, 29));
            if (i2 >= 2) {
                fragmentWatchDetailsBindingO.m.setVisibility(0);
                fragmentWatchDetailsBindingO.l.setVisibility(0);
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<List<? extends WatchFacePresentationUiModel>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            List list = (List) obj;
            WatchDetailsFragment watchDetailsFragment = (WatchDetailsFragment) this.receiver;
            Companion companion = WatchDetailsFragment.O;
            FragmentWatchDetailsBinding fragmentWatchDetailsBindingO = watchDetailsFragment.O();
            if (list != null) {
                fragmentWatchDetailsBindingO.f51368k.setVisibility(0);
                fragmentWatchDetailsBindingO.o.setVisibility(8);
                WatchfaceListAdapter watchfaceListAdapter = watchDetailsFragment.L;
                if (watchfaceListAdapter == null) {
                    Intrinsics.h("watchfaceAdapter");
                    throw null;
                }
                ArrayList arrayList = watchfaceListAdapter.f56821c;
                arrayList.clear();
                arrayList.addAll(list);
                watchfaceListAdapter.notifyDataSetChanged();
            } else {
                fragmentWatchDetailsBindingO.o.setVisibility(8);
                FragmentActivity activity = watchDetailsFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new f31(watchDetailsFragment, 6));
                }
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onViewCreated$3, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<List<? extends Travel>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            List list = (List) obj;
            WatchDetailsFragment watchDetailsFragment = (WatchDetailsFragment) this.receiver;
            Companion companion = WatchDetailsFragment.O;
            FragmentWatchDetailsBinding fragmentWatchDetailsBindingO = watchDetailsFragment.O();
            List list2 = list;
            if (list2 == null || list2.isEmpty()) {
                fragmentWatchDetailsBindingO.f51367j.setVisibility(8);
                fragmentWatchDetailsBindingO.f51366i.setVisibility(8);
                fragmentWatchDetailsBindingO.l.setVisibility(0);
                fragmentWatchDetailsBindingO.m.setVisibility(8);
            } else {
                fragmentWatchDetailsBindingO.f51367j.setVisibility(0);
                fragmentWatchDetailsBindingO.f51366i.setVisibility(0);
                fragmentWatchDetailsBindingO.l.setVisibility(0);
                fragmentWatchDetailsBindingO.m.setVisibility(8);
                TravelListAdapter travelListAdapter = watchDetailsFragment.K;
                if (travelListAdapter == null) {
                    Intrinsics.h("travelAdapter");
                    throw null;
                }
                ArrayList arrayList = travelListAdapter.d;
                arrayList.clear();
                if (list != null) {
                    arrayList.addAll(list);
                }
                travelListAdapter.notifyDataSetChanged();
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$onViewCreated$4, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass4 extends FunctionReferenceImpl implements Function1<Profile, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Profile profile = (Profile) obj;
            profile.getClass();
            WatchDetailsFragment watchDetailsFragment = (WatchDetailsFragment) this.receiver;
            WatchUiModel watchUiModel = watchDetailsFragment.I;
            if (watchUiModel == null) {
                md.n("Shouldn't be called without loading watch first");
                return null;
            }
            String str = watchUiModel.d;
            FragmentWatchDetailsBinding fragmentWatchDetailsBindingO = watchDetailsFragment.O();
            fragmentWatchDetailsBindingO.n.setVisibility(8);
            fragmentWatchDetailsBindingO.f51367j.setVisibility(8);
            fragmentWatchDetailsBindingO.f51366i.setVisibility(8);
            fragmentWatchDetailsBindingO.f51362c.setVisibility(0);
            TextView textView = fragmentWatchDetailsBindingO.f51361b;
            Context contextRequireContext = watchDetailsFragment.requireContext();
            contextRequireContext.getClass();
            textView.setText(WatchUtilsKt.a(contextRequireContext, str, profile));
            TextView textView2 = fragmentWatchDetailsBindingO.g;
            String str2 = watchUiModel.g;
            String str3 = str2 != null ? str2 : null;
            if (str3 == null) {
                str3 = "";
            }
            textView2.setText(str3);
            fragmentWatchDetailsBindingO.f51363e.setText(str);
            fragmentWatchDetailsBindingO.f51365h.setText(watchDetailsFragment.getString(R.string.technical_infos_sku) + watchDetailsFragment.getString(R.string.double_points_with_end_space));
            fragmentWatchDetailsBindingO.f51364f.setText(watchDetailsFragment.getString(R.string.technical_infos_serial_number) + watchDetailsFragment.getString(R.string.double_points_with_end_space));
            return Unit.f71739a;
        }
    }

    public WatchDetailsFragment() {
        super(R.layout.fragment_watch_details);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function0.mo47invoke();
            }
        });
        final Function0 function1 = null;
        this.F = new ViewModelLazy(Reflection.f71922a.b(WatchDetailsViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? this.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
        this.G = LazyKt.b(new hv0(this, 26));
        this.J = FragmentExtKt.d(this, WatchDetailsFragment$binding$2.f56712b);
    }

    public final FragmentWatchDetailsBinding O() {
        return (FragmentWatchDetailsBinding) this.J.c(this, P[0]);
    }

    public final WatchDetailsViewModel P() {
        return (WatchDetailsViewModel) this.F.getF71699b();
    }

    public final WatchActivityRouter Q() {
        WatchActivityRouter watchActivityRouter = this.M;
        if (watchActivityRouter != null) {
            return watchActivityRouter;
        }
        Intrinsics.h("watchActivityRouter");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 5469 && i3 == -1) {
            BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass1(null), 3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.menu_options, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.action_options) {
            SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
            return false;
        }
        WatchUiModel watchUiModel = this.I;
        if (watchUiModel == null) {
            SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
            return false;
        }
        Q();
        AppCompatActivity appCompatActivityC = FragmentExtKt.c(this);
        WatchSettingsFragment.J.getClass();
        WatchSettingsFragment watchSettingsFragment = new WatchSettingsFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("WATCH", watchUiModel);
        watchSettingsFragment.setArguments(bundle);
        watchSettingsFragment.setTargetFragment(this, 5469);
        FragmentTransaction fragmentTransactionD = appCompatActivityC.getSupportFragmentManager().d();
        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        String str = WatchSettingsFragment.L;
        fragmentTransactionD.m(R.id.fragment_container, watchSettingsFragment, str);
        fragmentTransactionD.d(str);
        fragmentTransactionD.e();
        SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
        return true;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.Hilt_WatchDetailsFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        P().Xb((String) this.G.getF71699b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.Hilt_WatchDetailsFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        final int i2 = 0;
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        FragmentWatchDetailsBinding fragmentWatchDetailsBindingO = O();
        ToolbarTitleBinding toolbarTitleBinding = fragmentWatchDetailsBindingO.d.f51464c;
        FragmentExtKt.a(this, toolbarTitleBinding.f51465b, null, 6);
        final int i3 = 1;
        toolbarTitleBinding.f51466c.setAccessibilityHeading(true);
        fragmentWatchDetailsBindingO.p.setAccessibilityHeading(true);
        fragmentWatchDetailsBindingO.n.setAccessibilityHeading(true);
        ViewExtKt.d(fragmentWatchDetailsBindingO.f51367j, new Function1(this) { // from class: b61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchDetailsFragment f20773c;

            {
                this.f20773c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i2;
                boolean z = false;
                WatchDetailsFragment watchDetailsFragment = this.f20773c;
                switch (i4) {
                    case 0:
                        WatchDetailsFragment.Companion companion = WatchDetailsFragment.O;
                        ((View) obj).getClass();
                        watchDetailsFragment.P().D(WatchTrackingUiModel.SeeAllTravelsClickEvent.f56743a);
                        watchDetailsFragment.Q();
                        FragmentTransaction fragmentTransactionD = FragmentExtKt.c(watchDetailsFragment).getSupportFragmentManager().d();
                        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                        TravelListFragment.L.getClass();
                        TravelListFragment travelListFragment = new TravelListFragment();
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("FROM_DEEPLINK", false);
                        travelListFragment.setArguments(bundle);
                        String str = TravelListFragment.N;
                        fragmentTransactionD.m(R.id.fragment_container, travelListFragment, str);
                        fragmentTransactionD.d(str);
                        fragmentTransactionD.e();
                        break;
                    case 1:
                        WatchDetailsFragment.Companion companion2 = WatchDetailsFragment.O;
                        ((View) obj).getClass();
                        watchDetailsFragment.Q();
                        WatchActivityRouter.a(FragmentExtKt.c(watchDetailsFragment));
                        break;
                    case 2:
                        Travel travel = (Travel) obj;
                        WatchDetailsFragment.Companion companion3 = WatchDetailsFragment.O;
                        travel.getClass();
                        watchDetailsFragment.Q();
                        WatchActivityRouter.b(FragmentExtKt.c(watchDetailsFragment), travel);
                        break;
                    default:
                        WatchFacePresentationUiModel watchFacePresentationUiModel = (WatchFacePresentationUiModel) obj;
                        WatchDetailsFragment.Companion companion4 = WatchDetailsFragment.O;
                        watchFacePresentationUiModel.getClass();
                        watchDetailsFragment.Q();
                        AppCompatActivity appCompatActivityC = FragmentExtKt.c(watchDetailsFragment);
                        WatchUiModel watchUiModel = watchDetailsFragment.I;
                        if (watchUiModel != null && watchUiModel.f56708j == 2) {
                            z = true;
                        }
                        FragmentTransaction fragmentTransactionD2 = appCompatActivityC.getSupportFragmentManager().d();
                        fragmentTransactionD2.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                        WatchfacePresentationFragment.L.getClass();
                        WatchfacePresentationFragment watchfacePresentationFragment = new WatchfacePresentationFragment();
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("WATCHFACE", watchFacePresentationUiModel);
                        bundle2.putBoolean("DISPLAY_TOOLBAR", true);
                        bundle2.putBoolean("HOW_TO_GET", true);
                        bundle2.putBoolean("IS_V2", z);
                        bundle2.putBoolean("SHOULD_TRACK_PAGE", true);
                        watchfacePresentationFragment.setArguments(bundle2);
                        String str2 = WatchfacePresentationFragment.N;
                        fragmentTransactionD2.m(R.id.fragment_container, watchfacePresentationFragment, str2);
                        fragmentTransactionD2.d(str2);
                        fragmentTransactionD2.e();
                        break;
                }
                return Unit.f71739a;
            }
        });
        ViewExtKt.d(fragmentWatchDetailsBindingO.l, new Function1(this) { // from class: b61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchDetailsFragment f20773c;

            {
                this.f20773c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                boolean z = false;
                WatchDetailsFragment watchDetailsFragment = this.f20773c;
                switch (i4) {
                    case 0:
                        WatchDetailsFragment.Companion companion = WatchDetailsFragment.O;
                        ((View) obj).getClass();
                        watchDetailsFragment.P().D(WatchTrackingUiModel.SeeAllTravelsClickEvent.f56743a);
                        watchDetailsFragment.Q();
                        FragmentTransaction fragmentTransactionD = FragmentExtKt.c(watchDetailsFragment).getSupportFragmentManager().d();
                        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                        TravelListFragment.L.getClass();
                        TravelListFragment travelListFragment = new TravelListFragment();
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("FROM_DEEPLINK", false);
                        travelListFragment.setArguments(bundle);
                        String str = TravelListFragment.N;
                        fragmentTransactionD.m(R.id.fragment_container, travelListFragment, str);
                        fragmentTransactionD.d(str);
                        fragmentTransactionD.e();
                        break;
                    case 1:
                        WatchDetailsFragment.Companion companion2 = WatchDetailsFragment.O;
                        ((View) obj).getClass();
                        watchDetailsFragment.Q();
                        WatchActivityRouter.a(FragmentExtKt.c(watchDetailsFragment));
                        break;
                    case 2:
                        Travel travel = (Travel) obj;
                        WatchDetailsFragment.Companion companion3 = WatchDetailsFragment.O;
                        travel.getClass();
                        watchDetailsFragment.Q();
                        WatchActivityRouter.b(FragmentExtKt.c(watchDetailsFragment), travel);
                        break;
                    default:
                        WatchFacePresentationUiModel watchFacePresentationUiModel = (WatchFacePresentationUiModel) obj;
                        WatchDetailsFragment.Companion companion4 = WatchDetailsFragment.O;
                        watchFacePresentationUiModel.getClass();
                        watchDetailsFragment.Q();
                        AppCompatActivity appCompatActivityC = FragmentExtKt.c(watchDetailsFragment);
                        WatchUiModel watchUiModel = watchDetailsFragment.I;
                        if (watchUiModel != null && watchUiModel.f56708j == 2) {
                            z = true;
                        }
                        FragmentTransaction fragmentTransactionD2 = appCompatActivityC.getSupportFragmentManager().d();
                        fragmentTransactionD2.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                        WatchfacePresentationFragment.L.getClass();
                        WatchfacePresentationFragment watchfacePresentationFragment = new WatchfacePresentationFragment();
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("WATCHFACE", watchFacePresentationUiModel);
                        bundle2.putBoolean("DISPLAY_TOOLBAR", true);
                        bundle2.putBoolean("HOW_TO_GET", true);
                        bundle2.putBoolean("IS_V2", z);
                        bundle2.putBoolean("SHOULD_TRACK_PAGE", true);
                        watchfacePresentationFragment.setArguments(bundle2);
                        String str2 = WatchfacePresentationFragment.N;
                        fragmentTransactionD2.m(R.id.fragment_container, watchfacePresentationFragment, str2);
                        fragmentTransactionD2.d(str2);
                        fragmentTransactionD2.e();
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i4 = 2;
        Function1 function1 = new Function1(this) { // from class: b61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchDetailsFragment f20773c;

            {
                this.f20773c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i5 = i4;
                boolean z = false;
                WatchDetailsFragment watchDetailsFragment = this.f20773c;
                switch (i5) {
                    case 0:
                        WatchDetailsFragment.Companion companion = WatchDetailsFragment.O;
                        ((View) obj).getClass();
                        watchDetailsFragment.P().D(WatchTrackingUiModel.SeeAllTravelsClickEvent.f56743a);
                        watchDetailsFragment.Q();
                        FragmentTransaction fragmentTransactionD = FragmentExtKt.c(watchDetailsFragment).getSupportFragmentManager().d();
                        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                        TravelListFragment.L.getClass();
                        TravelListFragment travelListFragment = new TravelListFragment();
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("FROM_DEEPLINK", false);
                        travelListFragment.setArguments(bundle);
                        String str = TravelListFragment.N;
                        fragmentTransactionD.m(R.id.fragment_container, travelListFragment, str);
                        fragmentTransactionD.d(str);
                        fragmentTransactionD.e();
                        break;
                    case 1:
                        WatchDetailsFragment.Companion companion2 = WatchDetailsFragment.O;
                        ((View) obj).getClass();
                        watchDetailsFragment.Q();
                        WatchActivityRouter.a(FragmentExtKt.c(watchDetailsFragment));
                        break;
                    case 2:
                        Travel travel = (Travel) obj;
                        WatchDetailsFragment.Companion companion3 = WatchDetailsFragment.O;
                        travel.getClass();
                        watchDetailsFragment.Q();
                        WatchActivityRouter.b(FragmentExtKt.c(watchDetailsFragment), travel);
                        break;
                    default:
                        WatchFacePresentationUiModel watchFacePresentationUiModel = (WatchFacePresentationUiModel) obj;
                        WatchDetailsFragment.Companion companion4 = WatchDetailsFragment.O;
                        watchFacePresentationUiModel.getClass();
                        watchDetailsFragment.Q();
                        AppCompatActivity appCompatActivityC = FragmentExtKt.c(watchDetailsFragment);
                        WatchUiModel watchUiModel = watchDetailsFragment.I;
                        if (watchUiModel != null && watchUiModel.f56708j == 2) {
                            z = true;
                        }
                        FragmentTransaction fragmentTransactionD2 = appCompatActivityC.getSupportFragmentManager().d();
                        fragmentTransactionD2.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                        WatchfacePresentationFragment.L.getClass();
                        WatchfacePresentationFragment watchfacePresentationFragment = new WatchfacePresentationFragment();
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("WATCHFACE", watchFacePresentationUiModel);
                        bundle2.putBoolean("DISPLAY_TOOLBAR", true);
                        bundle2.putBoolean("HOW_TO_GET", true);
                        bundle2.putBoolean("IS_V2", z);
                        bundle2.putBoolean("SHOULD_TRACK_PAGE", true);
                        watchfacePresentationFragment.setArguments(bundle2);
                        String str2 = WatchfacePresentationFragment.N;
                        fragmentTransactionD2.m(R.id.fragment_container, watchfacePresentationFragment, str2);
                        fragmentTransactionD2.d(str2);
                        fragmentTransactionD2.e();
                        break;
                }
                return Unit.f71739a;
            }
        };
        TravelListAdapter travelListAdapter = new TravelListAdapter(0 == true ? 1 : 0, function1, i3, null);
        this.K = travelListAdapter;
        fragmentWatchDetailsBindingO.f51366i.setAdapter(travelListAdapter);
        final int i5 = 3;
        WatchfaceListAdapter watchfaceListAdapter = new WatchfaceListAdapter(new Function1(this) { // from class: b61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchDetailsFragment f20773c;

            {
                this.f20773c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i5;
                boolean z = false;
                WatchDetailsFragment watchDetailsFragment = this.f20773c;
                switch (i6) {
                    case 0:
                        WatchDetailsFragment.Companion companion = WatchDetailsFragment.O;
                        ((View) obj).getClass();
                        watchDetailsFragment.P().D(WatchTrackingUiModel.SeeAllTravelsClickEvent.f56743a);
                        watchDetailsFragment.Q();
                        FragmentTransaction fragmentTransactionD = FragmentExtKt.c(watchDetailsFragment).getSupportFragmentManager().d();
                        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                        TravelListFragment.L.getClass();
                        TravelListFragment travelListFragment = new TravelListFragment();
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("FROM_DEEPLINK", false);
                        travelListFragment.setArguments(bundle);
                        String str = TravelListFragment.N;
                        fragmentTransactionD.m(R.id.fragment_container, travelListFragment, str);
                        fragmentTransactionD.d(str);
                        fragmentTransactionD.e();
                        break;
                    case 1:
                        WatchDetailsFragment.Companion companion2 = WatchDetailsFragment.O;
                        ((View) obj).getClass();
                        watchDetailsFragment.Q();
                        WatchActivityRouter.a(FragmentExtKt.c(watchDetailsFragment));
                        break;
                    case 2:
                        Travel travel = (Travel) obj;
                        WatchDetailsFragment.Companion companion3 = WatchDetailsFragment.O;
                        travel.getClass();
                        watchDetailsFragment.Q();
                        WatchActivityRouter.b(FragmentExtKt.c(watchDetailsFragment), travel);
                        break;
                    default:
                        WatchFacePresentationUiModel watchFacePresentationUiModel = (WatchFacePresentationUiModel) obj;
                        WatchDetailsFragment.Companion companion4 = WatchDetailsFragment.O;
                        watchFacePresentationUiModel.getClass();
                        watchDetailsFragment.Q();
                        AppCompatActivity appCompatActivityC = FragmentExtKt.c(watchDetailsFragment);
                        WatchUiModel watchUiModel = watchDetailsFragment.I;
                        if (watchUiModel != null && watchUiModel.f56708j == 2) {
                            z = true;
                        }
                        FragmentTransaction fragmentTransactionD2 = appCompatActivityC.getSupportFragmentManager().d();
                        fragmentTransactionD2.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                        WatchfacePresentationFragment.L.getClass();
                        WatchfacePresentationFragment watchfacePresentationFragment = new WatchfacePresentationFragment();
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("WATCHFACE", watchFacePresentationUiModel);
                        bundle2.putBoolean("DISPLAY_TOOLBAR", true);
                        bundle2.putBoolean("HOW_TO_GET", true);
                        bundle2.putBoolean("IS_V2", z);
                        bundle2.putBoolean("SHOULD_TRACK_PAGE", true);
                        watchfacePresentationFragment.setArguments(bundle2);
                        String str2 = WatchfacePresentationFragment.N;
                        fragmentTransactionD2.m(R.id.fragment_container, watchfacePresentationFragment, str2);
                        fragmentTransactionD2.d(str2);
                        fragmentTransactionD2.e();
                        break;
                }
                return Unit.f71739a;
            }
        });
        this.L = watchfaceListAdapter;
        RecyclerView recyclerView = fragmentWatchDetailsBindingO.r;
        recyclerView.setAdapter(watchfaceListAdapter);
        Resources resources = requireContext().getResources();
        Resources.Theme theme = requireContext().getTheme();
        ThreadLocal threadLocal = ResourcesCompat.f12034a;
        recyclerView.addItemDecoration(new ItemDecoration(resources.getColor(R.color.gray, theme), (int) (0.5f * Resources.getSystem().getDisplayMetrics().density)));
        P().getG().observe(getViewLifecycleOwner(), new WatchDetailsFragment$sam$androidx_lifecycle_Observer$0(new C04051(1, this, WatchDetailsFragment.class, "handleWatchResult", "handleWatchResult(Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;)V", 0)));
        P().getM().observe(getViewLifecycleOwner(), new WatchDetailsFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass2(1, this, WatchDetailsFragment.class, "handleWatchFacesResult", "handleWatchFacesResult(Ljava/util/List;)V", 0)));
        P().getF56730k().observe(getViewLifecycleOwner(), new WatchDetailsFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass3(1, this, WatchDetailsFragment.class, "handleTraversResult", "handleTraversResult(Ljava/util/List;)V", 0)));
        P().getF56728i().observe(getViewLifecycleOwner(), new WatchDetailsFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass4(1, this, WatchDetailsFragment.class, "handleProfileResult", "handleProfileResult(Lcom/vuitton/foundation/model/domain/model/profile/Profile;)V", 0)));
    }
}
