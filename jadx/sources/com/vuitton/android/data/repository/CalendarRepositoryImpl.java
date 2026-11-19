package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.CalendarRepository;
import com.vuitton.foundation.exception.CacheException;
import com.vuitton.foundation.model.domain.model.calendar.CalendarEvent;
import com.vuitton.foundation.util.ResultExtKt;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\tB!\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/CalendarRepositoryImpl;", "Lcom/vuitton/android/domain/repository/CalendarRepository;", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CalendarRepositoryImpl implements CalendarRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f47430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f47431b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/CalendarRepositoryImpl$Companion;", "", "", "CALENDAR_EVENTS", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public CalendarRepositoryImpl(Lazy<SharedPreferences> lazy, Json json) {
        lazy.getClass();
        json.getClass();
        this.f47430a = lazy;
        this.f47431b = json;
    }

    @Override // com.vuitton.android.domain.repository.CalendarRepository
    public final Object a(CalendarEvent calendarEvent) throws Throwable {
        Object failure;
        Object objD = d();
        if (!(objD instanceof Result.Failure)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ArrayList arrayListZ0 = CollectionsKt.z0(((CalendarEventsListData) objD).f47428a);
                arrayListZ0.add(calendarEvent);
                failure = new Result(e(new CalendarEventsListData(arrayListZ0)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            objD = failure;
        }
        return ResultExtKt.a(objD);
    }

    @Override // com.vuitton.android.domain.repository.CalendarRepository
    public final Object b(CalendarEvent calendarEvent) throws Throwable {
        Object failure;
        Object objD = d();
        if (!(objD instanceof Result.Failure)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ArrayList arrayListZ0 = CollectionsKt.z0(((CalendarEventsListData) objD).f47428a);
                arrayListZ0.remove(calendarEvent);
                failure = new Result(e(new CalendarEventsListData(arrayListZ0)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            objD = failure;
        }
        return ResultExtKt.a(objD);
    }

    @Override // com.vuitton.android.domain.repository.CalendarRepository
    public final Object c() throws Throwable {
        Object objD = d();
        if (objD instanceof Result.Failure) {
            return objD;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            return ((CalendarEventsListData) objD).f47428a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    public final Object d() throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = ((SharedPreferences) this.f47430a.get()).getString("CALENDAR_EVENTS", null);
            failure = new Result((string == null || string.length() == 0) ? new CalendarEventsListData(EmptyList.f71768b) : (CalendarEventsListData) this.f47431b.b(CalendarEventsListData.INSTANCE.serializer(), string));
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
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 != null) {
            return new Result.Failure(thA2 instanceof CacheException ? (CacheException) thA2 : new CacheException.TransactionException(thA2.getMessage()));
        }
        return obj;
    }

    public final Object e(CalendarEventsListData calendarEventsListData) throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object obj = this.f47430a.get();
            obj.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
            editorEdit.putString("CALENDAR_EVENTS", this.f47431b.c(CalendarEventsListData.INSTANCE.serializer(), calendarEventsListData));
            editorEdit.apply();
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
        return ResultExtKt.a(((Result) failure).f71708b);
    }
}
