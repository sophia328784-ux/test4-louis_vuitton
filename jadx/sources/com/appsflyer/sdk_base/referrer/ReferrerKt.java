package com.appsflyer.sdk_base.referrer;

import android.content.ComponentName;
import android.content.Context;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"disableInitProvider", "Lkotlin/Result;", "", "Ljava/lang/Class;", "Lcom/appsflyer/sdk_base/referrer/BaseReferrerInitProvider;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "logger", "Lcom/appsflyer/sdk_base/logger/AFLoggerBase;", "(Ljava/lang/Class;Landroid/content/Context;Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)Ljava/lang/Object;", "sdk_base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ReferrerKt {
    public static final Object disableInitProvider(Class<? extends BaseReferrerInitProvider> cls, Context context, AFLoggerBase aFLoggerBase) {
        cls.getClass();
        context.getClass();
        aFLoggerBase.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls), 2, 1);
            AFLoggerBase.d$default(aFLoggerBase, LogTag.RFR_INIT_PROVIDER, "Disabled provider: ".concat(cls.getName()), false, 4, null);
            return Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }
}
