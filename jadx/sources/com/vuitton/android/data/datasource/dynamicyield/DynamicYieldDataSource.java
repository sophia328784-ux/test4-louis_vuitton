package com.vuitton.android.data.datasource.dynamicyield;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\b\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "<init>", "(Landroidx/datastore/core/DataStore;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DynamicYieldDataSource {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Preferences.Key f44103c;
    public static final Preferences.Key d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Preferences.Key f44104e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f44105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DynamicYieldDataSource$special$$inlined$map$1 f44106b;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource$Companion;", "", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "DYNAMIC_YIELD_ACTIVATION", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "DYNAMIC_YIELD_CUID", "DYNAMIC_YIELD_DYID", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f44103c = new Preferences.Key("dynamic_yield_activation_key");
        d = new Preferences.Key("dynamic_yield_cuid_key");
        f44104e = new Preferences.Key("dynamic_yield_dyid_key");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$special$$inlined$map$1] */
    @Inject
    public DynamicYieldDataSource(DataStore<Preferences> dataStore) {
        dataStore.getClass();
        this.f44105a = dataStore;
        final Flow data = dataStore.getData();
        this.f44106b = new Flow<Boolean>() { // from class: com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f44116b;

                /* JADX INFO: renamed from: com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$special$$inlined$map$1$2", f = "DynamicYieldDataSource.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f44117b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f44118c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f44117b = obj;
                        this.f44118c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f44116b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f44118c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f44118c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f44117b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f44118c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        Boolean bool = (Boolean) ((Preferences) obj).b(DynamicYieldDataSource.f44103c);
                        Boolean boolValueOf = Boolean.valueOf(bool != null ? bool.booleanValue() : false);
                        anonymousClass1.f44118c = 1;
                        if (this.f44116b.emit(boolValueOf, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i3 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objF = data.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
    }

    public final Object a(Continuation continuation) {
        Object objA = PreferencesKt.a(this.f44105a, new DynamicYieldDataSource$activate$2(2, null), continuation);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    public final Object b(ContinuationImpl continuationImpl) {
        Object objA = PreferencesKt.a(this.f44105a, new DynamicYieldDataSource$clearUserDyIdAssociation$2(2, null), continuationImpl);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(ContinuationImpl continuationImpl) {
        DynamicYieldDataSource$getStoredCuid$1 dynamicYieldDataSource$getStoredCuid$1;
        if (continuationImpl instanceof DynamicYieldDataSource$getStoredCuid$1) {
            dynamicYieldDataSource$getStoredCuid$1 = (DynamicYieldDataSource$getStoredCuid$1) continuationImpl;
            int i2 = dynamicYieldDataSource$getStoredCuid$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dynamicYieldDataSource$getStoredCuid$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dynamicYieldDataSource$getStoredCuid$1 = new DynamicYieldDataSource$getStoredCuid$1(this, continuationImpl);
            }
        } else {
            dynamicYieldDataSource$getStoredCuid$1 = new DynamicYieldDataSource$getStoredCuid$1(this, continuationImpl);
        }
        Object objP = dynamicYieldDataSource$getStoredCuid$1.f44109b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dynamicYieldDataSource$getStoredCuid$1.d;
        if (i3 == 0) {
            ResultKt.b(objP);
            Flow data = this.f44105a.getData();
            dynamicYieldDataSource$getStoredCuid$1.d = 1;
            objP = FlowKt.p(data, dynamicYieldDataSource$getStoredCuid$1);
            if (objP == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objP);
        }
        return ((Preferences) objP).b(d);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ContinuationImpl continuationImpl) {
        DynamicYieldDataSource$getStoredDyId$1 dynamicYieldDataSource$getStoredDyId$1;
        if (continuationImpl instanceof DynamicYieldDataSource$getStoredDyId$1) {
            dynamicYieldDataSource$getStoredDyId$1 = (DynamicYieldDataSource$getStoredDyId$1) continuationImpl;
            int i2 = dynamicYieldDataSource$getStoredDyId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dynamicYieldDataSource$getStoredDyId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dynamicYieldDataSource$getStoredDyId$1 = new DynamicYieldDataSource$getStoredDyId$1(this, continuationImpl);
            }
        } else {
            dynamicYieldDataSource$getStoredDyId$1 = new DynamicYieldDataSource$getStoredDyId$1(this, continuationImpl);
        }
        Object objP = dynamicYieldDataSource$getStoredDyId$1.f44111b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dynamicYieldDataSource$getStoredDyId$1.d;
        if (i3 == 0) {
            ResultKt.b(objP);
            Flow data = this.f44105a.getData();
            dynamicYieldDataSource$getStoredDyId$1.d = 1;
            objP = FlowKt.p(data, dynamicYieldDataSource$getStoredDyId$1);
            if (objP == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objP);
        }
        return ((Preferences) objP).b(f44104e);
    }

    public final Object e(String str, String str2, ContinuationImpl continuationImpl) {
        Object objA = PreferencesKt.a(this.f44105a, new DynamicYieldDataSource$saveUserDyIdAssociation$2(str, str2, null), continuationImpl);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }
}
