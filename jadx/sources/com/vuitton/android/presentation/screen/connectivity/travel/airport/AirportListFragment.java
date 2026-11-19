package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.core.view.KeyEventDispatcher$Component;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.databinding.FragmentHotspotListBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListAdapter;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.LetterListAdapter;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Airport;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.c1;
import defpackage.d5;
import defpackage.p;
import defpackage.tg0;
import defpackage.xm;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\f\rB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0017¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "AirportFilterManager", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class AirportListFragment extends Hilt_AirportListFragment implements LetterListAdapter.OnLetterTouchListener {
    public final FragmentViewBindingDelegate F;
    public final ViewModelLazy G;
    public final Lazy H;
    public final Lazy I;
    public final Lazy J;
    public static final /* synthetic */ KProperty[] L = {Reflection.f71922a.h(new PropertyReference1Impl(AirportListFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;", 0))};
    public static final Companion K = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$AirportFilterManager;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface AirportFilterManager {
        String c();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$Companion;", "", "", "KEY_IS_COUNTRY_LIST", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment$onViewCreated$5, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass5 extends FunctionReferenceImpl implements Function1<List<? extends Airport>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            String strValueOf;
            List list = (List) obj;
            list.getClass();
            AirportListFragment airportListFragment = (AirportListFragment) this.receiver;
            Companion companion = AirportListFragment.K;
            airportListFragment.getClass();
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            String str = null;
            for (Airport airport : CollectionsKt.o0(list, new xm(new Function1[]{new c1(airportListFragment, 9), new p(22)}, 0))) {
                if (((Boolean) airportListFragment.J.getF71699b()).booleanValue()) {
                    strValueOf = airport.d;
                } else {
                    String str2 = airport.f67356c;
                    strValueOf = str2.length() > 0 ? String.valueOf(str2.charAt(0)) : "";
                }
                if (!Intrinsics.c(strValueOf, str)) {
                    arrayList.add(strValueOf);
                    hashSet.add(Character.valueOf(strValueOf.charAt(0)));
                    str = strValueOf;
                }
                arrayList.add(airport);
            }
            airportListFragment.O().d.f51459b.setVisibility(8);
            AirportListAdapter airportListAdapter = (AirportListAdapter) airportListFragment.H.getF71699b();
            KeyEventDispatcher$Component activity = airportListFragment.getActivity();
            activity.getClass();
            String strC = ((AirportFilterManager) activity).c();
            airportListAdapter.getClass();
            strC.getClass();
            ArrayList arrayList2 = airportListAdapter.f56359c;
            arrayList2.clear();
            arrayList2.addAll(arrayList);
            airportListAdapter.f56360e.filter(strC);
            LetterListAdapter letterListAdapter = (LetterListAdapter) airportListFragment.I.getF71699b();
            List listN0 = CollectionsKt.n0(CollectionsKt.y0(hashSet));
            letterListAdapter.getClass();
            listN0.getClass();
            ArrayList arrayList3 = letterListAdapter.d;
            arrayList3.clear();
            arrayList3.addAll(listN0);
            letterListAdapter.f56389e = null;
            letterListAdapter.notifyDataSetChanged();
            return Unit.f71739a;
        }
    }

    public AirportListFragment() {
        super(R.layout.fragment_hotspot_list);
        this.F = FragmentExtKt.d(this, AirportListFragment$binding$2.f56365b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment$special$$inlined$viewModels$default$2
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
        this.G = new ViewModelLazy(Reflection.f71922a.b(AirportListViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory f13588e;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (f13588e = hasDefaultViewModelProviderFactory.getF13588e()) == null) ? this.getF13588e() : f13588e;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment$special$$inlined$viewModels$default$4
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
        final int i2 = 0;
        this.H = LazyKt.b(new Function0(this) { // from class: c5

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AirportListFragment f21064c;

            {
                this.f21064c = this;
            }

            /* JADX WARN: Code duplicated, block: B:9:0x0019  */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                boolean z;
                int i3 = i2;
                AirportListFragment airportListFragment = this.f21064c;
                switch (i3) {
                    case 0:
                        AirportListFragment.Companion companion = AirportListFragment.K;
                        KeyEventDispatcher$Component activity = airportListFragment.getActivity();
                        activity.getClass();
                        return new AirportListAdapter((AirportListAdapter.OnAirportSelectedListener) activity);
                    case 1:
                        AirportListFragment.Companion companion2 = AirportListFragment.K;
                        Context contextRequireContext = airportListFragment.requireContext();
                        contextRequireContext.getClass();
                        return new LetterListAdapter(contextRequireContext, airportListFragment);
                    default:
                        AirportListFragment.Companion companion3 = AirportListFragment.K;
                        Bundle arguments = airportListFragment.getArguments();
                        if (arguments != null) {
                            z = arguments.getBoolean("IS_COUNTRY_LIST");
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
        final int i3 = 1;
        this.I = LazyKt.b(new Function0(this) { // from class: c5

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AirportListFragment f21064c;

            {
                this.f21064c = this;
            }

            /* JADX WARN: Code duplicated, block: B:9:0x0019  */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                boolean z;
                int i4 = i3;
                AirportListFragment airportListFragment = this.f21064c;
                switch (i4) {
                    case 0:
                        AirportListFragment.Companion companion = AirportListFragment.K;
                        KeyEventDispatcher$Component activity = airportListFragment.getActivity();
                        activity.getClass();
                        return new AirportListAdapter((AirportListAdapter.OnAirportSelectedListener) activity);
                    case 1:
                        AirportListFragment.Companion companion2 = AirportListFragment.K;
                        Context contextRequireContext = airportListFragment.requireContext();
                        contextRequireContext.getClass();
                        return new LetterListAdapter(contextRequireContext, airportListFragment);
                    default:
                        AirportListFragment.Companion companion3 = AirportListFragment.K;
                        Bundle arguments = airportListFragment.getArguments();
                        if (arguments != null) {
                            z = arguments.getBoolean("IS_COUNTRY_LIST");
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
        final int i4 = 2;
        this.J = LazyKt.b(new Function0(this) { // from class: c5

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AirportListFragment f21064c;

            {
                this.f21064c = this;
            }

            /* JADX WARN: Code duplicated, block: B:9:0x0019  */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                boolean z;
                int i5 = i4;
                AirportListFragment airportListFragment = this.f21064c;
                switch (i5) {
                    case 0:
                        AirportListFragment.Companion companion = AirportListFragment.K;
                        KeyEventDispatcher$Component activity = airportListFragment.getActivity();
                        activity.getClass();
                        return new AirportListAdapter((AirportListAdapter.OnAirportSelectedListener) activity);
                    case 1:
                        AirportListFragment.Companion companion2 = AirportListFragment.K;
                        Context contextRequireContext = airportListFragment.requireContext();
                        contextRequireContext.getClass();
                        return new LetterListAdapter(contextRequireContext, airportListFragment);
                    default:
                        AirportListFragment.Companion companion3 = AirportListFragment.K;
                        Bundle arguments = airportListFragment.getArguments();
                        if (arguments != null) {
                            z = arguments.getBoolean("IS_COUNTRY_LIST");
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
    }

    public final FragmentHotspotListBinding O() {
        return (FragmentHotspotListBinding) this.F.c(this, L[0]);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.airport.LetterListAdapter.OnLetterTouchListener
    public final void e(char c2) {
        Lazy lazy;
        O().f51258b.stopScroll();
        Character chValueOf = Character.valueOf(c2);
        int size = -1;
        while (true) {
            lazy = this.H;
            if (size != -1 || chValueOf == null) {
                break;
            }
            AirportListAdapter airportListAdapter = (AirportListAdapter) lazy.getF71699b();
            char cCharValue = chValueOf.charValue();
            Iterator it = airportListAdapter.d.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    size = -1;
                    break;
                }
                Object next = it.next();
                if ((next instanceof String) && StringsKt.N((CharSequence) next, cCharValue, false)) {
                    size = i2;
                    break;
                }
                i2++;
            }
            ArrayList arrayList = ((LetterListAdapter) this.I.getF71699b()).d;
            int iIndexOf = arrayList.indexOf(chValueOf) + 1;
            chValueOf = iIndexOf < arrayList.size() ? (Character) arrayList.get(iIndexOf) : null;
        }
        RecyclerView.LayoutManager layoutManager = O().f51258b.getLayoutManager();
        layoutManager.getClass();
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        if (size == -1) {
            size = ((AirportListAdapter) lazy.getF71699b()).d.size() - 1;
        }
        linearLayoutManager.l1(size, 0);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        O().f51259c.setAdapter(null);
        O().f51258b.setAdapter(null);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.airport.Hilt_AirportListFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        SystemIcons.f43533b.getClass();
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 5, null));
        if (!(getActivity() instanceof AirportFilterManager)) {
            tg0.c("Activity should implement ".concat(AirportFilterManager.class.getSimpleName()));
            return;
        }
        if (!(getActivity() instanceof AirportListAdapter.OnAirportSelectedListener)) {
            tg0.c("Activity should implement ".concat(AirportListAdapter.OnAirportSelectedListener.class.getSimpleName()));
            return;
        }
        RecyclerView recyclerView = O().f51259c;
        recyclerView.setAdapter((LetterListAdapter) this.I.getF71699b());
        recyclerView.setOnTouchListener(new d5(recyclerView, 0));
        final RecyclerView recyclerView2 = O().f51258b;
        recyclerView2.setAdapter((AirportListAdapter) this.H.getF71699b());
        recyclerView2.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment$onViewCreated$4$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void b(RecyclerView recyclerView3, int i2, int i3) {
                Character chValueOf;
                RecyclerView recyclerView4 = recyclerView2;
                RecyclerView.LayoutManager layoutManager = recyclerView4.getLayoutManager();
                layoutManager.getClass();
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                View viewY0 = linearLayoutManager.Y0(0, linearLayoutManager.x(), true, false);
                AirportListFragment.Companion companion = AirportListFragment.K;
                LetterListAdapter letterListAdapter = (LetterListAdapter) this.I.getF71699b();
                RecyclerView.Adapter adapter = recyclerView4.getAdapter();
                adapter.getClass();
                ArrayList arrayList = ((AirportListAdapter) adapter).d;
                for (int iN = viewY0 == null ? -1 : RecyclerView.LayoutManager.N(viewY0); -1 < iN; iN--) {
                    if (arrayList.get(iN) instanceof String) {
                        Object obj = arrayList.get(iN);
                        obj.getClass();
                        chValueOf = Character.valueOf(((String) obj).charAt(0));
                        letterListAdapter.f56389e = chValueOf;
                        letterListAdapter.notifyDataSetChanged();
                    }
                }
                chValueOf = null;
                letterListAdapter.f56389e = chValueOf;
                letterListAdapter.notifyDataSetChanged();
            }
        });
        ViewModelLazy viewModelLazy = this.G;
        ((AirportListViewModel) viewModelLazy.getF71699b()).getF56376c().observe(getViewLifecycleOwner(), new AirportListFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass5(1, this, AirportListFragment.class, "displayAirportList", "displayAirportList(Ljava/util/List;)V", 0)));
        ((AirportListViewModel) viewModelLazy.getF71699b()).getF56377e().observe(getViewLifecycleOwner(), new AirportListFragment$sam$androidx_lifecycle_Observer$0(new p(this)));
        ((AirportListViewModel) viewModelLazy.getF71699b()).pc();
    }
}
