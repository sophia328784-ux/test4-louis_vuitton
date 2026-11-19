package com.sightcall.advancedannotations.domain.drawer.annotation;

import android.graphics.drawable.PictureDrawable;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommandKt;
import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.AnnotationRotation;
import com.sightcall.advancedannotations.domain.drawer.AnnotationScale;
import com.sightcall.advancedannotations.domain.settings.Setting;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006BC\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u001e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u001fH\u0016J\b\u0010!\u001a\u00020\u001fH\u0016J\u0018\u0010\"\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010#\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020\u001dH\u0002J&\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020'2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010+\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010+\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010+\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010+\u001a\u00020\u001f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010+\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u001fH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetScale;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetRotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetSetting;", "view", "Landroid/view/ViewGroup;", "position", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "scale", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "rotation", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;", "setting", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "mainScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/settings/Setting;Lio/reactivex/rxjava3/core/Scheduler;)V", "timerDisposable", "Lio/reactivex/rxjava3/disposables/Disposable;", "content", "Landroid/widget/ImageView;", "getDrawables", "", "Landroid/graphics/drawable/PictureDrawable;", "reloadLayout", "", "moveToFront", "updateLayout", "display", "doRender", "pictureDrawable", "createTimer", "duration", "", "drawables", "next", "", "set", "delete", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ResourceAnnotation extends Annotation implements SetPosition, SetScale, SetColor, SetRotation, SetSetting {
    private AnnotationColor color;
    private final ImageView content;
    private final Scheduler mainScheduler;
    private AnnotationPosition position;
    private AnnotationScale scale;
    private Setting setting;
    private Disposable timerDisposable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceAnnotation(ViewGroup viewGroup, AnnotationPosition annotationPosition, AnnotationColor annotationColor, AnnotationScale annotationScale, AnnotationRotation annotationRotation, Setting setting, Scheduler scheduler) {
        super(viewGroup);
        viewGroup.getClass();
        annotationPosition.getClass();
        annotationColor.getClass();
        setting.getClass();
        scheduler.getClass();
        this.position = annotationPosition;
        this.color = annotationColor;
        this.scale = annotationScale;
        this.setting = setting;
        this.mainScheduler = scheduler;
        ImageView imageView = new ImageView(viewGroup.getContext());
        imageView.setLayerType(1, null);
        this.content = imageView;
        updateLayout();
        display(this.setting, this.color);
        if (annotationRotation != null) {
            set(annotationRotation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createTimer(final long duration, final List<? extends PictureDrawable> drawables, final int next) {
        Disposable disposable = this.timerDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.timerDisposable = Observable.timer(duration, TimeUnit.MILLISECONDS).observeOn(this.mainScheduler).subscribe(new Consumer() { // from class: com.sightcall.advancedannotations.domain.drawer.annotation.ResourceAnnotation.createTimer.1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Long l) {
                l.getClass();
                ResourceAnnotation.this.doRender(drawables.get(next));
                ResourceAnnotation resourceAnnotation = ResourceAnnotation.this;
                long j2 = duration;
                List<PictureDrawable> list = drawables;
                int size = list.size();
                int i2 = next;
                resourceAnnotation.createTimer(j2, list, size > i2 + 1 ? i2 + 1 : 0);
            }
        });
    }

    private final void display(Setting setting, AnnotationColor color) {
        List<PictureDrawable> drawables = getDrawables(setting, color);
        if (drawables.isEmpty()) {
            return;
        }
        Disposable disposable = this.timerDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        doRender(drawables.get(0));
        Long period = setting.getPeriod();
        if (period != null) {
            long jLongValue = period.longValue();
            if (drawables.size() > 1) {
                createTimer(jLongValue, drawables, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doRender(PictureDrawable pictureDrawable) {
        this.content.setImageDrawable(pictureDrawable);
    }

    private final List<PictureDrawable> getDrawables(Setting setting, AnnotationColor color) {
        List<Setting.SVG> svgs = setting.getSvgs();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(svgs, 10));
        Iterator<T> it = svgs.iterator();
        while (it.hasNext()) {
            arrayList.add(ResourceAnnotationKt.addSVGTags(((Setting.SVG) it.next()).getContent(), setting));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(ResourceAnnotationKt.replaceColor((String) it2.next(), color));
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(ResourceAnnotationKt.replaceStroke((String) it3.next(), color));
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(arrayList3, 10));
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            arrayList4.add(ResourceAnnotationKt.toDrawable((String) it4.next()));
        }
        return arrayList4;
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void delete() {
        Disposable disposable = this.timerDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        ViewParent parent = this.content.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.content);
        }
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void moveToFront() {
        this.content.bringToFront();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void reloadLayout() {
        updateLayout();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetSetting
    public void set(Setting setting) {
        setting.getClass();
        if (Intrinsics.c(this.setting, setting)) {
            return;
        }
        this.setting = setting;
        display(setting, this.color);
        needsUpdate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void updateLayout() {
        float fForView = AnnotationCommandKt.forView(this.scale, getView());
        float width = this.setting.getWidth() * fForView;
        float height = this.setting.getHeight() * fForView;
        this.content.setPivotX(this.setting.getHotPointX() * width);
        this.content.setPivotY(this.setting.getHotPointY() * height);
        this.content.setX(AnnotationCommandKt.xFor(this.position, getView()) - this.content.getPivotX());
        this.content.setY(AnnotationCommandKt.yFor(this.position, getView()) - this.content.getPivotY());
        if (this.content.getParent() == null) {
            getView().addView(this.content, (int) width, (int) height);
            return;
        }
        ImageView imageView = this.content;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.width = (int) width;
        layoutParams.height = (int) height;
        imageView.setLayoutParams(layoutParams);
        this.content.requestLayout();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetColor
    public void set(AnnotationColor color) {
        color.getClass();
        if (Intrinsics.c(this.color, color)) {
            return;
        }
        this.color = color;
        display(this.setting, color);
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetRotation
    public void set(AnnotationRotation rotation) {
        rotation.getClass();
        this.content.setRotation(rotation.getValue());
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetScale
    public void set(AnnotationScale scale) {
        scale.getClass();
        if (Intrinsics.c(this.scale, scale)) {
            return;
        }
        this.scale = scale;
        needsUpdate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetPosition
    public void set(AnnotationPosition position) {
        position.getClass();
        if (Intrinsics.c(this.position, position)) {
            return;
        }
        this.position = position;
        needsUpdate();
    }
}
