package androidx.media3.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackPendingIntentBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f17492c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f17494f;
    public Bundle g;

    public PlaybackPendingIntentBuilder(Context context, int i2, Class<? extends MediaSessionService> cls) {
        int i3;
        this.f17490a = context;
        this.f17491b = i2;
        if (i2 == 1) {
            i3 = 85;
        } else if (i2 == 3) {
            i3 = 86;
        } else if (i2 == 11) {
            i3 = 89;
        } else if (i2 != 12) {
            switch (i2) {
                case 6:
                case 7:
                    i3 = 88;
                    break;
                case 8:
                case 9:
                    i3 = 87;
                    break;
                default:
                    i3 = 0;
                    break;
            }
        } else {
            i3 = 90;
        }
        this.d = i3;
        Preconditions.g(c(i3));
        this.f17492c = cls;
        this.f17493e = false;
        this.f17494f = null;
        this.g = Bundle.EMPTY;
    }

    public static Intent b(Context context, int i2, Bundle bundle, String str, Class cls) {
        Preconditions.g(c(i2));
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setData(MediaSessionImpl.c(str));
        intent.setComponent(new ComponentName(context, (Class<?>) cls));
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, i2));
        return intent;
    }

    public static boolean c(int i2) {
        return i2 == 87 || i2 == 88 || i2 == 86 || i2 == 90 || i2 == 89 || i2 == 85;
    }

    public final PendingIntent a() {
        boolean z = this.f17493e;
        Class cls = this.f17492c;
        int i2 = this.d;
        Context context = this.f17490a;
        return (z && this.f17491b == 1) ? PendingIntent.getForegroundService(context, i2, b(context, i2, this.g, this.f17494f, cls), 201326592) : PendingIntent.getService(context, i2, b(context, i2, this.g, this.f17494f, cls), 201326592);
    }
}
