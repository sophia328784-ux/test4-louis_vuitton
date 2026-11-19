package androidx.media3.session;

import android.content.Context;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class CustomCommandPendingIntentBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f17282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionCommand f17283c;
    public String d;

    public CustomCommandPendingIntentBuilder(Context context, Class<? extends MediaSessionService> cls, SessionCommand sessionCommand) {
        Preconditions.g(sessionCommand.f17539a == 0);
        this.f17281a = context;
        this.f17282b = cls;
        this.f17283c = sessionCommand;
        this.d = null;
    }
}
