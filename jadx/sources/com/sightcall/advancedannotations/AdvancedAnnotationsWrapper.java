package com.sightcall.advancedannotations;

import android.view.View;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0001H&J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0001H&J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0007H&J\b\u0010\u0012\u001a\u00020\tH&J\b\u0010\u0013\u001a\u00020\tH&R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u0001X¦\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;", "", "processTouch", "", "touch", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;", "fromView", "Landroid/view/View;", "processDeleteAll", "", "selectStandaloneMode", "anchor", "mode", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;", "resumeAnnotations", "pauseAnnotations", "layoutOver", "view", "enableLocalTouch", "disableLocalTouch", "getAnchor", "()Ljava/lang/Object;", "setAnchor", "(Ljava/lang/Object;)V", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AdvancedAnnotationsWrapper {
    void disableLocalTouch();

    void enableLocalTouch();

    Object getAnchor();

    void layoutOver(Object anchor, View view);

    void pauseAnnotations(Object anchor);

    void processDeleteAll();

    boolean processTouch(AdvancedAnnotationsAPI.Touch touch, View fromView);

    void resumeAnnotations(Object anchor);

    void selectStandaloneMode(Object anchor, AdvancedAnnotationsAPI.StandaloneMode mode);

    void setAnchor(Object obj);
}
