package com.sightcall.advancedannotations.domain.event;

import android.view.MotionEvent;
import android.view.View;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommand;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b`\u0018\u00002\u00020\u0001:\u0001\u000fJ\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&R\u0018\u0010\u000b\u001a\u00020\u0005X¦\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;", "", "clear", "", "processEvent", "", "motionEvent", "Landroid/view/MotionEvent;", "fromView", "Landroid/view/View;", "processDeleteAll", "isEphemeral", "()Z", "setEphemeral", "(Z)V", "Out", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface EventInterpreter {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001f\u0010\u0007\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003¢\u0006\u0002\b\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u0006¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;", "", "annotationCommands", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;", "getAnnotationCommands", "()Lio/reactivex/rxjava3/core/Observable;", "touchEventsHandled", "", "Lio/reactivex/rxjava3/annotations/NonNull;", "getTouchEventsHandled", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Out {
        Observable<AnnotationCommand> getAnnotationCommands();

        Observable<Boolean> getTouchEventsHandled();
    }

    void clear();

    /* JADX INFO: renamed from: isEphemeral */
    boolean getIsEphemeral();

    void processDeleteAll();

    boolean processEvent(MotionEvent motionEvent, View fromView);

    void setEphemeral(boolean z);
}
