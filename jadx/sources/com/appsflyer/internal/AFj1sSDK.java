package com.appsflyer.internal;

import android.content.Intent;
import android.os.Parcelable;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import defpackage.fc;
import defpackage.uo0;
import java.util.ConcurrentModificationException;
import kotlin.Result;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class AFj1sSDK {
    private final Intent AFKeystoreWrapper;

    public AFj1sSDK(Intent intent) {
        intent.getClass();
        this.AFKeystoreWrapper = intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String AFKeystoreWrapper(AFj1sSDK aFj1sSDK, String str) {
        return aFj1sSDK.AFKeystoreWrapper.getStringExtra(str);
    }

    private final <T> T AFLogger(Function0<? extends T> function0, String str, T t, boolean z) {
        Object failure;
        Object obj;
        Object failure2;
        Object obj2;
        Object obj3;
        synchronized (this.AFKeystoreWrapper) {
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = function0.mo47invoke();
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            KClass[] kClassArr = {reflectionFactory.b(ConcurrentModificationException.class), reflectionFactory.b(ArrayIndexOutOfBoundsException.class)};
            Throwable thA = Result.a(failure);
            if (thA == null) {
                obj2 = t;
                failure2 = failure;
            } else {
                try {
                    try {
                        if (!ArraysKt.f(reflectionFactory.b(thA.getClass()), kClassArr)) {
                            throw thA;
                        }
                        if (z) {
                            T t2 = t;
                            failure2 = AFLogger(function0, str, t2, false);
                            obj2 = t2;
                        } else {
                            T t3 = t;
                            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, str, thA, false, false, false, false, 72, null);
                            failure2 = t3;
                            obj2 = t3;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        obj = reflectionFactory;
                        Result.Companion companion3 = Result.INSTANCE;
                        failure2 = new Result.Failure(th);
                        obj2 = obj;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    obj = t;
                }
            }
            Throwable thA2 = Result.a(failure2);
            if (thA2 == null) {
                obj3 = failure2;
            } else {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, str, thA2, false, false, false, false, 72, null);
                obj3 = (T) obj2;
            }
        }
        return (T) obj3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Parcelable U_(AFj1sSDK aFj1sSDK, String str) {
        return aFj1sSDK.AFKeystoreWrapper.getParcelableExtra(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Intent V_(AFj1sSDK aFj1sSDK, String str, long j2) {
        return aFj1sSDK.AFKeystoreWrapper.putExtra(str, j2);
    }

    public final <T extends Parcelable> T S_(String str) {
        str.getClass();
        return (T) AFLogger(new u(this, str, 0), fc.h("Error while trying to read ", str, " extra from intent"), null, true);
    }

    public final Intent T_(String str, long j2) {
        str.getClass();
        return (Intent) AFLogger(new uo0(this, str, j2), fc.h("Error while trying to write ", str, " extra to intent"), null, true);
    }

    public final String registerClient(String str) {
        str.getClass();
        return (String) AFLogger(new u(this, str, 1), fc.h("Error while trying to read ", str, " extra from intent"), null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean registerClient(AFj1sSDK aFj1sSDK, String str) {
        return aFj1sSDK.AFKeystoreWrapper.hasExtra(str);
    }

    public final boolean AFLogger(String str) {
        str.getClass();
        Boolean bool = (Boolean) AFLogger(new u(this, str, 2), fc.h("Error while trying to check presence of ", str, " extra from intent"), Boolean.TRUE, true);
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }
}
