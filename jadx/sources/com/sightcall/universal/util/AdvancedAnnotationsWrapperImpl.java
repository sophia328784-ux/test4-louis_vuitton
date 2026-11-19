package com.sightcall.universal.util;

import android.view.View;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.internal.util.Views;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\rH\u0016J\b\u0010\u0019\u001a\u00020\u000fH\u0016J\b\u0010\u001a\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;", "advancedAnnotationsAPI", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "sessionConfig", "Lcom/sightcall/universal/model/Config;", "<init>", "(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;Lcom/sightcall/universal/model/Config;)V", "processTouch", "", "touch", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;", "fromView", "Landroid/view/View;", "processDeleteAll", "", "selectStandaloneMode", "anchor", "", "mode", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;", "resumeAnnotations", "pauseAnnotations", "layoutOver", "view", "enableLocalTouch", "disableLocalTouch", "getAnchor", "()Ljava/lang/Object;", "setAnchor", "(Ljava/lang/Object;)V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AdvancedAnnotationsWrapperImpl implements AdvancedAnnotationsWrapper {
    private final AdvancedAnnotationsAPI advancedAnnotationsAPI;
    private Object anchor;
    private final Config sessionConfig;

    public AdvancedAnnotationsWrapperImpl(AdvancedAnnotationsAPI advancedAnnotationsAPI, Config config) {
        advancedAnnotationsAPI.getClass();
        config.getClass();
        this.advancedAnnotationsAPI = advancedAnnotationsAPI;
        this.sessionConfig = config;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public void disableLocalTouch() {
        this.advancedAnnotationsAPI.disableLocalTouch();
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public void enableLocalTouch() {
        this.advancedAnnotationsAPI.enableLocalTouch();
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public Object getAnchor() {
        return this.anchor;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public void layoutOver(Object anchor, View view) {
        anchor.getClass();
        view.getClass();
        if (Intrinsics.c(getAnchor(), anchor)) {
            Views.layoutOver(this.advancedAnnotationsAPI.getContainer(), view);
        }
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public void pauseAnnotations(Object anchor) {
        anchor.getClass();
        if (Intrinsics.c(getAnchor(), anchor)) {
            this.advancedAnnotationsAPI.pauseAnnotations();
        }
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public void processDeleteAll() {
        if (this.sessionConfig.role() != Session.Role.ATTENDEE) {
            this.advancedAnnotationsAPI.processDeleteAll();
        }
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public boolean processTouch(AdvancedAnnotationsAPI.Touch touch, View fromView) {
        touch.getClass();
        fromView.getClass();
        if (this.sessionConfig.role() != Session.Role.ATTENDEE) {
            return this.advancedAnnotationsAPI.processTouch(touch, fromView);
        }
        return false;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public void resumeAnnotations(Object anchor) {
        anchor.getClass();
        if (Intrinsics.c(getAnchor(), anchor)) {
            this.advancedAnnotationsAPI.resumeAnnotations();
        }
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public void selectStandaloneMode(Object anchor, AdvancedAnnotationsAPI.StandaloneMode mode) {
        anchor.getClass();
        mode.getClass();
        if (Intrinsics.c(getAnchor(), anchor)) {
            this.advancedAnnotationsAPI.selectStandaloneMode(mode);
            CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onAnnotationsModeChanged(this.sessionConfig);
        }
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsWrapper
    public void setAnchor(Object obj) {
        this.anchor = obj;
    }
}
