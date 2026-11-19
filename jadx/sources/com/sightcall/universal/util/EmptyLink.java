package com.sightcall.universal.util;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 \b2\u00020\u0001:\u0001\bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"Lcom/sightcall/universal/util/EmptyLink;", "Lcom/sightcall/universal/util/Deeplink;", "<init>", "()V", "execute", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "Instance", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class EmptyLink extends Deeplink {

    /* JADX INFO: renamed from: Instance, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ EmptyLink(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // com.sightcall.universal.util.Deeplink
    public void execute(Context context) {
        context.getClass();
        super.execute(context);
        Utils.startLaunchIntent(context);
    }

    /* JADX INFO: renamed from: com.sightcall.universal.util.EmptyLink$Instance, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/util/EmptyLink$Instance;", "Lcom/sightcall/universal/util/EmptyLink;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion extends EmptyLink {
        private Companion() {
            super(null);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private EmptyLink() {
    }
}
