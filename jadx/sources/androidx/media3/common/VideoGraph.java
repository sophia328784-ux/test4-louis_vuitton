package androidx.media3.common;

import android.content.Context;
import android.view.Surface;
import defpackage.ow;

/* JADX INFO: loaded from: classes.dex */
public interface VideoGraph {

    public interface Factory {
        VideoGraph a(Context context, ColorInfo colorInfo, Listener listener, ow owVar);
    }

    public interface Listener {
    }

    void flush();

    void n();

    void o();

    Surface p();

    void q();

    void r();

    void release();

    void s();

    boolean t();

    int u();

    void v();

    void w();
}
