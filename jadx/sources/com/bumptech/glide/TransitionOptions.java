package com.bumptech.glide;

import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.request.transition.NoTransition;
import com.bumptech.glide.util.Util;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TransitionOptions<CHILD extends TransitionOptions<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NoTransition.NoAnimationFactory f24324b = NoTransition.f24966b;

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TransitionOptions clone() {
        try {
            return (TransitionOptions) super.clone();
        } catch (CloneNotSupportedException e2) {
            x1.m(e2);
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof TransitionOptions) {
            return Util.b(this.f24324b, ((TransitionOptions) obj).f24324b);
        }
        return false;
    }

    public int hashCode() {
        NoTransition.NoAnimationFactory noAnimationFactory = this.f24324b;
        if (noAnimationFactory != null) {
            return noAnimationFactory.hashCode();
        }
        return 0;
    }
}
