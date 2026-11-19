package com.sightcall.universal.util;

import android.content.Context;
import kotlin.Metadata;
import net.rtccloud.sdk.util.OldLogger;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/util/Deeplink;", "", "<init>", "()V", "logger", "Lnet/rtccloud/sdk/util/OldLogger;", "getLogger", "()Lnet/rtccloud/sdk/util/OldLogger;", "execute", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class Deeplink {
    private final OldLogger logger;

    public Deeplink() {
        OldLogger oldLogger = OldLogger.get("DEEPLINK");
        oldLogger.getClass();
        this.logger = oldLogger;
    }

    public void execute(Context context) {
        context.getClass();
        this.logger.d("execute(%s)", this);
    }

    public final OldLogger getLogger() {
        return this.logger;
    }
}
