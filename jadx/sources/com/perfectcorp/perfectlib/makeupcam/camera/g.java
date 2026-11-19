package com.perfectcorp.perfectlib.makeupcam.camera;

import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import defpackage.f31;
import java.util.Timer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f40889c;
    public Timer d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f40887a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f40890e = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f40891f = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f31 f40888b = new f31(this, 18);
}
