package com.sightcall.universal.util;

import android.content.Context;
import android.widget.Toast;
import com.sightcall.universal.Universal;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/util/DebugLink;", "Lcom/sightcall/universal/util/Deeplink;", "isEnabled", "", "<init>", "(Z)V", "()Z", "execute", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class DebugLink extends Deeplink {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean isEnabled;

    private DebugLink(boolean z) {
        this.isEnabled = z;
    }

    @Override // com.sightcall.universal.util.Deeplink
    public void execute(Context context) {
        context.getClass();
        super.execute(context);
        UniversalSettings universalSettings = Universal.settings();
        universalSettings.loggerVerbosity().set(Integer.valueOf(this.isEnabled ? 2 : 5));
        universalSettings.apiInterceptor().set(Boolean.valueOf(this.isEnabled));
        Toast.makeText(context, "Debug mode ".concat(this.isEnabled ? "enabled" : "disabled"), 1).show();
    }

    /* JADX INFO: renamed from: isEnabled, reason: from getter */
    public final boolean getIsEnabled() {
        return this.isEnabled;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/util/DebugLink$Companion;", "", "<init>", "()V", "create", "Lcom/sightcall/universal/util/DebugLink;", "isEnabled", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DebugLink create(boolean isEnabled) {
            return new DebugLink(isEnabled, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ DebugLink(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }
}
