package com.sightcall.advancedannotations.domain.drawer.annotation;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import defpackage.h1;
import defpackage.q6;
import defpackage.r6;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH&J\u0012\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u000e\u001a\u00020\u000fH\u0004J\b\u0010\u0019\u001a\u00020\u000bH&J\b\u0010\u001a\u001a\u00020\u000bH&J\u0006\u0010\u001b\u001a\u00020\u000bJ\u0006\u0010\b\u001a\u00020\u000bJ\b\u0010\u001c\u001a\u00020\u000bH&J\u0014\u0010\u001d\u001a\u00020\u000b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001fJ\u001e\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001fH\u0002J\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u000fH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u000fX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u000fX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u000e\u0010\u0018\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;", "", "view", "Landroid/view/ViewGroup;", "<init>", "(Landroid/view/ViewGroup;)V", "getView", "()Landroid/view/ViewGroup;", "needsUpdate", "", "delete", "", "getDimension", "", "res", "", "initialAnimationValue", "getInitialAnimationValue", "()I", "setInitialAnimationValue", "(I)V", "targetAnimationValue", "getTargetAnimationValue", "setTargetAnimationValue", "currentValue", "moveToFront", "updateLayout", "invalidate", "reloadLayout", "fadeOut", "completion", "Lkotlin/Function0;", "updateAlpha", "step", "applyAnimationValue", "value", "Companion", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Annotation {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long fadeOutAnimationDelay = 500;
    private static final long fadeOutAnimationDuration = 500;
    private static final int fadeOutAnimationSteps = 20;
    private int currentValue;
    private int initialAnimationValue;
    private boolean needsUpdate;
    private int targetAnimationValue;
    private final ViewGroup view;

    public Annotation(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.view = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fadeOut$lambda$0(Annotation annotation, Function0 function0) {
        int i2 = annotation.initialAnimationValue;
        int i3 = (i2 - annotation.targetAnimationValue) / fadeOutAnimationSteps;
        annotation.currentValue = i2;
        annotation.updateAlpha(i3, new h1(function0, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit fadeOut$lambda$0$0(Function0 function0) {
        function0.mo47invoke();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAlpha(int step, Function0<Unit> completion) {
        if ((step > 0 && this.currentValue <= this.targetAnimationValue) || (step < 0 && this.currentValue >= this.targetAnimationValue)) {
            completion.mo47invoke();
            return;
        }
        int i2 = this.currentValue - step;
        this.currentValue = i2;
        if ((step > 0 && i2 < this.targetAnimationValue) || (step < 0 && i2 > this.targetAnimationValue)) {
            this.currentValue = this.targetAnimationValue;
        }
        applyAnimationValue(this.currentValue);
        new Handler(Looper.getMainLooper()).postDelayed(new q6(this, step, completion, 0), fadeOutAnimationDuration / ((long) fadeOutAnimationSteps));
    }

    public void applyAnimationValue(int value) {
    }

    public abstract void delete();

    public final void fadeOut(Function0<Unit> completion) {
        completion.getClass();
        if (this.initialAnimationValue == this.targetAnimationValue) {
            completion.mo47invoke();
        } else {
            new Handler(Looper.getMainLooper()).postDelayed(new r6(this, completion, 0), fadeOutAnimationDelay);
        }
    }

    public final float getDimension(int res) {
        return this.view.getContext().getResources().getDimensionPixelSize(res);
    }

    public final int getInitialAnimationValue() {
        return this.initialAnimationValue;
    }

    public final int getTargetAnimationValue() {
        return this.targetAnimationValue;
    }

    public final ViewGroup getView() {
        return this.view;
    }

    public final void invalidate() {
        if (this.needsUpdate) {
            updateLayout();
        }
        this.needsUpdate = false;
    }

    public abstract void moveToFront();

    public final void needsUpdate() {
        this.needsUpdate = true;
    }

    public abstract void reloadLayout();

    public final void setInitialAnimationValue(int i2) {
        this.initialAnimationValue = i2;
    }

    public final void setTargetAnimationValue(int i2) {
        this.targetAnimationValue = i2;
    }

    public abstract void updateLayout();

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u00020\u00058\u0002X\u0083D¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0003R\u0016\u0010\u0007\u001a\u00020\u00058\u0002X\u0083D¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation$Companion;", "", "<init>", "()V", "fadeOutAnimationDelay", "", "getFadeOutAnimationDelay$annotations", "fadeOutAnimationDuration", "getFadeOutAnimationDuration$annotations", "fadeOutAnimationSteps", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private static /* synthetic */ void getFadeOutAnimationDelay$annotations() {
        }

        @JvmStatic
        private static /* synthetic */ void getFadeOutAnimationDuration$annotations() {
        }

        private Companion() {
        }
    }
}
