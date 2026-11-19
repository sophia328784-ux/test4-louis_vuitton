package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.config.AbTest;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u001b\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AbTestLocalDataSource {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f43955c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f43956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f43957b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(String str, AbTest abTest) {
            str.getClass();
            abTest.getClass();
            return tr.h("ab_test_" + str + "_", "campaign_key_", abTest.f67226a);
        }
    }

    @Inject
    public AbTestLocalDataSource(CoroutineDispatchers coroutineDispatchers, SharedPreferences sharedPreferences) {
        coroutineDispatchers.getClass();
        sharedPreferences.getClass();
        this.f43956a = coroutineDispatchers;
        this.f43957b = sharedPreferences;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(AppConfig appConfig, String str, ContinuationImpl continuationImpl) {
        AbTestLocalDataSource$clearObsoleteAbTestAssignments$1 abTestLocalDataSource$clearObsoleteAbTestAssignments$1;
        Object failure;
        if (continuationImpl instanceof AbTestLocalDataSource$clearObsoleteAbTestAssignments$1) {
            abTestLocalDataSource$clearObsoleteAbTestAssignments$1 = (AbTestLocalDataSource$clearObsoleteAbTestAssignments$1) continuationImpl;
            int i2 = abTestLocalDataSource$clearObsoleteAbTestAssignments$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                abTestLocalDataSource$clearObsoleteAbTestAssignments$1.d = i2 - Integer.MIN_VALUE;
            } else {
                abTestLocalDataSource$clearObsoleteAbTestAssignments$1 = new AbTestLocalDataSource$clearObsoleteAbTestAssignments$1(this, continuationImpl);
            }
        } else {
            abTestLocalDataSource$clearObsoleteAbTestAssignments$1 = new AbTestLocalDataSource$clearObsoleteAbTestAssignments$1(this, continuationImpl);
        }
        Object obj = abTestLocalDataSource$clearObsoleteAbTestAssignments$1.f43958b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = abTestLocalDataSource$clearObsoleteAbTestAssignments$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43956a.getF43530b();
                AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1 abTestLocalDataSource$clearObsoleteAbTestAssignments$2$1 = new AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1(str, appConfig, this, null);
                abTestLocalDataSource$clearObsoleteAbTestAssignments$1.d = 1;
                if (BuildersKt.f(f43530b, abTestLocalDataSource$clearObsoleteAbTestAssignments$2$1, abTestLocalDataSource$clearObsoleteAbTestAssignments$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, AbTest abTest, ContinuationImpl continuationImpl) throws Throwable {
        AbTestLocalDataSource$getAbTestAssignment$1 abTestLocalDataSource$getAbTestAssignment$1;
        Object failure;
        if (continuationImpl instanceof AbTestLocalDataSource$getAbTestAssignment$1) {
            abTestLocalDataSource$getAbTestAssignment$1 = (AbTestLocalDataSource$getAbTestAssignment$1) continuationImpl;
            int i2 = abTestLocalDataSource$getAbTestAssignment$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                abTestLocalDataSource$getAbTestAssignment$1.d = i2 - Integer.MIN_VALUE;
            } else {
                abTestLocalDataSource$getAbTestAssignment$1 = new AbTestLocalDataSource$getAbTestAssignment$1(this, continuationImpl);
            }
        } else {
            abTestLocalDataSource$getAbTestAssignment$1 = new AbTestLocalDataSource$getAbTestAssignment$1(this, continuationImpl);
        }
        Object objF = abTestLocalDataSource$getAbTestAssignment$1.f43962b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = abTestLocalDataSource$getAbTestAssignment$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43956a.getF43530b();
                AbTestLocalDataSource$getAbTestAssignment$2$1 abTestLocalDataSource$getAbTestAssignment$2$1 = new AbTestLocalDataSource$getAbTestAssignment$2$1(str, abTest, this, null);
                abTestLocalDataSource$getAbTestAssignment$1.d = 1;
                objF = BuildersKt.f(f43530b, abTestLocalDataSource$getAbTestAssignment$2$1, abTestLocalDataSource$getAbTestAssignment$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            Boolean bool = (Boolean) objF;
            bool.getClass();
            failure = new Result(bool);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(String str, AppConfig appConfig, String str2, ContinuationImpl continuationImpl) throws Throwable {
        AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1 abTestLocalDataSource$isFeatureFlagActiveInAbTest$1;
        Object objB;
        AbTest abTest;
        if (continuationImpl instanceof AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1) {
            abTestLocalDataSource$isFeatureFlagActiveInAbTest$1 = (AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1) continuationImpl;
            int i2 = abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.f43969f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.f43969f = i2 - Integer.MIN_VALUE;
            } else {
                abTestLocalDataSource$isFeatureFlagActiveInAbTest$1 = new AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1(this, continuationImpl);
            }
        } else {
            abTestLocalDataSource$isFeatureFlagActiveInAbTest$1 = new AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1(this, continuationImpl);
        }
        Object obj = abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.d;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.f43969f;
        Object obj3 = null;
        boolean zS = true;
        if (i3 == 0) {
            ResultKt.b(obj);
            List list = appConfig.f67230a;
            if (list != null) {
                for (Object obj4 : list) {
                    if (((AbTest) obj4).f67227b.contains(str2)) {
                        obj3 = obj4;
                        break;
                    }
                }
                AbTest abTest2 = (AbTest) obj3;
                if (abTest2 != null) {
                    abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.f43966b = str2;
                    abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.f43967c = abTest2;
                    abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.f43969f = 1;
                    objB = b(str, abTest2, abTestLocalDataSource$isFeatureFlagActiveInAbTest$1);
                    if (objB == obj2) {
                        return obj2;
                    }
                    abTest = abTest2;
                }
            }
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(new IllegalAccessException(fc.h("Feature flag '", str2, "' is not part of any A/B test.")));
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        abTest = abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.f43967c;
        str2 = abTestLocalDataSource$isFeatureFlagActiveInAbTest$1.f43966b;
        ResultKt.b(obj);
        objB = ((Result) obj).f71708b;
        Result.Companion companion2 = Result.INSTANCE;
        if (objB instanceof Result.Failure) {
            return objB;
        }
        try {
            boolean zBooleanValue = ((Boolean) objB).booleanValue();
            List list2 = abTest.f67227b;
            int size = list2.size();
            if (size != 1) {
                if (size != 2) {
                    throw new IllegalArgumentException("A/B test '" + abTest.f67226a + "' has too many feature flags (" + list2.size() + ", max=2).");
                }
                if (zBooleanValue) {
                    zS = StringsKt.s(str2, (String) list2.get(0), true);
                } else {
                    if (zBooleanValue) {
                        throw new NoWhenBranchMatchedException();
                    }
                    zS = StringsKt.s(str2, (String) list2.get(1), true);
                }
            } else if (!zBooleanValue) {
                zS = false;
            }
            return Boolean.valueOf(zS);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(String str, AbTest abTest, ContinuationImpl continuationImpl) throws Throwable {
        AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1 abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;
        Object failure;
        if (continuationImpl instanceof AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1) {
            abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1 = (AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1) continuationImpl;
            int i2 = abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1 = new AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1(this, continuationImpl);
            }
        } else {
            abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1 = new AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1(this, continuationImpl);
        }
        Object obj = abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1.f43970b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43956a.getF43530b();
                AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1 abTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1 = new AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1(str, abTest, this, null);
                abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1.d = 1;
                if (BuildersKt.f(f43530b, abTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1, abTestLocalDataSource$persistAbTestAssignmentIfAbsent$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
