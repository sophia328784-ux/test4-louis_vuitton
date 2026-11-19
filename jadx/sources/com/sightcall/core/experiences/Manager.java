package com.sightcall.core.experiences;

import androidx.fragment.app.Fragment;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.core.experiences.wrapper.DebugWrapper;
import com.sightcall.core.experiences.wrapper.DigitalFlowWrapper;
import com.sightcall.core.experiences.wrapper.FeatureWrapper;
import com.sightcall.core.experiences.wrapper.LoginWrapper;
import com.sightcall.core.experiences.wrapper.VisualAssistanceWrapper;
import defpackage.fa0;
import defpackage.v40;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0000¢\u0006\u0002\b&J\u0017\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010\"\u001a\u00020#H\u0000¢\u0006\u0002\b)R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001d\u0010\f\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u000b\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u000b\u001a\u0004\b\u001d\u0010\u001e¨\u0006*"}, d2 = {"Lcom/sightcall/core/experiences/Manager;", "", "orchestrator", "Lcom/sightcall/core/experiences/Orchestrator;", "<init>", "(Lcom/sightcall/core/experiences/Orchestrator;)V", "digitalFlowWrapper", "Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;", "getDigitalFlowWrapper", "()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;", "digitalFlowWrapper$delegate", "Lkotlin/Lazy;", "visualAssistanceWrapper", "Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;", "getVisualAssistanceWrapper", "()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;", "visualAssistanceWrapper$delegate", "debugWrapper", "Lcom/sightcall/core/experiences/wrapper/DebugWrapper;", "getDebugWrapper", "()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;", "debugWrapper$delegate", "featureWrapper", "Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;", "getFeatureWrapper", "()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;", "featureWrapper$delegate", "loginWrapper", "Lcom/sightcall/core/experiences/wrapper/LoginWrapper;", "getLoginWrapper", "()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;", "loginWrapper$delegate", "start", "", "experience", "Lcom/sightcall/core/experiences/Experience;", DbParams.KEY_DATA, "", "start$core_release", "getExperience", "Landroidx/fragment/app/Fragment;", "getExperience$core_release", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Manager {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: debugWrapper$delegate, reason: from kotlin metadata */
    private final Lazy debugWrapper;

    /* JADX INFO: renamed from: digitalFlowWrapper$delegate, reason: from kotlin metadata */
    private final Lazy digitalFlowWrapper;

    /* JADX INFO: renamed from: featureWrapper$delegate, reason: from kotlin metadata */
    private final Lazy featureWrapper;

    /* JADX INFO: renamed from: loginWrapper$delegate, reason: from kotlin metadata */
    private final Lazy loginWrapper;
    private final Orchestrator orchestrator;

    /* JADX INFO: renamed from: visualAssistanceWrapper$delegate, reason: from kotlin metadata */
    private final Lazy visualAssistanceWrapper;

    public Manager(Orchestrator orchestrator) {
        orchestrator.getClass();
        this.orchestrator = orchestrator;
        this.digitalFlowWrapper = LazyKt.b(new fa0(10));
        this.visualAssistanceWrapper = LazyKt.b(new fa0(11));
        this.debugWrapper = LazyKt.b(new fa0(12));
        this.featureWrapper = LazyKt.b(new fa0(13));
        this.loginWrapper = LazyKt.b(new fa0(14));
    }

    private final DebugWrapper getDebugWrapper() {
        return (DebugWrapper) this.debugWrapper.getF71699b();
    }

    private final DigitalFlowWrapper getDigitalFlowWrapper() {
        return (DigitalFlowWrapper) this.digitalFlowWrapper.getF71699b();
    }

    private final FeatureWrapper getFeatureWrapper() {
        return (FeatureWrapper) this.featureWrapper.getF71699b();
    }

    private final LoginWrapper getLoginWrapper() {
        return (LoginWrapper) this.loginWrapper.getF71699b();
    }

    private final VisualAssistanceWrapper getVisualAssistanceWrapper() {
        return (VisualAssistanceWrapper) this.visualAssistanceWrapper.getF71699b();
    }

    public static /* synthetic */ void start$core_release$default(Manager manager, Experience experience, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        manager.start$core_release(experience, str);
    }

    public final Fragment getExperience$core_release(Experience experience) throws SightCallUnknownExperienceException {
        experience.getClass();
        if (!(experience instanceof Experience.DigitalFlow)) {
            throw new SightCallUnknownExperienceException("UnknownExperience " + experience, null, 2, null);
        }
        DigitalFlowWrapper digitalFlowWrapper = getDigitalFlowWrapper();
        if (digitalFlowWrapper != null) {
            return this.orchestrator.getDigitalFlow(((Experience.DigitalFlow) experience).getUri(), digitalFlowWrapper);
        }
        return null;
    }

    public final void start$core_release(Experience experience, String data) {
        experience.getClass();
        if (experience instanceof Experience.DigitalFlow) {
            DigitalFlowWrapper digitalFlowWrapper = getDigitalFlowWrapper();
            if (digitalFlowWrapper != null) {
                this.orchestrator.createDigitalFlow(((Experience.DigitalFlow) experience).getUri(), data, digitalFlowWrapper);
                return;
            }
            return;
        }
        if (experience instanceof Experience.VisualAssistance) {
            VisualAssistanceWrapper visualAssistanceWrapper = getVisualAssistanceWrapper();
            if (visualAssistanceWrapper != null) {
                this.orchestrator.createVisualAssistance(((Experience.VisualAssistance) experience).getUri(), visualAssistanceWrapper);
                return;
            }
            return;
        }
        if (experience instanceof Experience.Feature) {
            FeatureWrapper featureWrapper = getFeatureWrapper();
            if (featureWrapper != null) {
                this.orchestrator.createSchemeStart(((Experience.Feature) experience).getUri(), featureWrapper);
                return;
            }
            return;
        }
        if (experience instanceof Experience.DeveloperMod) {
            DebugWrapper debugWrapper = getDebugWrapper();
            if (debugWrapper != null) {
                this.orchestrator.createDebug(((Experience.DeveloperMod) experience).getUri(), debugWrapper);
                return;
            }
            return;
        }
        if (!(experience instanceof Experience.Login)) {
            v40.g();
            return;
        }
        LoginWrapper loginWrapper = getLoginWrapper();
        if (loginWrapper != null) {
            this.orchestrator.createLogin(((Experience.Login) experience).getUri(), loginWrapper);
        }
    }
}
