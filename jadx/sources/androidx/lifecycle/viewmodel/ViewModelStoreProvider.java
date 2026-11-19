package androidx.lifecycle.viewmodel;

import android.os.Bundle;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewModelStoreOwnerDefaults;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.tr;
import java.util.Arrays;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0004\u0011\u0012\u0013\u0014BA\b\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\f\b\u0002\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rBA\b\u0017\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\f\b\u0002\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\u0010¨\u0006\u0015"}, d2 = {"Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;", "", "Landroidx/lifecycle/ViewModelStore;", "parentStore", "parentKey", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "defaultArgs", "Landroidx/lifecycle/viewmodel/CreationExtras;", "defaultCreationExtras", "Landroidx/lifecycle/ViewModelProvider$Factory;", "defaultFactory", "<init>", "(Landroidx/lifecycle/ViewModelStore;Ljava/lang/Object;Landroid/os/Bundle;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/lifecycle/ViewModelProvider$Factory;)V", "Landroidx/lifecycle/ViewModelStoreOwner;", "parentOwner", "(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Object;Landroid/os/Bundle;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/lifecycle/ViewModelProvider$Factory;)V", "ReferenceToken", "ProviderMarkerKey", "Entry", "StateHolder", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewModelStoreProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewModelStore f13590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f13591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f13592c;
    public final CreationExtras d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ViewModelProvider.Factory f13593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f13594f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ProviderMarkerKey;", "", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ProviderMarkerKey {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ProviderMarkerKey f13598a = new ProviderMarkerKey();
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00060\u0001j\u0002`\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ReferenceToken;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface ReferenceToken extends AutoCloseable {
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class StateHolder extends ViewModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutableScatterMap f13599a = ScatterMapKt.b();

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            MutableScatterMap mutableScatterMap;
            MutableScatterMap mutableScatterMap2 = this.f13599a;
            if (mutableScatterMap2.f()) {
                mutableScatterMap = ScatterMapKt.f3366b;
                mutableScatterMap.getClass();
            } else {
                MutableScatterMap mutableScatterMap3 = new MutableScatterMap(mutableScatterMap2.f3364e);
                mutableScatterMap3.l(mutableScatterMap2);
                mutableScatterMap = mutableScatterMap3;
            }
            Object[] objArr = mutableScatterMap.f3363c;
            long[] jArr = mutableScatterMap.f3361a;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i2 = 0;
            while (true) {
                long j2 = jArr[i2];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j2) < 128) {
                            Entry entry = (Entry) objArr[(i2 << 3) + i4];
                            entry.d = true;
                            if (entry.f13597c <= 0) {
                                yc(entry.f13595a);
                            }
                        }
                        j2 >>= 8;
                    }
                    if (i3 != 8) {
                        return;
                    }
                }
                if (i2 == length) {
                    return;
                } else {
                    i2++;
                }
            }
        }

        public final void yc(Object obj) {
            ViewModelStore viewModelStore;
            Entry entry = (Entry) this.f13599a.m(obj);
            if (entry == null || (viewModelStore = entry.f13596b) == null) {
                return;
            }
            viewModelStore.a();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ViewModelStoreProvider(ViewModelStoreOwner viewModelStoreOwner, Object obj, Bundle bundle, CreationExtras creationExtras, ViewModelProvider.Factory factory, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        Object obj2 = (i2 & 2) != 0 ? null : obj;
        if ((i2 & 4) != 0) {
            MapsKt.c();
            Pair[] pairArr = new Pair[0];
            bundle = BundleKt.a((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        }
        this(viewModelStoreOwner, obj2, bundle, (i2 & 8) != 0 ? ViewModelStoreOwnerDefaults.a(viewModelStoreOwner) : creationExtras, (i2 & 16) != 0 ? ViewModelStoreOwnerDefaults.b(viewModelStoreOwner) : factory);
    }

    public static ViewModelStoreOwner d(ViewModelStoreProvider viewModelStoreProvider, Object obj, SavedStateRegistryOwner savedStateRegistryOwner) {
        Bundle bundle = viewModelStoreProvider.f13592c;
        CreationExtras creationExtras = viewModelStoreProvider.d;
        ViewModelProvider.Factory factory = viewModelStoreProvider.f13593e;
        viewModelStoreProvider.getClass();
        bundle.getClass();
        creationExtras.getClass();
        factory.getClass();
        MutableScatterMap mutableScatterMap = viewModelStoreProvider.e().f13599a;
        Object objE = mutableScatterMap.e(obj);
        if (objE == null) {
            objE = new Entry(obj, null, 0, false, 14, null);
            mutableScatterMap.o(obj, objE);
        }
        ViewModelStore viewModelStore = ((Entry) objE).f13596b;
        if (savedStateRegistryOwner == null) {
            viewModelStore.getClass();
            return new ViewModelStoreOwnerFactory$ViewModelStoreOwner$1(viewModelStore, factory, creationExtras, bundle);
        }
        viewModelStore.getClass();
        SavedStateRegistry f13586b = savedStateRegistryOwner.getF13586b();
        Lifecycle d = savedStateRegistryOwner.getD();
        f13586b.getClass();
        d.getClass();
        return new ViewModelStoreOwnerFactory$ViewModelStoreOwner$2(f13586b, viewModelStore, d, factory, creationExtras, bundle);
    }

    /* JADX WARN: Type inference failed for: r10v3, types: [androidx.lifecycle.viewmodel.b] */
    public final b a(Object obj) {
        final Object obj2;
        MutableScatterMap mutableScatterMap = e().f13599a;
        Object objE = mutableScatterMap.e(obj);
        if (objE == null) {
            obj2 = obj;
            Entry entry = new Entry(obj2, null, 0, false, 14, null);
            mutableScatterMap.o(obj2, entry);
            objE = entry;
        } else {
            obj2 = obj;
        }
        final Entry entry2 = (Entry) objE;
        entry2.f13597c++;
        return new ReferenceToken() { // from class: androidx.lifecycle.viewmodel.b
            @Override // java.lang.AutoCloseable
            public final void close() {
                ViewModelStoreProvider.Entry entry3 = entry2;
                int i2 = entry3.f13597c - 1;
                entry3.f13597c = i2;
                if (!entry3.d || i2 > 0) {
                    return;
                }
                this.e().yc(obj2);
            }
        };
    }

    public final void b() {
        Entry entry = (Entry) e().f13599a.e(ProviderMarkerKey.f13598a);
        if (entry == null || entry.f13597c <= 0) {
            e().onCleared();
        }
    }

    public final void c(Object obj) {
        StateHolder stateHolderE = e();
        Entry entry = (Entry) stateHolderE.f13599a.e(obj);
        if (entry == null) {
            return;
        }
        entry.d = true;
        if (entry.f13597c <= 0) {
            stateHolderE.yc(obj);
        }
    }

    public final StateHolder e() {
        return (StateHolder) this.f13594f.getF71699b();
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;", "", ConfigurationName.KEY, "Landroidx/lifecycle/ViewModelStore;", Payload.TYPE_STORE, "", "refCount", "", "isDisposable", "<init>", "(Ljava/lang/Object;Landroidx/lifecycle/ViewModelStore;IZ)V", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f13595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ViewModelStore f13596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13597c;
        public boolean d;

        public /* synthetic */ Entry(Object obj, ViewModelStore viewModelStore, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i3 & 2) != 0 ? new ViewModelStore() : viewModelStore, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return Intrinsics.c(this.f13595a, entry.f13595a) && Intrinsics.c(this.f13596b, entry.f13596b) && this.f13597c == entry.f13597c && this.d == entry.d;
        }

        public final int hashCode() {
            Object obj = this.f13595a;
            return Boolean.hashCode(this.d) + tr.b(this.f13597c, (this.f13596b.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31)) * 31, 31);
        }

        public final String toString() {
            return "Entry(key=" + this.f13595a + ", store=" + this.f13596b + ", refCount=" + this.f13597c + ", isDisposable=" + this.d + ")";
        }

        public Entry(Object obj, ViewModelStore viewModelStore, int i2, boolean z) {
            viewModelStore.getClass();
            this.f13595a = obj;
            this.f13596b = viewModelStore;
            this.f13597c = i2;
            this.d = z;
        }
    }

    public ViewModelStoreProvider(ViewModelStore viewModelStore, Object obj) {
        this(viewModelStore, obj, (Bundle) null, (CreationExtras) null, (ViewModelProvider.Factory) null, 28, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelStoreProvider(ViewModelStore viewModelStore, Object obj, Bundle bundle) {
        this(viewModelStore, obj, bundle, (CreationExtras) null, (ViewModelProvider.Factory) null, 24, (DefaultConstructorMarker) null);
        bundle.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelStoreProvider(ViewModelStore viewModelStore, Object obj, Bundle bundle, CreationExtras creationExtras) {
        this(viewModelStore, obj, bundle, creationExtras, (ViewModelProvider.Factory) null, 16, (DefaultConstructorMarker) null);
        bundle.getClass();
        creationExtras.getClass();
    }

    public ViewModelStoreProvider(ViewModelStoreOwner viewModelStoreOwner) {
        this(viewModelStoreOwner, (Object) null, (Bundle) null, (CreationExtras) null, (ViewModelProvider.Factory) null, 30, (DefaultConstructorMarker) null);
    }

    public ViewModelStoreProvider(ViewModelStoreOwner viewModelStoreOwner, Object obj) {
        this(viewModelStoreOwner, obj, (Bundle) null, (CreationExtras) null, (ViewModelProvider.Factory) null, 28, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelStoreProvider(ViewModelStoreOwner viewModelStoreOwner, Object obj, Bundle bundle) {
        this(viewModelStoreOwner, obj, bundle, (CreationExtras) null, (ViewModelProvider.Factory) null, 24, (DefaultConstructorMarker) null);
        bundle.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelStoreProvider(ViewModelStoreOwner viewModelStoreOwner, Object obj, Bundle bundle, CreationExtras creationExtras) {
        this(viewModelStoreOwner, obj, bundle, creationExtras, (ViewModelProvider.Factory) null, 16, (DefaultConstructorMarker) null);
        bundle.getClass();
        creationExtras.getClass();
    }

    public ViewModelStoreProvider(ViewModelStore viewModelStore, Object obj, Bundle bundle, CreationExtras creationExtras, ViewModelProvider.Factory factory) {
        bundle.getClass();
        creationExtras.getClass();
        factory.getClass();
        this.f13590a = viewModelStore;
        this.f13591b = obj;
        this.f13592c = bundle;
        this.d = creationExtras;
        this.f13593e = factory;
        this.f13594f = LazyKt.b(new Function0() { // from class: androidx.lifecycle.viewmodel.a
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelStoreProvider viewModelStoreProvider = this.f13600b;
                ViewModelStore viewModelStore2 = viewModelStoreProvider.f13590a;
                if (viewModelStore2 == null) {
                    return new ViewModelStoreProvider.StateHolder();
                }
                Object obj2 = viewModelStoreProvider.f13591b;
                LinkedHashMap linkedHashMap = viewModelStore2.f13536a;
                Object stateHolder = linkedHashMap.get(obj2);
                if (stateHolder == null) {
                    stateHolder = new ViewModelStoreProvider.StateHolder();
                    linkedHashMap.put(obj2, stateHolder);
                }
                return (ViewModelStoreProvider.StateHolder) ((ViewModel) stateHolder);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelStoreProvider(ViewModelStoreOwner viewModelStoreOwner, Object obj, Bundle bundle, CreationExtras creationExtras, ViewModelProvider.Factory factory) {
        this(viewModelStoreOwner != null ? viewModelStoreOwner.getF13587c() : null, obj, bundle, creationExtras, factory);
        bundle.getClass();
        creationExtras.getClass();
        factory.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ViewModelStoreProvider(ViewModelStore viewModelStore, Object obj, Bundle bundle, CreationExtras creationExtras, ViewModelProvider.Factory factory, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        Object obj2 = (i2 & 2) != 0 ? null : obj;
        if ((i2 & 4) != 0) {
            MapsKt.c();
            Pair[] pairArr = new Pair[0];
            bundle = BundleKt.a((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        }
        this(viewModelStore, obj2, bundle, (i2 & 8) != 0 ? CreationExtras.Empty.f13578c : creationExtras, (i2 & 16) != 0 ? new SavedStateViewModelFactory() : factory);
    }

    public ViewModelStoreProvider(ViewModelStore viewModelStore) {
        this(viewModelStore, (Object) null, (Bundle) null, (CreationExtras) null, (ViewModelProvider.Factory) null, 30, (DefaultConstructorMarker) null);
    }
}
