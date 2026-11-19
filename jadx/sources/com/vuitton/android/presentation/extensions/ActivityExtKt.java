package com.vuitton.android.presentation.extensions;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CalendarContract;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentActivity;
import com.batch.android.BatchPushPayload;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.p3;
import java.time.Instant;
import java.time.ZoneId;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ActivityExtKt {
    public static final ActivityResultLauncher a(BaseActivity baseActivity, Function0 function0, Function1 function1) {
        return baseActivity.registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new p3(function1, function0, 0));
    }

    public static final void b(Intent intent, Uri uri, Bundle bundle) {
        intent.getClass();
        if (uri != null) {
            intent.setData(uri);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
    }

    public static final BatchPushPayload c(Intent intent) throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = new Result(BatchPushPayload.payloadFromBundle(intent != null ? intent.getExtras() : null));
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
        return (BatchPushPayload) (obj instanceof Result.Failure ? null : obj);
    }

    public static final void d(BaseActivity baseActivity) {
        Toolbar toolbar = (Toolbar) baseActivity.findViewById(R.id.toolbar);
        if (toolbar != null) {
            baseActivity.setSupportActionBar(toolbar);
        }
        ActionBar supportActionBar = baseActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
            supportActionBar.setHomeAsUpIndicator(R.drawable.ic_close_legacy);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setHomeActionContentDescription(R.string.content_description_up_close);
        }
    }

    public static void e(Activity activity, String str, String str2, Instant instant, Instant instant2, ZoneId zoneId) {
        Object failure;
        instant.getClass();
        instant2.getClass();
        zoneId.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent("android.intent.action.INSERT");
            intent.setData(CalendarContract.Events.CONTENT_URI);
            intent.putExtra("title", str);
            intent.putExtra("beginTime", instant.toEpochMilli());
            intent.putExtra("endTime", instant2.toEpochMilli());
            intent.putExtra("eventTimezone", zoneId.getId());
            if (str2 != null && !StringsKt.w(str2)) {
                intent.putExtra("eventLocation", str2);
            }
            activity.startActivity(intent);
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            return;
        }
        LegacyLogger.f66205a.c("ExternalUrlOpeningError", "Activity not found when opening calendar", null);
    }

    public static void f(Activity activity, String str) {
        Object failure;
        activity.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            activity.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + str)));
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            return;
        }
        LegacyLogger.f66205a.c("ExternalUrlOpeningError", "Activity not found when opening -> " + str, null);
    }

    public static final void g(Activity activity, String str, String str2, Function1 function1) {
        Object failure;
        activity.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent("android.intent.action.VIEW", str != null ? Uri.parse(str) : null);
            if (str2 != null) {
                intent.setDataAndType(str != null ? Uri.parse(str) : null, str2);
            }
            activity.startActivity(intent);
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA == null) {
            return;
        }
        LegacyLogger.f66205a.c("ExternalUrlOpeningError", "Activity not found when opening -> " + str, null);
        if (function1 != null) {
            function1.invoke(thA);
        }
    }

    public static /* synthetic */ void h(Activity activity, String str, Function1 function1, int i2) {
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        g(activity, str, null, function1);
    }

    public static void i(FragmentActivity fragmentActivity, String str) {
        Object failure;
        fragmentActivity.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            fragmentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://pf.kakao.com/" + str + "/chat")));
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            return;
        }
        LegacyLogger.f66205a.c("ExternalUrlOpeningError", "Activity not found when opening -> " + str, null);
    }

    public static void j(Activity activity, String str, String str2, int i2) {
        Object failure;
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        activity.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setData(Uri.parse("mailto:"));
            intent.putExtra("android.intent.extra.EMAIL", new String[]{str});
            intent.putExtra("android.intent.extra.SUBJECT", str2);
            intent.addFlags(268435456);
            activity.startActivity(intent);
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            return;
        }
        LegacyLogger.f66205a.c("ExternalUrlOpeningError", "Activity not found when opening -> " + str, null);
    }

    public static void k(Activity activity, String str) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + Uri.encode(str))));
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            return;
        }
        LegacyLogger.f66205a.c("ExternalUrlOpeningError", "Activity not found when opening -> " + str, null);
    }

    public static void l(FragmentActivity fragmentActivity, String str) {
        Object failure;
        fragmentActivity.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            fragmentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("sms:" + str)));
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            return;
        }
        LegacyLogger.f66205a.c("ExternalUrlOpeningError", "Activity not found when opening -> " + str, null);
    }

    public static void m(FragmentActivity fragmentActivity, String str) {
        Object failure;
        fragmentActivity.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            fragmentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://wa.me/" + str)));
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            return;
        }
        LegacyLogger.f66205a.c("ExternalUrlOpeningError", "Activity not found when opening -> " + str, null);
    }
}
