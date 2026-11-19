package com.sightcall.core.experiences;

import android.content.Intent;
import android.net.Uri;
import androidx.fragment.app.Fragment;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.core.InitSightcallKt;
import com.sightcall.core.experiences.wrapper.DebugWrapper;
import com.sightcall.core.experiences.wrapper.DigitalFlowWrapper;
import com.sightcall.core.experiences.wrapper.FeatureWrapper;
import com.sightcall.core.experiences.wrapper.LoginWrapper;
import com.sightcall.core.experiences.wrapper.VisualAssistanceWrapper;
import defpackage.ch0;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b¨\u0006\u001a"}, d2 = {"Lcom/sightcall/core/experiences/Orchestrator;", "", "<init>", "()V", "createDigitalFlow", "", "uri", "Landroid/net/Uri;", DbParams.KEY_DATA, "", "digitalFlowWrapper", "Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;", "createVisualAssistance", "visualAssistanceWrapper", "Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;", "createSchemeStart", "featureWrapper", "Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;", "createDebug", "debugWrapper", "Lcom/sightcall/core/experiences/wrapper/DebugWrapper;", "createLogin", "loginWrapper", "Lcom/sightcall/core/experiences/wrapper/LoginWrapper;", "getDigitalFlow", "Landroidx/fragment/app/Fragment;", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Orchestrator {
    public static final int $stable = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createDebug$lambda$0(Intent intent) {
        intent.getClass();
        InitSightcallKt.getSightCallComponent().context().startActivity(intent);
        return Unit.f71739a;
    }

    public static /* synthetic */ void createDigitalFlow$default(Orchestrator orchestrator, Uri uri, String str, DigitalFlowWrapper digitalFlowWrapper, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        orchestrator.createDigitalFlow(uri, str, digitalFlowWrapper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createDigitalFlow$lambda$0(Intent intent) {
        intent.getClass();
        InitSightcallKt.getSightCallComponent().context().startActivity(intent);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createLogin$lambda$0(Intent intent) {
        intent.getClass();
        InitSightcallKt.getSightCallComponent().context().startActivity(intent);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createSchemeStart$lambda$0(Intent intent) {
        intent.getClass();
        InitSightcallKt.getSightCallComponent().context().startActivity(intent);
        return Unit.f71739a;
    }

    public final void createDebug(Uri uri, DebugWrapper debugWrapper) {
        uri.getClass();
        debugWrapper.getClass();
        debugWrapper.startWithIntent(uri, new ch0(13));
    }

    public final void createDigitalFlow(Uri uri, String data, DigitalFlowWrapper digitalFlowWrapper) {
        uri.getClass();
        digitalFlowWrapper.getClass();
        digitalFlowWrapper.startWithIntent(uri, data, new ch0(11));
    }

    public final void createLogin(Uri uri, LoginWrapper loginWrapper) {
        uri.getClass();
        loginWrapper.getClass();
        loginWrapper.startWithIntent(uri, new ch0(12));
    }

    public final void createSchemeStart(Uri uri, FeatureWrapper featureWrapper) {
        uri.getClass();
        featureWrapper.getClass();
        featureWrapper.startWithIntent(uri, new ch0(10));
    }

    public final void createVisualAssistance(Uri uri, VisualAssistanceWrapper visualAssistanceWrapper) {
        uri.getClass();
        visualAssistanceWrapper.getClass();
        visualAssistanceWrapper.start(uri);
    }

    public final Fragment getDigitalFlow(Uri uri, DigitalFlowWrapper digitalFlowWrapper) {
        uri.getClass();
        digitalFlowWrapper.getClass();
        return digitalFlowWrapper.startWithFragment(uri);
    }
}
