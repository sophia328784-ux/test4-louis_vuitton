package com.sightcall.core.experiences;

import android.net.Uri;
import androidx.fragment.app.Fragment;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.core.InitSightcallKt;
import com.sightcall.core.experiences.wrapper.DigitalFlowActivityProvider;
import com.sightcall.core.mapper.ExperienceMappersKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0005J\u0006\u0010\u0014\u001a\u00020\u0005R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/sightcall/core/experiences/SightCall;", "", "<init>", "()V", "start", "", "uri", "Landroid/net/Uri;", DbParams.KEY_DATA, "", "startVisualAssistance", "isVisualAssistanceAvailable", "", "getExperience", "Landroidx/fragment/app/Fragment;", "digitalFlowActivityProvider", "Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;", "setDigitalFlowActivity", "provider", "moveCallActivityToBackground", "moveCallActivityToForeground", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SightCall {
    private static DigitalFlowActivityProvider digitalFlowActivityProvider;
    public static final SightCall INSTANCE = new SightCall();
    public static final int $stable = 8;

    private SightCall() {
    }

    public static /* synthetic */ void start$default(SightCall sightCall, Uri uri, String str, int i2, Object obj) throws SightCallUnknownUrlException {
        if ((i2 & 2) != 0) {
            str = null;
        }
        sightCall.start(uri, str);
    }

    public final Fragment getExperience(Uri uri) throws SightCallUnknownUrlException {
        uri.getClass();
        return InitSightcallKt.getManager().getExperience$core_release(ExperienceMappersKt.toExperience(uri));
    }

    public final boolean isVisualAssistanceAvailable() {
        return SdkDiscoverKt.initVisualAssistanceWrapper() != null;
    }

    public final void moveCallActivityToBackground() {
        DigitalFlowActivityProvider digitalFlowActivityProvider2 = digitalFlowActivityProvider;
        if (digitalFlowActivityProvider2 != null) {
            digitalFlowActivityProvider2.moveCallActivityToBackground();
        }
    }

    public final void moveCallActivityToForeground() {
        DigitalFlowActivityProvider digitalFlowActivityProvider2 = digitalFlowActivityProvider;
        if (digitalFlowActivityProvider2 != null) {
            digitalFlowActivityProvider2.moveCallActivityToForeground();
        }
    }

    public final void setDigitalFlowActivity(DigitalFlowActivityProvider provider) {
        provider.getClass();
        digitalFlowActivityProvider = provider;
    }

    public final void start(Uri uri, String data) throws SightCallUnknownUrlException {
        uri.getClass();
        InitSightcallKt.getManager().start$core_release(ExperienceMappersKt.toExperience(uri), data);
    }

    public final void startVisualAssistance(Uri uri) throws SightCallUnknownUrlException {
        uri.getClass();
        Manager.start$core_release$default(InitSightcallKt.getManager(), ExperienceMappersKt.toVisualAssistance(uri), null, 2, null);
    }
}
