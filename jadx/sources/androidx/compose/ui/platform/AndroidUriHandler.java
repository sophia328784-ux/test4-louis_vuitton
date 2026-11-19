package androidx.compose.ui.platform;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import defpackage.d21;
import defpackage.r81;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/AndroidUriHandler;", "Landroidx/compose/ui/platform/UriHandler;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidUriHandler implements UriHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f9974a;

    public AndroidUriHandler(Context context) {
        this.f9974a = context;
    }

    @Override // androidx.compose.ui.platform.UriHandler
    public final void a(String str) {
        try {
            this.f9974a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e2) {
            r81.j(d21.d(JwtParser.SEPARATOR_CHAR, "Can't open ", str), e2);
        }
    }
}
