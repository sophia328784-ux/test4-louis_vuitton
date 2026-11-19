package com.sightcall.libraries.ui;

import android.animation.Animator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0004H\u0016R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/sightcall/libraries/ui/AnimatorCompletionListener;", "Landroid/animation/Animator$AnimatorListener;", "listener", "Lkotlin/Function1;", "Landroid/animation/Animator;", "", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "onAnimationEnd", "animation", "onAnimationStart", "onAnimationCancel", "onAnimationRepeat", "ui_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnimatorCompletionListener implements Animator.AnimatorListener {
    private final Function1<Animator, Unit> listener;

    /* JADX WARN: Multi-variable type inference failed */
    public AnimatorCompletionListener(Function1<? super Animator, Unit> function1) {
        function1.getClass();
        this.listener = function1;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animation) {
        animation.getClass();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animation) {
        animation.getClass();
        this.listener.invoke(animation);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animation) {
        animation.getClass();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animation) {
        animation.getClass();
    }
}
